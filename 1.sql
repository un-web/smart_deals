--
-- PostgreSQL database dump
--

\restrict Yvtg0rjq9xEijGKfgmSNvJR4jCj95yAxsHqJsdFaxetwbx6f2JB2efO1qP8CQKY

-- Dumped from database version 15.14
-- Dumped by pg_dump version 15.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.directus_webhooks DROP CONSTRAINT IF EXISTS directus_webhooks_migrated_flow_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_versions DROP CONSTRAINT IF EXISTS directus_versions_user_updated_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_versions DROP CONSTRAINT IF EXISTS directus_versions_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_versions DROP CONSTRAINT IF EXISTS directus_versions_collection_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_users DROP CONSTRAINT IF EXISTS directus_users_role_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_shares DROP CONSTRAINT IF EXISTS directus_shares_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_shares DROP CONSTRAINT IF EXISTS directus_shares_role_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_shares DROP CONSTRAINT IF EXISTS directus_shares_collection_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_settings DROP CONSTRAINT IF EXISTS directus_settings_storage_default_folder_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_settings DROP CONSTRAINT IF EXISTS directus_settings_public_registration_role_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_settings DROP CONSTRAINT IF EXISTS directus_settings_public_foreground_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_settings DROP CONSTRAINT IF EXISTS directus_settings_public_favicon_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_settings DROP CONSTRAINT IF EXISTS directus_settings_public_background_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_settings DROP CONSTRAINT IF EXISTS directus_settings_project_logo_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_sessions DROP CONSTRAINT IF EXISTS directus_sessions_user_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_sessions DROP CONSTRAINT IF EXISTS directus_sessions_share_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_roles DROP CONSTRAINT IF EXISTS directus_roles_parent_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_revisions DROP CONSTRAINT IF EXISTS directus_revisions_version_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_revisions DROP CONSTRAINT IF EXISTS directus_revisions_parent_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_revisions DROP CONSTRAINT IF EXISTS directus_revisions_activity_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_presets DROP CONSTRAINT IF EXISTS directus_presets_user_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_presets DROP CONSTRAINT IF EXISTS directus_presets_role_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_permissions DROP CONSTRAINT IF EXISTS directus_permissions_policy_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_panels DROP CONSTRAINT IF EXISTS directus_panels_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_panels DROP CONSTRAINT IF EXISTS directus_panels_dashboard_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_operations DROP CONSTRAINT IF EXISTS directus_operations_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_operations DROP CONSTRAINT IF EXISTS directus_operations_resolve_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_operations DROP CONSTRAINT IF EXISTS directus_operations_reject_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_operations DROP CONSTRAINT IF EXISTS directus_operations_flow_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_notifications DROP CONSTRAINT IF EXISTS directus_notifications_sender_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_notifications DROP CONSTRAINT IF EXISTS directus_notifications_recipient_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_folders DROP CONSTRAINT IF EXISTS directus_folders_parent_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_flows DROP CONSTRAINT IF EXISTS directus_flows_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_files DROP CONSTRAINT IF EXISTS directus_files_uploaded_by_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_files DROP CONSTRAINT IF EXISTS directus_files_modified_by_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_files DROP CONSTRAINT IF EXISTS directus_files_folder_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_dashboards DROP CONSTRAINT IF EXISTS directus_dashboards_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_comments DROP CONSTRAINT IF EXISTS directus_comments_user_updated_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_comments DROP CONSTRAINT IF EXISTS directus_comments_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_collections DROP CONSTRAINT IF EXISTS directus_collections_group_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_access DROP CONSTRAINT IF EXISTS directus_access_user_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_access DROP CONSTRAINT IF EXISTS directus_access_role_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_access DROP CONSTRAINT IF EXISTS directus_access_policy_foreign;
ALTER TABLE IF EXISTS ONLY public."DealStages" DROP CONSTRAINT IF EXISTS dealstages_user_updated_foreign;
ALTER TABLE IF EXISTS ONLY public."DealStages" DROP CONSTRAINT IF EXISTS dealstages_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public."DealStages" DROP CONSTRAINT IF EXISTS dealstages_deal_foreign;
ALTER TABLE IF EXISTS ONLY public."DealStages" DROP CONSTRAINT IF EXISTS dealstages_contracter_foreign;
ALTER TABLE IF EXISTS ONLY public."Deals" DROP CONSTRAINT IF EXISTS deals_user_updated_foreign;
ALTER TABLE IF EXISTS ONLY public."Deals" DROP CONSTRAINT IF EXISTS deals_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public."Deals" DROP CONSTRAINT IF EXISTS deals_customer_foreign;
ALTER TABLE IF EXISTS ONLY public."Deals" DROP CONSTRAINT IF EXISTS deals_contracter_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_webhooks DROP CONSTRAINT IF EXISTS directus_webhooks_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_versions DROP CONSTRAINT IF EXISTS directus_versions_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_users DROP CONSTRAINT IF EXISTS directus_users_token_unique;
ALTER TABLE IF EXISTS ONLY public.directus_users DROP CONSTRAINT IF EXISTS directus_users_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_users DROP CONSTRAINT IF EXISTS directus_users_external_identifier_unique;
ALTER TABLE IF EXISTS ONLY public.directus_users DROP CONSTRAINT IF EXISTS directus_users_email_unique;
ALTER TABLE IF EXISTS ONLY public.directus_translations DROP CONSTRAINT IF EXISTS directus_translations_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_shares DROP CONSTRAINT IF EXISTS directus_shares_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_settings DROP CONSTRAINT IF EXISTS directus_settings_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_sessions DROP CONSTRAINT IF EXISTS directus_sessions_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_roles DROP CONSTRAINT IF EXISTS directus_roles_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_revisions DROP CONSTRAINT IF EXISTS directus_revisions_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_relations DROP CONSTRAINT IF EXISTS directus_relations_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_presets DROP CONSTRAINT IF EXISTS directus_presets_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_policies DROP CONSTRAINT IF EXISTS directus_policies_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_permissions DROP CONSTRAINT IF EXISTS directus_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_panels DROP CONSTRAINT IF EXISTS directus_panels_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_operations DROP CONSTRAINT IF EXISTS directus_operations_resolve_unique;
ALTER TABLE IF EXISTS ONLY public.directus_operations DROP CONSTRAINT IF EXISTS directus_operations_reject_unique;
ALTER TABLE IF EXISTS ONLY public.directus_operations DROP CONSTRAINT IF EXISTS directus_operations_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_notifications DROP CONSTRAINT IF EXISTS directus_notifications_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_migrations DROP CONSTRAINT IF EXISTS directus_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_folders DROP CONSTRAINT IF EXISTS directus_folders_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_flows DROP CONSTRAINT IF EXISTS directus_flows_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_flows DROP CONSTRAINT IF EXISTS directus_flows_operation_unique;
ALTER TABLE IF EXISTS ONLY public.directus_files DROP CONSTRAINT IF EXISTS directus_files_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_fields DROP CONSTRAINT IF EXISTS directus_fields_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_extensions DROP CONSTRAINT IF EXISTS directus_extensions_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_dashboards DROP CONSTRAINT IF EXISTS directus_dashboards_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_comments DROP CONSTRAINT IF EXISTS directus_comments_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_collections DROP CONSTRAINT IF EXISTS directus_collections_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_activity DROP CONSTRAINT IF EXISTS directus_activity_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_access DROP CONSTRAINT IF EXISTS directus_access_pkey;
ALTER TABLE IF EXISTS ONLY public."Deals" DROP CONSTRAINT IF EXISTS "Deals_pkey";
ALTER TABLE IF EXISTS ONLY public."DealStages" DROP CONSTRAINT IF EXISTS "DealStages_pkey";
ALTER TABLE IF EXISTS public.directus_webhooks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_revisions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_relations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_presets ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_notifications ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_fields ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_activity ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Deals" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DealStages" ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.directus_webhooks_id_seq;
DROP TABLE IF EXISTS public.directus_webhooks;
DROP TABLE IF EXISTS public.directus_versions;
DROP TABLE IF EXISTS public.directus_users;
DROP TABLE IF EXISTS public.directus_translations;
DROP TABLE IF EXISTS public.directus_shares;
DROP SEQUENCE IF EXISTS public.directus_settings_id_seq;
DROP TABLE IF EXISTS public.directus_settings;
DROP TABLE IF EXISTS public.directus_sessions;
DROP TABLE IF EXISTS public.directus_roles;
DROP SEQUENCE IF EXISTS public.directus_revisions_id_seq;
DROP TABLE IF EXISTS public.directus_revisions;
DROP SEQUENCE IF EXISTS public.directus_relations_id_seq;
DROP TABLE IF EXISTS public.directus_relations;
DROP SEQUENCE IF EXISTS public.directus_presets_id_seq;
DROP TABLE IF EXISTS public.directus_presets;
DROP TABLE IF EXISTS public.directus_policies;
DROP SEQUENCE IF EXISTS public.directus_permissions_id_seq;
DROP TABLE IF EXISTS public.directus_permissions;
DROP TABLE IF EXISTS public.directus_panels;
DROP TABLE IF EXISTS public.directus_operations;
DROP SEQUENCE IF EXISTS public.directus_notifications_id_seq;
DROP TABLE IF EXISTS public.directus_notifications;
DROP TABLE IF EXISTS public.directus_migrations;
DROP TABLE IF EXISTS public.directus_folders;
DROP TABLE IF EXISTS public.directus_flows;
DROP TABLE IF EXISTS public.directus_files;
DROP SEQUENCE IF EXISTS public.directus_fields_id_seq;
DROP TABLE IF EXISTS public.directus_fields;
DROP TABLE IF EXISTS public.directus_extensions;
DROP TABLE IF EXISTS public.directus_dashboards;
DROP TABLE IF EXISTS public.directus_comments;
DROP TABLE IF EXISTS public.directus_collections;
DROP SEQUENCE IF EXISTS public.directus_activity_id_seq;
DROP TABLE IF EXISTS public.directus_activity;
DROP TABLE IF EXISTS public.directus_access;
DROP SEQUENCE IF EXISTS public."Deals_id_seq";
DROP TABLE IF EXISTS public."Deals";
DROP SEQUENCE IF EXISTS public."DealStages_id_seq";
DROP TABLE IF EXISTS public."DealStages";
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: DealStages; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."DealStages" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    title character varying(255),
    deal integer,
    contracter uuid,
    content text,
    short_desc character varying(255)
);


ALTER TABLE public."DealStages" OWNER TO directus;

--
-- Name: DealStages_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."DealStages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DealStages_id_seq" OWNER TO directus;

--
-- Name: DealStages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."DealStages_id_seq" OWNED BY public."DealStages".id;


--
-- Name: Deals; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Deals" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    title character varying(255),
    content text,
    customer uuid,
    contracter uuid,
    short_desc character varying(255)
);


ALTER TABLE public."Deals" OWNER TO directus;

--
-- Name: Deals_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."Deals_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Deals_id_seq" OWNER TO directus;

--
-- Name: Deals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."Deals_id_seq" OWNED BY public."Deals".id;


--
-- Name: directus_access; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_access (
    id uuid NOT NULL,
    role uuid,
    "user" uuid,
    policy uuid NOT NULL,
    sort integer
);


ALTER TABLE public.directus_access OWNER TO directus;

--
-- Name: directus_activity; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_activity (
    id integer NOT NULL,
    action character varying(45) NOT NULL,
    "user" uuid,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ip character varying(50),
    user_agent text,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    origin character varying(255)
);


ALTER TABLE public.directus_activity OWNER TO directus;

--
-- Name: directus_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_activity_id_seq OWNER TO directus;

--
-- Name: directus_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_activity_id_seq OWNED BY public.directus_activity.id;


--
-- Name: directus_collections; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_collections (
    collection character varying(64) NOT NULL,
    icon character varying(64),
    note text,
    display_template character varying(255),
    hidden boolean DEFAULT false NOT NULL,
    singleton boolean DEFAULT false NOT NULL,
    translations json,
    archive_field character varying(64),
    archive_app_filter boolean DEFAULT true NOT NULL,
    archive_value character varying(255),
    unarchive_value character varying(255),
    sort_field character varying(64),
    accountability character varying(255) DEFAULT 'all'::character varying,
    color character varying(255),
    item_duplication_fields json,
    sort integer,
    "group" character varying(64),
    collapse character varying(255) DEFAULT 'open'::character varying NOT NULL,
    preview_url character varying(255),
    versioning boolean DEFAULT false NOT NULL
);


ALTER TABLE public.directus_collections OWNER TO directus;

--
-- Name: directus_comments; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_comments (
    id uuid NOT NULL,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    comment text NOT NULL,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    user_updated uuid
);


ALTER TABLE public.directus_comments OWNER TO directus;

--
-- Name: directus_dashboards; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_dashboards (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(64) DEFAULT 'dashboard'::character varying NOT NULL,
    note text,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    color character varying(255)
);


ALTER TABLE public.directus_dashboards OWNER TO directus;

--
-- Name: directus_extensions; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_extensions (
    enabled boolean DEFAULT true NOT NULL,
    id uuid NOT NULL,
    folder character varying(255) NOT NULL,
    source character varying(255) NOT NULL,
    bundle uuid
);


ALTER TABLE public.directus_extensions OWNER TO directus;

--
-- Name: directus_fields; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_fields (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    field character varying(64) NOT NULL,
    special character varying(64),
    interface character varying(64),
    options json,
    display character varying(64),
    display_options json,
    readonly boolean DEFAULT false NOT NULL,
    hidden boolean DEFAULT false NOT NULL,
    sort integer,
    width character varying(30) DEFAULT 'full'::character varying,
    translations json,
    note text,
    conditions json,
    required boolean DEFAULT false,
    "group" character varying(64),
    validation json,
    validation_message text
);


ALTER TABLE public.directus_fields OWNER TO directus;

--
-- Name: directus_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_fields_id_seq OWNER TO directus;

--
-- Name: directus_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_fields_id_seq OWNED BY public.directus_fields.id;


--
-- Name: directus_files; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_files (
    id uuid NOT NULL,
    storage character varying(255) NOT NULL,
    filename_disk character varying(255),
    filename_download character varying(255) NOT NULL,
    title character varying(255),
    type character varying(255),
    folder uuid,
    uploaded_by uuid,
    created_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modified_by uuid,
    modified_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    charset character varying(50),
    filesize bigint,
    width integer,
    height integer,
    duration integer,
    embed character varying(200),
    description text,
    location text,
    tags text,
    metadata json,
    focal_point_x integer,
    focal_point_y integer,
    tus_id character varying(64),
    tus_data json,
    uploaded_on timestamp with time zone
);


ALTER TABLE public.directus_files OWNER TO directus;

--
-- Name: directus_flows; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_flows (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(64),
    color character varying(255),
    description text,
    status character varying(255) DEFAULT 'active'::character varying NOT NULL,
    trigger character varying(255),
    accountability character varying(255) DEFAULT 'all'::character varying,
    options json,
    operation uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


ALTER TABLE public.directus_flows OWNER TO directus;

--
-- Name: directus_folders; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_folders (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    parent uuid
);


ALTER TABLE public.directus_folders OWNER TO directus;

--
-- Name: directus_migrations; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_migrations (
    version character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.directus_migrations OWNER TO directus;

--
-- Name: directus_notifications; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_notifications (
    id integer NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(255) DEFAULT 'inbox'::character varying,
    recipient uuid NOT NULL,
    sender uuid,
    subject character varying(255) NOT NULL,
    message text,
    collection character varying(64),
    item character varying(255)
);


ALTER TABLE public.directus_notifications OWNER TO directus;

--
-- Name: directus_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_notifications_id_seq OWNER TO directus;

--
-- Name: directus_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_notifications_id_seq OWNED BY public.directus_notifications.id;


--
-- Name: directus_operations; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_operations (
    id uuid NOT NULL,
    name character varying(255),
    key character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    options json,
    resolve uuid,
    reject uuid,
    flow uuid NOT NULL,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


ALTER TABLE public.directus_operations OWNER TO directus;

--
-- Name: directus_panels; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_panels (
    id uuid NOT NULL,
    dashboard uuid NOT NULL,
    name character varying(255),
    icon character varying(64) DEFAULT NULL::character varying,
    color character varying(10),
    show_header boolean DEFAULT false NOT NULL,
    note text,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    options json,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


ALTER TABLE public.directus_panels OWNER TO directus;

--
-- Name: directus_permissions; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_permissions (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    action character varying(10) NOT NULL,
    permissions json,
    validation json,
    presets json,
    fields text,
    policy uuid NOT NULL
);


ALTER TABLE public.directus_permissions OWNER TO directus;

--
-- Name: directus_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_permissions_id_seq OWNER TO directus;

--
-- Name: directus_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_permissions_id_seq OWNED BY public.directus_permissions.id;


--
-- Name: directus_policies; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_policies (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(64) DEFAULT 'badge'::character varying NOT NULL,
    description text,
    ip_access text,
    enforce_tfa boolean DEFAULT false NOT NULL,
    admin_access boolean DEFAULT false NOT NULL,
    app_access boolean DEFAULT false NOT NULL
);


ALTER TABLE public.directus_policies OWNER TO directus;

--
-- Name: directus_presets; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_presets (
    id integer NOT NULL,
    bookmark character varying(255),
    "user" uuid,
    role uuid,
    collection character varying(64),
    search character varying(100),
    layout character varying(100) DEFAULT 'tabular'::character varying,
    layout_query json,
    layout_options json,
    refresh_interval integer,
    filter json,
    icon character varying(64) DEFAULT 'bookmark'::character varying,
    color character varying(255)
);


ALTER TABLE public.directus_presets OWNER TO directus;

--
-- Name: directus_presets_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_presets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_presets_id_seq OWNER TO directus;

--
-- Name: directus_presets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_presets_id_seq OWNED BY public.directus_presets.id;


--
-- Name: directus_relations; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_relations (
    id integer NOT NULL,
    many_collection character varying(64) NOT NULL,
    many_field character varying(64) NOT NULL,
    one_collection character varying(64),
    one_field character varying(64),
    one_collection_field character varying(64),
    one_allowed_collections text,
    junction_field character varying(64),
    sort_field character varying(64),
    one_deselect_action character varying(255) DEFAULT 'nullify'::character varying NOT NULL
);


ALTER TABLE public.directus_relations OWNER TO directus;

--
-- Name: directus_relations_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_relations_id_seq OWNER TO directus;

--
-- Name: directus_relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_relations_id_seq OWNED BY public.directus_relations.id;


--
-- Name: directus_revisions; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_revisions (
    id integer NOT NULL,
    activity integer NOT NULL,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    data json,
    delta json,
    parent integer,
    version uuid
);


ALTER TABLE public.directus_revisions OWNER TO directus;

--
-- Name: directus_revisions_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_revisions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_revisions_id_seq OWNER TO directus;

--
-- Name: directus_revisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_revisions_id_seq OWNED BY public.directus_revisions.id;


--
-- Name: directus_roles; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_roles (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(64) DEFAULT 'supervised_user_circle'::character varying NOT NULL,
    description text,
    parent uuid
);


ALTER TABLE public.directus_roles OWNER TO directus;

--
-- Name: directus_sessions; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_sessions (
    token character varying(64) NOT NULL,
    "user" uuid,
    expires timestamp with time zone NOT NULL,
    ip character varying(255),
    user_agent text,
    share uuid,
    origin character varying(255),
    next_token character varying(64)
);


ALTER TABLE public.directus_sessions OWNER TO directus;

--
-- Name: directus_settings; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_settings (
    id integer NOT NULL,
    project_name character varying(100) DEFAULT 'Directus'::character varying NOT NULL,
    project_url character varying(255),
    project_color character varying(255) DEFAULT '#6644FF'::character varying NOT NULL,
    project_logo uuid,
    public_foreground uuid,
    public_background uuid,
    public_note text,
    auth_login_attempts integer DEFAULT 25,
    auth_password_policy character varying(100),
    storage_asset_transform character varying(7) DEFAULT 'all'::character varying,
    storage_asset_presets json,
    custom_css text,
    storage_default_folder uuid,
    basemaps json,
    mapbox_key character varying(255),
    module_bar json,
    project_descriptor character varying(100),
    default_language character varying(255) DEFAULT 'en-US'::character varying NOT NULL,
    custom_aspect_ratios json,
    public_favicon uuid,
    default_appearance character varying(255) DEFAULT 'auto'::character varying NOT NULL,
    default_theme_light character varying(255),
    theme_light_overrides json,
    default_theme_dark character varying(255),
    theme_dark_overrides json,
    report_error_url character varying(255),
    report_bug_url character varying(255),
    report_feature_url character varying(255),
    public_registration boolean DEFAULT false NOT NULL,
    public_registration_verify_email boolean DEFAULT true NOT NULL,
    public_registration_role uuid,
    public_registration_email_filter json,
    visual_editor_urls json,
    accepted_terms boolean DEFAULT false,
    project_id uuid
);


ALTER TABLE public.directus_settings OWNER TO directus;

--
-- Name: directus_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_settings_id_seq OWNER TO directus;

--
-- Name: directus_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_settings_id_seq OWNED BY public.directus_settings.id;


--
-- Name: directus_shares; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_shares (
    id uuid NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    role uuid,
    password character varying(255),
    user_created uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_start timestamp with time zone,
    date_end timestamp with time zone,
    times_used integer DEFAULT 0,
    max_uses integer
);


ALTER TABLE public.directus_shares OWNER TO directus;

--
-- Name: directus_translations; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_translations (
    id uuid NOT NULL,
    language character varying(255) NOT NULL,
    key character varying(255) NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.directus_translations OWNER TO directus;

--
-- Name: directus_users; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_users (
    id uuid NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(128),
    password character varying(255),
    location character varying(255),
    title character varying(50),
    description text,
    tags json,
    avatar uuid,
    language character varying(255) DEFAULT NULL::character varying,
    tfa_secret character varying(255),
    status character varying(16) DEFAULT 'active'::character varying NOT NULL,
    role uuid,
    token character varying(255),
    last_access timestamp with time zone,
    last_page character varying(255),
    provider character varying(128) DEFAULT 'default'::character varying NOT NULL,
    external_identifier character varying(255),
    auth_data json,
    email_notifications boolean DEFAULT true,
    appearance character varying(255),
    theme_dark character varying(255),
    theme_light character varying(255),
    theme_light_overrides json,
    theme_dark_overrides json,
    text_direction character varying(255) DEFAULT 'auto'::character varying NOT NULL
);


ALTER TABLE public.directus_users OWNER TO directus;

--
-- Name: directus_versions; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_versions (
    id uuid NOT NULL,
    key character varying(64) NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    hash character varying(255),
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    user_updated uuid,
    delta json
);


ALTER TABLE public.directus_versions OWNER TO directus;

--
-- Name: directus_webhooks; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_webhooks (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    method character varying(10) DEFAULT 'POST'::character varying NOT NULL,
    url character varying(255) NOT NULL,
    status character varying(10) DEFAULT 'active'::character varying NOT NULL,
    data boolean DEFAULT true NOT NULL,
    actions character varying(100) NOT NULL,
    collections character varying(255) NOT NULL,
    headers json,
    was_active_before_deprecation boolean DEFAULT false NOT NULL,
    migrated_flow uuid
);


ALTER TABLE public.directus_webhooks OWNER TO directus;

--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_webhooks_id_seq OWNER TO directus;

--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_webhooks_id_seq OWNED BY public.directus_webhooks.id;


--
-- Name: DealStages id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DealStages" ALTER COLUMN id SET DEFAULT nextval('public."DealStages_id_seq"'::regclass);


--
-- Name: Deals id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Deals" ALTER COLUMN id SET DEFAULT nextval('public."Deals_id_seq"'::regclass);


--
-- Name: directus_activity id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_activity ALTER COLUMN id SET DEFAULT nextval('public.directus_activity_id_seq'::regclass);


--
-- Name: directus_fields id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_fields ALTER COLUMN id SET DEFAULT nextval('public.directus_fields_id_seq'::regclass);


--
-- Name: directus_notifications id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_notifications ALTER COLUMN id SET DEFAULT nextval('public.directus_notifications_id_seq'::regclass);


--
-- Name: directus_permissions id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_permissions ALTER COLUMN id SET DEFAULT nextval('public.directus_permissions_id_seq'::regclass);


--
-- Name: directus_presets id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_presets ALTER COLUMN id SET DEFAULT nextval('public.directus_presets_id_seq'::regclass);


--
-- Name: directus_relations id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_relations ALTER COLUMN id SET DEFAULT nextval('public.directus_relations_id_seq'::regclass);


--
-- Name: directus_revisions id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_revisions ALTER COLUMN id SET DEFAULT nextval('public.directus_revisions_id_seq'::regclass);


--
-- Name: directus_settings id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings ALTER COLUMN id SET DEFAULT nextval('public.directus_settings_id_seq'::regclass);


--
-- Name: directus_webhooks id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_webhooks ALTER COLUMN id SET DEFAULT nextval('public.directus_webhooks_id_seq'::regclass);


--
-- Data for Name: DealStages; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."DealStages" (id, status, sort, user_created, date_created, user_updated, date_updated, title, deal, contracter, content, short_desc) FROM stdin;
\.


--
-- Data for Name: Deals; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Deals" (id, status, sort, user_created, date_created, user_updated, date_updated, title, content, customer, contracter, short_desc) FROM stdin;
1	published	\N	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 07:01:16.255+00	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:53:11.303+00	11111	<p>sfdsdfsdfsdf</p>	\N	\N	\N
2	draft	\N	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-29 07:11:49.591+00	\N	\N	New deal	New deal1111	\N	\N	\N
3	draft	\N	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-29 07:13:33.846+00	\N	\N	New deal	New deal1111	\N	\N	\N
4	draft	\N	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-29 12:12:11.602+00	\N	\N	New deal	New deal1111	\N	\N	\N
\.


--
-- Data for Name: directus_access; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_access (id, role, "user", policy, sort) FROM stdin;
e2d3e3b0-a797-45d1-983d-408f40238a2c	\N	\N	abf8a154-5b1c-4a46-ac9c-7300570f4f17	1
e12e0ba1-800d-4ce8-989f-346623b0036d	4e13e3eb-06cd-4dcf-8399-fb6951a1c31e	\N	0704640f-2cf2-4ff8-b738-0dc328359a38	\N
81f45204-08bb-4df7-8077-da93ffa70388	\N	5ae62cc7-df75-48d8-a9cc-5090d8747a54	0704640f-2cf2-4ff8-b738-0dc328359a38	\N
a86cbae1-9599-4570-8c36-960e6b5ece30	984b726e-da32-4ecc-84f2-ddd4883cbe24	\N	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	\N
\.


--
-- Data for Name: directus_activity; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_activity (id, action, "user", "timestamp", ip, user_agent, collection, item, origin) FROM stdin;
1	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 06:27:42.573+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:8055
2	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 06:27:47.448+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_settings	1	http://localhost:8055
3	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 06:28:41.383+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:8055
4	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 06:30:21.658+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	1	http://localhost:8055
5	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 06:30:21.665+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	2	http://localhost:8055
6	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 06:30:21.668+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	3	http://localhost:8055
7	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 06:30:21.67+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	4	http://localhost:8055
8	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 06:30:21.673+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	5	http://localhost:8055
9	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 06:30:21.674+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	6	http://localhost:8055
10	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 06:30:21.676+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	7	http://localhost:8055
11	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 06:30:21.678+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_collections	Deals	http://localhost:8055
12	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 06:30:39.048+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	8	http://localhost:8055
13	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 06:31:02.069+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	9	http://localhost:8055
14	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 06:33:44.119+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	10	http://localhost:8055
15	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 06:34:30.89+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	11	http://localhost:8055
16	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 07:01:16.265+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	Deals	1	http://localhost:8055
17	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 07:05:11.001+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_roles	984b726e-da32-4ecc-84f2-ddd4883cbe24	http://localhost:8055
18	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 07:05:11.012+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_settings	1	http://localhost:8055
19	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 07:12:31.429+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	http://localhost:8055
20	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 07:12:31.433+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_roles	984b726e-da32-4ecc-84f2-ddd4883cbe24	http://localhost:8055
21	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 07:12:39.803+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	http://localhost:8055
22	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-28 07:54:40.802+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	http://localhost:3000
23	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-28 11:33:25.541+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	http://localhost:3000
24	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:35:16.418+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	Deals	1	http://localhost:8055
25	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:36:31.844+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_roles	984b726e-da32-4ecc-84f2-ddd4883cbe24	http://localhost:8055
26	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:37:53.06+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	http://localhost:8055
27	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:40:18.058+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_access	bac8e64a-be0e-4c52-b294-6e130d7b7a66	http://localhost:8055
28	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:40:18.069+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	1	http://localhost:8055
29	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:40:18.072+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	2	http://localhost:8055
30	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:40:18.075+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	3	http://localhost:8055
31	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:40:18.078+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	4	http://localhost:8055
32	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:40:18.08+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	http://localhost:8055
33	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:41:25.876+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	5	http://localhost:8055
34	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:41:25.88+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	6	http://localhost:8055
35	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:41:25.883+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	1	http://localhost:8055
36	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:41:25.886+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	2	http://localhost:8055
37	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:41:25.89+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	3	http://localhost:8055
38	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:41:25.894+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	http://localhost:8055
39	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:42:12.981+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	1	http://localhost:8055
40	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:42:12.986+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	2	http://localhost:8055
41	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:42:12.988+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	3	http://localhost:8055
42	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:42:12.992+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	5	http://localhost:8055
43	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:42:12.998+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	6	http://localhost:8055
44	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:42:13.004+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	http://localhost:8055
45	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-28 11:44:46.512+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	http://localhost:3000
46	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:47:44.922+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	4	http://localhost:8055
47	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:47:44.926+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	http://localhost:8055
48	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:51:03.509+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:3000
49	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:52:25.576+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_collections	Deals	http://localhost:8055
50	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:53:11.307+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	Deals	1	http://localhost:8055
51	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:56:08.484+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	http://localhost:8055
52	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:57:18.547+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	http://localhost:8055
53	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 11:58:18.186+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	http://localhost:8055
84	delete	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 12:02:42.756+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_access	bac8e64a-be0e-4c52-b294-6e130d7b7a66	http://localhost:8055
85	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 12:02:42.764+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	http://localhost:8055
86	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 12:03:22.659+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	http://localhost:8055
87	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 12:03:22.671+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_roles	4e13e3eb-06cd-4dcf-8399-fb6951a1c31e	http://localhost:8055
88	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 12:04:59.011+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_access	81f45204-08bb-4df7-8077-da93ffa70388	http://localhost:8055
89	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 12:04:59.014+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_access	e4a3a2f7-e40d-46f8-8d91-9d9476f705f5	http://localhost:8055
90	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 12:04:59.016+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_policies	0704640f-2cf2-4ff8-b738-0dc328359a38	http://localhost:8055
91	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 12:09:31.515+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:3000
92	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 12:16:33.603+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:3000
93	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 12:23:27.551+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:3000
94	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 12:39:14.891+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:3000
95	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 12:59:33.23+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:3000
96	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 13:11:29.088+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:3000
97	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 13:11:34.401+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:3000
98	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 13:12:08.466+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:3000
99	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 13:14:11.371+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:3000
100	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 13:14:17.011+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:3000
101	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 13:20:56.582+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:3000
102	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-28 13:22:39.186+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:3000
103	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-29 06:16:33.513+00	172.23.0.1	node	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	\N
104	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 06:48:14.528+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
105	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 06:49:55.573+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
106	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 06:50:12.205+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
107	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 06:51:22.066+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
108	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 06:52:44.6+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
109	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 06:53:14.491+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
110	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 06:54:11.696+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
111	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 06:54:42.374+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
112	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 06:55:04.653+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
113	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:00:42.502+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
114	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:01:09.809+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
115	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:01:59.578+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
116	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:02:09.188+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
117	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:04:14.475+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
118	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:06:01.086+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
119	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:07:03.65+00	172.23.0.1	node	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N
120	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:08:59.073+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:8055
121	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-29 07:09:50.543+00	172.23.0.1	node	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	\N
122	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-29 07:10:42.363+00	172.23.0.1	node	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	\N
123	create	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-29 07:11:49.604+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	Deals	2	http://localhost:3000
124	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:12:10.124+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	http://localhost:8055
125	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:12:42.775+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	2	http://localhost:8055
126	delete	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:12:42.779+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	1	http://localhost:8055
127	delete	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:12:42.78+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	3	http://localhost:8055
128	delete	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:12:42.78+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	4	http://localhost:8055
129	delete	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:12:42.781+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	5	http://localhost:8055
130	delete	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:12:42.781+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	6	http://localhost:8055
131	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:12:42.783+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	http://localhost:8055
132	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:12:58.497+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_access	a86cbae1-9599-4570-8c36-960e6b5ece30	http://localhost:8055
133	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:12:58.506+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	http://localhost:8055
134	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:13:03.847+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_roles	984b726e-da32-4ecc-84f2-ddd4883cbe24	http://localhost:8055
135	delete	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:13:21.418+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_access	e4a3a2f7-e40d-46f8-8d91-9d9476f705f5	http://localhost:8055
136	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:13:21.424+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_policies	0704640f-2cf2-4ff8-b738-0dc328359a38	http://localhost:8055
137	create	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-29 07:13:33.847+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	Deals	3	http://localhost:3000
138	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-29 07:13:52.432+00	172.23.0.1	node	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	\N
139	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 07:14:08.392+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:8055
140	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-29 07:15:24.014+00	172.23.0.1	node	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	\N
141	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-29 12:05:28.344+00	172.23.0.1	node	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	\N
142	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-29 12:05:46.338+00	172.23.0.1	node	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	\N
143	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-29 12:11:19.845+00	172.23.0.1	node	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	\N
144	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-29 12:11:34.495+00	172.23.0.1	node	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	\N
145	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 12:12:07.389+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	7	http://localhost:8055
146	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-08-29 12:12:07.4+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	http://localhost:8055
147	create	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-08-29 12:12:11.604+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	Deals	4	http://localhost:3000
148	login	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:45:25.982+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	http://localhost:8055
149	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-01 07:46:14.376+00	172.23.0.1	node	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	\N
150	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-01 07:50:33.295+00	172.23.0.1	node	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	\N
151	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:53:25.505+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	1	http://localhost:8055
152	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:54:40.335+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	12	http://localhost:8055
153	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:54:40.34+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	13	http://localhost:8055
154	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:54:40.344+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	14	http://localhost:8055
155	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:54:40.346+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	15	http://localhost:8055
156	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:54:40.348+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	16	http://localhost:8055
157	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:54:40.35+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	17	http://localhost:8055
158	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:54:40.352+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	18	http://localhost:8055
159	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:54:40.354+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_collections	DealStages	http://localhost:8055
160	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:54:56.982+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	19	http://localhost:8055
161	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:55:51.363+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	20	http://localhost:8055
162	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:56:10.569+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	20	http://localhost:8055
163	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:56:24.835+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	20	http://localhost:8055
164	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:56:54.59+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	20	http://localhost:8055
165	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:58:12.968+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	21	http://localhost:8055
166	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 07:58:47.238+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_collections	DealStages	http://localhost:8055
167	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:00:53.917+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	21	http://localhost:8055
168	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:01:30.751+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	21	http://localhost:8055
169	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:56:15.608+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	12	http://localhost:8055
170	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:56:55.641+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	22	http://localhost:8055
171	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:57:11.779+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	23	http://localhost:8055
172	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:57:58.299+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	24	http://localhost:8055
173	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:58:02.874+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	1	http://localhost:8055
174	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:58:02.887+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	2	http://localhost:8055
175	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:58:02.891+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	3	http://localhost:8055
176	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:58:02.896+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	4	http://localhost:8055
177	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:58:02.901+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	5	http://localhost:8055
178	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:58:02.904+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	6	http://localhost:8055
179	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:58:02.908+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	7	http://localhost:8055
180	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:58:02.913+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	8	http://localhost:8055
181	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:58:02.917+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	24	http://localhost:8055
182	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:58:02.92+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	9	http://localhost:8055
183	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:58:02.925+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	10	http://localhost:8055
184	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 08:58:02.93+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_fields	11	http://localhost:8055
185	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-01 11:45:30.715+00	172.23.0.1	node	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	\N
186	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 11:46:23.093+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	8	http://localhost:8055
187	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 11:46:23.096+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	9	http://localhost:8055
188	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 11:46:23.098+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	10	http://localhost:8055
189	create	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 11:46:23.1+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_permissions	11	http://localhost:8055
190	update	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-01 11:46:23.102+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	http://localhost:8055
191	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-01 12:00:54.474+00	172.23.0.1	node	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	\N
192	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-01 12:29:22.212+00	172.23.0.1	node	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	\N
193	login	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-01 12:55:41.468+00	172.23.0.1	node	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	\N
\.


--
-- Data for Name: directus_collections; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations, archive_field, archive_app_filter, archive_value, unarchive_value, sort_field, accountability, color, item_duplication_fields, sort, "group", collapse, preview_url, versioning) FROM stdin;
Deals	\N	\N	{{title}}	f	f	\N	status	t	archived	draft	sort	all	\N	\N	\N	\N	open	\N	f
DealStages	\N	\N	{{deal.title}}{{title}}	f	f	\N	status	t	archived	draft	sort	all	\N	\N	\N	\N	open	\N	f
\.


--
-- Data for Name: directus_comments; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_comments (id, collection, item, comment, date_created, date_updated, user_created, user_updated) FROM stdin;
\.


--
-- Data for Name: directus_dashboards; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_dashboards (id, name, icon, note, date_created, user_created, color) FROM stdin;
\.


--
-- Data for Name: directus_extensions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_extensions (enabled, id, folder, source, bundle) FROM stdin;
\.


--
-- Data for Name: directus_fields; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_fields (id, collection, field, special, interface, options, display, display_options, readonly, hidden, sort, width, translations, note, conditions, required, "group", validation, validation_message) FROM stdin;
13	DealStages	status	\N	select-dropdown	{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]}	labels	{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
14	DealStages	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
15	DealStages	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
16	DealStages	date_created	date-created	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
17	DealStages	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
18	DealStages	date_updated	date-updated	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
19	DealStages	title	\N	input	\N	\N	\N	f	f	8	full	\N	\N	\N	t	\N	\N	\N
20	DealStages	deal	m2o	select-dropdown-m2o	{"enableCreate":false,"enableLink":true,"template":"{{id}}{{title}}"}	\N	\N	f	f	9	full	\N	\N	\N	t	\N	\N	\N
21	DealStages	contracter	m2o	select-dropdown-m2o	{"template":"{{first_name}}  {{email}}"}	\N	\N	f	f	10	full	\N	\N	\N	f	\N	\N	\N
12	DealStages	id	\N	input	\N	\N	\N	t	f	1	full	\N	\N	\N	f	\N	\N	\N
22	DealStages	content	\N	input-rich-text-html	\N	\N	\N	f	f	11	full	\N	\N	\N	f	\N	\N	\N
23	DealStages	short_desc	\N	input	\N	\N	\N	f	f	12	full	\N	\N	\N	f	\N	\N	\N
1	Deals	id	\N	input	\N	\N	\N	t	f	1	full	\N	\N	\N	f	\N	\N	\N
2	Deals	status	\N	select-dropdown	{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]}	labels	{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
3	Deals	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
4	Deals	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
5	Deals	date_created	date-created	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
6	Deals	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
7	Deals	date_updated	date-updated	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
8	Deals	title	\N	input	\N	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
24	Deals	short_desc	\N	input	\N	\N	\N	f	f	9	full	\N	\N	\N	f	\N	\N	\N
9	Deals	content	\N	input-rich-text-html	\N	\N	\N	f	f	10	full	\N	\N	\N	f	\N	\N	\N
10	Deals	customer	m2o	select-dropdown-m2o	{"template":"{{first_name}}{{last_name}}{{id}}","filter":null}	\N	\N	f	f	11	full	\N	\N	\N	f	\N	\N	\N
11	Deals	contracter	m2o	select-dropdown-m2o	{"template":"{{id}}{{first_name}}{{last_name}}"}	\N	\N	f	f	12	full	\N	\N	\N	f	\N	\N	\N
\.


--
-- Data for Name: directus_files; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_files (id, storage, filename_disk, filename_download, title, type, folder, uploaded_by, created_on, modified_by, modified_on, charset, filesize, width, height, duration, embed, description, location, tags, metadata, focal_point_x, focal_point_y, tus_id, tus_data, uploaded_on) FROM stdin;
\.


--
-- Data for Name: directus_flows; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_flows (id, name, icon, color, description, status, trigger, accountability, options, operation, date_created, user_created) FROM stdin;
\.


--
-- Data for Name: directus_folders; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_folders (id, name, parent) FROM stdin;
\.


--
-- Data for Name: directus_migrations; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_migrations (version, name, "timestamp") FROM stdin;
20201028A	Remove Collection Foreign Keys	2025-08-28 06:27:02.198709+00
20201029A	Remove System Relations	2025-08-28 06:27:02.206701+00
20201029B	Remove System Collections	2025-08-28 06:27:02.212204+00
20201029C	Remove System Fields	2025-08-28 06:27:02.220035+00
20201105A	Add Cascade System Relations	2025-08-28 06:27:02.289399+00
20201105B	Change Webhook URL Type	2025-08-28 06:27:02.301856+00
20210225A	Add Relations Sort Field	2025-08-28 06:27:02.309909+00
20210304A	Remove Locked Fields	2025-08-28 06:27:02.315076+00
20210312A	Webhooks Collections Text	2025-08-28 06:27:02.326078+00
20210331A	Add Refresh Interval	2025-08-28 06:27:02.33271+00
20210415A	Make Filesize Nullable	2025-08-28 06:27:02.349484+00
20210416A	Add Collections Accountability	2025-08-28 06:27:02.358656+00
20210422A	Remove Files Interface	2025-08-28 06:27:02.363205+00
20210506A	Rename Interfaces	2025-08-28 06:27:02.387984+00
20210510A	Restructure Relations	2025-08-28 06:27:02.413003+00
20210518A	Add Foreign Key Constraints	2025-08-28 06:27:02.432817+00
20210519A	Add System Fk Triggers	2025-08-28 06:27:02.491474+00
20210521A	Add Collections Icon Color	2025-08-28 06:27:02.495882+00
20210525A	Add Insights	2025-08-28 06:27:02.538736+00
20210608A	Add Deep Clone Config	2025-08-28 06:27:02.544274+00
20210626A	Change Filesize Bigint	2025-08-28 06:27:02.57139+00
20210716A	Add Conditions to Fields	2025-08-28 06:27:02.576262+00
20210721A	Add Default Folder	2025-08-28 06:27:02.585928+00
20210802A	Replace Groups	2025-08-28 06:27:02.592063+00
20210803A	Add Required to Fields	2025-08-28 06:27:02.596623+00
20210805A	Update Groups	2025-08-28 06:27:02.599955+00
20210805B	Change Image Metadata Structure	2025-08-28 06:27:02.60371+00
20210811A	Add Geometry Config	2025-08-28 06:27:02.608523+00
20210831A	Remove Limit Column	2025-08-28 06:27:02.613717+00
20210903A	Add Auth Provider	2025-08-28 06:27:02.651512+00
20210907A	Webhooks Collections Not Null	2025-08-28 06:27:02.666447+00
20210910A	Move Module Setup	2025-08-28 06:27:02.67447+00
20210920A	Webhooks URL Not Null	2025-08-28 06:27:02.685657+00
20210924A	Add Collection Organization	2025-08-28 06:27:02.69278+00
20210927A	Replace Fields Group	2025-08-28 06:27:02.714795+00
20210927B	Replace M2M Interface	2025-08-28 06:27:02.719772+00
20210929A	Rename Login Action	2025-08-28 06:27:02.724267+00
20211007A	Update Presets	2025-08-28 06:27:02.735094+00
20211009A	Add Auth Data	2025-08-28 06:27:02.740112+00
20211016A	Add Webhook Headers	2025-08-28 06:27:02.746012+00
20211103A	Set Unique to User Token	2025-08-28 06:27:02.76079+00
20211103B	Update Special Geometry	2025-08-28 06:27:02.765444+00
20211104A	Remove Collections Listing	2025-08-28 06:27:02.771272+00
20211118A	Add Notifications	2025-08-28 06:27:02.800757+00
20211211A	Add Shares	2025-08-28 06:27:02.839818+00
20211230A	Add Project Descriptor	2025-08-28 06:27:02.844238+00
20220303A	Remove Default Project Color	2025-08-28 06:27:02.85463+00
20220308A	Add Bookmark Icon and Color	2025-08-28 06:27:02.858937+00
20220314A	Add Translation Strings	2025-08-28 06:27:02.863422+00
20220322A	Rename Field Typecast Flags	2025-08-28 06:27:02.868421+00
20220323A	Add Field Validation	2025-08-28 06:27:02.872613+00
20220325A	Fix Typecast Flags	2025-08-28 06:27:02.877587+00
20220325B	Add Default Language	2025-08-28 06:27:02.892131+00
20220402A	Remove Default Value Panel Icon	2025-08-28 06:27:02.905114+00
20220429A	Add Flows	2025-08-28 06:27:02.982181+00
20220429B	Add Color to Insights Icon	2025-08-28 06:27:02.987295+00
20220429C	Drop Non Null From IP of Activity	2025-08-28 06:27:02.992527+00
20220429D	Drop Non Null From Sender of Notifications	2025-08-28 06:27:02.997456+00
20220614A	Rename Hook Trigger to Event	2025-08-28 06:27:03.001448+00
20220801A	Update Notifications Timestamp Column	2025-08-28 06:27:03.014949+00
20220802A	Add Custom Aspect Ratios	2025-08-28 06:27:03.019217+00
20220826A	Add Origin to Accountability	2025-08-28 06:27:03.025022+00
20230401A	Update Material Icons	2025-08-28 06:27:03.036123+00
20230525A	Add Preview Settings	2025-08-28 06:27:03.041939+00
20230526A	Migrate Translation Strings	2025-08-28 06:27:03.065178+00
20230721A	Require Shares Fields	2025-08-28 06:27:03.074119+00
20230823A	Add Content Versioning	2025-08-28 06:27:03.105364+00
20230927A	Themes	2025-08-28 06:27:03.131166+00
20231009A	Update CSV Fields to Text	2025-08-28 06:27:03.138079+00
20231009B	Update Panel Options	2025-08-28 06:27:03.142312+00
20231010A	Add Extensions	2025-08-28 06:27:03.153972+00
20231215A	Add Focalpoints	2025-08-28 06:27:03.159254+00
20240122A	Add Report URL Fields	2025-08-28 06:27:03.16467+00
20240204A	Marketplace	2025-08-28 06:27:03.215223+00
20240305A	Change Useragent Type	2025-08-28 06:27:03.234909+00
20240311A	Deprecate Webhooks	2025-08-28 06:27:03.247523+00
20240422A	Public Registration	2025-08-28 06:27:03.256029+00
20240515A	Add Session Window	2025-08-28 06:27:03.26245+00
20240701A	Add Tus Data	2025-08-28 06:27:03.268283+00
20240716A	Update Files Date Fields	2025-08-28 06:27:03.282649+00
20240806A	Permissions Policies	2025-08-28 06:27:03.368561+00
20240817A	Update Icon Fields Length	2025-08-28 06:27:03.438055+00
20240909A	Separate Comments	2025-08-28 06:27:03.46912+00
20240909B	Consolidate Content Versioning	2025-08-28 06:27:03.475378+00
20240924A	Migrate Legacy Comments	2025-08-28 06:27:03.486242+00
20240924B	Populate Versioning Deltas	2025-08-28 06:27:03.490158+00
20250224A	Visual Editor	2025-08-28 06:27:03.496362+00
20250609A	License Banner	2025-08-28 06:27:03.503358+00
20250613A	Add Project ID	2025-08-28 06:27:03.515765+00
20250718A	Add Direction	2025-08-28 06:27:03.520078+00
\.


--
-- Data for Name: directus_notifications; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_notifications (id, "timestamp", status, recipient, sender, subject, message, collection, item) FROM stdin;
\.


--
-- Data for Name: directus_operations; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_operations (id, name, key, type, position_x, position_y, options, resolve, reject, flow, date_created, user_created) FROM stdin;
\.


--
-- Data for Name: directus_panels; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_panels (id, dashboard, name, icon, color, show_header, note, type, position_x, position_y, width, height, options, date_created, user_created) FROM stdin;
\.


--
-- Data for Name: directus_permissions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_permissions (id, collection, action, permissions, validation, presets, fields, policy) FROM stdin;
2	Deals	read	\N	\N	\N	*	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659
7	Deals	create	\N	\N	\N	*	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659
8	DealStages	create	\N	\N	\N	*	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659
9	DealStages	update	\N	\N	\N	*	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659
10	Deals	update	\N	\N	\N	*	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659
11	DealStages	read	\N	\N	\N	*	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659
\.


--
-- Data for Name: directus_policies; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_policies (id, name, icon, description, ip_access, enforce_tfa, admin_access, app_access) FROM stdin;
abf8a154-5b1c-4a46-ac9c-7300570f4f17	$t:public_label	public	$t:public_description	\N	f	f	f
0704640f-2cf2-4ff8-b738-0dc328359a38	Administrator	verified	$t:admin_description	\N	f	t	t
dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	customerPolicy	accessibility	\N	\N	f	f	f
\.


--
-- Data for Name: directus_presets; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query, layout_options, refresh_interval, filter, icon, color) FROM stdin;
1	\N	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N	directus_users	\N	cards	{"cards":{"sort":["email"],"page":1}}	{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}	\N	\N	bookmark	\N
3	\N	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N	Deals	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
2	\N	5ae62cc7-df75-48d8-a9cc-5090d8747a54	\N	DealStages	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
\.


--
-- Data for Name: directus_relations; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field, one_allowed_collections, junction_field, sort_field, one_deselect_action) FROM stdin;
1	Deals	user_updated	directus_users	\N	\N	\N	\N	\N	nullify
2	Deals	user_created	directus_users	\N	\N	\N	\N	\N	nullify
3	Deals	customer	directus_users	\N	\N	\N	\N	\N	nullify
4	Deals	contracter	directus_users	\N	\N	\N	\N	\N	nullify
5	DealStages	user_created	directus_users	\N	\N	\N	\N	\N	nullify
6	DealStages	user_updated	directus_users	\N	\N	\N	\N	\N	nullify
7	DealStages	deal	Deals	\N	\N	\N	\N	\N	nullify
8	DealStages	contracter	directus_users	\N	\N	\N	\N	\N	nullify
\.


--
-- Data for Name: directus_revisions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_revisions (id, activity, collection, item, data, delta, parent, version) FROM stdin;
1	2	directus_settings	1	{"id":1,"project_name":"Directus","project_url":null,"project_color":"#6644FF","project_logo":null,"public_foreground":null,"public_background":null,"public_note":null,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"custom_css":null,"storage_default_folder":null,"basemaps":null,"mapbox_key":null,"module_bar":null,"project_descriptor":null,"default_language":"en-US","custom_aspect_ratios":null,"public_favicon":null,"default_appearance":"auto","default_theme_light":null,"theme_light_overrides":null,"default_theme_dark":null,"theme_dark_overrides":null,"report_error_url":null,"report_bug_url":null,"report_feature_url":null,"public_registration":false,"public_registration_verify_email":true,"public_registration_role":null,"public_registration_email_filter":null,"visual_editor_urls":null,"accepted_terms":true,"project_id":"0198ef5b-bcd9-75f8-8864-86dafb091bf6"}	{"accepted_terms":true}	\N	\N
2	3	directus_users	5ae62cc7-df75-48d8-a9cc-5090d8747a54	{"id":"5ae62cc7-df75-48d8-a9cc-5090d8747a54","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"active","role":"4e13e3eb-06cd-4dcf-8399-fb6951a1c31e","token":"**********","last_access":"2025-08-28T06:27:42.577Z","last_page":"/users/5ae62cc7-df75-48d8-a9cc-5090d8747a54","provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"text_direction":"auto","policies":[]}	{"token":"**********"}	\N	\N
3	4	directus_fields	1	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"Deals"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"Deals"}	\N	\N
4	5	directus_fields	2	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"field":"status","collection":"Deals"}	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"field":"status","collection":"Deals"}	\N	\N
5	6	directus_fields	3	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"Deals"}	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"Deals"}	\N	\N
6	7	directus_fields	4	{"sort":4,"special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar}} {{first_name}} {{last_name}}"},"display":"user","readonly":true,"hidden":true,"width":"half","field":"user_created","collection":"Deals"}	{"sort":4,"special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar}} {{first_name}} {{last_name}}"},"display":"user","readonly":true,"hidden":true,"width":"half","field":"user_created","collection":"Deals"}	\N	\N
7	8	directus_fields	5	{"sort":5,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"Deals"}	{"sort":5,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"Deals"}	\N	\N
8	9	directus_fields	6	{"sort":6,"special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar}} {{first_name}} {{last_name}}"},"display":"user","readonly":true,"hidden":true,"width":"half","field":"user_updated","collection":"Deals"}	{"sort":6,"special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar}} {{first_name}} {{last_name}}"},"display":"user","readonly":true,"hidden":true,"width":"half","field":"user_updated","collection":"Deals"}	\N	\N
9	10	directus_fields	7	{"sort":7,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"Deals"}	{"sort":7,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"Deals"}	\N	\N
10	11	directus_collections	Deals	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"Deals"}	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"Deals"}	\N	\N
11	12	directus_fields	8	{"sort":8,"interface":"input","special":null,"collection":"Deals","field":"title"}	{"sort":8,"interface":"input","special":null,"collection":"Deals","field":"title"}	\N	\N
12	13	directus_fields	9	{"sort":9,"interface":"input-rich-text-html","special":null,"collection":"Deals","field":"content"}	{"sort":9,"interface":"input-rich-text-html","special":null,"collection":"Deals","field":"content"}	\N	\N
13	14	directus_fields	10	{"sort":10,"interface":"select-dropdown-m2o","special":["m2o"],"options":{"template":"{{first_name}}{{last_name}}{{id}}","filter":null},"collection":"Deals","field":"customer"}	{"sort":10,"interface":"select-dropdown-m2o","special":["m2o"],"options":{"template":"{{first_name}}{{last_name}}{{id}}","filter":null},"collection":"Deals","field":"customer"}	\N	\N
14	15	directus_fields	11	{"sort":11,"interface":"select-dropdown-m2o","special":["m2o"],"options":{"template":"{{id}}{{first_name}}{{last_name}}"},"collection":"Deals","field":"contracter"}	{"sort":11,"interface":"select-dropdown-m2o","special":["m2o"],"options":{"template":"{{id}}{{first_name}}{{last_name}}"},"collection":"Deals","field":"contracter"}	\N	\N
15	16	Deals	1	{"title":"11111"}	{"title":"11111"}	\N	\N
17	18	directus_settings	1	{"id":1,"project_name":"Directus","project_url":null,"project_color":"#6644FF","project_logo":null,"public_foreground":null,"public_background":null,"public_note":null,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"custom_css":null,"storage_default_folder":null,"basemaps":null,"mapbox_key":null,"module_bar":null,"project_descriptor":null,"default_language":"en-US","custom_aspect_ratios":null,"public_favicon":null,"default_appearance":"auto","default_theme_light":null,"theme_light_overrides":null,"default_theme_dark":null,"theme_dark_overrides":null,"report_error_url":null,"report_bug_url":null,"report_feature_url":null,"public_registration":true,"public_registration_verify_email":false,"public_registration_role":"984b726e-da32-4ecc-84f2-ddd4883cbe24","public_registration_email_filter":null,"visual_editor_urls":null,"accepted_terms":true,"project_id":"0198ef5b-bcd9-75f8-8864-86dafb091bf6"}	{"public_registration":true,"public_registration_verify_email":false,"public_registration_role":"984b726e-da32-4ecc-84f2-ddd4883cbe24"}	\N	\N
16	17	directus_roles	984b726e-da32-4ecc-84f2-ddd4883cbe24	{"name":"customer"}	{"name":"customer"}	17	\N
18	19	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	{"first_name":"test","email":"test@example.com","password":"**********","role":"984b726e-da32-4ecc-84f2-ddd4883cbe24"}	{"first_name":"test","email":"test@example.com","password":"**********","role":"984b726e-da32-4ecc-84f2-ddd4883cbe24"}	\N	\N
19	21	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	{"id":"9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf","first_name":"test","last_name":"1","email":"test@example.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"active","role":"984b726e-da32-4ecc-84f2-ddd4883cbe24","token":null,"last_access":null,"last_page":null,"provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"text_direction":"auto","policies":[]}	{"last_name":"1"}	\N	\N
20	24	Deals	1	{"id":1,"status":"draft","sort":null,"user_created":"5ae62cc7-df75-48d8-a9cc-5090d8747a54","date_created":"2025-08-28T07:01:16.255Z","user_updated":"5ae62cc7-df75-48d8-a9cc-5090d8747a54","date_updated":"2025-08-28T11:35:16.414Z","title":"11111","content":"<p>sfdsdfsdfsdf</p>","customer":null,"contracter":null}	{"content":"<p>sfdsdfsdfsdf</p>","user_updated":"5ae62cc7-df75-48d8-a9cc-5090d8747a54","date_updated":"2025-08-28T11:35:16.414Z"}	\N	\N
21	25	directus_roles	984b726e-da32-4ecc-84f2-ddd4883cbe24	{"id":"984b726e-da32-4ecc-84f2-ddd4883cbe24","name":"customer","icon":"accessibility","description":null,"parent":null,"children":[],"policies":[],"users":["9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf"]}	{"icon":"accessibility"}	\N	\N
22	26	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	{"name":"customer","admin_access":false,"app_access":false}	{"name":"customer","admin_access":false,"app_access":false}	\N	\N
28	32	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	{"id":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","name":"customer","icon":"accessibility","description":null,"ip_access":null,"enforce_tfa":false,"admin_access":false,"app_access":false,"permissions":[1,2,3,4],"users":["bac8e64a-be0e-4c52-b294-6e130d7b7a66"],"roles":["bac8e64a-be0e-4c52-b294-6e130d7b7a66"]}	{"icon":"accessibility"}	\N	\N
23	27	directus_access	bac8e64a-be0e-4c52-b294-6e130d7b7a66	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","role":{"id":"984b726e-da32-4ecc-84f2-ddd4883cbe24"}}	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","role":{"id":"984b726e-da32-4ecc-84f2-ddd4883cbe24"}}	28	\N
24	28	directus_permissions	1	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"create"}	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"create"}	28	\N
25	29	directus_permissions	2	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"read"}	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"read"}	28	\N
26	30	directus_permissions	3	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"update"}	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"update"}	28	\N
27	31	directus_permissions	4	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"directus_users","action":"read"}	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"directus_users","action":"read"}	28	\N
29	33	directus_permissions	5	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"delete"}	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"delete"}	\N	\N
30	34	directus_permissions	6	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"share"}	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"share"}	\N	\N
31	35	directus_permissions	1	{"id":1,"collection":"Deals","action":"create","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	{"collection":"Deals","action":"create","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	\N	\N
32	36	directus_permissions	2	{"id":2,"collection":"Deals","action":"read","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	{"collection":"Deals","action":"read","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	\N	\N
33	37	directus_permissions	3	{"id":3,"collection":"Deals","action":"update","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	{"collection":"Deals","action":"update","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	\N	\N
34	39	directus_permissions	1	{"id":1,"collection":"Deals","action":"create","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	{"collection":"Deals","action":"create","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	\N	\N
35	40	directus_permissions	2	{"id":2,"collection":"Deals","action":"read","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	{"collection":"Deals","action":"read","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	\N	\N
36	41	directus_permissions	3	{"id":3,"collection":"Deals","action":"update","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	{"collection":"Deals","action":"update","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	\N	\N
37	42	directus_permissions	5	{"id":5,"collection":"Deals","action":"delete","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	{"collection":"Deals","action":"delete","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	\N	\N
38	43	directus_permissions	6	{"id":6,"collection":"Deals","action":"share","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	{"collection":"Deals","action":"share","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	\N	\N
39	46	directus_permissions	4	{"id":4,"collection":"directus_users","action":"read","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	{"collection":"directus_users","action":"read","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	\N	\N
40	49	directus_collections	Deals	{"collection":"Deals","icon":null,"note":null,"display_template":"{{title}}","hidden":false,"singleton":false,"translations":null,"archive_field":"status","archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":"sort","accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"display_template":"{{title}}"}	\N	\N
41	50	Deals	1	{"id":1,"status":"published","sort":null,"user_created":"5ae62cc7-df75-48d8-a9cc-5090d8747a54","date_created":"2025-08-28T07:01:16.255Z","user_updated":"5ae62cc7-df75-48d8-a9cc-5090d8747a54","date_updated":"2025-08-28T11:53:11.303Z","title":"11111","content":"<p>sfdsdfsdfsdf</p>","customer":null,"contracter":null}	{"status":"published","user_updated":"5ae62cc7-df75-48d8-a9cc-5090d8747a54","date_updated":"2025-08-28T11:53:11.303Z"}	\N	\N
42	51	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	{"id":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","name":"customerPolicy","icon":"accessibility","description":null,"ip_access":null,"enforce_tfa":false,"admin_access":false,"app_access":false,"permissions":[1,2,3,4,5,6],"users":["bac8e64a-be0e-4c52-b294-6e130d7b7a66"],"roles":["bac8e64a-be0e-4c52-b294-6e130d7b7a66"]}	{"name":"customerPolicy"}	\N	\N
43	52	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	{"id":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","name":"customerPolicy","icon":"accessibility","description":null,"ip_access":null,"enforce_tfa":false,"admin_access":false,"app_access":true,"permissions":[1,2,3,4,5,6],"users":["bac8e64a-be0e-4c52-b294-6e130d7b7a66"],"roles":["bac8e64a-be0e-4c52-b294-6e130d7b7a66"]}	{"app_access":true}	\N	\N
44	53	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	{"id":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","name":"customerPolicy","icon":"accessibility","description":null,"ip_access":null,"enforce_tfa":false,"admin_access":true,"app_access":true,"permissions":[1,2,3,4,5,6],"users":["bac8e64a-be0e-4c52-b294-6e130d7b7a66"],"roles":["bac8e64a-be0e-4c52-b294-6e130d7b7a66"]}	{"admin_access":true}	\N	\N
75	86	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	{"id":"9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf","first_name":"test","last_name":"1","email":"test@example.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"active","role":"4e13e3eb-06cd-4dcf-8399-fb6951a1c31e","token":null,"last_access":"2025-08-28T11:44:46.514Z","last_page":null,"provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"text_direction":"auto","policies":[]}	{"role":"4e13e3eb-06cd-4dcf-8399-fb6951a1c31e"}	\N	\N
76	88	directus_access	81f45204-08bb-4df7-8077-da93ffa70388	{"policy":"0704640f-2cf2-4ff8-b738-0dc328359a38","user":{"id":"5ae62cc7-df75-48d8-a9cc-5090d8747a54"}}	{"policy":"0704640f-2cf2-4ff8-b738-0dc328359a38","user":{"id":"5ae62cc7-df75-48d8-a9cc-5090d8747a54"}}	\N	\N
77	89	directus_access	e4a3a2f7-e40d-46f8-8d91-9d9476f705f5	{"policy":"0704640f-2cf2-4ff8-b738-0dc328359a38","user":{"id":"9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf"}}	{"policy":"0704640f-2cf2-4ff8-b738-0dc328359a38","user":{"id":"9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf"}}	\N	\N
78	123	Deals	2	{"title":"New deal","content":"New deal1111"}	{"title":"New deal","content":"New deal1111"}	\N	\N
79	124	directus_users	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	{"id":"9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf","first_name":"test","last_name":"1","email":"test@example.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"active","role":"984b726e-da32-4ecc-84f2-ddd4883cbe24","token":null,"last_access":"2025-08-29T07:10:42.366Z","last_page":null,"provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"text_direction":"auto","policies":["e4a3a2f7-e40d-46f8-8d91-9d9476f705f5"]}	{"role":"984b726e-da32-4ecc-84f2-ddd4883cbe24"}	\N	\N
81	131	directus_policies	dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659	{"id":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","name":"customerPolicy","icon":"accessibility","description":null,"ip_access":null,"enforce_tfa":false,"admin_access":false,"app_access":false,"permissions":[2],"users":[],"roles":[]}	{"admin_access":false,"app_access":false}	\N	\N
80	125	directus_permissions	2	{"id":2,"collection":"Deals","action":"read","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	{"collection":"Deals","action":"read","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659"}	81	\N
82	132	directus_access	a86cbae1-9599-4570-8c36-960e6b5ece30	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","role":{"id":"984b726e-da32-4ecc-84f2-ddd4883cbe24"}}	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","role":{"id":"984b726e-da32-4ecc-84f2-ddd4883cbe24"}}	\N	\N
83	134	directus_roles	984b726e-da32-4ecc-84f2-ddd4883cbe24	{"id":"984b726e-da32-4ecc-84f2-ddd4883cbe24","name":"Сustomer","icon":"accessibility","description":null,"parent":null,"children":[],"policies":["a86cbae1-9599-4570-8c36-960e6b5ece30"],"users":["9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf"]}	{"name":"Сustomer"}	\N	\N
84	137	Deals	3	{"title":"New deal","content":"New deal1111"}	{"title":"New deal","content":"New deal1111"}	\N	\N
85	145	directus_permissions	7	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"create"}	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"create"}	\N	\N
86	147	Deals	4	{"title":"New deal","content":"New deal1111"}	{"title":"New deal","content":"New deal1111"}	\N	\N
87	151	directus_fields	1	{"id":1,"collection":"Deals","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":false,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"Deals","field":"id","hidden":false}	\N	\N
88	152	directus_fields	12	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"DealStages"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"DealStages"}	\N	\N
89	153	directus_fields	13	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"field":"status","collection":"DealStages"}	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"field":"status","collection":"DealStages"}	\N	\N
90	154	directus_fields	14	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"DealStages"}	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"DealStages"}	\N	\N
91	155	directus_fields	15	{"sort":4,"special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar}} {{first_name}} {{last_name}}"},"display":"user","readonly":true,"hidden":true,"width":"half","field":"user_created","collection":"DealStages"}	{"sort":4,"special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar}} {{first_name}} {{last_name}}"},"display":"user","readonly":true,"hidden":true,"width":"half","field":"user_created","collection":"DealStages"}	\N	\N
92	156	directus_fields	16	{"sort":5,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"DealStages"}	{"sort":5,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"DealStages"}	\N	\N
93	157	directus_fields	17	{"sort":6,"special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar}} {{first_name}} {{last_name}}"},"display":"user","readonly":true,"hidden":true,"width":"half","field":"user_updated","collection":"DealStages"}	{"sort":6,"special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar}} {{first_name}} {{last_name}}"},"display":"user","readonly":true,"hidden":true,"width":"half","field":"user_updated","collection":"DealStages"}	\N	\N
94	158	directus_fields	18	{"sort":7,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"DealStages"}	{"sort":7,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"DealStages"}	\N	\N
95	159	directus_collections	DealStages	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"DealStages"}	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"DealStages"}	\N	\N
96	160	directus_fields	19	{"sort":8,"interface":"input","special":null,"required":true,"collection":"DealStages","field":"title"}	{"sort":8,"interface":"input","special":null,"required":true,"collection":"DealStages","field":"title"}	\N	\N
97	161	directus_fields	20	{"sort":9,"interface":"select-dropdown-m2o","special":["m2o"],"options":{"enableCreate":false,"enableLink":true},"collection":"DealStages","field":"deal"}	{"sort":9,"interface":"select-dropdown-m2o","special":["m2o"],"options":{"enableCreate":false,"enableLink":true},"collection":"DealStages","field":"deal"}	\N	\N
98	162	directus_fields	20	{"id":20,"collection":"DealStages","field":"deal","special":["m2o"],"interface":"select-dropdown-m2o","options":{"enableCreate":false,"enableLink":true},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":9,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"DealStages","field":"deal","required":true}	\N	\N
99	163	directus_fields	20	{"id":20,"collection":"DealStages","field":"deal","special":["m2o"],"interface":"select-dropdown-m2o","options":{"enableCreate":false,"enableLink":true,"template":"{{title}}"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":9,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"DealStages","field":"deal","options":{"enableCreate":false,"enableLink":true,"template":"{{title}}"}}	\N	\N
100	164	directus_fields	20	{"id":20,"collection":"DealStages","field":"deal","special":["m2o"],"interface":"select-dropdown-m2o","options":{"enableCreate":false,"enableLink":true,"template":"{{id}}{{title}}"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":9,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"DealStages","field":"deal","options":{"enableCreate":false,"enableLink":true,"template":"{{id}}{{title}}"}}	\N	\N
101	165	directus_fields	21	{"sort":10,"interface":"select-dropdown-m2o","special":["m2o"],"options":{"template":"{{first_name}}{{last_name}}{{email}}"},"collection":"DealStages","field":"contracter"}	{"sort":10,"interface":"select-dropdown-m2o","special":["m2o"],"options":{"template":"{{first_name}}{{last_name}}{{email}}"},"collection":"DealStages","field":"contracter"}	\N	\N
102	166	directus_collections	DealStages	{"collection":"DealStages","icon":null,"note":null,"display_template":"{{deal.title}}{{title}}","hidden":false,"singleton":false,"translations":null,"archive_field":"status","archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":"sort","accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"display_template":"{{deal.title}}{{title}}"}	\N	\N
103	167	directus_fields	21	{"id":21,"collection":"DealStages","field":"contracter","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{first_name}}{{email}}"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":10,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"DealStages","field":"contracter","options":{"template":"{{first_name}}{{email}}"}}	\N	\N
104	168	directus_fields	21	{"id":21,"collection":"DealStages","field":"contracter","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{first_name}}  {{email}}"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":10,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"DealStages","field":"contracter","options":{"template":"{{first_name}}  {{email}}"}}	\N	\N
105	169	directus_fields	12	{"id":12,"collection":"DealStages","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":false,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"DealStages","field":"id","hidden":false}	\N	\N
106	170	directus_fields	22	{"sort":11,"interface":"input-rich-text-html","special":null,"collection":"DealStages","field":"content"}	{"sort":11,"interface":"input-rich-text-html","special":null,"collection":"DealStages","field":"content"}	\N	\N
107	171	directus_fields	23	{"sort":12,"interface":"input","special":null,"collection":"DealStages","field":"short_desc"}	{"sort":12,"interface":"input","special":null,"collection":"DealStages","field":"short_desc"}	\N	\N
108	172	directus_fields	24	{"sort":12,"interface":"input","special":null,"collection":"Deals","field":"short_desc"}	{"sort":12,"interface":"input","special":null,"collection":"Deals","field":"short_desc"}	\N	\N
109	173	directus_fields	1	{"id":1,"collection":"Deals","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":false,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"Deals","field":"id","sort":1,"group":null}	\N	\N
110	174	directus_fields	2	{"id":2,"collection":"Deals","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"Deals","field":"status","sort":2,"group":null}	\N	\N
111	175	directus_fields	3	{"id":3,"collection":"Deals","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"sort":3,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"Deals","field":"sort","sort":3,"group":null}	\N	\N
112	176	directus_fields	4	{"id":4,"collection":"Deals","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"sort":4,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"Deals","field":"user_created","sort":4,"group":null}	\N	\N
113	177	directus_fields	5	{"id":5,"collection":"Deals","field":"date_created","special":["date-created"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":5,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"Deals","field":"date_created","sort":5,"group":null}	\N	\N
114	178	directus_fields	6	{"id":6,"collection":"Deals","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"sort":6,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"Deals","field":"user_updated","sort":6,"group":null}	\N	\N
115	179	directus_fields	7	{"id":7,"collection":"Deals","field":"date_updated","special":["date-updated"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":7,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"Deals","field":"date_updated","sort":7,"group":null}	\N	\N
116	180	directus_fields	8	{"id":8,"collection":"Deals","field":"title","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":8,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"Deals","field":"title","sort":8,"group":null}	\N	\N
117	181	directus_fields	24	{"id":24,"collection":"Deals","field":"short_desc","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":9,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"Deals","field":"short_desc","sort":9,"group":null}	\N	\N
118	182	directus_fields	9	{"id":9,"collection":"Deals","field":"content","special":null,"interface":"input-rich-text-html","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":10,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"Deals","field":"content","sort":10,"group":null}	\N	\N
119	183	directus_fields	10	{"id":10,"collection":"Deals","field":"customer","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{first_name}}{{last_name}}{{id}}","filter":null},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":11,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"Deals","field":"customer","sort":11,"group":null}	\N	\N
120	184	directus_fields	11	{"id":11,"collection":"Deals","field":"contracter","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{id}}{{first_name}}{{last_name}}"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":12,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"Deals","field":"contracter","sort":12,"group":null}	\N	\N
121	186	directus_permissions	8	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"create"}	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"create"}	\N	\N
122	187	directus_permissions	9	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"update"}	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"update"}	\N	\N
123	188	directus_permissions	10	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"update"}	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"update"}	\N	\N
124	189	directus_permissions	11	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"read"}	{"policy":"dbf5dc59-2d50-4e1d-96c4-2bf6d9ac6659","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"read"}	\N	\N
\.


--
-- Data for Name: directus_roles; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_roles (id, name, icon, description, parent) FROM stdin;
4e13e3eb-06cd-4dcf-8399-fb6951a1c31e	Administrator	verified	$t:admin_description	\N
984b726e-da32-4ecc-84f2-ddd4883cbe24	Сustomer	accessibility	\N	\N
\.


--
-- Data for Name: directus_sessions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_sessions (token, "user", expires, ip, user_agent, share, origin, next_token) FROM stdin;
9fU8RREwhsnJVvI27QGI3x-5eA0VXlQHo1F809HVTV9rV_YgmRpNMjPxg-A7RpJO	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-05 07:10:42.35+00	172.23.0.1	node	\N	\N	\N
jVpjW1EQUTO9xVYp3icXw4hr-UOWwmyu6OO8cIIreT4rRZzDyMrNV0-czeL_1pdd	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-04 07:54:40.796+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	\N	http://localhost:3000	\N
ELp3MnFNJll6s_eCzElCH_uIw_Uw7aDMt1ftmWEXUK_eqvTdtblcmjm7mC7TFK0d	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-04 11:51:03.496+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	\N	http://localhost:3000	\N
8GAl6bqjrIP3gVYVjNv0PWca4MqPuMQGnLcKduR0UFsT44sGODNsVssIFzKOZ4fi	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-04 12:09:31.509+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	\N	http://localhost:3000	\N
_KSHBNxows1n5-_8jnid8HRi0hFEH8gso661L0B3XhlihrQzREZDUVF5xEk09Rmi	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-04 12:23:27.548+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	\N	http://localhost:3000	\N
hOF3IPYNYcyXT3V5dgjQNr_mZxUw8X7Sz1LkjzcKF8nmXZDjIqTJKiunyS_FOxFi	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-04 12:39:14.887+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	\N	http://localhost:3000	\N
V-kznhF_FGeQvq3WrQ082wn-WrPFQa_PLhOFGW1OFTkmPvxXMcKoRkLHukIP5hvb	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-04 13:11:29.084+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	\N	http://localhost:3000	\N
yymtrFp73y7t9HcFQKkgpjHAUMEtSwSkJNR927j1q7IpnzFp25irxCXrn0GQrCBM	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-04 13:11:34.397+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	\N	http://localhost:3000	\N
tvdyMy9d2T1H28Umc05G30G71qUor_ZECqDRL-JcRvxcaRA6hrvDLp1pl_GMUUcf	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-04 13:12:08.463+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	\N	http://localhost:3000	\N
IRwQeiZLpW2GZqmxexY5sobhFJJni7oO3IDuTUA8M8ciAc_n3HW2XH2kKhvMe_xu	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-04 13:14:11.359+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	\N	http://localhost:3000	\N
SyAyl1PcdVY2cBsswU4eB1DZLznfTBrUirvxEGOtaUyRELRV52v-FtoiO85dYHXK	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-04 13:14:17.007+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	\N	http://localhost:3000	\N
HdQJvdkcuTjixtEz559cj7AXwzbVCZzuTwNMmkIYCbbsSQBW7AS_iSDYRcjMXQe2	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-04 13:20:56.578+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	\N	http://localhost:3000	\N
lAedEPkuHAW8V6DLRCkiuER8sa3QciEGosBzo9jHawuiSL6hsBnAmwYiyY3JFSwJ	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-04 13:22:39.182+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	\N	http://localhost:3000	\N
_TAmhEZQw460smVoqOZsxGiI7DacHrg_a0NbvfRyUjYPfjz5FNpXyzcihUI6Elsa	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-05 06:16:33.508+00	172.23.0.1	node	\N	\N	\N
21iEPbwowR4xA4aRmrhb153BFFHM1r7EgySIpmx3d-_Cyrkl8Pc0pFLJIoTG2bBm	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 06:48:14.516+00	172.23.0.1	node	\N	\N	\N
TrDz4LOnPOWz45pYKEdIDHQ3LB9zPv6rerTa8xuu6dtOvqNZfsZlIewNb1Cutrix	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 06:49:55.569+00	172.23.0.1	node	\N	\N	\N
HWGcZrWxND74zKjMSSedP6r3BZIkKYWxDHRG2v6DFCURMduTMvlO7MNEkttQd1-c	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 06:50:12.201+00	172.23.0.1	node	\N	\N	\N
l1Pti6CNlEkIFx7XgE1hP4yhVYhN0umDXH68LBnGh7r7dwpbpTcxPNwheVxAn1hg	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 06:51:22.062+00	172.23.0.1	node	\N	\N	\N
P8n_W_tY07jfvJVrkURjlE01iapTuv7E9qvEdZ5aAPqB-ziuPX_MNY1wvLuRkHlN	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 06:52:44.596+00	172.23.0.1	node	\N	\N	\N
9sRY-464HF8YrCFJGjDEibLpsnQQ-DwnXTnys9HZPVseLKNaSsPT1D7Inp6yepgz	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 06:53:14.479+00	172.23.0.1	node	\N	\N	\N
UuQ6wFmo2upPQNMya7YQ83SAoNF71uYFsbnuZmC0flcBt0XAYWxXnB1ztAg-3oUq	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 06:54:11.693+00	172.23.0.1	node	\N	\N	\N
k2xYjyWbdkj4Jxubgjr2jm2V8e6iCQNnoa_MlbyYTa7cBzG0LhvUqPpwwJnIfK7Y	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 06:54:42.37+00	172.23.0.1	node	\N	\N	\N
0hfFD6lTR8yqR3RsuJWrlgvFo3Rb3bIbHFMuuED9HF9xUJPxxrEAJDHG_J_tZS8Q	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 06:55:04.641+00	172.23.0.1	node	\N	\N	\N
KJ_aERcddmttjDVKTqFHUN6AdA6pAK8htabSgcBACYpa_x06OVzprGw0vh3-WEps	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 07:00:42.499+00	172.23.0.1	node	\N	\N	\N
ixZZOG6t50N9FalSCaD3K81ovc8vyp9WiUO89LP8VBcuxxvRLvt-C3cXfEVouSpX	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 07:01:09.804+00	172.23.0.1	node	\N	\N	\N
6iEETgZhTA_uVTaP78SdTSLBY9T45aIpdlBPv-RkKFsQ-b2wpF0Gq6pCCcv30J6-	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 07:01:59.574+00	172.23.0.1	node	\N	\N	\N
VgEtNb0_DcPyTII7KCdjqCV3je0azUmhZTWlvJoRKCiV8Dt6liJ42AcPaDXsN1kj	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 07:02:09.176+00	172.23.0.1	node	\N	\N	\N
dbb2Jn_1oOqExewdIK2OGuLR0GlZxfF77wNK2Z8DypkGkNvyXNk26ylyFG_iDNeJ	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 07:04:14.463+00	172.23.0.1	node	\N	\N	\N
CtwXrtQb-fy3ftznTMmAtBw1zsrO7DT8mTfR9bPxtp4nZCskVTO-g7zRYL7wbAB_	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 07:06:01.081+00	172.23.0.1	node	\N	\N	\N
9cCZGqP7buUqwQBOFsEOnSW-yDEoAzmqha5IZn2k-h6aJ4YOAtlPu-MBbSkV82SK	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 07:07:03.644+00	172.23.0.1	node	\N	\N	\N
YRt1j9a6AaVpHSctrmwH328ukRJ9YrOCrFQf-w18ZUoJJz36chBWa9l3LjcI47nf	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 07:08:59.06+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	\N	http://localhost:8055	\N
UZumvCwabqBGDcC9HtfKxXMVL8ShniL8Xyh4h-NPUjmxpbIbl4Fy23XdPJBA0wgO	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-05 07:09:50.531+00	172.23.0.1	node	\N	\N	\N
95qBq0-BmjCjdl5iHkHFWf1BBFyXZPddF4H-yw7HZwBZtp4MZa1u_jmZ57TRPWuB	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-05 07:13:52.428+00	172.23.0.1	node	\N	\N	\N
oCdJ_MHPPLHI6ZKDMCY1uNGvmTTQXdHq1b6OaxXkaGIom--3tv1i-s8vpyGSMhgQ	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-05 07:14:08.389+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	\N	http://localhost:8055	\N
dVtdYfziMtoXReavWO9fNp9b1ixATL9CKa2j-UmopvH4DSn-s94vYhLwC-komop4	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-05 07:15:24.01+00	172.23.0.1	node	\N	\N	\N
ll5MEtiT9HU9vv5YjB1DoitvVszedtQTBNPyzrc1g3r8dLAaRBopPMESh6A1Le-E	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-05 12:05:28.339+00	172.23.0.1	node	\N	\N	\N
zxjvlK-yus9Ufc_AOwPH5AgI8OrHXbRiKeJhprBq6DsGZcDdNMsniTdt-VM0aqkp	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-05 12:05:46.327+00	172.23.0.1	node	\N	\N	\N
aLltK3L4e9diBC4wVf7r9Z_IRIHIPW8P4r2TBD8sH1YU6NIcKu_LIabfocmeYDFa	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-05 12:11:19.842+00	172.23.0.1	node	\N	\N	\N
DPjVS4ZC40T1fnMkFw4sHgaMRnaYLdjiKHEdBfIRWAPhMfbyoC6UE3rz3Kv8YKd_	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-05 12:11:34.483+00	172.23.0.1	node	\N	\N	\N
8Ruum3AMCc87UTFGyIk-XrqUvhhzJ5QkALEgfYZsKlfCUSa2bMJ6F177uU4u_PCC	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-08 07:46:14.363+00	172.23.0.1	node	\N	\N	\N
PWogkbjcfDjzpesSHZRpyMK6abkLP4inpa8JkFOEUMzPkG1Wiu4VBPqXEZtI4NsN	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-08 07:50:33.283+00	172.23.0.1	node	\N	\N	\N
I7qhwfQeOj7i3qEmuYpsSEw7wA5MEfzwJB1KbYi1Wauu9j9zk8pUaj7vWns7Wr1P	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-08 11:45:30.701+00	172.23.0.1	node	\N	\N	\N
_58VD0AeuV43LtLfviKby6-k6hqfGyy8WiO203T0IKzJZGvi-06HgwktO11orK1H	5ae62cc7-df75-48d8-a9cc-5090d8747a54	2025-09-02 11:52:32.786+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0	\N	http://localhost:8055	\N
xBdy6zKbjLW9W8TS9GlB284FEgE2ig8m23uH6vXx6gPD69eLlIa1vXVMba5RARRy	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-08 12:00:54.466+00	172.23.0.1	node	\N	\N	\N
I8NahV2j40uQ4lcyrckU4llNZhWGdxPr39tefxcqC_ksz7wKugQqrfI3TigszjTJ	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-08 12:29:22.199+00	172.23.0.1	node	\N	\N	\N
2jNObOmCMBQZdNVFqG6B5WoZHa6q_q0eQdG2BcLJKnxQ2mVpLzyG2j6qmR22VCjh	9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	2025-09-08 12:55:41.455+00	172.23.0.1	node	\N	\N	\N
\.


--
-- Data for Name: directus_settings; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_settings (id, project_name, project_url, project_color, project_logo, public_foreground, public_background, public_note, auth_login_attempts, auth_password_policy, storage_asset_transform, storage_asset_presets, custom_css, storage_default_folder, basemaps, mapbox_key, module_bar, project_descriptor, default_language, custom_aspect_ratios, public_favicon, default_appearance, default_theme_light, theme_light_overrides, default_theme_dark, theme_dark_overrides, report_error_url, report_bug_url, report_feature_url, public_registration, public_registration_verify_email, public_registration_role, public_registration_email_filter, visual_editor_urls, accepted_terms, project_id) FROM stdin;
1	Directus	\N	#6644FF	\N	\N	\N	\N	25	\N	all	\N	\N	\N	\N	\N	\N	\N	en-US	\N	\N	auto	\N	\N	\N	\N	\N	\N	\N	t	f	984b726e-da32-4ecc-84f2-ddd4883cbe24	\N	\N	t	0198ef5b-bcd9-75f8-8864-86dafb091bf6
\.


--
-- Data for Name: directus_shares; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_shares (id, name, collection, item, role, password, user_created, date_created, date_start, date_end, times_used, max_uses) FROM stdin;
\.


--
-- Data for Name: directus_translations; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_translations (id, language, key, value) FROM stdin;
\.


--
-- Data for Name: directus_users; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_users (id, first_name, last_name, email, password, location, title, description, tags, avatar, language, tfa_secret, status, role, token, last_access, last_page, provider, external_identifier, auth_data, email_notifications, appearance, theme_dark, theme_light, theme_light_overrides, theme_dark_overrides, text_direction) FROM stdin;
9f3221d8-1f15-4bfa-a27d-cf5a177bfcbf	test	1	test@example.com	$argon2id$v=19$m=65536,t=3,p=4$CY8wtf9tRtCmFLeNV/vAYg$tkoHggKCo42T51u7IpbW76YVT066LshvSjjSIUX1yvc	\N	\N	\N	\N	\N	\N	\N	active	984b726e-da32-4ecc-84f2-ddd4883cbe24	\N	2025-09-01 12:55:41.473+00	\N	default	\N	\N	t	\N	\N	\N	\N	\N	auto
5ae62cc7-df75-48d8-a9cc-5090d8747a54	Admin	User	admin@example.com	$argon2id$v=19$m=65536,t=3,p=4$nqr0W1qs2vt3D1xg0IC3Fw$kVx3MUEpNvamIcYY51WBvRQok2n0YrbXbQ8LvlmZSnA	\N	\N	\N	\N	\N	\N	\N	active	4e13e3eb-06cd-4dcf-8399-fb6951a1c31e	aup2KGu2gpN3fkzvSWCkud-eTVwPkncb	2025-09-01 11:52:32.794+00	/settings/data-model/Deals	default	\N	\N	t	\N	\N	\N	\N	\N	auto
\.


--
-- Data for Name: directus_versions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_versions (id, key, name, collection, item, hash, date_created, date_updated, user_created, user_updated, delta) FROM stdin;
\.


--
-- Data for Name: directus_webhooks; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_webhooks (id, name, method, url, status, data, actions, collections, headers, was_active_before_deprecation, migrated_flow) FROM stdin;
\.


--
-- Name: DealStages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."DealStages_id_seq"', 1, false);


--
-- Name: Deals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."Deals_id_seq"', 4, true);


--
-- Name: directus_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_activity_id_seq', 193, true);


--
-- Name: directus_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_fields_id_seq', 24, true);


--
-- Name: directus_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_notifications_id_seq', 1, false);


--
-- Name: directus_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_permissions_id_seq', 11, true);


--
-- Name: directus_presets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_presets_id_seq', 3, true);


--
-- Name: directus_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_relations_id_seq', 8, true);


--
-- Name: directus_revisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_revisions_id_seq', 124, true);


--
-- Name: directus_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_settings_id_seq', 1, true);


--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_webhooks_id_seq', 1, false);


--
-- Name: DealStages DealStages_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DealStages"
    ADD CONSTRAINT "DealStages_pkey" PRIMARY KEY (id);


--
-- Name: Deals Deals_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Deals"
    ADD CONSTRAINT "Deals_pkey" PRIMARY KEY (id);


--
-- Name: directus_access directus_access_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_pkey PRIMARY KEY (id);


--
-- Name: directus_activity directus_activity_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_activity
    ADD CONSTRAINT directus_activity_pkey PRIMARY KEY (id);


--
-- Name: directus_collections directus_collections_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_pkey PRIMARY KEY (collection);


--
-- Name: directus_comments directus_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_comments
    ADD CONSTRAINT directus_comments_pkey PRIMARY KEY (id);


--
-- Name: directus_dashboards directus_dashboards_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_pkey PRIMARY KEY (id);


--
-- Name: directus_extensions directus_extensions_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_extensions
    ADD CONSTRAINT directus_extensions_pkey PRIMARY KEY (id);


--
-- Name: directus_fields directus_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_fields
    ADD CONSTRAINT directus_fields_pkey PRIMARY KEY (id);


--
-- Name: directus_files directus_files_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_pkey PRIMARY KEY (id);


--
-- Name: directus_flows directus_flows_operation_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_operation_unique UNIQUE (operation);


--
-- Name: directus_flows directus_flows_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_pkey PRIMARY KEY (id);


--
-- Name: directus_folders directus_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_pkey PRIMARY KEY (id);


--
-- Name: directus_migrations directus_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_migrations
    ADD CONSTRAINT directus_migrations_pkey PRIMARY KEY (version);


--
-- Name: directus_notifications directus_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_pkey PRIMARY KEY (id);


--
-- Name: directus_operations directus_operations_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_pkey PRIMARY KEY (id);


--
-- Name: directus_operations directus_operations_reject_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_unique UNIQUE (reject);


--
-- Name: directus_operations directus_operations_resolve_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_unique UNIQUE (resolve);


--
-- Name: directus_panels directus_panels_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_pkey PRIMARY KEY (id);


--
-- Name: directus_permissions directus_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_pkey PRIMARY KEY (id);


--
-- Name: directus_policies directus_policies_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_policies
    ADD CONSTRAINT directus_policies_pkey PRIMARY KEY (id);


--
-- Name: directus_presets directus_presets_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_pkey PRIMARY KEY (id);


--
-- Name: directus_relations directus_relations_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_relations
    ADD CONSTRAINT directus_relations_pkey PRIMARY KEY (id);


--
-- Name: directus_revisions directus_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_pkey PRIMARY KEY (id);


--
-- Name: directus_roles directus_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_pkey PRIMARY KEY (id);


--
-- Name: directus_sessions directus_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_pkey PRIMARY KEY (token);


--
-- Name: directus_settings directus_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_pkey PRIMARY KEY (id);


--
-- Name: directus_shares directus_shares_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_pkey PRIMARY KEY (id);


--
-- Name: directus_translations directus_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_translations
    ADD CONSTRAINT directus_translations_pkey PRIMARY KEY (id);


--
-- Name: directus_users directus_users_email_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_email_unique UNIQUE (email);


--
-- Name: directus_users directus_users_external_identifier_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_external_identifier_unique UNIQUE (external_identifier);


--
-- Name: directus_users directus_users_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_pkey PRIMARY KEY (id);


--
-- Name: directus_users directus_users_token_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_token_unique UNIQUE (token);


--
-- Name: directus_versions directus_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_pkey PRIMARY KEY (id);


--
-- Name: directus_webhooks directus_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_webhooks
    ADD CONSTRAINT directus_webhooks_pkey PRIMARY KEY (id);


--
-- Name: Deals deals_contracter_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Deals"
    ADD CONSTRAINT deals_contracter_foreign FOREIGN KEY (contracter) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: Deals deals_customer_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Deals"
    ADD CONSTRAINT deals_customer_foreign FOREIGN KEY (customer) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: Deals deals_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Deals"
    ADD CONSTRAINT deals_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: Deals deals_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Deals"
    ADD CONSTRAINT deals_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: DealStages dealstages_contracter_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DealStages"
    ADD CONSTRAINT dealstages_contracter_foreign FOREIGN KEY (contracter) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: DealStages dealstages_deal_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DealStages"
    ADD CONSTRAINT dealstages_deal_foreign FOREIGN KEY (deal) REFERENCES public."Deals"(id) ON DELETE SET NULL;


--
-- Name: DealStages dealstages_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DealStages"
    ADD CONSTRAINT dealstages_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: DealStages dealstages_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DealStages"
    ADD CONSTRAINT dealstages_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: directus_access directus_access_policy_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_policy_foreign FOREIGN KEY (policy) REFERENCES public.directus_policies(id) ON DELETE CASCADE;


--
-- Name: directus_access directus_access_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_access directus_access_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_collections directus_collections_group_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_group_foreign FOREIGN KEY ("group") REFERENCES public.directus_collections(collection);


--
-- Name: directus_comments directus_comments_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_comments
    ADD CONSTRAINT directus_comments_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_comments directus_comments_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_comments
    ADD CONSTRAINT directus_comments_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: directus_dashboards directus_dashboards_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_files directus_files_folder_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_folder_foreign FOREIGN KEY (folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;


--
-- Name: directus_files directus_files_modified_by_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_modified_by_foreign FOREIGN KEY (modified_by) REFERENCES public.directus_users(id);


--
-- Name: directus_files directus_files_uploaded_by_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_uploaded_by_foreign FOREIGN KEY (uploaded_by) REFERENCES public.directus_users(id);


--
-- Name: directus_flows directus_flows_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_folders directus_folders_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_folders(id);


--
-- Name: directus_notifications directus_notifications_recipient_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_recipient_foreign FOREIGN KEY (recipient) REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_notifications directus_notifications_sender_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_sender_foreign FOREIGN KEY (sender) REFERENCES public.directus_users(id);


--
-- Name: directus_operations directus_operations_flow_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_flow_foreign FOREIGN KEY (flow) REFERENCES public.directus_flows(id) ON DELETE CASCADE;


--
-- Name: directus_operations directus_operations_reject_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_foreign FOREIGN KEY (reject) REFERENCES public.directus_operations(id);


--
-- Name: directus_operations directus_operations_resolve_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_foreign FOREIGN KEY (resolve) REFERENCES public.directus_operations(id);


--
-- Name: directus_operations directus_operations_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_panels directus_panels_dashboard_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_dashboard_foreign FOREIGN KEY (dashboard) REFERENCES public.directus_dashboards(id) ON DELETE CASCADE;


--
-- Name: directus_panels directus_panels_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_permissions directus_permissions_policy_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_policy_foreign FOREIGN KEY (policy) REFERENCES public.directus_policies(id) ON DELETE CASCADE;


--
-- Name: directus_presets directus_presets_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_presets directus_presets_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_revisions directus_revisions_activity_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_activity_foreign FOREIGN KEY (activity) REFERENCES public.directus_activity(id) ON DELETE CASCADE;


--
-- Name: directus_revisions directus_revisions_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_revisions(id);


--
-- Name: directus_revisions directus_revisions_version_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_version_foreign FOREIGN KEY (version) REFERENCES public.directus_versions(id) ON DELETE CASCADE;


--
-- Name: directus_roles directus_roles_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_roles(id);


--
-- Name: directus_sessions directus_sessions_share_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_share_foreign FOREIGN KEY (share) REFERENCES public.directus_shares(id) ON DELETE CASCADE;


--
-- Name: directus_sessions directus_sessions_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_settings directus_settings_project_logo_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_project_logo_foreign FOREIGN KEY (project_logo) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_background_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_background_foreign FOREIGN KEY (public_background) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_favicon_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_favicon_foreign FOREIGN KEY (public_favicon) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_foreground_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_foreground_foreign FOREIGN KEY (public_foreground) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_registration_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_registration_role_foreign FOREIGN KEY (public_registration_role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;


--
-- Name: directus_settings directus_settings_storage_default_folder_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_storage_default_folder_foreign FOREIGN KEY (storage_default_folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;


--
-- Name: directus_shares directus_shares_collection_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;


--
-- Name: directus_shares directus_shares_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_shares directus_shares_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_users directus_users_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;


--
-- Name: directus_versions directus_versions_collection_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;


--
-- Name: directus_versions directus_versions_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_versions directus_versions_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: directus_webhooks directus_webhooks_migrated_flow_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_webhooks
    ADD CONSTRAINT directus_webhooks_migrated_flow_foreign FOREIGN KEY (migrated_flow) REFERENCES public.directus_flows(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict Yvtg0rjq9xEijGKfgmSNvJR4jCj95yAxsHqJsdFaxetwbx6f2JB2efO1qP8CQKY

