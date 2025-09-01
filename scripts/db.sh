#!/bin/bash

# Database Restore and Backup Script with .env support
# Usage: ./db_script.sh [restore|backup] [filename]

# Default values (will be overridden by .env if present)
CONTAINER_NAME="database"
DB_USER="directus"
DB_NAME="directus"
DB_PASSWORD="directus"
ENV_FILE=".env"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to load environment variables from .env file
load_env() {
    if [[ -f "$ENV_FILE" ]]; then
        echo -e "${BLUE}Loading environment variables from $ENV_FILE...${NC}"

        # Read the .env file line by line
        while IFS= read -r line; do
            # Skip comments and empty lines
            [[ $line =~ ^#.*$ ]] || [[ -z $line ]] && continue

            # Remove quotes and export variable
            key=$(echo "$line" | cut -d '=' -f 1 | tr -d ' ')
            value=$(echo "$line" | cut -d '=' -f 2- | sed -e 's/^"//' -e 's/"$//' -e "s/^'//" -e "s/'$//")

            # Set variables based on common naming patterns
            case $key in
                DB_CONTAINER|DATABASE_CONTAINER|CONTAINER_NAME)
                    CONTAINER_NAME="$value"
                    ;;
                DB_USER|DATABASE_USER|POSTGRES_USER)
                    DB_USER="$value"
                    ;;
                DB_NAME|DATABASE_NAME|POSTGRES_DB|DB_DATABASE)
                    DB_NAME="$value"
                    ;;
                DB_PASSWORD|DATABASE_PASSWORD|POSTGRES_PASSWORD)
                    DB_PASSWORD="$value"
                    ;;
                DB_HOST|DATABASE_HOST|POSTGRES_HOST)
                    # Optional: if you need host for other purposes
                    ;;
            esac
        done < "$ENV_FILE"

        echo -e "${GREEN}Environment variables loaded successfully!${NC}"
        echo -e "Container: $CONTAINER_NAME"
        echo -e "Database: $DB_NAME"
        echo -e "User: $DB_USER"
        echo ""
    else
        echo -e "${YELLOW}Warning: $ENV_FILE not found, using default values${NC}"
    fi
}

# Function to display usage
usage() {
    echo "Usage: $0 [restore|backup] [filename]"
    echo "  restore <file>  - Restore database from file (.sql or .dump)"
    echo "  backup  <file>  - Backup database to file (.sql recommended)"
    echo ""
    echo "Options for restore:"
    echo "  --clean     : Drop existing objects before restore (for .dump files)"
    echo ""
    echo "Environment:"
    echo "  Looks for .env file with variables like:"
    echo "  DB_CONTAINER, DB_USER, DB_NAME, DB_PASSWORD"
    echo "  or POSTGRES_USER, POSTGRES_DB, POSTGRES_PASSWORD"
    echo ""
    echo "Examples:"
    echo "  $0 restore backup.sql"
    echo "  $0 restore --clean backup.dump"
    echo "  $0 backup backup.sql"
    exit 1
}

# Function to check if Docker container is running
check_container() {
    if ! docker ps | grep -q "$CONTAINER_NAME"; then
        echo -e "${RED}Error: Container '$CONTAINER_NAME' is not running${NC}"
        exit 1
    fi
}

# Function to detect file format and restore appropriately
restore_db() {
    local backup_file=$1
    local clean_restore=$2

    if [[ ! -f "$backup_file" ]]; then
        echo -e "${RED}Error: Backup file '$backup_file' not found${NC}"
        exit 1
    fi

    echo -e "${YELLOW}Restoring database $DB_NAME from $backup_file...${NC}"

    # Detect file format and use appropriate command
    if [[ "$backup_file" == *.sql ]] || grep -q "PostgreSQL database dump" "$backup_file" 2>/dev/null; then
        # SQL text format - use psql
        echo -e "${BLUE}Detected SQL text format, using psql...${NC}"
        if [[ "$clean_restore" == "true" ]]; then
            echo -e "${YELLOW}Warning: --clean flag is ignored for SQL files. Use DROP statements in your SQL file instead.${NC}"
        fi

        if docker exec -i "$CONTAINER_NAME" /bin/bash -c "PGPASSWORD=$DB_PASSWORD psql --username $DB_USER --dbname=$DB_NAME -v ON_ERROR_STOP=1" < "$backup_file"; then
            echo -e "${GREEN}Database restore completed successfully!${NC}"
        else
            echo -e "${RED}Database restore failed!${NC}"
            exit 1
        fi
    elif [[ "$backup_file" == *.dump ]] || [[ "$backup_file" == *.backup ]]; then
        # Binary format - use pg_restore
        echo -e "${BLUE}Detected binary format, using pg_restore...${NC}"

        local pg_restore_flags="-1 -v --if-exists"
        if [[ "$clean_restore" == "true" ]]; then
            echo -e "${YELLOW}Using clean restore (will drop existing objects)...${NC}"
            pg_restore_flags="$pg_restore_flags --clean"
        else
            echo -e "${YELLOW}Using safe restore (will not drop existing objects)...${NC}"
            echo -e "${YELLOW}If you encounter 'already exists' errors, use --clean flag${NC}"
        fi

        if docker exec -i "$CONTAINER_NAME" /bin/bash -c "PGPASSWORD=$DB_PASSWORD pg_restore --username $DB_USER --dbname=$DB_NAME $pg_restore_flags" < "$backup_file"; then
            echo -e "${GREEN}Database restore completed successfully!${NC}"
        else
            echo -e "${RED}Database restore failed!${NC}"
            exit 1
        fi
    else
        echo -e "${RED}Unknown file format. Please use .sql or .dump extension${NC}"
        exit 1
    fi
}

# Function to backup database with format option
backup_db() {
    local backup_file=$1

    # Check if file already exists and ask for confirmation
    if [[ -f "$backup_file" ]]; then
        read -p "File $backup_file already exists. Overwrite? (y/N): " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo "Backup cancelled."
            exit 0
        fi
    fi

    echo -e "${YELLOW}Creating backup of database $DB_NAME to $backup_file...${NC}"

    # Determine format based on file extension
    if [[ "$backup_file" == *.sql ]]; then
        # SQL text format
        echo -e "${BLUE}Using SQL text format...${NC}"
        if docker exec -i "$CONTAINER_NAME" /bin/bash -c "PGPASSWORD=$DB_PASSWORD pg_dump --username $DB_USER $DB_NAME --format=plain --clean --if-exists" > "$backup_file"; then
            echo -e "${GREEN}Database backup completed successfully!${NC}"
            echo -e "Backup size: $(du -h "$backup_file" | cut -f1)"
        else
            echo -e "${RED}Database backup failed!${NC}"
            rm -f "$backup_file"
            exit 1
        fi
    elif [[ "$backup_file" == *.dump ]] || [[ "$backup_file" == *.backup ]]; then
        # Binary format
        echo -e "${BLUE}Using binary format...${NC}"
        if docker exec -i "$CONTAINER_NAME" /bin/bash -c "PGPASSWORD=$DB_PASSWORD pg_dump --username $DB_USER $DB_NAME --format=custom --clean --if-exists" > "$backup_file"; then
            echo -e "${GREEN}Database backup completed successfully!${NC}"
            echo -e "Backup size: $(du -h "$backup_file" | cut -f1)"
        else
            echo -e "${RED}Database backup failed!${NC}"
            rm -f "$backup_file"
            exit 1
        fi
    else
        echo -e "${RED}Unknown file format. Please use .sql or .dump extension${NC}"
        exit 1
    fi
}

# Main script execution
if [[ $# -lt 2 ]]; then
    usage
fi

# Load environment variables
load_env

check_container

# Parse command line arguments
clean_restore="false"
case $1 in
    "restore")
        if [[ "$2" == "--clean" ]]; then
            if [[ $# -lt 3 ]]; then
                usage
            fi
            clean_restore="true"
            restore_db "$3" "$clean_restore"
        else
            restore_db "$2" "$clean_restore"
        fi
        ;;
    "backup")
        backup_db "$2"
        ;;
    *)
        usage
        ;;
esac