--
-- PostgreSQL database dump
--

\restrict dsijpIqD4kYQQlKefVcU6erhoCvu0767lavE9jH5pFII9YgbekoMjeYzsTWA3aF

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

ALTER TABLE IF EXISTS ONLY public."Notifications" DROP CONSTRAINT IF EXISTS notifications_user_id_foreign;
ALTER TABLE IF EXISTS ONLY public."Notifications" DROP CONSTRAINT IF EXISTS notifications_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public."Notifications" DROP CONSTRAINT IF EXISTS notifications_deal_id_foreign;
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
ALTER TABLE IF EXISTS ONLY public."DealStages" DROP CONSTRAINT IF EXISTS dealstages_deal_id_foreign;
ALTER TABLE IF EXISTS ONLY public."DealStages_customer_files" DROP CONSTRAINT IF EXISTS dealstages_customer_files_directus_files_id_foreign;
ALTER TABLE IF EXISTS ONLY public."DealStages_customer_files" DROP CONSTRAINT IF EXISTS dealstages_customer_files_dealstages_id_foreign;
ALTER TABLE IF EXISTS ONLY public."DealStages_contracter_files" DROP CONSTRAINT IF EXISTS dealstages_contracter_files_directus_files_id_foreign;
ALTER TABLE IF EXISTS ONLY public."DealStages_contracter_files" DROP CONSTRAINT IF EXISTS dealstages_contracter_files_dealstages_id_foreign;
ALTER TABLE IF EXISTS ONLY public."Deals" DROP CONSTRAINT IF EXISTS deals_executor_id_foreign;
ALTER TABLE IF EXISTS ONLY public."Deals" DROP CONSTRAINT IF EXISTS deals_agent_id_foreign;
ALTER TABLE IF EXISTS ONLY public."CustomerProfile" DROP CONSTRAINT IF EXISTS customerprofile_user_updated_foreign;
ALTER TABLE IF EXISTS ONLY public."CustomerProfile" DROP CONSTRAINT IF EXISTS customerprofile_user_foreign;
ALTER TABLE IF EXISTS ONLY public."CustomerProfile" DROP CONSTRAINT IF EXISTS customerprofile_user_created_foreign;
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
ALTER TABLE IF EXISTS ONLY public."Notifications" DROP CONSTRAINT IF EXISTS "Notifications_pkey";
ALTER TABLE IF EXISTS ONLY public."Deals" DROP CONSTRAINT IF EXISTS "Deals_pkey";
ALTER TABLE IF EXISTS ONLY public."DealStages" DROP CONSTRAINT IF EXISTS "DealStages_pkey";
ALTER TABLE IF EXISTS ONLY public."DealStages_customer_files" DROP CONSTRAINT IF EXISTS "DealStages_customer_files_pkey";
ALTER TABLE IF EXISTS ONLY public."DealStages_contracter_files" DROP CONSTRAINT IF EXISTS "DealStages_contracter_files_pkey";
ALTER TABLE IF EXISTS ONLY public."CustomerProfile" DROP CONSTRAINT IF EXISTS "CustomerProfile_pkey";
ALTER TABLE IF EXISTS public.directus_webhooks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_revisions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_relations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_presets ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_notifications ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_fields ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_activity ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DealStages_customer_files" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DealStages_contracter_files" ALTER COLUMN id DROP DEFAULT;
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
DROP TABLE IF EXISTS public."Notifications";
DROP TABLE IF EXISTS public."Deals";
DROP SEQUENCE IF EXISTS public."DealStages_customer_files_id_seq";
DROP TABLE IF EXISTS public."DealStages_customer_files";
DROP SEQUENCE IF EXISTS public."DealStages_contracter_files_id_seq";
DROP TABLE IF EXISTS public."DealStages_contracter_files";
DROP TABLE IF EXISTS public."DealStages";
DROP TABLE IF EXISTS public."CustomerProfile";
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: CustomerProfile; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."CustomerProfile" (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    first_name character varying(255),
    last_name character varying(255),
    sur_name character varying(255),
    passport character varying(255),
    "user" uuid
);


ALTER TABLE public."CustomerProfile" OWNER TO directus;

--
-- Name: DealStages; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."DealStages" (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    title character varying(255),
    short_desc character varying(255),
    content text,
    deadline timestamp with time zone,
    started_at timestamp with time zone,
    completed_at timestamp with time zone,
    deal_id uuid
);


ALTER TABLE public."DealStages" OWNER TO directus;

--
-- Name: DealStages_contracter_files; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."DealStages_contracter_files" (
    id integer NOT NULL,
    "DealStages_id" uuid,
    directus_files_id uuid
);


ALTER TABLE public."DealStages_contracter_files" OWNER TO directus;

--
-- Name: DealStages_contracter_files_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."DealStages_contracter_files_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DealStages_contracter_files_id_seq" OWNER TO directus;

--
-- Name: DealStages_contracter_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."DealStages_contracter_files_id_seq" OWNED BY public."DealStages_contracter_files".id;


--
-- Name: DealStages_customer_files; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."DealStages_customer_files" (
    id integer NOT NULL,
    "DealStages_id" uuid,
    directus_files_id uuid
);


ALTER TABLE public."DealStages_customer_files" OWNER TO directus;

--
-- Name: DealStages_customer_files_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."DealStages_customer_files_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DealStages_customer_files_id_seq" OWNER TO directus;

--
-- Name: DealStages_customer_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."DealStages_customer_files_id_seq" OWNED BY public."DealStages_customer_files".id;


--
-- Name: Deals; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Deals" (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    title character varying(255),
    short_desc character varying(255),
    content text,
    customer_id uuid,
    executor_id uuid,
    agent_id uuid,
    invitation_token character varying(255),
    invitation_accepted boolean,
    executor_confirmed boolean,
    customer_confirmed boolean,
    started_at timestamp with time zone,
    completed_at timestamp with time zone
);


ALTER TABLE public."Deals" OWNER TO directus;

--
-- Name: Notifications; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Notifications" (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    user_id uuid,
    deal_id uuid,
    type character varying(255),
    title character varying(255),
    message text,
    is_read boolean DEFAULT false
);


ALTER TABLE public."Notifications" OWNER TO directus;

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
-- Name: DealStages_contracter_files id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DealStages_contracter_files" ALTER COLUMN id SET DEFAULT nextval('public."DealStages_contracter_files_id_seq"'::regclass);


--
-- Name: DealStages_customer_files id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DealStages_customer_files" ALTER COLUMN id SET DEFAULT nextval('public."DealStages_customer_files_id_seq"'::regclass);


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
-- Data for Name: CustomerProfile; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."CustomerProfile" (id, status, sort, user_created, date_created, user_updated, date_updated, first_name, last_name, sur_name, passport, "user") FROM stdin;
\.


--
-- Data for Name: DealStages; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."DealStages" (id, status, sort, user_created, date_created, user_updated, date_updated, title, short_desc, content, deadline, started_at, completed_at, deal_id) FROM stdin;
8046c3ca-0c95-47ff-9f10-9b7b0b3c9756	pending	\N	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:14:48.929+00	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 17:31:41.991+00	22	22	\N	\N	\N	\N	bedafa28-af8f-4a34-8af1-622d300e7358
ccde9d6b-08cf-4b19-bb21-6bedf69430af	pending	\N	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:14:43.005+00	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:13:27.538+00	11	11	\N	\N	\N	\N	bedafa28-af8f-4a34-8af1-622d300e7358
\.


--
-- Data for Name: DealStages_contracter_files; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."DealStages_contracter_files" (id, "DealStages_id", directus_files_id) FROM stdin;
\.


--
-- Data for Name: DealStages_customer_files; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."DealStages_customer_files" (id, "DealStages_id", directus_files_id) FROM stdin;
1	ccde9d6b-08cf-4b19-bb21-6bedf69430af	c0ed3876-0601-4ee5-8509-cccd44f4e96e
2	ccde9d6b-08cf-4b19-bb21-6bedf69430af	ca32670e-906b-4df6-8311-7cee7ee55482
\.


--
-- Data for Name: Deals; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Deals" (id, status, sort, user_created, date_created, user_updated, date_updated, title, short_desc, content, customer_id, executor_id, agent_id, invitation_token, invitation_accepted, executor_confirmed, customer_confirmed, started_at, completed_at) FROM stdin;
bedafa28-af8f-4a34-8af1-622d300e7358	draft	\N	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:14:28.779+00	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 16:57:45.98+00	111111	1111111111111111	\N	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	a9de468f-e25e-4174-a0c4-63e5017e7184	\N	qX0wBwZB5Kdnm8fFPFmyt	t	\N	\N	\N	\N
\.


--
-- Data for Name: Notifications; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Notifications" (id, status, user_created, date_created, date_updated, user_id, deal_id, type, title, message, is_read) FROM stdin;
8e9c816f-b775-4c94-a1d6-0825d9a987af	published	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:39:20.613+00	\N	5199d5b6-e522-4be4-81bc-14142e03ed41	bedafa28-af8f-4a34-8af1-622d300e7358	deal_invitation	Приглашение в сделку	Вас пригласили в сделку 111111	f
94241331-0b47-478e-9d21-e1ef392256e3	published	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-07 13:10:00.218+00	\N	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	bedafa28-af8f-4a34-8af1-622d300e7358	deal_invitation	Приглашение в сделку	Вас пригласили в сделку 111111	f
\.


--
-- Data for Name: directus_access; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_access (id, role, "user", policy, sort) FROM stdin;
8a577316-a458-4cc3-87cf-bd90e74d8384	\N	\N	abf8a154-5b1c-4a46-ac9c-7300570f4f17	1
660b8d51-8c5d-4751-9865-3546dea9f76f	d1d26b15-b864-4232-9992-565d6aa2acb1	\N	9528aeee-e649-4f94-9d46-6dcde329f9aa	\N
7fc81fd8-a726-4194-b332-98442c516203	\N	9c0cbf14-f759-4873-9017-8ce445823d4a	9528aeee-e649-4f94-9d46-6dcde329f9aa	1
8f2538ea-b4e5-46cd-ab8f-1f5e5c1c3b85	984b726e-da32-4ecc-84f2-ddd4883cbe24	\N	6befdac1-6b80-4c2f-a589-09ee31ea9596	\N
88e56d8d-0dc5-4666-b6eb-b7b7167e4f23	38ac37a4-95b7-4eee-929f-35aa077b1bde	\N	de1abd56-dca6-4d16-9e99-f451a809da93	\N
\.


--
-- Data for Name: directus_activity; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_activity (id, action, "user", "timestamp", ip, user_agent, collection, item, origin) FROM stdin;
1	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:01:47.127+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
2	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:01:50.383+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_settings	1	http://localhost:8055
3	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:02:04.7+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
411	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:07:33.322+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
412	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:07:59.431+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_roles	4e13e3eb-06cd-4dcf-8399-fb6951a1c31e	http://localhost:8055
413	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:23:08.011+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
414	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:24:49.127+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_access	7fc81fd8-a726-4194-b332-98442c516203	http://localhost:8055
415	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:24:49.132+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
416	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:29:57.995+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_settings	1	http://localhost:8055
417	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:30:09.529+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_settings	1	http://localhost:8055
418	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:30:18.78+00	172.23.0.1	Bun/1.2.15	directus_users	41427f6f-0c1f-4824-9cd1-36094ddbbbd7	\N
419	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:32:31.768+00	172.23.0.1	Bun/1.2.15	directus_users	fcd21614-35b0-4156-9773-ef563ad6fc9b	\N
420	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:34:48.646+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
421	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:35:01.226+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	fcd21614-35b0-4156-9773-ef563ad6fc9b	http://localhost:8055
422	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.128+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_policies	6befdac1-6b80-4c2f-a589-09ee31ea9596	http://localhost:8055
423	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.157+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	25	http://localhost:8055
424	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.16+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	26	http://localhost:8055
425	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.163+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	27	http://localhost:8055
426	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.165+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	28	http://localhost:8055
427	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.167+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	29	http://localhost:8055
428	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.173+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	30	http://localhost:8055
429	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.176+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	31	http://localhost:8055
430	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.179+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	32	http://localhost:8055
431	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.182+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	33	http://localhost:8055
432	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.186+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	34	http://localhost:8055
433	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.19+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	35	http://localhost:8055
434	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.192+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	36	http://localhost:8055
435	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.194+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	37	http://localhost:8055
436	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.195+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	38	http://localhost:8055
437	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.197+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	39	http://localhost:8055
438	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.199+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	40	http://localhost:8055
439	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.201+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	41	http://localhost:8055
440	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.205+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	42	http://localhost:8055
441	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.208+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	43	http://localhost:8055
442	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:36:42.209+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	44	http://localhost:8055
443	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:37:44.634+00	172.23.0.1	Bun/1.2.15	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	\N
444	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:40:55.064+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_settings	1	http://localhost:8055
445	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:47:28.703+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
446	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:49:29.567+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
447	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:50:39.736+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_access	8f2538ea-b4e5-46cd-ab8f-1f5e5c1c3b85	http://localhost:8055
448	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:50:39.74+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_policies	6befdac1-6b80-4c2f-a589-09ee31ea9596	http://localhost:8055
449	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:51:57.263+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	41427f6f-0c1f-4824-9cd1-36094ddbbbd7	http://localhost:8055
450	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:51:57.265+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	fcd21614-35b0-4156-9773-ef563ad6fc9b	http://localhost:8055
451	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:52:25.959+00	172.23.0.1	Bun/1.2.15	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	\N
452	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:53:17.751+00	172.23.0.1	Bun/1.2.15	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	\N
453	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:54:10.645+00	172.23.0.1	Bun/1.2.15	directus_users	df4b7b32-93cd-43ef-83be-063f5b854186	\N
454	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 16:54:25.519+00	172.23.0.1	Bun/1.2.15	directus_users	a9de468f-e25e-4174-a0c4-63e5017e7184	\N
455	login	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-04 16:54:35.148+00	172.23.0.1	Bun/1.2.15	directus_users	a9de468f-e25e-4174-a0c4-63e5017e7184	\N
456	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:31.972+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	45	http://localhost:8055
457	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:31.976+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	46	http://localhost:8055
458	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:31.979+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	47	http://localhost:8055
459	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:31.982+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	48	http://localhost:8055
460	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:31.988+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	49	http://localhost:8055
461	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:31.991+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	50	http://localhost:8055
462	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:31.994+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	51	http://localhost:8055
463	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:31.996+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	52	http://localhost:8055
464	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:31.999+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	53	http://localhost:8055
465	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:32.005+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	54	http://localhost:8055
466	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:32.009+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	55	http://localhost:8055
467	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:32.013+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	56	http://localhost:8055
468	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:32.018+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	57	http://localhost:8055
469	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:32.022+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	58	http://localhost:8055
470	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:32.025+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	59	http://localhost:8055
471	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:32.028+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	60	http://localhost:8055
472	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:32.03+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	61	http://localhost:8055
473	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:10:32.033+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_policies	6befdac1-6b80-4c2f-a589-09ee31ea9596	http://localhost:8055
474	login	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-04 19:10:39.631+00	172.23.0.1	Bun/1.2.15	directus_users	a9de468f-e25e-4174-a0c4-63e5017e7184	\N
475	login	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-04 19:16:11.06+00	172.23.0.1	Bun/1.2.15	directus_users	a9de468f-e25e-4174-a0c4-63e5017e7184	\N
476	login	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-04 19:23:43.29+00	172.23.0.1	Bun/1.2.15	directus_users	a9de468f-e25e-4174-a0c4-63e5017e7184	\N
477	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-04 19:23:50.97+00	172.23.0.1	Bun/1.2.15	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	\N
478	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-04 19:44:01.056+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
479	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-04 19:44:04.386+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
480	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-04 19:44:05.963+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
481	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-04 19:44:56.334+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
482	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:45:10.854+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:3000
483	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-04 19:49:14.144+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
484	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-04 19:50:05.703+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
485	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:50:22.5+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
486	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-04 19:50:41.832+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
487	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-04 19:52:56.994+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
488	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-04 19:55:01.955+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
489	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-04 19:55:14.775+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
490	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 19:55:29.551+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:3000
491	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-04 19:59:11.446+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
492	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-04 20:03:05.045+00	172.23.0.1	Bun/1.2.15	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	\N
493	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:03:29.694+00	172.23.0.1	Bun/1.2.15	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	\N
494	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:06:40.406+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
495	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:19:16.121+00	172.23.0.1	Bun/1.2.15	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	\N
496	login	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-04 20:19:35.548+00	172.23.0.1	Bun/1.2.15	directus_users	a9de468f-e25e-4174-a0c4-63e5017e7184	\N
497	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-04 20:20:13.761+00	172.23.0.1	Bun/1.2.15	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	\N
498	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.37+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_policies	de1abd56-dca6-4d16-9e99-f451a809da93	http://localhost:8055
499	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.403+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	62	http://localhost:8055
500	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.406+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	63	http://localhost:8055
501	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.409+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	64	http://localhost:8055
502	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.411+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	65	http://localhost:8055
503	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.414+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	66	http://localhost:8055
504	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.417+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	67	http://localhost:8055
505	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.419+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	68	http://localhost:8055
506	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.422+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	69	http://localhost:8055
507	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.424+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	70	http://localhost:8055
508	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.426+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	71	http://localhost:8055
509	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.428+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	72	http://localhost:8055
510	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.43+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	73	http://localhost:8055
511	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.434+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	74	http://localhost:8055
512	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.438+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	75	http://localhost:8055
513	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.44+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	76	http://localhost:8055
514	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.442+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	77	http://localhost:8055
515	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.444+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	78	http://localhost:8055
516	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.446+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	79	http://localhost:8055
517	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.45+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	80	http://localhost:8055
518	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:20:58.453+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	81	http://localhost:8055
519	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:21:23.555+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_access	88e56d8d-0dc5-4666-b6eb-b7b7167e4f23	http://localhost:8055
520	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:21:23.559+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_policies	de1abd56-dca6-4d16-9e99-f451a809da93	http://localhost:8055
521	login	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-04 20:21:39.471+00	172.23.0.1	Bun/1.2.15	directus_users	a9de468f-e25e-4174-a0c4-63e5017e7184	\N
522	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:23:07.485+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	82	http://localhost:8055
523	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:23:07.488+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	83	http://localhost:8055
524	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:23:07.49+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	84	http://localhost:8055
525	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:23:07.493+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	85	http://localhost:8055
526	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:23:07.496+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	86	http://localhost:8055
527	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:23:07.501+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	87	http://localhost:8055
528	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-04 20:23:07.503+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_policies	de1abd56-dca6-4d16-9e99-f451a809da93	http://localhost:8055
529	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-04 20:23:24.165+00	172.23.0.1	Bun/1.2.15	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	\N
530	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:12:46.378+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
531	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:18:17.798+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
532	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:21:30.866+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
533	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:21:31.344+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	5ef9921f-a2d7-46b6-a20f-fdf10500f68e	http://localhost:3000
534	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:24:27.125+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
535	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:24:27.617+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	ae11e004-09c3-4400-bcae-9905d7c760c5	http://localhost:3000
536	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:24:45.443+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
537	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:24:45.918+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	21a93f2e-f8c5-45ed-9146-d59e0bc734df	http://localhost:3000
538	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:30:27.15+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
539	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:30:27.643+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	4f966eee-b586-4737-9aef-8bcf9791edf8	http://localhost:3000
540	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 16:34:00.265+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
541	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 16:35:40.485+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:3000
542	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 16:35:40.977+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	5b7cde2d-3e16-43a0-81e7-fe0ff1ee54ce	http://localhost:3000
543	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 16:39:02.224+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_policies	6befdac1-6b80-4c2f-a589-09ee31ea9596	http://localhost:8055
544	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 16:39:35.531+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	88	http://localhost:8055
545	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 16:39:35.536+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_policies	6befdac1-6b80-4c2f-a589-09ee31ea9596	http://localhost:8055
546	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 16:40:06.594+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
547	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 16:50:43.167+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	cbd69018-085c-4a55-8bcf-1d41345f6961	http://localhost:8055
548	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 16:50:43.169+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	02456b0f-8fe0-49d5-a49c-c48720bb2d36	http://localhost:8055
549	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 16:50:43.17+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	5ef9921f-a2d7-46b6-a20f-fdf10500f68e	http://localhost:8055
550	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 16:50:43.17+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	ae11e004-09c3-4400-bcae-9905d7c760c5	http://localhost:8055
551	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 16:50:43.17+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	21a93f2e-f8c5-45ed-9146-d59e0bc734df	http://localhost:8055
552	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 16:50:43.171+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	4f966eee-b586-4737-9aef-8bcf9791edf8	http://localhost:8055
553	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 16:50:43.172+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	5b7cde2d-3e16-43a0-81e7-fe0ff1ee54ce	http://localhost:8055
554	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:54:29.407+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
555	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:54:29.93+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	e97e2746-5c2b-40f8-8810-854964109e94	http://localhost:3000
556	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:55:40.337+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
557	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:55:40.809+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	d423db6b-ad1e-4d96-9dfa-e9692167a628	http://localhost:3000
558	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:57:30.081+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
559	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 16:57:30.562+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	3bb82781-dbec-44f2-a92a-ebcd794ee74b	http://localhost:3000
560	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:03:29.452+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
561	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:03:29.932+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	b0aaefb6-78aa-4f32-98fc-121260db3057	http://localhost:3000
562	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:05:36.244+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
563	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:05:36.732+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	36f82312-7fbe-4f49-85ca-4f74af595e0c	http://localhost:3000
564	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:10:05.45+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
565	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:10:05.927+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	ab8a53da-88c0-4a24-840f-23f0b5c92af1	http://localhost:3000
566	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:11:52.547+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
567	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:11:53.028+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	28b5738d-f0a1-4d85-84e3-3312296b0f8d	http://localhost:3000
568	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:13:07.217+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
569	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 17:13:34.189+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
570	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 17:14:06.871+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	e97e2746-5c2b-40f8-8810-854964109e94	http://localhost:8055
571	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 17:14:06.872+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	d423db6b-ad1e-4d96-9dfa-e9692167a628	http://localhost:8055
572	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 17:14:06.873+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	3bb82781-dbec-44f2-a92a-ebcd794ee74b	http://localhost:8055
573	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 17:14:06.874+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	b0aaefb6-78aa-4f32-98fc-121260db3057	http://localhost:8055
574	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 17:14:06.875+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	36f82312-7fbe-4f49-85ca-4f74af595e0c	http://localhost:8055
575	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 17:14:06.884+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	ab8a53da-88c0-4a24-840f-23f0b5c92af1	http://localhost:8055
576	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 17:14:06.885+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	28b5738d-f0a1-4d85-84e3-3312296b0f8d	http://localhost:8055
577	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:14:28.781+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	http://localhost:3000
578	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:14:43.006+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	DealStages	ccde9d6b-08cf-4b19-bb21-6bedf69430af	http://localhost:3000
579	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:14:48.931+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	DealStages	8046c3ca-0c95-47ff-9f10-9b7b0b3c9756	http://localhost:3000
580	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 17:26:09.959+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	75	http://localhost:8055
581	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 17:26:09.963+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_policies	de1abd56-dca6-4d16-9e99-f451a809da93	http://localhost:8055
582	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:36:28.973+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
583	update	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:37:24.528+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	http://localhost:3000
584	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:37:24.585+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Notifications	d6bd81ea-3f16-4e78-b9ae-fe465988a88c	http://localhost:3000
585	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 17:38:09.558+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
586	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 17:38:30.8+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Notifications	d6bd81ea-3f16-4e78-b9ae-fe465988a88c	http://localhost:8055
587	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 17:38:52.045+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	http://localhost:8055
588	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 17:39:00.853+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	http://localhost:8055
589	update	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:39:20.573+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	http://localhost:3000
590	create	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:39:20.625+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Notifications	8e9c816f-b775-4c94-a1d6-0825d9a987af	http://localhost:3000
591	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:41:26.661+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
592	login	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-05 17:41:50.384+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	http://localhost:3000
593	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:45:47.65+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
594	login	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-05 17:46:13.792+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	http://localhost:3000
595	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:46:29.908+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
596	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:47:15.673+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
597	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:49:01.527+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
598	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:52:02.399+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
599	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:57:50.341+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
600	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 17:59:07.902+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
601	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 18:04:09.353+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
602	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 18:06:14.392+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
603	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 18:16:12.899+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
604	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 18:29:32.396+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
605	login	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-05 18:39:06.431+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	http://localhost:3000
606	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 18:39:17.49+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
607	login	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-05 18:39:49.01+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	http://localhost:3000
608	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 18:40:04.262+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
609	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-05 18:41:02.933+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
610	login	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-05 18:53:17.942+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	http://localhost:3000
611	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 18:53:31.726+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
612	login	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-05 18:55:07.513+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	http://localhost:3000
613	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 18:55:16.603+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
614	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 18:58:05.871+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
615	login	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-05 18:58:33.922+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	http://localhost:3000
616	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 18:58:50.066+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
617	login	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-05 19:01:55.102+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	http://localhost:3000
618	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 19:02:08.684+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
619	login	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-05 19:05:10.568+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	http://localhost:3000
620	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 19:05:21.954+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
621	login	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-05 19:07:21.617+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	http://localhost:3000
622	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 19:07:30.646+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
623	login	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-05 19:08:08.434+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	http://localhost:3000
624	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 19:08:32.019+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
625	login	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-05 19:08:46.432+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	http://localhost:3000
626	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 19:08:55.81+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
627	login	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-05 19:10:23.257+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	a9de468f-e25e-4174-a0c4-63e5017e7184	http://localhost:3000
628	login	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-05 19:10:35.514+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	http://localhost:3000
629	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 19:10:44.586+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
630	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 19:16:27.419+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
631	login	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-05 19:16:41.809+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	http://localhost:3000
632	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-05 19:16:52.74+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
633	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 05:22:20.757+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
634	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 05:48:10.504+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
635	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 05:50:00.907+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
636	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 05:59:21.142+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
637	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 06:01:53.276+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
638	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 06:04:10.275+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
639	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 06:08:07.821+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
640	login	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-06 06:08:16.778+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	http://localhost:3000
641	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 06:26:56.363+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
642	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 06:29:03.114+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
643	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 06:41:17.188+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
644	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 06:41:52.524+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
645	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 06:42:07.95+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
646	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 06:43:10.555+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
647	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 06:43:19.336+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
648	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 06:46:40.936+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
649	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 06:48:37.097+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
650	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 14:28:01.11+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
651	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 14:39:56.604+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
652	login	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-06 14:43:18.994+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	http://localhost:8055
653	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-06 14:43:53.196+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	89	http://localhost:8055
654	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-06 14:43:53.205+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	90	http://localhost:8055
655	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-06 14:43:53.208+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	91	http://localhost:8055
656	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-06 14:43:53.211+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	92	http://localhost:8055
657	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-06 14:43:53.214+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	93	http://localhost:8055
658	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-06 14:43:53.217+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_policies	de1abd56-dca6-4d16-9e99-f451a809da93	http://localhost:8055
659	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 15:05:17.09+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
660	login	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-06 15:11:31.808+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	a9de468f-e25e-4174-a0c4-63e5017e7184	http://localhost:3000
661	login	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-06 15:18:10.921+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	a9de468f-e25e-4174-a0c4-63e5017e7184	http://localhost:3000
662	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-06 17:33:03.42+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
663	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 07:52:13.336+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
664	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 07:52:54.762+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
665	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 07:54:31.523+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
666	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 07:55:13.329+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
667	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 12:15:04.051+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
668	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 12:27:17.669+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
669	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 12:27:25.046+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
670	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 12:28:03.655+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
671	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 12:28:13.214+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
672	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 12:29:12.87+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
673	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 12:30:32.425+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
674	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 12:38:51.835+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
675	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 12:46:01.504+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
676	login	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-07 12:55:04.638+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	a9de468f-e25e-4174-a0c4-63e5017e7184	http://localhost:3000
677	update	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-07 12:56:30.753+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	http://localhost:3000
678	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 13:03:22.367+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	81	http://localhost:8055
679	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 13:03:22.372+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_policies	de1abd56-dca6-4d16-9e99-f451a809da93	http://localhost:8055
680	update	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-07 13:10:00.179+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	http://localhost:3000
681	create	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-07 13:10:00.223+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Notifications	94241331-0b47-478e-9d21-e1ef392256e3	http://localhost:3000
682	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 13:10:16.29+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
683	login	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-07 13:13:19.088+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	a9de468f-e25e-4174-a0c4-63e5017e7184	http://localhost:3000
684	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 13:15:05.662+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
685	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 13:30:19.119+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
686	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 16:19:36.191+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
687	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 16:35:01.033+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
688	update	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 16:38:17.893+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	http://localhost:3000
689	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 16:52:02.774+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
690	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 16:57:45.982+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	http://localhost:8055
691	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 16:58:39.613+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	44	http://localhost:8055
692	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 16:58:39.635+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_policies	6befdac1-6b80-4c2f-a589-09ee31ea9596	http://localhost:8055
693	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 17:31:30.076+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	DealStages	deccc8f6-32a4-4382-9076-f085fe7f9016	http://localhost:8055
694	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 17:31:34.644+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	DealStages	ccde9d6b-08cf-4b19-bb21-6bedf69430af	http://localhost:8055
695	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 17:31:41.993+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	DealStages	8046c3ca-0c95-47ff-9f10-9b7b0b3c9756	http://localhost:8055
696	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 17:31:55.888+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
697	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 17:47:20.549+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
698	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:02:32.894+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	89	http://localhost:8055
699	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:02:33.043+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	90	http://localhost:8055
700	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:02:33.051+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_collections	DealStages_files	http://localhost:8055
701	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:02:33.102+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	91	http://localhost:8055
702	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:02:33.182+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	92	http://localhost:8055
703	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:03:09.66+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	93	http://localhost:8055
704	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:03:09.795+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	94	http://localhost:8055
705	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:03:09.8+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_collections	DealStages_files_1	http://localhost:8055
706	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:03:09.836+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	95	http://localhost:8055
707	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:03:09.914+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	96	http://localhost:8055
708	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:05:18.642+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_files	88b40a17-d5b6-434b-a751-ea3764beb4c5	http://localhost:8055
709	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:05:18.646+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_files	1dc4e95c-7a4d-4ac9-8c47-6386d598c35f	http://localhost:8055
710	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:05:18.648+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_files	ffc339eb-7713-4f67-9c4d-a9d53437e329	http://localhost:8055
714	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:05:24.938+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	DealStages	ccde9d6b-08cf-4b19-bb21-6bedf69430af	http://localhost:8055
715	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 18:06:29.594+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
716	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:09:28.775+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_collections	DealStages_files	http://localhost:8055
717	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:09:28.777+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	90	http://localhost:8055
718	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:09:28.778+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	91	http://localhost:8055
719	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:09:28.779+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	92	http://localhost:8055
720	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:09:28.789+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	89	http://localhost:8055
721	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:09:31.668+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_collections	DealStages_files_1	http://localhost:8055
722	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:09:31.672+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	94	http://localhost:8055
723	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:09:31.673+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	95	http://localhost:8055
724	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:09:31.674+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	96	http://localhost:8055
725	delete	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:09:31.68+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	93	http://localhost:8055
726	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:10:56.462+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	97	http://localhost:8055
727	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:10:56.569+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	98	http://localhost:8055
728	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:10:56.572+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_collections	DealStages_customer_files	http://localhost:8055
729	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:10:56.612+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	99	http://localhost:8055
730	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:10:56.706+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	100	http://localhost:8055
731	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:11:23.425+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	101	http://localhost:8055
732	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:11:23.541+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	102	http://localhost:8055
733	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:11:23.544+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_collections	DealStages_contracter_files	http://localhost:8055
734	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:11:23.582+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	103	http://localhost:8055
735	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:11:23.668+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_fields	104	http://localhost:8055
736	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:13:23.732+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_files	c0ed3876-0601-4ee5-8509-cccd44f4e96e	http://localhost:8055
737	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:13:23.735+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_files	ca32670e-906b-4df6-8311-7cee7ee55482	http://localhost:8055
738	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:13:27.544+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	DealStages_customer_files	1	http://localhost:8055
739	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:13:27.549+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	DealStages_customer_files	2	http://localhost:8055
740	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:13:27.553+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	DealStages	ccde9d6b-08cf-4b19-bb21-6bedf69430af	http://localhost:8055
741	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:16:08.232+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_collections	DealStages_customer_files	http://localhost:8055
742	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:17:06.305+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_collections	DealStages_customer_files	http://localhost:8055
743	login	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-07 18:21:53.498+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	http://localhost:3000
744	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:23:13.228+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	94	http://localhost:8055
745	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:23:13.233+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	95	http://localhost:8055
746	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:23:13.235+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	96	http://localhost:8055
747	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:23:13.238+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	97	http://localhost:8055
748	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:23:13.24+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	98	http://localhost:8055
749	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:23:13.242+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_policies	6befdac1-6b80-4c2f-a589-09ee31ea9596	http://localhost:8055
750	create	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:30:28.854+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_permissions	99	http://localhost:8055
751	update	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:30:28.858+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	directus_policies	6befdac1-6b80-4c2f-a589-09ee31ea9596	http://localhost:8055
\.


--
-- Data for Name: directus_collections; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations, archive_field, archive_app_filter, archive_value, unarchive_value, sort_field, accountability, color, item_duplication_fields, sort, "group", collapse, preview_url, versioning) FROM stdin;
Deals	\N	\N	\N	f	f	\N	status	t	archived	draft	sort	all	\N	\N	\N	\N	open	\N	f
DealStages	\N	\N	\N	f	f	\N	status	t	archived	draft	sort	all	\N	\N	\N	\N	open	\N	f
CustomerProfile	\N	\N	\N	f	f	\N	status	t	archived	draft	sort	all	\N	\N	\N	\N	open	\N	f
Notifications	\N	\N	\N	f	f	\N	status	t	archived	draft	\N	all	\N	\N	\N	\N	open	\N	f
DealStages_contracter_files	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
DealStages_customer_files	import_export	\N	{{directus_files_id.$thumbnail}}{{directus_files_id.title}}	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
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
27	Deals	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
38	DealStages	id	uuid	input	\N	\N	\N	t	f	1	full	\N	\N	\N	f	\N	\N	\N
28	Deals	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
26	Deals	status	\N	select-dropdown	{"choices":[{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"Pending Start","value":"pending_start"},{"text":"Active","value":"active"},{"text":"Completed","value":"completed"},{"text":"Cancelled","value":"cancelled"}]}	labels	{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
39	DealStages	status	\N	select-dropdown	{"choices":[{"text":"Pending","value":"pending"},{"text":"In Progress","value":"in_progress"},{"text":"Ready For Review","value":"ready_for_review"},{"text":"Accepted","value":"accepted"},{"text":"Disputed","value":"disputed"}]}	labels	{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
29	Deals	date_created	date-created	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
30	Deals	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
31	Deals	date_updated	date-updated	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
25	Deals	id	uuid	input	\N	\N	\N	t	f	1	full	\N	\N	\N	f	\N	\N	\N
32	Deals	title	\N	input	\N	\N	\N	f	f	8	full	\N	\N	\N	t	\N	\N	\N
33	Deals	short_desc	\N	input	\N	\N	\N	f	f	9	full	\N	\N	\N	f	\N	\N	\N
34	Deals	content	\N	input-rich-text-html	\N	\N	\N	f	f	10	full	\N	\N	\N	f	\N	\N	\N
40	DealStages	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
41	DealStages	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
42	DealStages	date_created	date-created	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
43	DealStages	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
44	DealStages	date_updated	date-updated	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
45	DealStages	title	\N	input	\N	\N	\N	f	f	8	full	\N	\N	\N	t	\N	\N	\N
46	DealStages	short_desc	\N	input	\N	\N	\N	f	f	9	full	\N	\N	\N	f	\N	\N	\N
47	DealStages	content	\N	input-rich-text-html	{"toolbar":["undo","redo","bold","italic","underline","h1","h2","h3","numlist","bullist","removeformat","blockquote","customLink","customImage","customMedia","hr","fullscreen","code"]}	\N	\N	f	f	10	full	\N	\N	\N	f	\N	\N	\N
52	CustomerProfile	status	\N	select-dropdown	{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]}	labels	{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
53	CustomerProfile	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
54	CustomerProfile	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
55	CustomerProfile	date_created	date-created	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
56	CustomerProfile	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
57	CustomerProfile	date_updated	date-updated	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
58	CustomerProfile	first_name	\N	input	\N	\N	\N	f	f	8	full	\N	\N	\N	t	\N	\N	\N
59	CustomerProfile	last_name	\N	input	\N	\N	\N	f	f	9	full	\N	\N	\N	t	\N	\N	\N
60	CustomerProfile	sur_name	\N	input	\N	\N	\N	f	f	10	full	\N	\N	\N	t	\N	\N	\N
51	CustomerProfile	id	uuid	input	\N	\N	\N	t	f	1	full	\N	\N	\N	f	\N	\N	\N
61	CustomerProfile	passport	\N	input	{"placeholder":"хххх хххххх"}	\N	\N	f	f	11	full	\N	\N	\N	t	\N	{"_and":[{"passport":{"_regex":"\\\\d{4})\\\\s*-?\\\\s*(\\\\d{6}"}}]}	Неверный формат серии и номера пасспорта
83	Notifications	message	\N	input-multiline	\N	\N	\N	f	f	10	full	\N	\N	\N	f	\N	\N	\N
63	CustomerProfile	user	m2o	select-dropdown-m2o	{"template":"{{first_name}} {{last_name}} {{email}}","enableCreate":false,"filter":{"_and":[{"role":{"name":{"_eq":"Customer"}}}]}}	user	\N	f	f	12	full	\N	\N	\N	t	\N	\N	\N
65	Deals	customer_id	m2o	select-dropdown-m2o	\N	\N	\N	f	f	11	full	\N	\N	\N	f	\N	\N	\N
66	Deals	executor_id	m2o	select-dropdown-m2o	\N	\N	\N	f	f	12	full	\N	\N	\N	f	\N	\N	\N
67	Deals	agent_id	m2o	select-dropdown-m2o	\N	\N	\N	f	f	13	full	\N	\N	\N	f	\N	\N	\N
68	Deals	invitation_token	\N	input	\N	\N	\N	f	f	14	full	\N	\N	\N	f	\N	\N	\N
69	Deals	invitation_accepted	cast-boolean	boolean	\N	\N	\N	f	f	15	full	\N	\N	\N	f	\N	\N	\N
70	Deals	executor_confirmed	cast-boolean	boolean	\N	\N	\N	f	f	16	full	\N	\N	\N	f	\N	\N	\N
71	Deals	customer_confirmed	cast-boolean	boolean	\N	\N	\N	f	f	17	full	\N	\N	\N	f	\N	\N	\N
72	Deals	started_at	\N	datetime	\N	\N	\N	f	f	18	full	\N	\N	\N	f	\N	\N	\N
73	Deals	completed_at	\N	datetime	\N	\N	\N	f	f	19	full	\N	\N	\N	f	\N	\N	\N
74	Notifications	id	uuid	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
97	DealStages	customer_files	files	files	\N	\N	\N	f	f	15	full	\N	\N	\N	f	\N	\N	\N
98	DealStages_customer_files	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
99	DealStages_customer_files	DealStages_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
100	DealStages_customer_files	directus_files_id	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
101	DealStages	contracter_files	files	files	\N	\N	\N	f	f	16	full	\N	\N	\N	f	\N	\N	\N
102	DealStages_contracter_files	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
103	DealStages_contracter_files	DealStages_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
75	Notifications	status	\N	select-dropdown	{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]}	labels	{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
76	Notifications	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar}} {{first_name}} {{last_name}}"}	user	\N	t	t	3	half	\N	\N	\N	f	\N	\N	\N
77	Notifications	date_created	date-created	datetime	\N	datetime	{"relative":true}	t	t	4	half	\N	\N	\N	f	\N	\N	\N
78	Notifications	date_updated	date-updated	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
79	Notifications	user_id	m2o	select-dropdown-m2o	\N	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
80	Notifications	deal_id	m2o	select-dropdown-m2o	\N	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
81	Notifications	type	\N	select-dropdown	{"choices":[{"text":"Deal Invitation","value":"deal_invitation"},{"text":"Start Confirmation","value":"start_confirmation"},{"text":"Stage Ready","value":"stage_ready"},{"text":"Dispute Opened","value":"dispute_opened"}]}	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
82	Notifications	title	\N	input	\N	\N	\N	f	f	9	full	\N	\N	\N	t	\N	\N	\N
84	Notifications	is_read	cast-boolean	boolean	\N	\N	\N	f	f	11	full	\N	\N	\N	f	\N	\N	\N
85	DealStages	deadline	\N	datetime	\N	\N	\N	f	f	11	full	\N	\N	\N	f	\N	\N	\N
86	DealStages	started_at	\N	datetime	\N	\N	\N	f	f	12	full	\N	\N	\N	f	\N	\N	\N
87	DealStages	completed_at	\N	datetime	\N	\N	\N	f	f	13	full	\N	\N	\N	f	\N	\N	\N
88	DealStages	deal_id	m2o	select-dropdown-m2o	\N	\N	\N	f	f	14	full	\N	\N	\N	t	\N	\N	\N
104	DealStages_contracter_files	directus_files_id	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
\.


--
-- Data for Name: directus_files; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_files (id, storage, filename_disk, filename_download, title, type, folder, uploaded_by, created_on, modified_by, modified_on, charset, filesize, width, height, duration, embed, description, location, tags, metadata, focal_point_x, focal_point_y, tus_id, tus_data, uploaded_on) FROM stdin;
88b40a17-d5b6-434b-a751-ea3764beb4c5	local	88b40a17-d5b6-434b-a751-ea3764beb4c5.jpg	IMG_6743.jpg	Img 6743	image/jpeg	\N	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:05:18.637+00	\N	2025-09-07 18:05:18.791+00	\N	9406541	4160	6240	\N	\N	\N	\N	\N	{"ifd0":{"Make":"Canon","Model":"Canon EOS RP"},"exif":{"FNumber":1.8,"ExposureTime":0.005,"FocalLength":35,"ISOSpeedRatings":100}}	\N	\N	\N	\N	2025-09-07 18:05:18.789+00
ffc339eb-7713-4f67-9c4d-a9d53437e329	local	ffc339eb-7713-4f67-9c4d-a9d53437e329.jpg	IMG_6506.jpg	Img 6506	image/jpeg	\N	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:05:18.646+00	\N	2025-09-07 18:05:18.818+00	\N	12599334	4160	6240	\N	\N	\N	\N	\N	{"ifd0":{"Make":"Canon","Model":"Canon EOS RP"},"exif":{"FNumber":1.8,"ExposureTime":0.001,"FocalLength":35,"ISOSpeedRatings":100}}	\N	\N	\N	\N	2025-09-07 18:05:18.817+00
1dc4e95c-7a4d-4ac9-8c47-6386d598c35f	local	1dc4e95c-7a4d-4ac9-8c47-6386d598c35f.jpg	IMG_6590.jpg	Img 6590	image/jpeg	\N	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:05:18.644+00	\N	2025-09-07 18:05:18.85+00	\N	21068371	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2025-09-07 18:05:18.849+00
c0ed3876-0601-4ee5-8509-cccd44f4e96e	local	c0ed3876-0601-4ee5-8509-cccd44f4e96e.jpg	photo_2025-09-07_21-13-11.jpg	Photo 2025 09 07 21 13 11	image/jpeg	\N	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:13:23.728+00	\N	2025-09-07 18:13:23.743+00	\N	165239	960	1280	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2025-09-07 18:13:23.743+00
ca32670e-906b-4df6-8311-7cee7ee55482	local	ca32670e-906b-4df6-8311-7cee7ee55482.jpg	photo_2025-09-07_21-12-40.jpg	Photo 2025 09 07 21 12 40	image/jpeg	\N	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 18:13:23.734+00	\N	2025-09-07 18:13:23.746+00	\N	130916	1049	1280	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2025-09-07 18:13:23.745+00
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
20201028A	Remove Collection Foreign Keys	2025-09-04 16:01:04.499977+00
20201029A	Remove System Relations	2025-09-04 16:01:04.504734+00
20201029B	Remove System Collections	2025-09-04 16:01:04.50887+00
20201029C	Remove System Fields	2025-09-04 16:01:04.517355+00
20201105A	Add Cascade System Relations	2025-09-04 16:01:04.561333+00
20201105B	Change Webhook URL Type	2025-09-04 16:01:04.569375+00
20210225A	Add Relations Sort Field	2025-09-04 16:01:04.575519+00
20210304A	Remove Locked Fields	2025-09-04 16:01:04.578916+00
20210312A	Webhooks Collections Text	2025-09-04 16:01:04.585463+00
20210331A	Add Refresh Interval	2025-09-04 16:01:04.588101+00
20210415A	Make Filesize Nullable	2025-09-04 16:01:04.594606+00
20210416A	Add Collections Accountability	2025-09-04 16:01:04.598274+00
20210422A	Remove Files Interface	2025-09-04 16:01:04.600259+00
20210506A	Rename Interfaces	2025-09-04 16:01:04.61701+00
20210510A	Restructure Relations	2025-09-04 16:01:04.630776+00
20210518A	Add Foreign Key Constraints	2025-09-04 16:01:04.636863+00
20210519A	Add System Fk Triggers	2025-09-04 16:01:04.665052+00
20210521A	Add Collections Icon Color	2025-09-04 16:01:04.668012+00
20210525A	Add Insights	2025-09-04 16:01:04.688781+00
20210608A	Add Deep Clone Config	2025-09-04 16:01:04.691931+00
20210626A	Change Filesize Bigint	2025-09-04 16:01:04.706426+00
20210716A	Add Conditions to Fields	2025-09-04 16:01:04.709412+00
20210721A	Add Default Folder	2025-09-04 16:01:04.715016+00
20210802A	Replace Groups	2025-09-04 16:01:04.718843+00
20210803A	Add Required to Fields	2025-09-04 16:01:04.721655+00
20210805A	Update Groups	2025-09-04 16:01:04.725001+00
20210805B	Change Image Metadata Structure	2025-09-04 16:01:04.728503+00
20210811A	Add Geometry Config	2025-09-04 16:01:04.731529+00
20210831A	Remove Limit Column	2025-09-04 16:01:04.734316+00
20210903A	Add Auth Provider	2025-09-04 16:01:04.749858+00
20210907A	Webhooks Collections Not Null	2025-09-04 16:01:04.75566+00
20210910A	Move Module Setup	2025-09-04 16:01:04.759209+00
20210920A	Webhooks URL Not Null	2025-09-04 16:01:04.765089+00
20210924A	Add Collection Organization	2025-09-04 16:01:04.770937+00
20210927A	Replace Fields Group	2025-09-04 16:01:04.77841+00
20210927B	Replace M2M Interface	2025-09-04 16:01:04.780671+00
20210929A	Rename Login Action	2025-09-04 16:01:04.782506+00
20211007A	Update Presets	2025-09-04 16:01:04.787528+00
20211009A	Add Auth Data	2025-09-04 16:01:04.789906+00
20211016A	Add Webhook Headers	2025-09-04 16:01:04.792357+00
20211103A	Set Unique to User Token	2025-09-04 16:01:04.80074+00
20211103B	Update Special Geometry	2025-09-04 16:01:04.80322+00
20211104A	Remove Collections Listing	2025-09-04 16:01:04.805942+00
20211118A	Add Notifications	2025-09-04 16:01:04.821172+00
20211211A	Add Shares	2025-09-04 16:01:04.840356+00
20211230A	Add Project Descriptor	2025-09-04 16:01:04.842966+00
20220303A	Remove Default Project Color	2025-09-04 16:01:04.849588+00
20220308A	Add Bookmark Icon and Color	2025-09-04 16:01:04.852707+00
20220314A	Add Translation Strings	2025-09-04 16:01:04.8554+00
20220322A	Rename Field Typecast Flags	2025-09-04 16:01:04.859185+00
20220323A	Add Field Validation	2025-09-04 16:01:04.86214+00
20220325A	Fix Typecast Flags	2025-09-04 16:01:04.865651+00
20220325B	Add Default Language	2025-09-04 16:01:04.874802+00
20220402A	Remove Default Value Panel Icon	2025-09-04 16:01:04.882307+00
20220429A	Add Flows	2025-09-04 16:01:04.920544+00
20220429B	Add Color to Insights Icon	2025-09-04 16:01:04.923316+00
20220429C	Drop Non Null From IP of Activity	2025-09-04 16:01:04.926259+00
20220429D	Drop Non Null From Sender of Notifications	2025-09-04 16:01:04.928856+00
20220614A	Rename Hook Trigger to Event	2025-09-04 16:01:04.93129+00
20220801A	Update Notifications Timestamp Column	2025-09-04 16:01:04.937601+00
20220802A	Add Custom Aspect Ratios	2025-09-04 16:01:04.940108+00
20220826A	Add Origin to Accountability	2025-09-04 16:01:04.943456+00
20230401A	Update Material Icons	2025-09-04 16:01:04.950286+00
20230525A	Add Preview Settings	2025-09-04 16:01:04.953118+00
20230526A	Migrate Translation Strings	2025-09-04 16:01:04.966137+00
20230721A	Require Shares Fields	2025-09-04 16:01:04.970774+00
20230823A	Add Content Versioning	2025-09-04 16:01:04.988304+00
20230927A	Themes	2025-09-04 16:01:05.002278+00
20231009A	Update CSV Fields to Text	2025-09-04 16:01:05.005856+00
20231009B	Update Panel Options	2025-09-04 16:01:05.008062+00
20231010A	Add Extensions	2025-09-04 16:01:05.012983+00
20231215A	Add Focalpoints	2025-09-04 16:01:05.015732+00
20240122A	Add Report URL Fields	2025-09-04 16:01:05.018465+00
20240204A	Marketplace	2025-09-04 16:01:05.038756+00
20240305A	Change Useragent Type	2025-09-04 16:01:05.046981+00
20240311A	Deprecate Webhooks	2025-09-04 16:01:05.054118+00
20240422A	Public Registration	2025-09-04 16:01:05.059153+00
20240515A	Add Session Window	2025-09-04 16:01:05.061669+00
20240701A	Add Tus Data	2025-09-04 16:01:05.064168+00
20240716A	Update Files Date Fields	2025-09-04 16:01:05.069347+00
20240806A	Permissions Policies	2025-09-04 16:01:05.105342+00
20240817A	Update Icon Fields Length	2025-09-04 16:01:05.128758+00
20240909A	Separate Comments	2025-09-04 16:01:05.140525+00
20240909B	Consolidate Content Versioning	2025-09-04 16:01:05.143171+00
20240924A	Migrate Legacy Comments	2025-09-04 16:01:05.147814+00
20240924B	Populate Versioning Deltas	2025-09-04 16:01:05.151412+00
20250224A	Visual Editor	2025-09-04 16:01:05.154667+00
20250609A	License Banner	2025-09-04 16:01:05.158392+00
20250613A	Add Project ID	2025-09-04 16:01:05.170011+00
20250718A	Add Direction	2025-09-04 16:01:05.17299+00
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
25	directus_collections	read	{}	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
26	directus_fields	read	{}	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
27	directus_relations	read	{}	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
28	directus_translations	read	{}	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
29	directus_activity	read	{"user":{"_eq":"$CURRENT_USER"}}	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
30	directus_comments	read	{"user_created":{"_eq":"$CURRENT_USER"}}	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
31	directus_comments	create	{}	{"comment":{"_nnull":true}}	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
32	directus_comments	update	{"user_created":{"_eq":"$CURRENT_USER"}}	\N	\N	comment	6befdac1-6b80-4c2f-a589-09ee31ea9596
33	directus_comments	delete	{"user_created":{"_eq":"$CURRENT_USER"}}	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
34	directus_presets	read	{"_or":[{"user":{"_eq":"$CURRENT_USER"}},{"_and":[{"user":{"_null":true}},{"role":{"_eq":"$CURRENT_ROLE"}}]},{"_and":[{"user":{"_null":true}},{"role":{"_null":true}}]}]}	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
35	directus_presets	create	{}	{"user":{"_eq":"$CURRENT_USER"}}	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
36	directus_presets	update	{"user":{"_eq":"$CURRENT_USER"}}	{"user":{"_eq":"$CURRENT_USER"}}	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
37	directus_presets	delete	{"user":{"_eq":"$CURRENT_USER"}}	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
38	directus_roles	read	{"id":{"_in":"$CURRENT_ROLES"}}	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
39	directus_settings	read	{}	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
40	directus_translations	read	{}	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
41	directus_notifications	read	{"recipient":{"_eq":"$CURRENT_USER"}}	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
42	directus_notifications	update	{"recipient":{"_eq":"$CURRENT_USER"}}	\N	\N	status	6befdac1-6b80-4c2f-a589-09ee31ea9596
43	directus_shares	read	{"user_created":{"_eq":"$CURRENT_USER"}}	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
45	CustomerProfile	create	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
46	CustomerProfile	update	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
47	DealStages	create	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
48	DealStages	read	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
49	DealStages	update	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
50	DealStages	delete	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
51	DealStages	share	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
52	Deals	create	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
53	Deals	read	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
54	Deals	update	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
55	Deals	delete	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
56	Deals	share	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
57	Notifications	create	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
58	Notifications	read	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
59	Notifications	update	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
60	Notifications	delete	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
61	Notifications	share	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
62	directus_collections	read	{}	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
63	directus_fields	read	{}	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
64	directus_relations	read	{}	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
65	directus_translations	read	{}	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
66	directus_activity	read	{"user":{"_eq":"$CURRENT_USER"}}	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
67	directus_comments	read	{"user_created":{"_eq":"$CURRENT_USER"}}	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
68	directus_comments	create	{}	{"comment":{"_nnull":true}}	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
69	directus_comments	update	{"user_created":{"_eq":"$CURRENT_USER"}}	\N	\N	comment	de1abd56-dca6-4d16-9e99-f451a809da93
70	directus_comments	delete	{"user_created":{"_eq":"$CURRENT_USER"}}	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
71	directus_presets	read	{"_or":[{"user":{"_eq":"$CURRENT_USER"}},{"_and":[{"user":{"_null":true}},{"role":{"_eq":"$CURRENT_ROLE"}}]},{"_and":[{"user":{"_null":true}},{"role":{"_null":true}}]}]}	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
72	directus_presets	create	{}	{"user":{"_eq":"$CURRENT_USER"}}	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
73	directus_presets	update	{"user":{"_eq":"$CURRENT_USER"}}	{"user":{"_eq":"$CURRENT_USER"}}	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
74	directus_presets	delete	{"user":{"_eq":"$CURRENT_USER"}}	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
76	directus_settings	read	{}	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
77	directus_translations	read	{}	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
78	directus_notifications	read	{"recipient":{"_eq":"$CURRENT_USER"}}	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
79	directus_notifications	update	{"recipient":{"_eq":"$CURRENT_USER"}}	\N	\N	status	de1abd56-dca6-4d16-9e99-f451a809da93
80	directus_shares	read	{"user_created":{"_eq":"$CURRENT_USER"}}	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
82	Deals	create	\N	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
83	Deals	read	\N	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
84	Deals	update	\N	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
81	directus_users	read	\N	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
44	directus_users	read	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
85	DealStages	create	\N	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
86	DealStages	read	\N	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
87	DealStages	update	\N	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
88	CustomerProfile	read	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
75	directus_roles	read	\N	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
89	Notifications	create	\N	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
90	Notifications	read	\N	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
91	Notifications	update	\N	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
92	Notifications	delete	\N	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
93	Notifications	share	\N	\N	\N	*	de1abd56-dca6-4d16-9e99-f451a809da93
94	DealStages_customer_files	create	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
95	DealStages_customer_files	read	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
96	DealStages_customer_files	update	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
97	DealStages_contracter_files	read	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
98	DealStages_customer_files	delete	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
99	directus_files	read	\N	\N	\N	*	6befdac1-6b80-4c2f-a589-09ee31ea9596
\.


--
-- Data for Name: directus_policies; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_policies (id, name, icon, description, ip_access, enforce_tfa, admin_access, app_access) FROM stdin;
abf8a154-5b1c-4a46-ac9c-7300570f4f17	$t:public_label	public	$t:public_description	\N	f	f	f
9528aeee-e649-4f94-9d46-6dcde329f9aa	Administrator	verified	$t:admin_description	\N	f	t	t
de1abd56-dca6-4d16-9e99-f451a809da93	Contracter	badge	\N	\N	f	f	t
6befdac1-6b80-4c2f-a589-09ee31ea9596	Customer	badge	\N	\N	f	f	t
\.


--
-- Data for Name: directus_presets; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query, layout_options, refresh_interval, filter, icon, color) FROM stdin;
4	\N	9c0cbf14-f759-4873-9017-8ce445823d4a	\N	directus_users	\N	cards	{"cards":{"sort":["email"],"page":1}}	{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}	\N	\N	bookmark	\N
6	\N	9c0cbf14-f759-4873-9017-8ce445823d4a	\N	Notifications	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
5	\N	9c0cbf14-f759-4873-9017-8ce445823d4a	\N	Deals	\N	tabular	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
8	\N	9c0cbf14-f759-4873-9017-8ce445823d4a	\N	DealStages	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
7	\N	9c0cbf14-f759-4873-9017-8ce445823d4a	\N	DealStages_customer_files	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
\.


--
-- Data for Name: directus_relations; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field, one_allowed_collections, junction_field, sort_field, one_deselect_action) FROM stdin;
9	Deals	user_created	directus_users	\N	\N	\N	\N	\N	nullify
10	Deals	user_updated	directus_users	\N	\N	\N	\N	\N	nullify
14	DealStages	user_created	directus_users	\N	\N	\N	\N	\N	nullify
15	DealStages	user_updated	directus_users	\N	\N	\N	\N	\N	nullify
19	CustomerProfile	user_updated	directus_users	\N	\N	\N	\N	\N	nullify
20	CustomerProfile	user_created	directus_users	\N	\N	\N	\N	\N	nullify
22	CustomerProfile	user	directus_users	\N	\N	\N	\N	\N	nullify
23	Deals	customer_id	directus_users	\N	\N	\N	\N	\N	nullify
24	Deals	executor_id	directus_users	\N	\N	\N	\N	\N	nullify
25	Deals	agent_id	directus_users	\N	\N	\N	\N	\N	nullify
26	Notifications	user_created	directus_users	\N	\N	\N	\N	\N	nullify
27	Notifications	user_id	directus_users	\N	\N	\N	\N	\N	nullify
28	Notifications	deal_id	Deals	\N	\N	\N	\N	\N	nullify
29	DealStages	deal_id	Deals	\N	\N	\N	\N	\N	nullify
34	DealStages_customer_files	directus_files_id	directus_files	\N	\N	\N	DealStages_id	\N	nullify
35	DealStages_customer_files	DealStages_id	DealStages	customer_files	\N	\N	directus_files_id	\N	nullify
36	DealStages_contracter_files	directus_files_id	directus_files	\N	\N	\N	DealStages_id	\N	nullify
37	DealStages_contracter_files	DealStages_id	DealStages	contracter_files	\N	\N	directus_files_id	\N	nullify
\.


--
-- Data for Name: directus_revisions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_revisions (id, activity, collection, item, data, delta, parent, version) FROM stdin;
1	2	directus_settings	1	{"id":1,"project_name":"Directus","project_url":null,"project_color":"#6644FF","project_logo":null,"public_foreground":null,"public_background":null,"public_note":null,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"custom_css":null,"storage_default_folder":null,"basemaps":null,"mapbox_key":null,"module_bar":null,"project_descriptor":null,"default_language":"en-US","custom_aspect_ratios":null,"public_favicon":null,"default_appearance":"auto","default_theme_light":null,"theme_light_overrides":null,"default_theme_dark":null,"theme_dark_overrides":null,"report_error_url":null,"report_bug_url":null,"report_feature_url":null,"public_registration":false,"public_registration_verify_email":true,"public_registration_role":null,"public_registration_email_filter":null,"visual_editor_urls":null,"accepted_terms":true,"project_id":"01991575-ca90-75f0-9cce-fe7c5bc726b9"}	{"accepted_terms":true}	\N	\N
2	3	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	{"id":"9c0cbf14-f759-4873-9017-8ce445823d4a","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"active","role":"d1d26b15-b864-4232-9992-565d6aa2acb1","token":"**********","last_access":"2025-09-04T16:02:02.636Z","last_page":"/users/9c0cbf14-f759-4873-9017-8ce445823d4a","provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"text_direction":"auto","policies":[]}	{"token":"**********"}	\N	\N
235	413	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	{"id":"9c0cbf14-f759-4873-9017-8ce445823d4a","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"active","role":"d1d26b15-b864-4232-9992-565d6aa2acb1","token":"**********","last_access":"2025-09-04T16:08:07.673Z","last_page":"/users/9c0cbf14-f759-4873-9017-8ce445823d4a","provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"text_direction":"auto","policies":[]}	{"token":"**********"}	\N	\N
236	414	directus_access	7fc81fd8-a726-4194-b332-98442c516203	{"user":"9c0cbf14-f759-4873-9017-8ce445823d4a","policy":{"id":"9528aeee-e649-4f94-9d46-6dcde329f9aa"},"sort":1}	{"user":"9c0cbf14-f759-4873-9017-8ce445823d4a","policy":{"id":"9528aeee-e649-4f94-9d46-6dcde329f9aa"},"sort":1}	\N	\N
237	416	directus_settings	1	{"id":1,"project_name":"Directus","project_url":null,"project_color":"#6644FF","project_logo":null,"public_foreground":null,"public_background":null,"public_note":null,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"custom_css":null,"storage_default_folder":null,"basemaps":null,"mapbox_key":null,"module_bar":null,"project_descriptor":null,"default_language":"en-US","custom_aspect_ratios":null,"public_favicon":null,"default_appearance":"auto","default_theme_light":null,"theme_light_overrides":null,"default_theme_dark":null,"theme_dark_overrides":null,"report_error_url":null,"report_bug_url":null,"report_feature_url":null,"public_registration":true,"public_registration_verify_email":true,"public_registration_role":null,"public_registration_email_filter":null,"visual_editor_urls":null,"accepted_terms":true,"project_id":"01991575-ca90-75f0-9cce-fe7c5bc726b9"}	{"public_registration":true}	\N	\N
238	417	directus_settings	1	{"id":1,"project_name":"Directus","project_url":null,"project_color":"#6644FF","project_logo":null,"public_foreground":null,"public_background":null,"public_note":null,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"custom_css":null,"storage_default_folder":null,"basemaps":null,"mapbox_key":null,"module_bar":null,"project_descriptor":null,"default_language":"en-US","custom_aspect_ratios":null,"public_favicon":null,"default_appearance":"auto","default_theme_light":null,"theme_light_overrides":null,"default_theme_dark":null,"theme_dark_overrides":null,"report_error_url":null,"report_bug_url":null,"report_feature_url":null,"public_registration":true,"public_registration_verify_email":true,"public_registration_role":"984b726e-da32-4ecc-84f2-ddd4883cbe24","public_registration_email_filter":null,"visual_editor_urls":null,"accepted_terms":true,"project_id":"01991575-ca90-75f0-9cce-fe7c5bc726b9"}	{"public_registration_role":"984b726e-da32-4ecc-84f2-ddd4883cbe24"}	\N	\N
239	418	directus_users	41427f6f-0c1f-4824-9cd1-36094ddbbbd7	{"id":"41427f6f-0c1f-4824-9cd1-36094ddbbbd7","first_name":"test1","last_name":null,"email":"test1@example.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"unverified","role":"984b726e-da32-4ecc-84f2-ddd4883cbe24","token":null,"last_access":null,"last_page":null,"provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"text_direction":"auto","policies":[]}	{"role":"984b726e-da32-4ecc-84f2-ddd4883cbe24"}	\N	\N
240	419	directus_users	fcd21614-35b0-4156-9773-ef563ad6fc9b	{"id":"fcd21614-35b0-4156-9773-ef563ad6fc9b","first_name":"test2","last_name":null,"email":"test2@example.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"unverified","role":"38ac37a4-95b7-4eee-929f-35aa077b1bde","token":null,"last_access":null,"last_page":null,"provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"text_direction":"auto","policies":[]}	{"role":"38ac37a4-95b7-4eee-929f-35aa077b1bde"}	\N	\N
241	421	directus_users	fcd21614-35b0-4156-9773-ef563ad6fc9b	{"id":"fcd21614-35b0-4156-9773-ef563ad6fc9b","first_name":"test2","last_name":null,"email":"test2@example.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"unverified","role":"38ac37a4-95b7-4eee-929f-35aa077b1bde","token":null,"last_access":null,"last_page":null,"provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"text_direction":"auto","policies":[]}	{"password":"**********"}	\N	\N
242	422	directus_policies	6befdac1-6b80-4c2f-a589-09ee31ea9596	{"name":"Customer","admin_access":false,"app_access":true}	{"name":"Customer","admin_access":false,"app_access":true}	\N	\N
243	423	directus_permissions	25	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_collections","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_collections","action":"read"}	\N	\N
318	539	Deals	4f966eee-b586-4737-9aef-8bcf9791edf8	{"title":"New deal","short_desc":"2222222222"}	{"title":"New deal","short_desc":"2222222222"}	\N	\N
244	424	directus_permissions	26	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_fields","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_fields","action":"read"}	\N	\N
245	425	directus_permissions	27	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_relations","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_relations","action":"read"}	\N	\N
246	426	directus_permissions	28	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_translations","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_translations","action":"read"}	\N	\N
247	427	directus_permissions	29	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"user":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_activity","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"user":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_activity","action":"read"}	\N	\N
248	428	directus_permissions	30	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_comments","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_comments","action":"read"}	\N	\N
249	429	directus_permissions	31	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":{"comment":{"_nnull":true}},"presets":null,"fields":["*"],"system":true,"collection":"directus_comments","action":"create"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":{"comment":{"_nnull":true}},"presets":null,"fields":["*"],"system":true,"collection":"directus_comments","action":"create"}	\N	\N
250	430	directus_permissions	32	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["comment"],"system":true,"collection":"directus_comments","action":"update"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["comment"],"system":true,"collection":"directus_comments","action":"update"}	\N	\N
251	431	directus_permissions	33	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_comments","action":"delete"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_comments","action":"delete"}	\N	\N
252	432	directus_permissions	34	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"_or":[{"user":{"_eq":"$CURRENT_USER"}},{"_and":[{"user":{"_null":true}},{"role":{"_eq":"$CURRENT_ROLE"}}]},{"_and":[{"user":{"_null":true}},{"role":{"_null":true}}]}]},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"_or":[{"user":{"_eq":"$CURRENT_USER"}},{"_and":[{"user":{"_null":true}},{"role":{"_eq":"$CURRENT_ROLE"}}]},{"_and":[{"user":{"_null":true}},{"role":{"_null":true}}]}]},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"read"}	\N	\N
253	433	directus_permissions	35	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":{"user":{"_eq":"$CURRENT_USER"}},"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"create"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":{"user":{"_eq":"$CURRENT_USER"}},"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"create"}	\N	\N
254	434	directus_permissions	36	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"user":{"_eq":"$CURRENT_USER"}},"validation":{"user":{"_eq":"$CURRENT_USER"}},"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"update"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"user":{"_eq":"$CURRENT_USER"}},"validation":{"user":{"_eq":"$CURRENT_USER"}},"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"update"}	\N	\N
255	435	directus_permissions	37	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"user":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"delete"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"user":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"delete"}	\N	\N
256	436	directus_permissions	38	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"id":{"_in":"$CURRENT_ROLES"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_roles","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"id":{"_in":"$CURRENT_ROLES"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_roles","action":"read"}	\N	\N
257	437	directus_permissions	39	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_settings","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_settings","action":"read"}	\N	\N
258	438	directus_permissions	40	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_translations","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_translations","action":"read"}	\N	\N
259	439	directus_permissions	41	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"recipient":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_notifications","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"recipient":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_notifications","action":"read"}	\N	\N
287	498	directus_policies	de1abd56-dca6-4d16-9e99-f451a809da93	{"name":"Contracter","admin_access":false,"app_access":true}	{"name":"Contracter","admin_access":false,"app_access":true}	\N	\N
260	440	directus_permissions	42	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"recipient":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["status"],"system":true,"collection":"directus_notifications","action":"update"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"recipient":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["status"],"system":true,"collection":"directus_notifications","action":"update"}	\N	\N
261	441	directus_permissions	43	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_shares","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_shares","action":"read"}	\N	\N
262	442	directus_permissions	44	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"id":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["id","first_name","last_name","last_page","email","password","location","title","description","tags","preferences_divider","avatar","language","appearance","theme_light","theme_dark","tfa_secret","status","role"],"system":true,"collection":"directus_users","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":{"id":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["id","first_name","last_name","last_page","email","password","location","title","description","tags","preferences_divider","avatar","language","appearance","theme_light","theme_dark","tfa_secret","status","role"],"system":true,"collection":"directus_users","action":"read"}	\N	\N
263	444	directus_settings	1	{"id":1,"project_name":"Directus","project_url":null,"project_color":"#6644FF","project_logo":null,"public_foreground":null,"public_background":null,"public_note":null,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"custom_css":null,"storage_default_folder":null,"basemaps":null,"mapbox_key":null,"module_bar":null,"project_descriptor":null,"default_language":"en-US","custom_aspect_ratios":null,"public_favicon":null,"default_appearance":"auto","default_theme_light":null,"theme_light_overrides":null,"default_theme_dark":null,"theme_dark_overrides":null,"report_error_url":null,"report_bug_url":null,"report_feature_url":null,"public_registration":true,"public_registration_verify_email":false,"public_registration_role":"984b726e-da32-4ecc-84f2-ddd4883cbe24","public_registration_email_filter":null,"visual_editor_urls":null,"accepted_terms":true,"project_id":"01991575-ca90-75f0-9cce-fe7c5bc726b9"}	{"public_registration_verify_email":false}	\N	\N
264	445	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	{"id":"9c0cbf14-f759-4873-9017-8ce445823d4a","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"active","role":"d1d26b15-b864-4232-9992-565d6aa2acb1","token":"**********","last_access":"2025-09-04T16:37:44.636Z","last_page":"/users/9c0cbf14-f759-4873-9017-8ce445823d4a","provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"text_direction":"auto","policies":["7fc81fd8-a726-4194-b332-98442c516203"]}	{"token":"**********"}	\N	\N
265	447	directus_access	8f2538ea-b4e5-46cd-ab8f-1f5e5c1c3b85	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","role":{"id":"984b726e-da32-4ecc-84f2-ddd4883cbe24"}}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","role":{"id":"984b726e-da32-4ecc-84f2-ddd4883cbe24"}}	\N	\N
266	451	directus_users	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	{"id":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","first_name":"test1","last_name":null,"email":"test1@example.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"active","role":"984b726e-da32-4ecc-84f2-ddd4883cbe24","token":null,"last_access":null,"last_page":null,"provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"text_direction":"auto","policies":[]}	{"role":"984b726e-da32-4ecc-84f2-ddd4883cbe24"}	\N	\N
267	452	directus_users	5199d5b6-e522-4be4-81bc-14142e03ed41	{"id":"5199d5b6-e522-4be4-81bc-14142e03ed41","first_name":"test2","last_name":null,"email":"test2@example.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"active","role":"984b726e-da32-4ecc-84f2-ddd4883cbe24","token":null,"last_access":null,"last_page":null,"provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"text_direction":"auto","policies":[]}	{"role":"984b726e-da32-4ecc-84f2-ddd4883cbe24"}	\N	\N
268	453	directus_users	df4b7b32-93cd-43ef-83be-063f5b854186	{"id":"df4b7b32-93cd-43ef-83be-063f5b854186","first_name":"test3","last_name":null,"email":"test3@example.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"active","role":"984b726e-da32-4ecc-84f2-ddd4883cbe24","token":null,"last_access":null,"last_page":null,"provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"text_direction":"auto","policies":[]}	{"role":"984b726e-da32-4ecc-84f2-ddd4883cbe24"}	\N	\N
269	454	directus_users	a9de468f-e25e-4174-a0c4-63e5017e7184	{"id":"a9de468f-e25e-4174-a0c4-63e5017e7184","first_name":"test4","last_name":null,"email":"test4@example.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"active","role":"38ac37a4-95b7-4eee-929f-35aa077b1bde","token":null,"last_access":null,"last_page":null,"provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"text_direction":"auto","policies":[]}	{"role":"38ac37a4-95b7-4eee-929f-35aa077b1bde"}	\N	\N
270	456	directus_permissions	45	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"CustomerProfile","action":"create"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"CustomerProfile","action":"create"}	\N	\N
271	457	directus_permissions	46	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"CustomerProfile","action":"update"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"CustomerProfile","action":"update"}	\N	\N
315	533	Deals	5ef9921f-a2d7-46b6-a20f-fdf10500f68e	{"title":"New deal","short_desc":"2222222222"}	{"title":"New deal","short_desc":"2222222222"}	\N	\N
272	458	directus_permissions	47	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"create"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"create"}	\N	\N
273	459	directus_permissions	48	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"read"}	\N	\N
274	460	directus_permissions	49	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"update"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"update"}	\N	\N
275	461	directus_permissions	50	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"delete"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"delete"}	\N	\N
276	462	directus_permissions	51	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"share"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"share"}	\N	\N
277	463	directus_permissions	52	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"create"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"create"}	\N	\N
278	464	directus_permissions	53	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"read"}	\N	\N
279	465	directus_permissions	54	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"update"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"update"}	\N	\N
280	466	directus_permissions	55	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"delete"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"delete"}	\N	\N
281	467	directus_permissions	56	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"share"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"share"}	\N	\N
282	468	directus_permissions	57	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"create"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"create"}	\N	\N
283	469	directus_permissions	58	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"read"}	\N	\N
284	470	directus_permissions	59	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"update"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"update"}	\N	\N
285	471	directus_permissions	60	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"delete"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"delete"}	\N	\N
286	472	directus_permissions	61	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"share"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"share"}	\N	\N
288	499	directus_permissions	62	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_collections","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_collections","action":"read"}	\N	\N
289	500	directus_permissions	63	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_fields","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_fields","action":"read"}	\N	\N
290	501	directus_permissions	64	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_relations","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_relations","action":"read"}	\N	\N
291	502	directus_permissions	65	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_translations","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_translations","action":"read"}	\N	\N
292	503	directus_permissions	66	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"user":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_activity","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"user":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_activity","action":"read"}	\N	\N
293	504	directus_permissions	67	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_comments","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_comments","action":"read"}	\N	\N
294	505	directus_permissions	68	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":{"comment":{"_nnull":true}},"presets":null,"fields":["*"],"system":true,"collection":"directus_comments","action":"create"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":{"comment":{"_nnull":true}},"presets":null,"fields":["*"],"system":true,"collection":"directus_comments","action":"create"}	\N	\N
295	506	directus_permissions	69	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["comment"],"system":true,"collection":"directus_comments","action":"update"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["comment"],"system":true,"collection":"directus_comments","action":"update"}	\N	\N
296	507	directus_permissions	70	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_comments","action":"delete"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_comments","action":"delete"}	\N	\N
297	508	directus_permissions	71	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"_or":[{"user":{"_eq":"$CURRENT_USER"}},{"_and":[{"user":{"_null":true}},{"role":{"_eq":"$CURRENT_ROLE"}}]},{"_and":[{"user":{"_null":true}},{"role":{"_null":true}}]}]},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"_or":[{"user":{"_eq":"$CURRENT_USER"}},{"_and":[{"user":{"_null":true}},{"role":{"_eq":"$CURRENT_ROLE"}}]},{"_and":[{"user":{"_null":true}},{"role":{"_null":true}}]}]},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"read"}	\N	\N
298	509	directus_permissions	72	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":{"user":{"_eq":"$CURRENT_USER"}},"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"create"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":{"user":{"_eq":"$CURRENT_USER"}},"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"create"}	\N	\N
299	510	directus_permissions	73	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"user":{"_eq":"$CURRENT_USER"}},"validation":{"user":{"_eq":"$CURRENT_USER"}},"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"update"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"user":{"_eq":"$CURRENT_USER"}},"validation":{"user":{"_eq":"$CURRENT_USER"}},"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"update"}	\N	\N
300	511	directus_permissions	74	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"user":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"delete"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"user":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_presets","action":"delete"}	\N	\N
301	512	directus_permissions	75	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"id":{"_in":"$CURRENT_ROLES"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_roles","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"id":{"_in":"$CURRENT_ROLES"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_roles","action":"read"}	\N	\N
302	513	directus_permissions	76	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_settings","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_settings","action":"read"}	\N	\N
303	514	directus_permissions	77	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_translations","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_translations","action":"read"}	\N	\N
316	535	Deals	ae11e004-09c3-4400-bcae-9905d7c760c5	{"title":"New deal","short_desc":"2222222222"}	{"title":"New deal","short_desc":"2222222222"}	\N	\N
317	537	Deals	21a93f2e-f8c5-45ed-9146-d59e0bc734df	{"title":"New deal","short_desc":"2222222222"}	{"title":"New deal","short_desc":"2222222222"}	\N	\N
304	515	directus_permissions	78	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"recipient":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_notifications","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"recipient":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_notifications","action":"read"}	\N	\N
305	516	directus_permissions	79	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"recipient":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["status"],"system":true,"collection":"directus_notifications","action":"update"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"recipient":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["status"],"system":true,"collection":"directus_notifications","action":"update"}	\N	\N
306	517	directus_permissions	80	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_shares","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["*"],"system":true,"collection":"directus_shares","action":"read"}	\N	\N
307	518	directus_permissions	81	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"id":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["id","first_name","last_name","last_page","email","password","location","title","description","tags","preferences_divider","avatar","language","appearance","theme_light","theme_dark","tfa_secret","status","role"],"system":true,"collection":"directus_users","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":{"id":{"_eq":"$CURRENT_USER"}},"validation":null,"presets":null,"fields":["id","first_name","last_name","last_page","email","password","location","title","description","tags","preferences_divider","avatar","language","appearance","theme_light","theme_dark","tfa_secret","status","role"],"system":true,"collection":"directus_users","action":"read"}	\N	\N
308	519	directus_access	88e56d8d-0dc5-4666-b6eb-b7b7167e4f23	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","role":{"id":"38ac37a4-95b7-4eee-929f-35aa077b1bde"}}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","role":{"id":"38ac37a4-95b7-4eee-929f-35aa077b1bde"}}	\N	\N
309	522	directus_permissions	82	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"create"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"create"}	\N	\N
310	523	directus_permissions	83	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"read"}	\N	\N
311	524	directus_permissions	84	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"update"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Deals","action":"update"}	\N	\N
312	525	directus_permissions	85	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"create"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"create"}	\N	\N
313	526	directus_permissions	86	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"read"}	\N	\N
314	527	directus_permissions	87	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"update"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages","action":"update"}	\N	\N
319	542	Deals	5b7cde2d-3e16-43a0-81e7-fe0ff1ee54ce	{"title":"New deal","short_desc":"2222222222"}	{"title":"New deal","short_desc":"2222222222"}	\N	\N
320	543	directus_policies	6befdac1-6b80-4c2f-a589-09ee31ea9596	{"id":"6befdac1-6b80-4c2f-a589-09ee31ea9596","name":"Customer","icon":"badge","description":null,"ip_access":null,"enforce_tfa":false,"admin_access":true,"app_access":true,"permissions":[25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61],"users":["8f2538ea-b4e5-46cd-ab8f-1f5e5c1c3b85"],"roles":["8f2538ea-b4e5-46cd-ab8f-1f5e5c1c3b85"]}	{"admin_access":true}	\N	\N
322	545	directus_policies	6befdac1-6b80-4c2f-a589-09ee31ea9596	{"id":"6befdac1-6b80-4c2f-a589-09ee31ea9596","name":"Customer","icon":"badge","description":null,"ip_access":null,"enforce_tfa":false,"admin_access":false,"app_access":true,"permissions":[25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,88],"users":["8f2538ea-b4e5-46cd-ab8f-1f5e5c1c3b85"],"roles":["8f2538ea-b4e5-46cd-ab8f-1f5e5c1c3b85"]}	{"admin_access":false}	\N	\N
321	544	directus_permissions	88	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"CustomerProfile","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"CustomerProfile","action":"read"}	322	\N
323	546	directus_users	9c0cbf14-f759-4873-9017-8ce445823d4a	{"id":"9c0cbf14-f759-4873-9017-8ce445823d4a","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"active","role":"d1d26b15-b864-4232-9992-565d6aa2acb1","token":"**********","last_access":"2025-09-05T16:35:40.487Z","last_page":"/users/9c0cbf14-f759-4873-9017-8ce445823d4a","provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"text_direction":"auto","policies":["7fc81fd8-a726-4194-b332-98442c516203"]}	{"token":"**********"}	\N	\N
324	555	Deals	e97e2746-5c2b-40f8-8810-854964109e94	{"title":"New deal","short_desc":"2222222222"}	{"title":"New deal","short_desc":"2222222222"}	\N	\N
325	557	Deals	d423db6b-ad1e-4d96-9dfa-e9692167a628	{"title":"New deal","short_desc":"2222222222"}	{"title":"New deal","short_desc":"2222222222"}	\N	\N
326	559	Deals	3bb82781-dbec-44f2-a92a-ebcd794ee74b	{"title":"New deal","short_desc":"2222222222"}	{"title":"New deal","short_desc":"2222222222"}	\N	\N
327	561	Deals	b0aaefb6-78aa-4f32-98fc-121260db3057	{"title":"New deal","short_desc":"2222222222"}	{"title":"New deal","short_desc":"2222222222"}	\N	\N
328	563	Deals	36f82312-7fbe-4f49-85ca-4f74af595e0c	{"title":"New deal","short_desc":"2222222222"}	{"title":"New deal","short_desc":"2222222222"}	\N	\N
329	565	Deals	ab8a53da-88c0-4a24-840f-23f0b5c92af1	{"title":"New deal","short_desc":"2222222222"}	{"title":"New deal","short_desc":"2222222222"}	\N	\N
330	567	Deals	28b5738d-f0a1-4d85-84e3-3312296b0f8d	{"title":"New deal","short_desc":"2222222222"}	{"title":"New deal","short_desc":"2222222222"}	\N	\N
331	577	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	{"title":"111111","short_desc":"1111111111111111"}	{"title":"111111","short_desc":"1111111111111111"}	\N	\N
332	578	DealStages	ccde9d6b-08cf-4b19-bb21-6bedf69430af	{"deal":"bedafa28-af8f-4a34-8af1-622d300e7358","short_desc":"11","title":"11","deal_id":"bedafa28-af8f-4a34-8af1-622d300e7358"}	{"deal":"bedafa28-af8f-4a34-8af1-622d300e7358","short_desc":"11","title":"11","deal_id":"bedafa28-af8f-4a34-8af1-622d300e7358"}	\N	\N
333	579	DealStages	8046c3ca-0c95-47ff-9f10-9b7b0b3c9756	{"deal":"bedafa28-af8f-4a34-8af1-622d300e7358","short_desc":"22","title":"22","deal_id":"bedafa28-af8f-4a34-8af1-622d300e7358"}	{"deal":"bedafa28-af8f-4a34-8af1-622d300e7358","short_desc":"22","title":"22","deal_id":"bedafa28-af8f-4a34-8af1-622d300e7358"}	\N	\N
334	580	directus_permissions	75	{"id":75,"collection":"directus_roles","action":"read","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"de1abd56-dca6-4d16-9e99-f451a809da93"}	{"collection":"directus_roles","action":"read","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"de1abd56-dca6-4d16-9e99-f451a809da93"}	\N	\N
335	583	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	{"id":"bedafa28-af8f-4a34-8af1-622d300e7358","status":"draft","sort":null,"user_created":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_created":"2025-09-05T17:14:28.779Z","user_updated":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_updated":"2025-09-05T17:37:24.526Z","title":"111111","short_desc":"1111111111111111","content":null,"customer_id":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","executor_id":null,"agent_id":null,"invitation_token":"rVVq2UItTlUSLL0ulY50R","invitation_accepted":null,"executor_confirmed":null,"customer_confirmed":null,"started_at":null,"completed_at":null}	{"customer_id":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","invitation_token":"rVVq2UItTlUSLL0ulY50R","user_updated":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_updated":"2025-09-05T17:37:24.526Z"}	\N	\N
336	584	Notifications	d6bd81ea-3f16-4e78-b9ae-fe465988a88c	{"type":"deal_invitation","status":"published","user_id":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","deal_id":"bedafa28-af8f-4a34-8af1-622d300e7358","title":"Приглашение в сделку","is_read":false,"message":"Вас пригласили в сделку 111111"}	{"type":"deal_invitation","status":"published","user_id":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","deal_id":"bedafa28-af8f-4a34-8af1-622d300e7358","title":"Приглашение в сделку","is_read":false,"message":"Вас пригласили в сделку 111111"}	\N	\N
337	587	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	{"id":"bedafa28-af8f-4a34-8af1-622d300e7358","status":"draft","sort":null,"user_created":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_created":"2025-09-05T17:14:28.779Z","user_updated":"9c0cbf14-f759-4873-9017-8ce445823d4a","date_updated":"2025-09-05T17:38:52.043Z","title":"111111","short_desc":"1111111111111111","content":null,"customer_id":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","executor_id":null,"agent_id":null,"invitation_token":null,"invitation_accepted":null,"executor_confirmed":null,"customer_confirmed":null,"started_at":null,"completed_at":null}	{"invitation_token":null,"user_updated":"9c0cbf14-f759-4873-9017-8ce445823d4a","date_updated":"2025-09-05T17:38:52.043Z"}	\N	\N
338	588	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	{"id":"bedafa28-af8f-4a34-8af1-622d300e7358","status":"draft","sort":null,"user_created":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_created":"2025-09-05T17:14:28.779Z","user_updated":"9c0cbf14-f759-4873-9017-8ce445823d4a","date_updated":"2025-09-05T17:39:00.851Z","title":"111111","short_desc":"1111111111111111","content":null,"customer_id":null,"executor_id":null,"agent_id":null,"invitation_token":null,"invitation_accepted":null,"executor_confirmed":null,"customer_confirmed":null,"started_at":null,"completed_at":null}	{"customer_id":null,"user_updated":"9c0cbf14-f759-4873-9017-8ce445823d4a","date_updated":"2025-09-05T17:39:00.851Z"}	\N	\N
339	589	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	{"id":"bedafa28-af8f-4a34-8af1-622d300e7358","status":"draft","sort":null,"user_created":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_created":"2025-09-05T17:14:28.779Z","user_updated":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_updated":"2025-09-05T17:39:20.572Z","title":"111111","short_desc":"1111111111111111","content":null,"customer_id":"5199d5b6-e522-4be4-81bc-14142e03ed41","executor_id":null,"agent_id":null,"invitation_token":"QIOLJVQO5OKxT0JEpVCKJ","invitation_accepted":null,"executor_confirmed":null,"customer_confirmed":null,"started_at":null,"completed_at":null}	{"customer_id":"5199d5b6-e522-4be4-81bc-14142e03ed41","invitation_token":"QIOLJVQO5OKxT0JEpVCKJ","user_updated":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_updated":"2025-09-05T17:39:20.572Z"}	\N	\N
340	590	Notifications	8e9c816f-b775-4c94-a1d6-0825d9a987af	{"type":"deal_invitation","status":"published","user_id":"5199d5b6-e522-4be4-81bc-14142e03ed41","deal_id":"bedafa28-af8f-4a34-8af1-622d300e7358","title":"Приглашение в сделку","is_read":false,"message":"Вас пригласили в сделку 111111"}	{"type":"deal_invitation","status":"published","user_id":"5199d5b6-e522-4be4-81bc-14142e03ed41","deal_id":"bedafa28-af8f-4a34-8af1-622d300e7358","title":"Приглашение в сделку","is_read":false,"message":"Вас пригласили в сделку 111111"}	\N	\N
341	653	directus_permissions	89	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"create"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"create"}	\N	\N
342	654	directus_permissions	90	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"read"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"read"}	\N	\N
343	655	directus_permissions	91	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"update"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"update"}	\N	\N
344	656	directus_permissions	92	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"delete"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"delete"}	\N	\N
345	657	directus_permissions	93	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"share"}	{"policy":"de1abd56-dca6-4d16-9e99-f451a809da93","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"Notifications","action":"share"}	\N	\N
346	677	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	{"id":"bedafa28-af8f-4a34-8af1-622d300e7358","status":"draft","sort":null,"user_created":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_created":"2025-09-05T17:14:28.779Z","user_updated":"a9de468f-e25e-4174-a0c4-63e5017e7184","date_updated":"2025-09-07T12:56:30.752Z","title":"111111","short_desc":"1111111111111111","content":null,"customer_id":null,"executor_id":null,"agent_id":null,"invitation_token":null,"invitation_accepted":false,"executor_confirmed":null,"customer_confirmed":null,"started_at":null,"completed_at":null}	{"customer_id":null,"invitation_token":null,"invitation_accepted":false,"user_updated":"a9de468f-e25e-4174-a0c4-63e5017e7184","date_updated":"2025-09-07T12:56:30.752Z"}	\N	\N
347	678	directus_permissions	81	{"id":81,"collection":"directus_users","action":"read","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"de1abd56-dca6-4d16-9e99-f451a809da93"}	{"collection":"directus_users","action":"read","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"de1abd56-dca6-4d16-9e99-f451a809da93"}	\N	\N
348	680	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	{"id":"bedafa28-af8f-4a34-8af1-622d300e7358","status":"draft","sort":null,"user_created":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_created":"2025-09-05T17:14:28.779Z","user_updated":"a9de468f-e25e-4174-a0c4-63e5017e7184","date_updated":"2025-09-07T13:10:00.178Z","title":"111111","short_desc":"1111111111111111","content":null,"customer_id":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","executor_id":null,"agent_id":null,"invitation_token":"qX0wBwZB5Kdnm8fFPFmyt","invitation_accepted":false,"executor_confirmed":null,"customer_confirmed":null,"started_at":null,"completed_at":null}	{"customer_id":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","invitation_token":"qX0wBwZB5Kdnm8fFPFmyt","user_updated":"a9de468f-e25e-4174-a0c4-63e5017e7184","date_updated":"2025-09-07T13:10:00.178Z"}	\N	\N
349	681	Notifications	94241331-0b47-478e-9d21-e1ef392256e3	{"type":"deal_invitation","status":"published","user_id":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","deal_id":"bedafa28-af8f-4a34-8af1-622d300e7358","title":"Приглашение в сделку","is_read":false,"message":"Вас пригласили в сделку 111111"}	{"type":"deal_invitation","status":"published","user_id":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","deal_id":"bedafa28-af8f-4a34-8af1-622d300e7358","title":"Приглашение в сделку","is_read":false,"message":"Вас пригласили в сделку 111111"}	\N	\N
350	688	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	{"id":"bedafa28-af8f-4a34-8af1-622d300e7358","status":"draft","sort":null,"user_created":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_created":"2025-09-05T17:14:28.779Z","user_updated":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_updated":"2025-09-07T16:38:17.884Z","title":"111111","short_desc":"1111111111111111","content":null,"customer_id":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","executor_id":null,"agent_id":null,"invitation_token":"qX0wBwZB5Kdnm8fFPFmyt","invitation_accepted":true,"executor_confirmed":null,"customer_confirmed":null,"started_at":null,"completed_at":null}	{"invitation_accepted":true,"user_updated":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_updated":"2025-09-07T16:38:17.884Z"}	\N	\N
351	690	Deals	bedafa28-af8f-4a34-8af1-622d300e7358	{"id":"bedafa28-af8f-4a34-8af1-622d300e7358","status":"draft","sort":null,"user_created":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_created":"2025-09-05T17:14:28.779Z","user_updated":"9c0cbf14-f759-4873-9017-8ce445823d4a","date_updated":"2025-09-07T16:57:45.980Z","title":"111111","short_desc":"1111111111111111","content":null,"customer_id":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","executor_id":"a9de468f-e25e-4174-a0c4-63e5017e7184","agent_id":null,"invitation_token":"qX0wBwZB5Kdnm8fFPFmyt","invitation_accepted":true,"executor_confirmed":null,"customer_confirmed":null,"started_at":null,"completed_at":null}	{"executor_id":"a9de468f-e25e-4174-a0c4-63e5017e7184","user_updated":"9c0cbf14-f759-4873-9017-8ce445823d4a","date_updated":"2025-09-07T16:57:45.980Z"}	\N	\N
377	731	directus_fields	101	{"sort":16,"interface":"files","special":["files"],"collection":"DealStages","field":"contracter_files"}	{"sort":16,"interface":"files","special":["files"],"collection":"DealStages","field":"contracter_files"}	\N	\N
352	691	directus_permissions	44	{"id":44,"collection":"directus_users","action":"read","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596"}	{"collection":"directus_users","action":"read","permissions":null,"validation":null,"presets":null,"fields":["*"],"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596"}	\N	\N
353	694	DealStages	ccde9d6b-08cf-4b19-bb21-6bedf69430af	{"id":"ccde9d6b-08cf-4b19-bb21-6bedf69430af","status":"pending","sort":null,"user_created":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_created":"2025-09-05T17:14:43.005Z","user_updated":"9c0cbf14-f759-4873-9017-8ce445823d4a","date_updated":"2025-09-07T17:31:34.643Z","title":"11","short_desc":"11","content":null,"deadline":null,"started_at":null,"completed_at":null,"deal_id":"bedafa28-af8f-4a34-8af1-622d300e7358"}	{"status":"pending","user_updated":"9c0cbf14-f759-4873-9017-8ce445823d4a","date_updated":"2025-09-07T17:31:34.643Z"}	\N	\N
354	695	DealStages	8046c3ca-0c95-47ff-9f10-9b7b0b3c9756	{"id":"8046c3ca-0c95-47ff-9f10-9b7b0b3c9756","status":"pending","sort":null,"user_created":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_created":"2025-09-05T17:14:48.929Z","user_updated":"9c0cbf14-f759-4873-9017-8ce445823d4a","date_updated":"2025-09-07T17:31:41.991Z","title":"22","short_desc":"22","content":null,"deadline":null,"started_at":null,"completed_at":null,"deal_id":"bedafa28-af8f-4a34-8af1-622d300e7358"}	{"status":"pending","user_updated":"9c0cbf14-f759-4873-9017-8ce445823d4a","date_updated":"2025-09-07T17:31:41.991Z"}	\N	\N
355	698	directus_fields	89	{"sort":15,"interface":"files","special":["files"],"options":{},"collection":"DealStages","field":"contracter_files"}	{"sort":15,"interface":"files","special":["files"],"options":{},"collection":"DealStages","field":"contracter_files"}	\N	\N
356	699	directus_fields	90	{"sort":1,"hidden":true,"field":"id","collection":"DealStages_files"}	{"sort":1,"hidden":true,"field":"id","collection":"DealStages_files"}	\N	\N
357	700	directus_collections	DealStages_files	{"hidden":true,"icon":"import_export","collection":"DealStages_files"}	{"hidden":true,"icon":"import_export","collection":"DealStages_files"}	\N	\N
358	701	directus_fields	91	{"sort":2,"hidden":true,"collection":"DealStages_files","field":"DealStages_id"}	{"sort":2,"hidden":true,"collection":"DealStages_files","field":"DealStages_id"}	\N	\N
359	702	directus_fields	92	{"sort":3,"hidden":true,"collection":"DealStages_files","field":"directus_files_id"}	{"sort":3,"hidden":true,"collection":"DealStages_files","field":"directus_files_id"}	\N	\N
360	703	directus_fields	93	{"sort":16,"interface":"files","special":["files"],"collection":"DealStages","field":"customer_files"}	{"sort":16,"interface":"files","special":["files"],"collection":"DealStages","field":"customer_files"}	\N	\N
361	704	directus_fields	94	{"sort":1,"hidden":true,"field":"id","collection":"DealStages_files_1"}	{"sort":1,"hidden":true,"field":"id","collection":"DealStages_files_1"}	\N	\N
362	705	directus_collections	DealStages_files_1	{"hidden":true,"icon":"import_export","collection":"DealStages_files_1"}	{"hidden":true,"icon":"import_export","collection":"DealStages_files_1"}	\N	\N
363	706	directus_fields	95	{"sort":2,"hidden":true,"collection":"DealStages_files_1","field":"DealStages_id"}	{"sort":2,"hidden":true,"collection":"DealStages_files_1","field":"DealStages_id"}	\N	\N
364	707	directus_fields	96	{"sort":3,"hidden":true,"collection":"DealStages_files_1","field":"directus_files_id"}	{"sort":3,"hidden":true,"collection":"DealStages_files_1","field":"directus_files_id"}	\N	\N
365	708	directus_files	88b40a17-d5b6-434b-a751-ea3764beb4c5	{"title":"Img 6743","filename_download":"IMG_6743.jpg","type":"image/jpeg","storage":"local"}	{"title":"Img 6743","filename_download":"IMG_6743.jpg","type":"image/jpeg","storage":"local"}	\N	\N
366	710	directus_files	ffc339eb-7713-4f67-9c4d-a9d53437e329	{"title":"Img 6506","filename_download":"IMG_6506.jpg","type":"image/jpeg","storage":"local"}	{"title":"Img 6506","filename_download":"IMG_6506.jpg","type":"image/jpeg","storage":"local"}	\N	\N
367	709	directus_files	1dc4e95c-7a4d-4ac9-8c47-6386d598c35f	{"title":"Img 6590","filename_download":"IMG_6590.jpg","type":"image/jpeg","storage":"local"}	{"title":"Img 6590","filename_download":"IMG_6590.jpg","type":"image/jpeg","storage":"local"}	\N	\N
371	714	DealStages	ccde9d6b-08cf-4b19-bb21-6bedf69430af	{"id":"ccde9d6b-08cf-4b19-bb21-6bedf69430af","status":"pending","sort":null,"user_created":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_created":"2025-09-05T17:14:43.005Z","user_updated":"9c0cbf14-f759-4873-9017-8ce445823d4a","date_updated":"2025-09-07T18:05:24.928Z","title":"11","short_desc":"11","content":null,"deadline":null,"started_at":null,"completed_at":null,"deal_id":"bedafa28-af8f-4a34-8af1-622d300e7358","contracter_files":[],"customer_files":[1,2,3]}	{"user_updated":"9c0cbf14-f759-4873-9017-8ce445823d4a","date_updated":"2025-09-07T18:05:24.928Z"}	\N	\N
372	726	directus_fields	97	{"sort":15,"interface":"files","special":["files"],"collection":"DealStages","field":"customer_files"}	{"sort":15,"interface":"files","special":["files"],"collection":"DealStages","field":"customer_files"}	\N	\N
373	727	directus_fields	98	{"sort":1,"hidden":true,"field":"id","collection":"DealStages_customer_files"}	{"sort":1,"hidden":true,"field":"id","collection":"DealStages_customer_files"}	\N	\N
374	728	directus_collections	DealStages_customer_files	{"hidden":true,"icon":"import_export","collection":"DealStages_customer_files"}	{"hidden":true,"icon":"import_export","collection":"DealStages_customer_files"}	\N	\N
375	729	directus_fields	99	{"sort":2,"hidden":true,"collection":"DealStages_customer_files","field":"DealStages_id"}	{"sort":2,"hidden":true,"collection":"DealStages_customer_files","field":"DealStages_id"}	\N	\N
376	730	directus_fields	100	{"sort":3,"hidden":true,"collection":"DealStages_customer_files","field":"directus_files_id"}	{"sort":3,"hidden":true,"collection":"DealStages_customer_files","field":"directus_files_id"}	\N	\N
378	732	directus_fields	102	{"sort":1,"hidden":true,"field":"id","collection":"DealStages_contracter_files"}	{"sort":1,"hidden":true,"field":"id","collection":"DealStages_contracter_files"}	\N	\N
379	733	directus_collections	DealStages_contracter_files	{"hidden":true,"icon":"import_export","collection":"DealStages_contracter_files"}	{"hidden":true,"icon":"import_export","collection":"DealStages_contracter_files"}	\N	\N
380	734	directus_fields	103	{"sort":2,"hidden":true,"collection":"DealStages_contracter_files","field":"DealStages_id"}	{"sort":2,"hidden":true,"collection":"DealStages_contracter_files","field":"DealStages_id"}	\N	\N
381	735	directus_fields	104	{"sort":3,"hidden":true,"collection":"DealStages_contracter_files","field":"directus_files_id"}	{"sort":3,"hidden":true,"collection":"DealStages_contracter_files","field":"directus_files_id"}	\N	\N
382	736	directus_files	c0ed3876-0601-4ee5-8509-cccd44f4e96e	{"title":"Photo 2025 09 07 21 13 11","filename_download":"photo_2025-09-07_21-13-11.jpg","type":"image/jpeg","storage":"local"}	{"title":"Photo 2025 09 07 21 13 11","filename_download":"photo_2025-09-07_21-13-11.jpg","type":"image/jpeg","storage":"local"}	\N	\N
383	737	directus_files	ca32670e-906b-4df6-8311-7cee7ee55482	{"title":"Photo 2025 09 07 21 12 40","filename_download":"photo_2025-09-07_21-12-40.jpg","type":"image/jpeg","storage":"local"}	{"title":"Photo 2025 09 07 21 12 40","filename_download":"photo_2025-09-07_21-12-40.jpg","type":"image/jpeg","storage":"local"}	\N	\N
386	740	DealStages	ccde9d6b-08cf-4b19-bb21-6bedf69430af	{"id":"ccde9d6b-08cf-4b19-bb21-6bedf69430af","status":"pending","sort":null,"user_created":"3b566908-5ea1-4f55-80bf-9a9135e0a2c2","date_created":"2025-09-05T17:14:43.005Z","user_updated":"9c0cbf14-f759-4873-9017-8ce445823d4a","date_updated":"2025-09-07T18:13:27.538Z","title":"11","short_desc":"11","content":null,"deadline":null,"started_at":null,"completed_at":null,"deal_id":"bedafa28-af8f-4a34-8af1-622d300e7358","customer_files":[1,2],"contracter_files":[]}	{"user_updated":"9c0cbf14-f759-4873-9017-8ce445823d4a","date_updated":"2025-09-07T18:13:27.538Z"}	\N	\N
384	738	DealStages_customer_files	1	{"DealStages_id":"ccde9d6b-08cf-4b19-bb21-6bedf69430af","directus_files_id":{"id":"c0ed3876-0601-4ee5-8509-cccd44f4e96e"}}	{"DealStages_id":"ccde9d6b-08cf-4b19-bb21-6bedf69430af","directus_files_id":{"id":"c0ed3876-0601-4ee5-8509-cccd44f4e96e"}}	386	\N
385	739	DealStages_customer_files	2	{"DealStages_id":"ccde9d6b-08cf-4b19-bb21-6bedf69430af","directus_files_id":{"id":"ca32670e-906b-4df6-8311-7cee7ee55482"}}	{"DealStages_id":"ccde9d6b-08cf-4b19-bb21-6bedf69430af","directus_files_id":{"id":"ca32670e-906b-4df6-8311-7cee7ee55482"}}	386	\N
387	741	directus_collections	DealStages_customer_files	{"collection":"DealStages_customer_files","icon":"import_export","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"hidden":false}	\N	\N
388	742	directus_collections	DealStages_customer_files	{"collection":"DealStages_customer_files","icon":"import_export","note":null,"display_template":"{{directus_files_id.$thumbnail}}{{directus_files_id.title}}","hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"display_template":"{{directus_files_id.$thumbnail}}{{directus_files_id.title}}"}	\N	\N
389	744	directus_permissions	94	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages_customer_files","action":"create"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages_customer_files","action":"create"}	\N	\N
390	745	directus_permissions	95	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages_customer_files","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages_customer_files","action":"read"}	\N	\N
391	746	directus_permissions	96	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages_customer_files","action":"update"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages_customer_files","action":"update"}	\N	\N
392	747	directus_permissions	97	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages_contracter_files","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages_contracter_files","action":"read"}	\N	\N
393	748	directus_permissions	98	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages_customer_files","action":"delete"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"DealStages_customer_files","action":"delete"}	\N	\N
394	750	directus_permissions	99	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"directus_files","action":"read"}	{"policy":"6befdac1-6b80-4c2f-a589-09ee31ea9596","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"directus_files","action":"read"}	\N	\N
\.


--
-- Data for Name: directus_roles; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_roles (id, name, icon, description, parent) FROM stdin;
d1d26b15-b864-4232-9992-565d6aa2acb1	Administrator	verified	$t:admin_description	\N
38ac37a4-95b7-4eee-929f-35aa077b1bde	Contracter	supervised_user_circle	\N	\N
984b726e-da32-4ecc-84f2-ddd4883cbe24	Customer	accessibility	\N	\N
\.


--
-- Data for Name: directus_sessions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_sessions (token, "user", expires, ip, user_agent, share, origin, next_token) FROM stdin;
FkdnXwIpU3OEndi7kgmyR8E4zC6r3yaMDWpJR8ri1Gole3gdyv2fUsukIyP25Vs4	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 16:18:17.795+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
VAHV24e8UUUiIT13l6kqi7OQhnJzHhwsz3euGjlFL1NrWfAgTTX5pPvjaQ2JtIBh	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 16:30:27.147+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
PPfGp27NmSHt_vW863sMIXf_6jEpeFXAF2sZ0HI-4TSw52-3Vj7itV9meUWcDG2m	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-11 16:34:48.634+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:8055	\N
ErXL0T_YWDeg8LyBecDPQhsfhV5BJ_1Z2t3rfk9ZLiWsn7Ajdhb_QVNO8dI7oj5W	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-11 16:49:29.561+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:8055	\N
AHR-L-0ziJ8UcY7mLB7tWPSjMgjH4PHMUHw0ZZqK1fCJShlU_ViTxH9ypmg50c3i	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-11 19:10:39.628+00	172.23.0.1	Bun/1.2.15	\N	\N	\N
GHNSikS4g9oITRH3IOK8iopl75bSLfrLEo65BZw1hqJnkPWBj1RtnRf102bysTOZ	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-11 19:16:11.056+00	172.23.0.1	Bun/1.2.15	\N	\N	\N
FDiiMi2vdL049s1kiDI0NugT2I_IdG7gYGJ78R_9DkiABb8X9fWrVC_ePrYBMFt6	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-11 19:23:43.286+00	172.23.0.1	Bun/1.2.15	\N	\N	\N
AjPRHlVKrX8zYRVMms5EK_XsTv8cuxOzTw1jnwgUhSOS2DANFSigEN7nQnCfyRpv	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-11 19:23:50.959+00	172.23.0.1	Bun/1.2.15	\N	\N	\N
ST7HuX4_GBX6YhNva7bjyh3TjOQdAGiqYi7xvlMQBkrc99aVPdu2VIXBUR04vu4G	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-11 19:44:01.052+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
Vxlj4ZIRlYLXl89scufw6Nun1jWDERQ9j4Y8eirpkKjz5lZWh7bwAh1eKY35qlTC	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-11 19:44:04.376+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
vxvigotDTFT2slJ2DrTtRXwDHI3zEAU3w0hB0oIHQttc46d72eXCGYc_Mm0caFIQ	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-11 19:44:05.952+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
3zgeUTFClRgHyZ8avIL9ZluV_iYDwxxUGZ-cdS_bCafUPgd8BS_2z0EUf9GIAtYh	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-11 19:44:56.331+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
chV4HVwCBqw4vRD8PgiIoxsMdyYJP-882njSYq9d5WibmgV3esa5KHZ-a2h4bZsi	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-11 19:45:10.843+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
iq8ZGCI5zDpY0xqw_ubtU6cz7ePIm45SSrjeC-SawZ1VTaU1IQtmUyKjvDcFlZOl	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-11 19:49:14.141+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
z5aLxD8wPoS0vmtvE1B33aId67iMuXO_ICT5zRtD17N0nQMyh97pexG07PjoIO0E	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-11 19:50:05.7+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
F5HbIuI-aZD5G9VJ8QbUSi5fXY-fA99X3TrW3fs69WjTTnxdACN8tccdzffNyv5r	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-11 19:50:22.496+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:8055	\N
dnQsagxmRlC3ZEMNXhY9NpRjPcuWk1V5eEtIlqvB7utu0N57-ETp9_TJAglhPzY5	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-11 19:52:56.99+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
3lsZJ-kvEGbSzY1uaZo-4giW-VSJ7EdMrhY4VR-3b9QwVIC96nOd_D3eNwcBQ-Aj	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-11 19:55:14.772+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
gyZxtvfiCnWbvYo_MogQuqPAw6ffFKQQD-OTM2yfAogiuDwM1DKhyLXwoiPWsZJ4	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-11 19:55:29.548+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
74Hb8-2pQ8ZR5jDAdik3sbOdTTGvENgxhcGrgg4dp7LhZibU5sZGczSOI9mfjEk6	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-11 19:59:11.443+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
01NYJvkt7v9QYd19PHDZxY22LcxFtWMDpst7DI4eWnEhElJp7hiw2ZoqMGCGiMv3	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-11 20:19:16.117+00	172.23.0.1	Bun/1.2.15	\N	\N	\N
KRKnKy8U1bTSUsG4uhTwtm4z9Xo1kY09Ksy8x4yQmUgrG--WA3U_sOLvVG8OA-Ie	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-11 20:19:35.545+00	172.23.0.1	Bun/1.2.15	\N	\N	\N
sgwrHrJK4enhEtw_Nmi1sNSgZrMhGjxk2xFrK2D-rtfg5FFLCV-STXIW8p3PGZcH	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-11 20:20:13.75+00	172.23.0.1	Bun/1.2.15	\N	\N	\N
NTXR3kNVHikvgCERYa4fK7wt1TMGsIY3C2nOm5QmRFBLs9gtlJixQR5l88NRvXvc	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-11 20:23:24.162+00	172.23.0.1	Bun/1.2.15	\N	\N	\N
LzBfxAEcph1DbhB01_wkRJKZO1Vw3_yBXHDKy5jamr9j0mcH7gcHW82E2EDsQ9G4	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-12 16:34:00.244+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:8055	\N
MnU0NDT6OXn-Rj7jzUHPhNpTcAZhvse6kgxS_DW1haTQtb_piol0240qpDNyumag	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 17:41:26.657+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
2Mp_xyhmW4DHbO2bmajcNRry6EZO2Pr_hns0FgbUzmm5LB4ltbFpECCNEDcmSvg-	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 16:54:29.403+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
LBciEVlKmcGIzz6XQVtiX5xJfS3RrA7fbyWmeEbZcg4Ej5ajs_mSBwFSrXm006_l	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 17:03:29.448+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
Lk6-ciBjfu-ZPf0E--yTZ7LYLoNOUc_Y9bKAC_G0r210Y_KlBj7kqYvXStrKQzD4	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 17:10:05.446+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
mmnHis4x2pMjMpjyJrTSsM92J4hPGhWhJJ5N2PpfCdPx-SlJZL6_KrTE_kfFoocy	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-12 17:13:34.176+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:8055	\N
leVmAMQoMGwGMu6ksxuBf8WMd_iilOQ5VGAGD5Z-q91G4aUcy2TLarP_VC6TMz9W	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 17:45:47.646+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
8G_d950MUChFYRxE2dCPiNbQ6CsOPZkQM1TuKsndgwqcoO_GiReX2aQCwG2A-2Ov	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-12 17:46:13.789+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
vTTsirQKeJB4la-Lq9j4L7rc67FeGTVDoEOoi934wsA9bY5Kri6Tr3aDSzL0ylnI	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 18:06:14.387+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
82iU6cP8DttBbBvLkNjTmFsxegD-6SWqgVyXtXKKgcG5kLEOn5EhVH_fxrKbNwel	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-11 16:37:44.623+00	172.23.0.1	Bun/1.2.15	\N	\N	\N
XsxGcr-nsbuNtOHrIVLqkmybtFfunckYuQ1OpuPJ7PuEW4Q7zKYt3krPVX1O_YM0	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-11 16:54:35.144+00	172.23.0.1	Bun/1.2.15	\N	\N	\N
fVIBXe6Z78S05GClya1c3Jg0WJgyYdi-Eh-PzZIOzbW29tzIWZ7jp6b1i_5Yw8ty	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-11 19:50:41.828+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
RBv3HuZYSpTIU01atcU27MTpwDNZBnrxECLa37myXYmdOcPD1-XiRJkOuvbjs9Ak	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-11 19:55:01.952+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
901SoqhXUSKfWJx5sve3vbunQN3_8Nmupq88ex8J5mnP54HVCp2U-uIUUL_zk5aR	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-11 20:03:05.042+00	172.23.0.1	Bun/1.2.15	\N	\N	\N
jJiKAmSgimKnyICWbPovXuhMT6e04naq9A3FKZWFywYnaqVoa4TMllp7QOdnTWgZ	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-11 20:03:29.69+00	172.23.0.1	Bun/1.2.15	\N	\N	\N
Bqk32RikTQ-hFRzU7YPigAUcYebQTDqp72pRYQLMMCm_-IXVI6ZwbylAK1NjzqpI	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-11 20:21:39.468+00	172.23.0.1	Bun/1.2.15	\N	\N	\N
k5TbnX9zIU5ucWnD52wJ22581SBG1G_IZbPMoV20bOVZ2he1oW43YgpUH55D47Vh	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 16:12:46.374+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
EbApIKHWDY270Kbnyc5dt9UymOA0VdwQnuux4OnY2LBss5LUhueSzY5HC4NrJ1p1	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 16:21:30.861+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
ecQy3VD82-E0vtH-gMvkwIOMeMxRaka-11u63IGdDkxd_77-L3YwMGQvS7NcjzlK	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 16:24:27.122+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
hzRgKbswgLLd2Tk3kkVk0UzGH_m57Gjl6VlTSHuYXJ3-mdyk6NpFOqzgmNEJPHjh	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 16:24:45.44+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
Q7ScuQ0hE0DL398esxWqf9Agtdi9uXdeMrjAPzBj4tYcwrkTt1bUZyq5WaCg7r5Q	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-12 16:35:40.482+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
4lhyw-y0wBoz92eUjoSQuMLqtCnqfTCFyo2gzpIJJqCi9lWC5h-Jr97insAJD4h4	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 16:55:40.332+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
j_p-XdQRMpQTl4QQDY98EwSugBN369xWI3kQiaxikYcGJvcnpT5wZ0q2q17pOFVX	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 16:57:30.078+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
TFqdgfden8P9X8XNR3_6B1N6LHfcfgGYDswNL1uqvXp9f63HP6mM9ceXuYoLgdco	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 17:05:36.239+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
cu7VIlbsV186tU0DPlwuCtobN-1LPSfBdtDjCiwck7FVpvRi1q1y9OTaA_zSWR5c	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 17:11:52.543+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
UuH4LNyiFa0lYGMvzdbldGLiuzT5K4j62iVDEEd2GMwgNmRn0isx3rF84yDXxM8u	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 17:13:07.211+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
V5UuzTzEPWVFk8wRTSodcdC5J6t9LZMGnmVLy6dq4euYUYSs1aVsv6UYn-yIDVZh	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 17:36:28.969+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
gUPTOAQFLDC3WeN_qK9arOu8NaxpIk-skmPsSw3qdJt3gbw1AtETThlM-YfXd9dZ	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-12 17:38:09.546+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:8055	\N
97QanKF1jUXSeuMLu9PiVTKvB5wU4ESiO-8Uv-4CGLgKiy5dBaoa-R9XeCt_MJRV	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-12 17:41:50.38+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
fMAv8Gqvc4zwcDRsZq4kom3f6cBy9gU-QGAo3ndfSJLbzswjuGAMYUO4Be9Gjqan	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 17:46:29.904+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
89wFUEFKtezAnwzVAAtjP0TApkBH0OmsyfyIjn70q-TQVDU6YZN30-i0jcVgIFBD	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 17:47:15.669+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
pVVn_qO09PI8pIipak_7pAAgF6tcoyX8AsXYFzo8U2-B9-pvgFVQUoX0fFNR8Zp2	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 17:49:01.523+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
0TLezQSSeyHU7MZGP5Fe49nSPBXy50E46YNfDfG7e1UrE0mSi_KCrCwl-_unuE2w	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 17:52:02.395+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
IrQIGyuTjXVgcdMVeRGBMlwtc1TdhT1RMMpU1T2dZeazM1nkY3VpvR-5wYrA9ST5	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 17:57:50.337+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
VAZ_Qv2rch01r7zcYtILb4NE2Q7tNTyPQIdFk6cQ1zP4rJRkoBgqnhmpumk3Fiuv	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 17:59:07.89+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
PZS3-YjxzWPLsrZZ9WJmfoVpRZuB2VddVoQisUQRkFlePUYzKJmb40GSHCyz10Gz	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 18:04:09.349+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
DCWo8nVnfT-reA3xSPGPR5rRQwrYWx6W2VCui9PMpvS7pwmVfaGBryO-y74epD1H	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 18:16:12.894+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
u8hBstGy8cxx2GcVg8zXwdABBzvIo9gbgyJ2Nujex9edGusa9d2S3-obr7UZnaJ3	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 18:29:32.392+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
XsNszGJf4quzISi8ckwLy9iRHV6sKd-02sdNXIEi0vwGFdilbdzOmUng1Uzf0AaQ	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-12 18:39:06.428+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
VSR-6tmQDIttpru_5t8AqZ3WppronmkvxNEzYPAEtuFhqPioC8QFpeJAqAHnlW2X	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 18:39:17.487+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
EliRF-H2Wjaq1D21_dUPHNbHwZAi6Wt734zAVkq_o8e_kyLZnv74aNcM8ymY4iEa	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-12 18:39:49.007+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
ilYfRY5DSnb3XGNo4ZRNJUFmGhtc2WOTi137amaz5BzwN7Bj6qJuH-OTfUvLp_Mn	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 18:40:04.259+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
x5oGJl82rg5nOshzgBH2eXM-mDRSe9SHDPhg7421gqWr9YjDTaIEuyBjyqAOgXNv	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-12 18:41:02.921+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:8055	\N
S7_pCdy2xH1pb_kwvSBQ-5SbYvAVe03wlAcKWgpk-tOdL7HOPO3b3w4J-0RotAdY	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-12 18:53:17.938+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
km631TRDIby2nNBqL9El2R1W3lcKA-p98Ivm_UmKG7l7_csObdHAtKlMXxMNSc7j	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 18:53:31.723+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
VMSrUKYvH2mRPKDVvE36CP0gw1xm5O78HkyKI71hn_bmdZuyfCJlYSDRWqkCx6k3	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-12 18:55:07.51+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
IddFT642GjtWRr1OkfZe3MhLu6eagha-gBNjn2sLYuOe7sfr68MyCCp74JY3g8Uz	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 18:55:16.6+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
TVwUqKXnFnbD9yHD90v9r7GfoZ7LcFbctB0tTnzuZoWM11FEUDkwXq00cMLS-0RM	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 18:58:05.867+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
1EW5wlo7cNJaAeZNZLLC8raGC5IjCTIbs76V9IFRS5OTgTeah9cbAd9I7NjfPoz4	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-12 18:58:33.92+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
yJIr4-FXcLVDNHlHVffvZ0FhqhzikFF9P24ETBgVknvfd8Xs-E8jbLvoWpNveRzE	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 18:58:50.062+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
2s5hJD3Fr5xanPV-kb60dfXhISJ0ciutqrQ3eD-JiNOQ-iN3qfWkYunllmaaUpIY	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-12 19:01:55.099+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
4PsE0D5IukzBwngEtezqtnE9ZHmdCti270QPpxeJLqi8McOgq6PIGGRUlxk1eRr8	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 19:02:08.681+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
NeiRtwyZSV7Sx-09JGQlI1LL43UG0XL0F8CV2CR3flncGZCUy2fpScefq7scKeFR	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-12 19:05:10.565+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
MPMt5AolK4i3EJOtJF-5rOv04WwW9cWpbJFbaxycj-4Cx89S2DVXJsGRll4mrdbI	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 19:05:21.951+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
CVRVmxycaaxpbkVAaKzhvONvm9BztXHq_-r-ytpR0SqfOoymKK4UbSbICNn4QSTo	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-12 19:07:21.613+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
InoOX4YxnQ6tphgdfnrpWJ5K5An1Wk5Q8O4VHUXjUNQuV6bjqnmYhCp7g5MbNo4T	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 19:07:30.642+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
-lv7FCp6UiD27kS3VaI0sKqldahwAW6wJIeWl6Wm3XjxweJz7kfyig5AbphgXrma	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-12 19:08:08.43+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
RFDNTH20LVP4y_NsUxEFJZINBXiMRYKgJmKCm6tvtN483lo4q5slttp2zXu5qbP0	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 19:08:32.016+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
UXPo_ZEHQwj8XF4Uc8HMYu3YpIJPT_5dsfsltUpG1sG7GAg8HWKbEM0pPoWYGuEg	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-12 19:08:46.429+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
1LUxROvE5tHmBmDMRZ9H4cl7M_1R-ZnJ5qLp-KUBfaGrMLJJcdUS3PBE71VX11K7	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 19:08:55.807+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
KFY7raZposF2MtnjbQHKIx8l6znGa8fLO1cnqbF9OyM_OutfBEn4EKM_iEMtW2Jd	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-12 19:10:23.254+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
Wcje7LNsCZCu69SmtSGXy3Z3Jm5-kQJlVimyhx2GIWijMnEWH7u_wDC_LEsli4-d	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-12 19:10:35.51+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
GWvvL-SY1jpt3g3rJQx-JOTbZ3f2xg8RWaAdsmNM7VcmxTpvn3OZLLTGmC35_5Sz	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 19:10:44.582+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
P3V2BHuK31xaIOpTYF3TnNRLOwMHu6pxt_wWHw7wj8Wt2kT5my6O_QawEn7Nda8-	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 19:16:27.415+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
7jRcuk2qSIySfm_YUuznG5GkfKQLNA8E1eluiJ4qjm1n3TVt_lWgbfjrrUo9kro-	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-12 19:16:41.806+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
PRflXGc2vjVU78R2eKrhUnqsyYw7k14UqfUINccsxwMQkUD3iaUEyapb2ESzXRHO	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-12 19:16:52.737+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
W9u_lIH7KATWd8VH-0yMTG195nUcVNmGfjOrQ_MKORDB3xLK2a9Qep4P2L_QyHSQ	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 05:22:20.748+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
A5MBbMUF7BmGzRD3SQm3sU5xskp3kDJkKHyFuqcl0VKjfZSbKfCeD_9pYRx2N3lM	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 05:48:10.5+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
QSQe-VFN3wmfFKK9By6HxvxFAhkN5-fZubyUCpzX9T1cJmomrnigTMltCCk5v9XU	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 05:50:00.903+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
aJbw8IeSJnURgRdjR00508e5Hk-0GzszPjv1qsebIqV66kOIhNi5PaCgLvLX8jus	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 05:59:21.138+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
IDwyJX25DPUy_5J1amw9wSZh785erN5Ou3O7F5oD86dHpTo7LfbkRr33GOCT6PLM	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 06:01:53.272+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
7Pc6xxbYaK74sKpHgMRJaiAYB-PkERb3ihCKHqRJ2N4UhdZnh1uJil2E7MduHk7n	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 06:04:10.273+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
KEh1x9X83cuqKz1JFWf03z7WqigLKoDbNCLIidWQWaZ9tcJyVTI2k9t2TELCZr90	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 06:08:07.818+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
wPi6SzxfxKq-P0Nvs55N8pdvhGaeQk99g6nZ3kHtQP7QmTXvnEmUyN2shgfpocPR	5199d5b6-e522-4be4-81bc-14142e03ed41	2025-09-13 06:08:16.775+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
LfXr5sFImi8kivO-zI4Uj0k0D6LGSo7BsDrOSgJACl464Vk6W87xeqmb_fTEQMwx	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 06:26:56.359+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
4PM1DmBdZPMvC0YV59ApODMLtZ2ssXl5rzGinR7iHDCxZpIrOogT4soY1TcikbFu	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 06:29:03.11+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
BgNUkaOCpBA9JJCAwO00Qkumx6mng9k4kGnksbnVMNRPhwGJDGMmtE6oARnemNjP	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 06:41:17.185+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
PqlJFUnCAvMAyol0GVCmiAl4wZYYe7Kk3C1Utwt8_HFrRhYfR8RIqQRIQkrGx749	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 06:41:52.517+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
TgcFcJ3liLYQRPPvAnXyFQLNvQEhMZ-DCqxxIT0QMVlCYvsPWpJzUqa9AnacJT5B	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 06:42:07.947+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
s16-7O27L-goVjc9jkIgyGb2olihKUq0hpN_E_9JN2QTNhyCsfJN_QhbngyOXLcz	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 06:43:10.552+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
on28l3v7H7SZlQ9iBnzt2gBMvZPn8TZz7g3g05ueQoRhgoJLj5Wf40rUWOi8aI55	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 06:43:19.332+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
z-bWTb0YgfNUPVomC7-dKLM24dx9c7cFrTJ_ELClFc2ra960u8feouPP-Xj_HHEX	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 06:46:40.932+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
0nGZ0tlGVUZ_XhYPFMxpIdJgqr0Gwm6qVyAOAGNZLYghC51tmrMIh4Voq-vIpSsl	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 06:48:37.094+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
XjOGd9DH8LTQbTqpXyLeEXxaEs9ljPTWqSU18vcH3BqvJQ6pIcm9QwFutq8bxE5D	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 14:28:01.106+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
8wzZ0kRNliKzE0-JX12Ab8vSMQ7Ox095od7vmvCQbyDJiyobtYCfBrM2iOgqo1V1	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 14:39:56.601+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
LSC91vm8-qm9HTnp19aWVInmIfAam4vXAwF-sp_qDqMeu0eCo1MrVLaJoPGCU5dT	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 15:05:17.086+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
NneQGY1hxrFvlP-rzP40kCebqPe-khAjx7HeU3R4chpyuVYlO3DAyesnH9afQyau	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-13 15:11:31.805+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
7DV_O2mHDNPt3UlFA44pjKJLK3mJ-Mks-JWKJTm-68FDs_wHPlCL0qkA3d3KlHOf	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-13 15:47:13.122+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
vtngIclsKQOCg18qn4gj_kVc83R8YDLuNuWhQ7VBO4dqecJV1jSRF6YsNVO85tCB	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-13 17:33:03.415+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
tt6Np09jbhpwNlNv3kWe_oPihbs7JLjgcvhu9Q-bjx1mZUpf78CfwRyHJWSWYDUh	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 07:52:13.328+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
NwhV7_1fHiF-zSP2sAdZ4sOPu1kvNaK9b5KhE5GWcupYovSNAX7EEDAaB0dpW8uq	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 07:52:54.757+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
3-EGZFxU4xAY6bY8FbvD_-5MEqc18xt0DqpnSwdY84SiJGDndxNP4ET5uMkBxC9C	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 07:54:31.519+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
NkTfL9Erpuss3cuE9HX6o_8gYpYBvJEqRONGTZPWt9hKLTPuSA3379sQQgu5l5fx	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 07:55:13.32+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
UFsqA1Jd3o39SayvogrA2D558n3Bnv9VLdD5qPTap2QyZDLh9B66mv7pjSPGJiIQ	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 12:28:13.21+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
bMJ5Qaln9cEXXNqCthINQulGqrLPq0HiQxMDk6QvIQWaFE60b0IlPc85epqYZASb	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 12:15:04.044+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
HwpK0cyuI_6GBn0RJBGOZDFgRAh_J7HHXPOisKvrCttoo6P2vrxoQmL4Lr9SYGNA	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 12:27:17.665+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
lcpn3rC7YlLx96H8ANaWgxDYtujjsLHPDvFSdHInhwnpwCDQBM7AXOoTwvs9xbpG	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 12:27:25.041+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
QIIHIumUWAgScNnwViF6JE-mqmQ02Dp5zIHoRpZ5sqULiQshN1aU-BK961no-Fn_	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 12:28:03.65+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
jgy4yUmL-6oHI6XIt8Z-B1SJ7Ys8KcJl8d2IGZxD2LOhtnuoPMmEAnfW0-ppQ-v-	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 12:29:12.866+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
_Gkj51f6Op85olNscmXIFHckMu4kDXkkiME9_8_KKKSf8YBaw7mtpSIn2fRncuso	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 12:30:32.421+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
xlfsNSTG0tJQHm9qQXjdJOXt5hjvqtjEUgsSqoUcKn5-yJrsg8oPOheoaH1O2u7V	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 12:38:51.831+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
8sSXR3-rjN9GzU0BtrpXH_H855z9xur1u3bH9Tr029kAqbPljii9wOPyCoCrm0WH	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 12:46:01.499+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
n1_oSaa3wcT4KmVfp4T1uLA4VvoJ6jQV3kPIDPQDGsOV7vzk0eOmioRvJ18wk8OS	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-14 12:55:04.633+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
oSYBOLjb1kloA4cSsppIGLhTKX9OBwivxAo_oZiInqu9HE51poYZ4LSePmdpDGUH	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 13:10:16.285+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
HNOegTyYEo6sy5gXfeTpGWGsYFou-8UKn9iZklXPj9w8TGo8ObVDc-b8TjSl7Dnb	a9de468f-e25e-4174-a0c4-63e5017e7184	2025-09-14 13:13:19.083+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
ZALspj6X0lZhj8uiXlk-LsVyfd0mas3mPPjT5Hg012QPcGOilEFcMfp1yXcIFmJZ	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 13:15:05.656+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
nLrLl7FtGgJjwaYxg5I8L0schtULaFaImYDXFNyn-0hq2u2Ii0UlXJCCSvp7YaZv	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 13:30:19.113+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
qpeXIllODj8Xc0p77PenWw1_LpvVyjd3YBAUAv8w5ZVyRqPyWrJLVcAcdzhp4YJW	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 16:19:36.185+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
KE0yxMmDrmM8mKgSvRBRG4IDlIMDMa1VKhpqBfcrnjfStjbq9iTFJkAnwB7QY0X9	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 16:35:01.027+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
zbUZA-XoEMU_eHPbB82eElNYcdS7E5ZbJSdCdM6os4dL6GuQbJIcdzz7f2Rkgyf4	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 16:52:02.769+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
i8WX2XF7CIw5AuETfBWrkVNNncxiBnXhska4PFEpWaJQuSG7sV4wEKIutrOMx7UX	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 17:31:55.881+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
rr4aYX8xzieCs9BOpoEsNFw8WKwGnoH5QE2hmzA0EuPRXb6rDFRrBjN3XHsgFEtX	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 17:47:20.543+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
8DLgtfLPB9wRIGNNdlOiAwkYO3rJNjrNDkEjq4SN7wVUVSKZ4hp9bx2nA3OmteLm	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 18:06:29.59+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
OvfutZB6oAkWF_ORn78Zf009i-dMBopaDgwZQnliu5xd6BZbluuLz87KFU4eR1Nr	3b566908-5ea1-4f55-80bf-9a9135e0a2c2	2025-09-14 18:21:53.493+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:3000	\N
Oh2s1tpGl2OzGzBjsou3o4b0Ab1KE27v58giX6qmxSZaFBkpp7OX8WGwlrH90fuk	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-07 19:12:03.093+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:8055	dd5ZsPs_YwQ56uoKVuDwJFhTzsiCYxV2p2BpT1SOC3gz9Nlbx7LZlaU86BNQdBWZ
dd5ZsPs_YwQ56uoKVuDwJFhTzsiCYxV2p2BpT1SOC3gz9Nlbx7LZlaU86BNQdBWZ	9c0cbf14-f759-4873-9017-8ce445823d4a	2025-09-08 19:11:53.093+00	172.23.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36	\N	http://localhost:8055	\N
\.


--
-- Data for Name: directus_settings; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_settings (id, project_name, project_url, project_color, project_logo, public_foreground, public_background, public_note, auth_login_attempts, auth_password_policy, storage_asset_transform, storage_asset_presets, custom_css, storage_default_folder, basemaps, mapbox_key, module_bar, project_descriptor, default_language, custom_aspect_ratios, public_favicon, default_appearance, default_theme_light, theme_light_overrides, default_theme_dark, theme_dark_overrides, report_error_url, report_bug_url, report_feature_url, public_registration, public_registration_verify_email, public_registration_role, public_registration_email_filter, visual_editor_urls, accepted_terms, project_id) FROM stdin;
1	Directus	\N	#6644FF	\N	\N	\N	\N	25	\N	all	\N	\N	\N	\N	\N	\N	\N	en-US	\N	\N	auto	\N	\N	\N	\N	\N	\N	\N	t	f	984b726e-da32-4ecc-84f2-ddd4883cbe24	\N	\N	t	01991575-ca90-75f0-9cce-fe7c5bc726b9
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
3b566908-5ea1-4f55-80bf-9a9135e0a2c2	test1	\N	test1@example.com	$argon2id$v=19$m=65536,t=3,p=4$R5PRzFTV91larwdPcFBIvQ$KFmeIgJpPnmzVOduGR0tUjLzxNBTNxx2FFMXlgqXhnY	\N	\N	\N	\N	\N	\N	\N	active	984b726e-da32-4ecc-84f2-ddd4883cbe24	\N	2025-09-07 18:21:53.502+00	\N	default	\N	\N	t	\N	\N	\N	\N	\N	auto
a9de468f-e25e-4174-a0c4-63e5017e7184	test4	\N	test4@example.com	$argon2id$v=19$m=65536,t=3,p=4$ukFPUAJIJFedyefg1uPqCw$kxVWZnes/0Kt7T8z5iLTS8hFlKe0UdbKzvKDdXdBiB4	\N	\N	\N	\N	\N	\N	\N	active	38ac37a4-95b7-4eee-929f-35aa077b1bde	\N	2025-09-07 13:13:19.091+00	\N	default	\N	\N	t	\N	\N	\N	\N	\N	auto
5199d5b6-e522-4be4-81bc-14142e03ed41	test2	\N	test2@example.com	$argon2id$v=19$m=65536,t=3,p=4$AcZk2LhFZllWWfHSKfy3pg$MJaBoLxDwsgVbmpzudGusKn3PefAixig+KjsetmtykA	\N	\N	\N	\N	\N	\N	\N	active	984b726e-da32-4ecc-84f2-ddd4883cbe24	\N	2025-09-06 06:08:16.779+00	\N	default	\N	\N	t	\N	\N	\N	\N	\N	auto
df4b7b32-93cd-43ef-83be-063f5b854186	test3	\N	test3@example.com	$argon2id$v=19$m=65536,t=3,p=4$ZiSag/nCZexR8wx+5WgIbg$deeFvdqxSTiGegHPkCH7PZw24b7rn3XgxmyebHNdv/0	\N	\N	\N	\N	\N	\N	\N	active	984b726e-da32-4ecc-84f2-ddd4883cbe24	\N	\N	\N	default	\N	\N	t	\N	\N	\N	\N	\N	auto
9c0cbf14-f759-4873-9017-8ce445823d4a	Admin	User	admin@example.com	$argon2id$v=19$m=65536,t=3,p=4$AO2h28AN5ST95hVJGHxoQQ$2DN/KJCsnxa946uxEJifpNBDBvSlR410QiUE7tYaWow	\N	\N	\N	\N	\N	\N	\N	active	d1d26b15-b864-4232-9992-565d6aa2acb1	V1yuTN-JRPUtPN1DjOXoTs_BqyVBS2Un	2025-09-07 19:11:53.107+00	/settings/policies	default	\N	\N	t	\N	\N	\N	\N	\N	auto
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
-- Name: DealStages_contracter_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."DealStages_contracter_files_id_seq"', 1, false);


--
-- Name: DealStages_customer_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."DealStages_customer_files_id_seq"', 2, true);


--
-- Name: directus_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_activity_id_seq', 751, true);


--
-- Name: directus_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_fields_id_seq', 104, true);


--
-- Name: directus_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_notifications_id_seq', 1, false);


--
-- Name: directus_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_permissions_id_seq', 99, true);


--
-- Name: directus_presets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_presets_id_seq', 8, true);


--
-- Name: directus_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_relations_id_seq', 37, true);


--
-- Name: directus_revisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_revisions_id_seq', 394, true);


--
-- Name: directus_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_settings_id_seq', 1, true);


--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_webhooks_id_seq', 1, false);


--
-- Name: CustomerProfile CustomerProfile_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."CustomerProfile"
    ADD CONSTRAINT "CustomerProfile_pkey" PRIMARY KEY (id);


--
-- Name: DealStages_contracter_files DealStages_contracter_files_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DealStages_contracter_files"
    ADD CONSTRAINT "DealStages_contracter_files_pkey" PRIMARY KEY (id);


--
-- Name: DealStages_customer_files DealStages_customer_files_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DealStages_customer_files"
    ADD CONSTRAINT "DealStages_customer_files_pkey" PRIMARY KEY (id);


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
-- Name: Notifications Notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT "Notifications_pkey" PRIMARY KEY (id);


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
-- Name: CustomerProfile customerprofile_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."CustomerProfile"
    ADD CONSTRAINT customerprofile_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: CustomerProfile customerprofile_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."CustomerProfile"
    ADD CONSTRAINT customerprofile_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: CustomerProfile customerprofile_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."CustomerProfile"
    ADD CONSTRAINT customerprofile_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: Deals deals_agent_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Deals"
    ADD CONSTRAINT deals_agent_id_foreign FOREIGN KEY (agent_id) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: Deals deals_executor_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Deals"
    ADD CONSTRAINT deals_executor_id_foreign FOREIGN KEY (executor_id) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: DealStages_contracter_files dealstages_contracter_files_dealstages_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DealStages_contracter_files"
    ADD CONSTRAINT dealstages_contracter_files_dealstages_id_foreign FOREIGN KEY ("DealStages_id") REFERENCES public."DealStages"(id) ON DELETE SET NULL;


--
-- Name: DealStages_contracter_files dealstages_contracter_files_directus_files_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DealStages_contracter_files"
    ADD CONSTRAINT dealstages_contracter_files_directus_files_id_foreign FOREIGN KEY (directus_files_id) REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: DealStages_customer_files dealstages_customer_files_dealstages_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DealStages_customer_files"
    ADD CONSTRAINT dealstages_customer_files_dealstages_id_foreign FOREIGN KEY ("DealStages_id") REFERENCES public."DealStages"(id) ON DELETE SET NULL;


--
-- Name: DealStages_customer_files dealstages_customer_files_directus_files_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DealStages_customer_files"
    ADD CONSTRAINT dealstages_customer_files_directus_files_id_foreign FOREIGN KEY (directus_files_id) REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: DealStages dealstages_deal_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DealStages"
    ADD CONSTRAINT dealstages_deal_id_foreign FOREIGN KEY (deal_id) REFERENCES public."Deals"(id) ON DELETE SET NULL;


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
-- Name: Notifications notifications_deal_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT notifications_deal_id_foreign FOREIGN KEY (deal_id) REFERENCES public."Deals"(id) ON DELETE SET NULL;


--
-- Name: Notifications notifications_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT notifications_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: Notifications notifications_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT notifications_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict dsijpIqD4kYQQlKefVcU6erhoCvu0767lavE9jH5pFII9YgbekoMjeYzsTWA3aF

