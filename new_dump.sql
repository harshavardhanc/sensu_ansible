--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: configuration_book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.configuration_book (
    id integer NOT NULL,
    book character varying(200) NOT NULL,
    hardspot_only boolean NOT NULL,
    content_only boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    subject_id integer
);


ALTER TABLE public.configuration_book OWNER TO postgres;

--
-- Name: configuration_book_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.configuration_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.configuration_book_id_seq OWNER TO postgres;

--
-- Name: configuration_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.configuration_book_id_seq OWNED BY public.configuration_book.id;


--
-- Name: configuration_grade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.configuration_grade (
    id integer NOT NULL,
    grade character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    medium_id integer
);


ALTER TABLE public.configuration_grade OWNER TO postgres;

--
-- Name: configuration_grade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.configuration_grade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.configuration_grade_id_seq OWNER TO postgres;

--
-- Name: configuration_grade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.configuration_grade_id_seq OWNED BY public.configuration_grade.id;


--
-- Name: configuration_medium; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.configuration_medium (
    id integer NOT NULL,
    medium character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    state_id integer
);


ALTER TABLE public.configuration_medium OWNER TO postgres;

--
-- Name: configuration_medium_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.configuration_medium_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.configuration_medium_id_seq OWNER TO postgres;

--
-- Name: configuration_medium_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.configuration_medium_id_seq OWNED BY public.configuration_medium.id;


--
-- Name: configuration_state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.configuration_state (
    id integer NOT NULL,
    state character varying(200) NOT NULL,
    state_logo character varying(100),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.configuration_state OWNER TO postgres;

--
-- Name: configuration_state_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.configuration_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.configuration_state_id_seq OWNER TO postgres;

--
-- Name: configuration_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.configuration_state_id_seq OWNED BY public.configuration_state.id;


--
-- Name: configuration_subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.configuration_subject (
    id integer NOT NULL,
    "Subject" character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    grade_id integer
);


ALTER TABLE public.configuration_subject OWNER TO postgres;

--
-- Name: configuration_subject_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.configuration_subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.configuration_subject_id_seq OWNER TO postgres;

--
-- Name: configuration_subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.configuration_subject_id_seq OWNED BY public.configuration_subject.id;


--
-- Name: content_content; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_content (
    id integer NOT NULL,
    content_name character varying(200) NOT NULL,
    video character varying(1000),
    approved boolean NOT NULL,
    rating integer,
    comment character varying(200),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    approved_by_id integer,
    chapter_id integer,
    content_contributors_id integer NOT NULL,
    rated_by_id integer,
    section_id integer,
    sub_section_id integer,
    CONSTRAINT content_content_rating_check CHECK ((rating >= 0))
);


ALTER TABLE public.content_content OWNER TO postgres;

--
-- Name: content_content_chapter_keywords; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_content_chapter_keywords (
    id integer NOT NULL,
    content_id integer NOT NULL,
    chapterkeyword_id integer NOT NULL
);


ALTER TABLE public.content_content_chapter_keywords OWNER TO postgres;

--
-- Name: content_content_chapter_keywords_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_content_chapter_keywords_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_content_chapter_keywords_id_seq OWNER TO postgres;

--
-- Name: content_content_chapter_keywords_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_content_chapter_keywords_id_seq OWNED BY public.content_content_chapter_keywords.id;


--
-- Name: content_content_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_content_id_seq OWNER TO postgres;

--
-- Name: content_content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_content_id_seq OWNED BY public.content_content.id;


--
-- Name: content_content_section_keywords; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_content_section_keywords (
    id integer NOT NULL,
    content_id integer NOT NULL,
    sectionkeyword_id integer NOT NULL
);


ALTER TABLE public.content_content_section_keywords OWNER TO postgres;

--
-- Name: content_content_section_keywords_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_content_section_keywords_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_content_section_keywords_id_seq OWNER TO postgres;

--
-- Name: content_content_section_keywords_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_content_section_keywords_id_seq OWNED BY public.content_content_section_keywords.id;


--
-- Name: content_content_sub_section_keywords; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_content_sub_section_keywords (
    id integer NOT NULL,
    content_id integer NOT NULL,
    subsectionkeyword_id integer NOT NULL
);


ALTER TABLE public.content_content_sub_section_keywords OWNER TO postgres;

--
-- Name: content_content_sub_section_keywords_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_content_sub_section_keywords_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_content_sub_section_keywords_id_seq OWNER TO postgres;

--
-- Name: content_content_sub_section_keywords_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_content_sub_section_keywords_id_seq OWNED BY public.content_content_sub_section_keywords.id;


--
-- Name: content_contentcontributors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_contentcontributors (
    id integer NOT NULL,
    first_name character varying(200) NOT NULL,
    last_name character varying(200),
    email character varying(254),
    mobile character varying(10) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.content_contentcontributors OWNER TO postgres;

--
-- Name: content_contentcontributors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_contentcontributors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_contentcontributors_id_seq OWNER TO postgres;

--
-- Name: content_contentcontributors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_contentcontributors_id_seq OWNED BY public.content_contentcontributors.id;


--
-- Name: dataupload_chapter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dataupload_chapter (
    id integer NOT NULL,
    chapter character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    active boolean NOT NULL,
    book_id integer NOT NULL
);


ALTER TABLE public.dataupload_chapter OWNER TO postgres;

--
-- Name: dataupload_chapter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dataupload_chapter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataupload_chapter_id_seq OWNER TO postgres;

--
-- Name: dataupload_chapter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dataupload_chapter_id_seq OWNED BY public.dataupload_chapter.id;


--
-- Name: dataupload_chapterkeyword; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dataupload_chapterkeyword (
    id integer NOT NULL,
    keyword character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    chapter_id integer NOT NULL
);


ALTER TABLE public.dataupload_chapterkeyword OWNER TO postgres;

--
-- Name: dataupload_chapterkeyword_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dataupload_chapterkeyword_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataupload_chapterkeyword_id_seq OWNER TO postgres;

--
-- Name: dataupload_chapterkeyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dataupload_chapterkeyword_id_seq OWNED BY public.dataupload_chapterkeyword.id;


--
-- Name: dataupload_section; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dataupload_section (
    id integer NOT NULL,
    section character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    active boolean NOT NULL,
    chapter_id integer NOT NULL
);


ALTER TABLE public.dataupload_section OWNER TO postgres;

--
-- Name: dataupload_section_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dataupload_section_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataupload_section_id_seq OWNER TO postgres;

--
-- Name: dataupload_section_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dataupload_section_id_seq OWNED BY public.dataupload_section.id;


--
-- Name: dataupload_sectionkeyword; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dataupload_sectionkeyword (
    id integer NOT NULL,
    keyword character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    section_id integer NOT NULL
);


ALTER TABLE public.dataupload_sectionkeyword OWNER TO postgres;

--
-- Name: dataupload_sectionkeyword_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dataupload_sectionkeyword_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataupload_sectionkeyword_id_seq OWNER TO postgres;

--
-- Name: dataupload_sectionkeyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dataupload_sectionkeyword_id_seq OWNED BY public.dataupload_sectionkeyword.id;


--
-- Name: dataupload_subsection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dataupload_subsection (
    id integer NOT NULL,
    sub_section character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    active boolean NOT NULL,
    section_id integer NOT NULL
);


ALTER TABLE public.dataupload_subsection OWNER TO postgres;

--
-- Name: dataupload_subsection_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dataupload_subsection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataupload_subsection_id_seq OWNER TO postgres;

--
-- Name: dataupload_subsection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dataupload_subsection_id_seq OWNED BY public.dataupload_subsection.id;


--
-- Name: dataupload_subsectionkeyword; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dataupload_subsectionkeyword (
    id integer NOT NULL,
    keyword character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    sub_section_id integer NOT NULL
);


ALTER TABLE public.dataupload_subsectionkeyword OWNER TO postgres;

--
-- Name: dataupload_subsectionkeyword_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dataupload_subsectionkeyword_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataupload_subsectionkeyword_id_seq OWNER TO postgres;

--
-- Name: dataupload_subsectionkeyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dataupload_subsectionkeyword_id_seq OWNED BY public.dataupload_subsectionkeyword.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: hardspot_hardspot; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hardspot_hardspot (
    id integer NOT NULL,
    hard_spot text NOT NULL,
    description text NOT NULL,
    points_to_be_covered text NOT NULL,
    useful_to character varying(200) NOT NULL,
    approved boolean NOT NULL,
    rating integer,
    comment character varying(200),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    approved_by_id integer,
    chapter_id integer,
    hardspot_contributor_id integer NOT NULL,
    section_id integer,
    sub_section_id integer,
    CONSTRAINT hardspot_hardspot_rating_check CHECK ((rating >= 0))
);


ALTER TABLE public.hardspot_hardspot OWNER TO postgres;

--
-- Name: hardspot_hardspot_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hardspot_hardspot_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hardspot_hardspot_id_seq OWNER TO postgres;

--
-- Name: hardspot_hardspot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hardspot_hardspot_id_seq OWNED BY public.hardspot_hardspot.id;


--
-- Name: hardspot_hardspotcontributors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hardspot_hardspotcontributors (
    id integer NOT NULL,
    first_name character varying(200) NOT NULL,
    last_name character varying(200),
    email character varying(254),
    mobile character varying(10) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.hardspot_hardspotcontributors OWNER TO postgres;

--
-- Name: hardspot_hardspotcontributors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hardspot_hardspotcontributors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hardspot_hardspotcontributors_id_seq OWNER TO postgres;

--
-- Name: hardspot_hardspotcontributors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hardspot_hardspotcontributors_id_seq OWNED BY public.hardspot_hardspotcontributors.id;


--
-- Name: user_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_roles (
    id integer NOT NULL,
    rolename character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.user_roles OWNER TO postgres;

--
-- Name: user_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_roles_id_seq OWNER TO postgres;

--
-- Name: user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_roles_id_seq OWNED BY public.user_roles.id;


--
-- Name: user_userdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_userdetails (
    user_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    role_id integer NOT NULL,
    state_id integer NOT NULL
);


ALTER TABLE public.user_userdetails OWNER TO postgres;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: configuration_book id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration_book ALTER COLUMN id SET DEFAULT nextval('public.configuration_book_id_seq'::regclass);


--
-- Name: configuration_grade id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration_grade ALTER COLUMN id SET DEFAULT nextval('public.configuration_grade_id_seq'::regclass);


--
-- Name: configuration_medium id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration_medium ALTER COLUMN id SET DEFAULT nextval('public.configuration_medium_id_seq'::regclass);


--
-- Name: configuration_state id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration_state ALTER COLUMN id SET DEFAULT nextval('public.configuration_state_id_seq'::regclass);


--
-- Name: configuration_subject id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration_subject ALTER COLUMN id SET DEFAULT nextval('public.configuration_subject_id_seq'::regclass);


--
-- Name: content_content id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content ALTER COLUMN id SET DEFAULT nextval('public.content_content_id_seq'::regclass);


--
-- Name: content_content_chapter_keywords id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content_chapter_keywords ALTER COLUMN id SET DEFAULT nextval('public.content_content_chapter_keywords_id_seq'::regclass);


--
-- Name: content_content_section_keywords id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content_section_keywords ALTER COLUMN id SET DEFAULT nextval('public.content_content_section_keywords_id_seq'::regclass);


--
-- Name: content_content_sub_section_keywords id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content_sub_section_keywords ALTER COLUMN id SET DEFAULT nextval('public.content_content_sub_section_keywords_id_seq'::regclass);


--
-- Name: content_contentcontributors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_contentcontributors ALTER COLUMN id SET DEFAULT nextval('public.content_contentcontributors_id_seq'::regclass);


--
-- Name: dataupload_chapter id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_chapter ALTER COLUMN id SET DEFAULT nextval('public.dataupload_chapter_id_seq'::regclass);


--
-- Name: dataupload_chapterkeyword id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_chapterkeyword ALTER COLUMN id SET DEFAULT nextval('public.dataupload_chapterkeyword_id_seq'::regclass);


--
-- Name: dataupload_section id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_section ALTER COLUMN id SET DEFAULT nextval('public.dataupload_section_id_seq'::regclass);


--
-- Name: dataupload_sectionkeyword id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_sectionkeyword ALTER COLUMN id SET DEFAULT nextval('public.dataupload_sectionkeyword_id_seq'::regclass);


--
-- Name: dataupload_subsection id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_subsection ALTER COLUMN id SET DEFAULT nextval('public.dataupload_subsection_id_seq'::regclass);


--
-- Name: dataupload_subsectionkeyword id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_subsectionkeyword ALTER COLUMN id SET DEFAULT nextval('public.dataupload_subsectionkeyword_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: hardspot_hardspot id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hardspot_hardspot ALTER COLUMN id SET DEFAULT nextval('public.hardspot_hardspot_id_seq'::regclass);


--
-- Name: hardspot_hardspotcontributors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hardspot_hardspotcontributors ALTER COLUMN id SET DEFAULT nextval('public.hardspot_hardspotcontributors_id_seq'::regclass);


--
-- Name: user_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles ALTER COLUMN id SET DEFAULT nextval('public.user_roles_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Book	7	add_book
26	Can change Book	7	change_book
27	Can delete Book	7	delete_book
28	Can view Book	7	view_book
29	Can add Grade	8	add_grade
30	Can change Grade	8	change_grade
31	Can delete Grade	8	delete_grade
32	Can view Grade	8	view_grade
33	Can add Medium	9	add_medium
34	Can change Medium	9	change_medium
35	Can delete Medium	9	delete_medium
36	Can view Medium	9	view_medium
37	Can add State	10	add_state
38	Can change State	10	change_state
39	Can delete State	10	delete_state
40	Can view State	10	view_state
41	Can add Subject	11	add_subject
42	Can change Subject	11	change_subject
43	Can delete Subject	11	delete_subject
44	Can view Subject	11	view_subject
45	Can add Hard Spot	12	add_hardspot
46	Can change Hard Spot	12	change_hardspot
47	Can delete Hard Spot	12	delete_hardspot
48	Can view Hard Spot	12	view_hardspot
49	Can add Hardspot Contributor	13	add_hardspotcontributors
50	Can change Hardspot Contributor	13	change_hardspotcontributors
51	Can delete Hardspot Contributor	13	delete_hardspotcontributors
52	Can view Hardspot Contributor	13	view_hardspotcontributors
53	Can add content	14	add_content
54	Can change content	14	change_content
55	Can delete content	14	delete_content
56	Can view content	14	view_content
57	Can add Content Contributor	15	add_contentcontributors
58	Can change Content Contributor	15	change_contentcontributors
59	Can delete Content Contributor	15	delete_contentcontributors
60	Can view Content Contributor	15	view_contentcontributors
61	Can add Chapter	16	add_chapter
62	Can change Chapter	16	change_chapter
63	Can delete Chapter	16	delete_chapter
64	Can view Chapter	16	view_chapter
65	Can add Chapter keyword	17	add_chapterkeyword
66	Can change Chapter keyword	17	change_chapterkeyword
67	Can delete Chapter keyword	17	delete_chapterkeyword
68	Can view Chapter keyword	17	view_chapterkeyword
69	Can add Section	18	add_section
70	Can change Section	18	change_section
71	Can delete Section	18	delete_section
72	Can view Section	18	view_section
73	Can add Section keyword	19	add_sectionkeyword
74	Can change Section keyword	19	change_sectionkeyword
75	Can delete Section keyword	19	delete_sectionkeyword
76	Can view Section keyword	19	view_sectionkeyword
77	Can add Sub section	20	add_subsection
78	Can change Sub section	20	change_subsection
79	Can delete Sub section	20	delete_subsection
80	Can view Sub section	20	view_subsection
81	Can add Sub section keyword	21	add_subsectionkeyword
82	Can change Sub section keyword	21	change_subsectionkeyword
83	Can delete Sub section keyword	21	delete_subsectionkeyword
84	Can view Sub section keyword	21	view_subsectionkeyword
85	Can add Role	22	add_roles
86	Can change Role	22	change_roles
87	Can delete Role	22	delete_roles
88	Can view Role	22	view_roles
89	Can add user detail	23	add_userdetails
90	Can change user detail	23	change_userdetails
91	Can delete user detail	23	delete_userdetails
92	Can view user detail	23	view_userdetails
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$smJBkHS32RPC$ehpA18K5K547fAY0kdFYMUOdx3wSX8Ctc703K/crxNc=	2019-02-13 11:15:35.759274+05:30	t	admin				t	t	2019-01-08 08:14:01.547658+05:30
2	pbkdf2_sha256$120000$j8fR9SPMUHzY$JOoUdLrdHG2HBthBgm3+OwYFCDboH0n54UzpLbJr9HU=	\N	f	8058925975				f	t	2019-01-09 07:04:19+05:30
3	pbkdf2_sha256$120000$aHLy6KRcY83d$O5uaINMuLPMqYh2MAGsAtfFb1swL0TG4vS7q8OYv+wA=	\N	f	9413947875				f	t	2019-01-09 07:04:49.78253+05:30
4	pbkdf2_sha256$120000$E8lJgiv4QOb7$UwM0L/+KGyClMg6wt2BoONkHNIxKj/j5lyoYqAHYbIo=	\N	f	9530196917				f	t	2019-01-09 07:05:06.165594+05:30
5	pbkdf2_sha256$120000$dEjWGnxoUWmc$nGdcaOTsglVqJkHkE8DVhfTBXKM+P0W+47Z8PGIbJT0=	\N	f	9982502969				f	t	2019-01-09 07:05:22.962521+05:30
6	pbkdf2_sha256$120000$sAF1xFdt8hEy$Jqjf83JfYCohxsG1CVUz/jhZOggrmvLvH/0Lc5k/hzo=	\N	f	9829344623				f	t	2019-01-09 07:05:40.571858+05:30
7	pbkdf2_sha256$120000$Sfv7Fl8aG3lW$8Ky8BR2pp7HZreqT85jWY70wjkgddUae+2r+zGVB8pY=	\N	f	9413051277				f	t	2019-01-09 07:05:55.746943+05:30
8	pbkdf2_sha256$120000$NEwBRf3t1NBF$gxrwOd0OcOUUfIn3oZt/IjAKDpfBJvZRWFsngiM0Qmo=	\N	f	9929003135				f	t	2019-01-09 07:06:12.367355+05:30
9	pbkdf2_sha256$120000$S23jDtUDffhQ$Pzi3O5TkaJnMmlHTk3u01yff7z9LTZK08VjHrrQukOM=	\N	f	9703411789				f	t	2019-01-09 07:06:28.109711+05:30
10	pbkdf2_sha256$120000$2cPFnYnOfPKq$qgSwa5/JEfFVmnIWmLyXzTpy6aATEPFMuv6hPPO81gM=	\N	f	9798002064				f	t	2019-01-09 07:06:50.204287+05:30
11	pbkdf2_sha256$120000$6OtRSs5TfPP4$uyKfjYMb24WZtYfRnWONbmZWXaJ1eEjyxE09StsKFso=	\N	f	9790952320				f	t	2019-01-09 07:07:04.183188+05:30
12	pbkdf2_sha256$120000$Dm8j54ky9SyL$52eFIV0tl4aBQj1gMZWi86mEJo14O4BAGrE5mNpworQ=	\N	f	9836214970				f	t	2019-01-09 07:07:18.343568+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: configuration_book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.configuration_book (id, book, hardspot_only, content_only, created_at, updated_at, subject_id) FROM stdin;
5	गणित-4	t	f	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	5
6	प्रबोधिनी	t	f	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	6
7	LET'S LEARN ENGLISH	t	f	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	7
8	हिन्दी कक्षा 8	t	f	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	8
9	गणित-2	f	t	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	9
10	गणित-8	f	t	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	10
11	पर्यावरण अध्ययन-4 (अपना परिवेश )	f	t	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	11
12	विज्ञान-8	f	t	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	12
\.


--
-- Data for Name: configuration_grade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.configuration_grade (id, grade, created_at, updated_at, medium_id) FROM stdin;
5	Class 4	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	2
6	Class 9	2019-02-22 12:49:44.683792+05:30	2019-02-22 12:49:44.739167+05:30	2
7	Class 3	2019-02-22 12:48:44.683792+05:30	2019-02-22 12:48:44.739167+05:30	2
8	Class 8	2019-02-22 12:47:44.683792+05:30	2019-02-22 12:47:44.739167+05:30	2
9	Class 2	2019-02-22 12:46:44.683792+05:30	2019-02-22 12:46:44.739167+05:30	2
\.


--
-- Data for Name: configuration_medium; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.configuration_medium (id, medium, created_at, updated_at, state_id) FROM stdin;
2	Hindi	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	1
\.


--
-- Data for Name: configuration_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.configuration_state (id, state, state_logo, created_at, updated_at) FROM stdin;
1	State (Rajasthan)	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
\.


--
-- Data for Name: configuration_subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.configuration_subject (id, "Subject", created_at, updated_at, grade_id) FROM stdin;
5	Mathematics	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	5
6	Hindi	2019-02-22 12:49:44.683792+05:30	2019-02-22 12:49:44.739167+05:30	6
7	English	2019-02-22 12:48:44.683792+05:30	2019-02-22 12:48:44.739167+05:30	7
8	Hindi	2019-02-22 12:47:44.683792+05:30	2019-02-22 12:47:44.739167+05:30	8
9	Mathematics	2019-02-22 12:46:44.683792+05:30	2019-02-22 12:46:44.739167+05:30	9
10	Mathematics	2019-02-22 12:45:44.683792+05:30	2019-02-22 12:45:44.739167+05:30	8
11	EVS	2019-02-22 12:44:44.683792+05:30	2019-02-22 12:44:44.739167+05:30	5
12	Science	2019-02-22 12:43:44.683792+05:30	2019-02-22 12:43:44.739167+05:30	8
\.


--
-- Data for Name: content_content; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_content (id, content_name, video, approved, rating, comment, created_at, updated_at, approved_by_id, chapter_id, content_contributors_id, rated_by_id, section_id, sub_section_id) FROM stdin;
4	रक्ताधान_Blood Transfusion	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%B0%E0%A4%95%E0%A4%A4%E0%A4%A7%E0%A4%A8-Blood_Transfusion_155202912983805.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	1	\N	\N	279
5	रक्त समूह	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202862341718.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	231	1	\N	\N	\N
6	एल.पी.जी.	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202864249799.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	243	1	\N	\N	\N
7	C. N. G.	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202866235946.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	243	1	\N	\N	\N
8	रासायनिक अभिक्रियाएँ	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/videoplayback_5_1_155202887480476.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	1	\N	419	\N
9	वियोजन या अपघटनीय अभिक्रिया	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%B8%E0%A4%AF%E0%A4%9C%E0%A4%A8_%E0%A4%8F%E0%A4%B5_%E0%A4%B5%E0%A4%AF%E0%A4%9C%E0%A4%A8_%E0%A4%85%E0%A4%AD%E0%A4%95%E0%A4%B0%E0%A4%AF%E0%A4%8F_ADDITION_AND_DISSOCIATION_REACTIONS1548434598203_155202914786429.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	1	\N	\N	259
10	संयोजन अभिक्रिया	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%B8%E0%A4%AF%E0%A4%9C%E0%A4%A8_%E0%A4%85%E0%A4%AD%E0%A4%95%E0%A4%B0%E0%A4%AF%E0%A4%8F_ADDITION_REACTIONS_155202925743756.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	1	\N	\N	258
11	बेलन का आयतन	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Mathematics/10/VID_20190126_1226141_155202930822898.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	1	\N	\N	97
12	विस्थापन अभिक्रियाएं	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%B5%E0%A4%B8%E0%A4%A5%E0%A4%AA%E0%A4%A8_%E0%A4%85%E0%A4%AD%E0%A4%95%E0%A4%B0%E0%A4%AF%E0%A4%8F_Displacement_Reaction_155202933359013.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	1	\N	\N	260
13	बेलन और शंकु के आयतन में सम्बन्ध	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Mathematics/10/volume_of_cylinder_and_cone_155202935642199.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	1	\N	\N	97
14	ऊष्माशोषी एवं ऊष्माक्षेपी अभिक्रियाएं	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%89%E0%A4%B7%E0%A4%AE%E0%A4%95%E0%A4%B7%E0%A4%AA_%E0%A4%8F%E0%A4%B5_%E0%A4%89%E0%A4%B7%E0%A4%AE%E0%A4%B6%E0%A4%B7_%E0%A4%85%E0%A4%AD%E0%A4%95%E0%A4%B0%E0%A4%AF%E0%A4%8F_Exothermic_and_Endothermic_Reactions_155202936858926.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	1	\N	\N	263
15	धातु एवं अधातु	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202869228783.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	221	1	\N	\N	\N
16	धातु व अधातु के भौतिक गुणधर्म	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%A7%E0%A4%A4_%E0%A4%8F%E0%A4%B5_%E0%A4%85%E0%A4%A7%E0%A4%A4_Metal_and_Non_metal1_155202890496887.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	1	\N	405	\N
17	धातु व अधातु के रासायनिक गुणधर्म	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%A7%E0%A4%A4_%E0%A4%8F%E0%A4%B5_%E0%A4%85%E0%A4%A7%E0%A4%A4_Metal_and_Non_metal2_155202893030982.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	1	\N	406	\N
18	पौधों में लैंगिक जनन	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202871152156.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	230	29	\N	\N	\N
19	पौधो मे लैंगिक जनन part 1	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202874060997.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	230	29	\N	\N	\N
20	पौधो मे लैंगिक जनन part 2	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202877579075.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	230	29	\N	\N	\N
21	पौधों में लैंगिक जनन part 2	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202880750302.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	230	29	\N	\N	\N
22	राज्य पुष्प  रोहिडा	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/rohida_pusp_155202895484924.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	333	\N
23	जयपुर भ्रमण	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/Rec_0003_155202939091885.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	26	\N	\N	233
24	प्रोफेसर एम.एस. स्वामीनाथन	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/M.S._Swameenathan_155202895870789.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	402	\N
25	आनुवंशिकता	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%86%E0%A4%A8%E0%A4%B5%E0%A4%B6%E0%A4%95%E0%A4%A4__Heredity_15492059777821549206073035_155202939773553.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	26	\N	\N	276
26	अवतल लेंस से प्रतिबिम्ब निर्माण	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/concave_lens_155202944466510.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	26	\N	\N	335
27	लेंस से सम्बंधित परिभाषाएँ	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%B2%E0%A4%B8__Lens__defination_155202946033141.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	333
28	जैसलमेर की सैर	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/Rec_0004_155202948478068.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	26	\N	\N	234
29	जोधपुर यात्रा	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/Rec_0006_155202948929902.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	26	\N	\N	235
30	उदयपुर दर्शन	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/Rec_0008_155202949194784.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	26	\N	\N	236
31	राजस्थान के नक्शे में चिन्हिकरण	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/Rec_0005_155202896381925.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	26	\N	398	\N
32	सुश्रुत	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/Rec_0009_155202901542312.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	26	\N	372	\N
33	4 आर सिद्धांत	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/4_R_155202949652572.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	256
34	सबसे बड़ा पुष्प - रेफ्लेशिया	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/refleeshiya_155202902124820.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	426	\N
35	मिश्र धातु	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/alloy_155202902321545.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	409	\N
36	केवलादेव राष्ट्रीय उद्यान	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/keoladeo_155202950255022.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	266
37	वन्य जीव अभ्यारण्य , राष्ट्रीय उद्यान	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/national_parks_155202951671515.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	266
38	जैव विविधता के ऊष्ण स्थल	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/hot_spots_155202952273042.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	267
39	ऊर्जा के स्रोत	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/energy_sourse_155202954154351.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	293
40	ऊर्जा	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/energy_155202954877610.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	288
41	यांत्रिक ऊर्जा	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/kepe_155202955454067.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	290
42	ऊर्जा का रूपांतरण	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/energy_trans_155202956482654.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	292
43	ऊर्जा का संरक्षण	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/energy_conjervation_155202957530252.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	297
44	रक्त परिसंचरण	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/blood_circulation_155202904701535.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	427	\N
45	रक्त	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/blood_155202958114153.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	282
46	धमनी और शिराएँ	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/dhamni_sira_155202958766278.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	281
47	RBC ,WBC ,PLETLETS	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/rbcwbcpletlets_155202959639431.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	278
48	रक्त बैंक	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/blood_bank_155202960427357.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	280
49	थर्मोप्लास्टिक	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/thermoplastik_155202961022561.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	254
50	थर्मोसेटिंग प्लास्टिक	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/thermoseting_plastik_155202961632709.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	255
51	संश्लेषित रेशें एवं इनके प्रकार	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/artificial_fibre_155202905220101.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	412	\N
52	एकलिंगी एवं द्विलिंगी पुष्प	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/unibi_sexual_flower_155202962188464.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	275
53	स्वपरागण एवं परपरागण	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/saw_evm_par_pragan_155202962862404.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	274
54	रात्री में तारों का टिमटिमाना	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/star_155202963423062.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	330
55	बर्तन के पैंदे में रखे सिक्के का ऊपर उठा हुआ दिखाई देना	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/coin_155202964545949.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	330
56	द्रव में आंशिक रूप से डूबी पेंसिल का मुड़ा हुआ दिखाई देना।	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/pencil_155202965641366.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	330
57	डेंगू	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/dengu_155202967124691.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	285
58	एड्स	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/aids_155202967719987.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	284
59	सूर्योदय से पहले एवं सूर्यास्त के बाद सूर्य का दिखाई देना	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/sun_155202968707860.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	330
60	हेपेटाइटिस	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/hepetaitis_155202969767068.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	284
61	कुष्ठ रोग	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/kust_155202970398650.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	284
62	हीमोफीलिया	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/hemofiliya_155202971013311.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	285
63	एनिमिया	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/animiya_155202971576420.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	285
64	ध्वनि	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/sound_155202972116019.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	299
65	मानव में वाक ध्वनि का उत्पन्न होना	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/sound_by_human_155202972691785.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	300
66	ध्वनि का संचरण	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/dhwni_ka_sanchran_155202906721770.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	448	\N
67	नारू	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/naru_155202973266760.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	284
68	ध्वनि के प्रकार	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/types_of_sound_155202973819420.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	308
69	ध्वनि  प्रदूषण	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/sound_pollution_155202974881745.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	310
70	आयाम एवं आवृति	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/aayam_aavrti_155202975482986.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	304
71	कम्पन काल या आवर्तकाल	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/aavrtkal_155202976058207.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	305
72	ध्वनि की प्रबलता	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/dhwni_ki_prablata_155202976485510.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	306
73	तारत्व	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/tartv_155202977190319.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	307
74	अपवर्तन का कारण	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/reasion_of_refraction_155202977754639.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	329
75	सरदार वल्लभ भाई पटेल	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/statue_of_unity_155202907780685.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	26	\N	375	\N
76	shapes class 2 maths	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 2/Mathematics/9/Ghnabh_ka_Kshetrafal_155202883964344.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	166	116	\N	\N	\N
77	फसल की परिभाषा [ फसल के प्रकार ]	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/crops_and_its_types_155202978814206.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	237
78	पर्यावरण	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/environment_155202980285197.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	355
79	खाद एवं उर्वरक {खाद एवं उर्वरक में अंतर , जैविक खाद के लाभ }	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/khad_or_urvarak_155202980887742.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	21	\N	\N	241
80	राजस्थान में प्रमुख फल एवं सब्जी उत्पादक क्षेत्र	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/fasal_map15517557664621551755836636_155202982420205.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	26	\N	\N	246
81	राजस्थान के विभिन्न जिलों में उगाई जाने वाली प्रमुख फसलें	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/fasal_map1551756198471_155202909077743.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	26	\N	400	\N
82	Chaturbhuj Ki Rachna	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Mathematics/10/Ghnabh_ka_Kshetrafal_155202886442765.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	188	160	\N	\N	\N
83	समान्तर व समलम्ब चतुर्भुज	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Mathematics/10/EIGL50351_155202910839537.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	160	\N	294	\N
84	Ghanabh ka Khsetrafal by Mr. Jagdish Prasad	https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Mathematics/10/Ghnabh_ka_Kshetrafal_155202911923241.mp4	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	150	\N	299	\N
\.


--
-- Data for Name: content_content_chapter_keywords; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_content_chapter_keywords (id, content_id, chapterkeyword_id) FROM stdin;
\.


--
-- Data for Name: content_content_section_keywords; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_content_section_keywords (id, content_id, sectionkeyword_id) FROM stdin;
1	8	569
2	8	570
3	8	571
4	8	572
5	22	449
6	22	450
7	24	532
8	24	533
9	31	523
10	31	524
11	31	525
12	31	526
13	31	527
16	35	543
14	35	544
15	35	545
17	44	575
21	51	551
18	51	552
19	51	553
20	51	554
22	66	603
23	66	604
24	66	605
25	83	399
26	83	400
27	84	407
\.


--
-- Data for Name: content_content_sub_section_keywords; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_content_sub_section_keywords (id, content_id, subsectionkeyword_id) FROM stdin;
2	4	846
3	4	847
4	9	766
5	9	767
6	10	760
7	10	761
8	10	762
9	11	219
10	11	220
11	11	221
12	12	772
13	12	773
14	13	219
15	13	220
16	14	786
17	14	787
18	14	788
19	14	789
20	23	646
21	23	647
22	23	648
23	23	649
24	23	650
25	23	651
26	25	833
27	25	835
28	26	1024
29	27	1018
30	27	1019
31	27	1020
32	27	1021
33	27	1022
34	28	652
35	28	653
36	28	654
38	29	655
37	29	656
39	30	658
40	30	659
41	30	660
42	33	750
43	36	795
44	37	793
45	37	794
46	37	795
47	38	796
48	39	922
49	40	878
50	40	879
51	40	880
52	40	881
53	40	882
54	40	883
55	41	886
56	41	887
57	41	888
58	41	890
59	41	891
60	41	892
61	42	909
62	42	910
63	42	911
64	42	912
65	42	913
66	42	914
67	42	915
68	42	916
69	42	917
70	42	918
71	42	921
72	43	941
75	47	839
73	47	840
74	47	841
76	48	849
77	49	741
78	49	742
79	49	743
80	50	744
81	50	745
82	50	746
83	50	747
88	53	823
84	53	825
85	53	826
86	53	828
87	53	829
89	54	1009
90	54	1010
91	54	1011
92	55	1009
93	55	1010
94	56	1009
95	56	1010
96	57	870
97	58	856
98	59	1009
99	59	1010
100	61	857
101	62	866
102	63	869
104	64	943
103	64	944
105	65	945
106	65	946
107	65	947
108	67	855
112	68	958
113	68	959
109	68	960
110	68	961
111	68	962
116	70	951
114	70	952
115	70	953
117	71	954
118	72	955
119	72	956
120	73	957
122	74	1005
123	74	1006
124	74	1007
121	74	1008
125	77	661
126	77	662
127	77	663
128	78	1072
129	78	1073
130	79	673
131	79	674
132	79	675
133	79	676
134	80	692
135	80	693
\.


--
-- Data for Name: content_contentcontributors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_contentcontributors (id, first_name, last_name, email, mobile, created_at, updated_at) FROM stdin;
1	Anand	Tiwary	anandtiwary021@gmail.com	8084207920	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
2	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
3	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
4	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
5	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
6	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
7	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
8	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
9	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
10	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
11	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
12	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
13	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
14	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
15	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
16	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
17	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
18	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
19	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
20	rupendra	rupendra	rrupendrasingh45@gmail.com	6367669162	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
21	rajesh	jhajharia	rajeshbotanica@gmail.com	9829139494	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
23	Anand kr	Tiwary	\N	8084207910	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
24	rakesh kumar meena	sonu	rakeshkumar.meena.2189@gmail.com	9571367762	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
25	test	tesst	test@gmail.com	9856767898	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
26	rajnish	jhajharia	rajnishfrzlove75@gmail.com	9413785594	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
27	Shyam	Saini	\N	8209674844	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
28	RAKESH KUMAR	MEENA	rakeshkumar.meena.2189@gmail.com	9571367762	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
29	Archana	Nawal	archana11nawal@gmail.com	9928897040	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
30	Manmohan	Sharma	mmohan11961@gmail.com	7023766468	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
31	hajari rawat	\N	rawathajarilal@gmail.com	8104364121	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
32	JAGDISH CHANDRA	BALAI	jcmalvi@gmail.com	9413716658	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
33	Mani Ram	Patier	manipatier92@gmail.com	9785801616	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
34	Praveen	Singh	Yuvanrajput0824@gimal.com	9664330180	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
35	Sahil	Khan	sk9477960@gmail.com	9024278080	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
36	Krishan	Kumar	\N	9828211562	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
37	hapqy	inkhiya	inkhiyahappy2259@gmail.com	8619404603	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
38	Sanju	Chahar	sanju.1583@gmail.com	9828153583	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
39	Rohit	Kumawat	rk5181rk@gmale	7976721195	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
40	Mahesh	\N	\N	9703411789	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
41	Kamod	Singh	kamodsingh356@gmail.com	9782315957	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
42	Brij	saini	brijsaini60@gmail.com	9352862778	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
43	veerendra	singh	veerendrasingh534@gmail.com	9414592200	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
44	rajesh	kumar	rajeshtaxak99@gmail.com	9602372889	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
45	preetam	singh	preetam91799@gmail.com	9050294348	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
46	phool chand	meena	pcm33886@gmail.com	9414683290	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
47	nidhi	ajay 25ya	mail.pachisia@gmail.com	9461309244	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
48	dsdsfdgfg	gfgfdghfh	\N	1122344546	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
49	ioipdsdsfdgfg	gfgfdghfh	xksdjfkkskdgmail,com	9822344546	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
50	AVINASH KUMAR	SINGH	\N	8290877782	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
51	RUBY	YADAV	rubyyash8@gmail.com	9928076483	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
52	Manju	Bala	manjurajkasana@gmail.com	7619755555	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
53	karmpal	yadav	billudabad@gmail.com	9928989726	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
54	PRAMOD	MITTAL	mittalpramod1968@gmail.com	9414335844	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
55	anil	kumar	anilkumarkakodiya@gmail.com	7073004397	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
56	MANNA LAL	YADAV	mannalalyadav1969@gmail.com	9887162043	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
57	rajpal	yadav	rpal78427@gmail.com	9772738366	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
58	Asha	Sharma	8shaloos@gmail.com	9660627267	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
59	amit	kumar	amit151119@gmail.com	9413456178	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
60	PRAMOD KUMAR	MITTAL	mittalpramod1968@gmail.com	9414335844	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
61	nidhi	ajay	mail.pachhisia@gmail.com	9460154632	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
62	chhigan	mourya	chhiganlala88@gmail.com	9602195946	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
63	kailash	saini	kailashsainigovtsr@gmail.com	9694985602	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
64	piresh	rathore	pireshrathore8989@gmail.com	7878839009	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
65	piresh	rathore	pireshrathore8989@gmail.com	7878839009	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
66	rohit	gawariya	\N	7568179983	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
67	Vikash	Choudhary	vikashmechu7@gmail.com	9784186622	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
68	Vikash	Choudhary	vikashmechu7@gmail.com	9784186622	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
69	सुरेश चन्द	नवल	naval7098@gmail.com	9928843790	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
70	सुरेश	चन्द नवल	naval7098@gmail.com	9928843790	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
71	सुरेश	नवल	naval7098@gmail.com	9928843790	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
72	ANIL KUMAR	KUMAR	ANILKUMARKAKODIYA@GMAIL.COM	7073004397	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
73	gfghgh	bjjj	\N	1234567890	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
74	Ritu	Utreja	rituutreja88@gmail.com	8118866057	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
75	Anil	kumar	anilkumarkakodiya@gmail.com	773004397	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
76	Sanjay	Pingal	manishdewat121@email.com	6367134315	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
77	Kailash	Kumawat	kk4770514@gmail.com	9079110900	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
78	sachin	gurjar	sachingurjarsa2@gmail.com	6367460415	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
79	Sanjay	Pingal	\N	8875983674	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
80	Jagdish prasad Nehra  (sikar)	\N	\N	9571628242	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
81	Jagdish prasad Nehra	\N	jagdishsikar2020@gmail.com	9571628242	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
82	Devraj	Bairwa	devrajbairwa720@gmail.com	9079047607	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
83	Kanhaiyalal	Joshi	\N	9413236341	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
84	ARJUN	KUMAR	arjunkjeengar@gmail.com	9413248526	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
85	Devendra	Kumawat	\N	7014700293	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
86	Sandeep	Kumar	\N	6375311597	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
87	Sandeep	Kumar	\N	6375311597	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
88	Jesaram dhaniya	Vivek	vivekrajasthani251@gmail.com	8107986452	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
89	sohan	Bairwa	sohanabhishek72@gmail.com	9460071857	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
90	Maliram	Yadav	mrpaota87@gmail.com	9413683031	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
91	SHYAM	SINGH	shyampratap.singh4@gmail.com	9001434881	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
92	Hetram	Meena	hetramm6@gmail.com	8058904787	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
93	RAJENDRA	\N	rajendrak7777@gmail.com	9024756952	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
94	Asha	Choudhary	1043asha@gmail.com	7014240805	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
95	Ajay	Kumar	ajaykishanlal@gmail.com	9413445495	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
96	kailash	Saini	kailashsainichala@gmail.com	9414700543	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
97	सुरेन्द्र सहारण	\N	surendrasaharan59@gmail.com	9928352376	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
98	Surender	Kumar	surendrasaharan59@gmail.com	9928352376	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
99	UPENDRA	TRIVEDI	upendra1472@gmail.com	9460379665	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
100	rajesh	kumhar	rajkumhar06@gmail.com	8233502628	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
101	Manish	Sahu	mddooni@gmail.com	9660945401	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
102	Nanita	Chouhan	\N	9461028804	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
103	Ramji	gurjar	rasgurjar8058@gmqil.com	8058404516	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
104	Karan	Singh	singh.karan438@gmail.com	8769741274	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
105	mamta	goyal	mamtagoyal17784@gmail.com	7300436001	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
106	dharm	meena	dsghunawat24@gmail.con	9983649926	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
107	Jamil ahmed	\N	\N	9694600090	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
108	Jayant	Joshi	Jayanthoshi25@yahoo.in	9829147434	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
109	Dayaram	Nehra	dayaramnehra19@gmail.com	6376046149	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
110	अशोक	सोनी	ashokkumar25061976@gmail.com	9571776336	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
111	अशोक कुमार	सोनी	ashokkumar25061976@gmail.com	9571776336	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
112	अशोक कुमार	स्वर्णकार	ashokkumar25061976@gmail.com	9571776336	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
113	Sonia	Rankawat	soniarankawat13@gmail.com	8946801827	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
114	MUKESH	Mukka	mukeshsaran555@gmail.com	7014724735	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
115	BAJRANG	BISHNOI	bajrangbishnoi03@gmail.com	9166181288	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
116	Rajendra Singh	Lamba	lamba5467@gmail.com	9829847328	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
117	rahul	puniya	puniyarahul44@gmail.com	8107392861	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
118	MUKESH	KUMAR	reddymukesh1988@gmail.com	9414600809	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
119	ewrfsrftrfg	rttrgtrgtrg	\N	9414200155	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
120	kamlesh	tambi	tambikamlesh12344@gmail.com	8432683485	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
121	s k	suresh kumar	sk4256@gamail.com	8000358159	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
122	Zakir	Hussain	zakirnawazy@gmail.com	9460576310	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
123	jeetram	bairwa	jeetubadgouti@gmail.com	9983780614	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
124	NAHAR SINGH	DEV	SINGHNAHAR07@GMAIL.COM	9672541899	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
125	Vala	Ram	valaramchoudhari96@gmail.com	8890879645	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
126	GASSS BAGORA	Bagora	gssbagora123@gmail.com	9636335575	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
127	taru	mangraj	tr486387@gmail.com	9588203369	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
128	Vinod	Bairwa	bairwavinod037@gmail.com	6350114773	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
129	vishnu	soni	sovishnu97@gmail.com	9649238751	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
130	Aaru	Joshi	\N	9875801800	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
131	Afeef	\N	\N	7664059604	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
132	Pankaj	Sarkar	\N	9859954123	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
133	Amar	Das	jyotiamardas@gmail.com	8822457429	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
134	Jiauddin	Khan	rinkubtc@gmail.com	9707665106	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
135	vinodkumar	meena	vinodmugalpura@gmail.com	9694213189	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
136	Vinod goswami	Vinod goswami	jainagar	7877156098	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
137	Hari Prasad	Sharma	hariprasad.dpr@rediffmail.com	9460908854	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
138	Jagdish prasad Nehra   (sikar)	\N	jagdishsikar2020@gmail.com	9571628242	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
139	Narayan	Lal	\N	8302418098	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
140	Ssv	Verma	vermasurendra300@gmail.com	8302342562	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
141	harshit	verma	hv84422@gmail.com	6367285553	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
142	rajendra	lamba	lamba5467@gmail.com	9829847328	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
143	Sunil	Sunil	jatiyawas	8000382531	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
144	Sunil	Saini	sunilsaini9783220262@gmail.com	9351465601	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
145	preeti sharma	sharma	preetisawasthi@gmail.com	9001027484	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
146	Sarthak	Satapathy	sarthak@centralsquarefoundation.org	9963922517	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
147	Monu	Singh	\N	8302555789	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
148	rahul	bhat	ritekbhat846@gmail.com	8619791595	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
149	mohit	hudda	huddagjaat@gmail.com	7877026153	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
150	Raksha	Rajput	raksharajput@gmail.com	9717772990	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
151	Kameswara Rao	Bh	kamesh@ekstep.org	9790952320	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
152	Tanshi	Gupta	guptaajaybmr@gmail.com	7597575891	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
153	Bheru	Dhangar	bherudhangar35@gmail.com	7878021054	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
154	Dilip	Choudhary	dilipchoudhary36363636@gmail.com	6377433263	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
155	ramawatar	yadav	yadavram.68@gmail.com	9214536511	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
156	Sanjani	Sharma	sanjani201sharma@gmail.com	8209680996	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
157	Jagdish Prasad	nehra	\N	9571628242	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
158	bhaira	ram	bhairamram637@gmail.com	9024911487	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
159	Mitraj singh	Chouhan	\N	6367824327	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
160	Jagdish Prasad	Nehra	\N	8058904787	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
\.


--
-- Data for Name: dataupload_chapter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dataupload_chapter (id, chapter, created_at, updated_at, active, book_id) FROM stdin;
83	पुस्तकालय पाठ -1	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
84	जनक का गांव पाठ -2	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
85	संख्याओं में जोड़ पाठ -3	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
86	संख्याओं में जोड़ घटाव पाठ -4	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
87	वैदिक गणित पाठ -5	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
88	आकृतियॉ पाठ -6	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
89	सममिति पाठ -7	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
90	आओ पहाड़े बनाये पाठ -8	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
91	संख्याओ में गुणा पाठ -9	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
92	आओ भाग करे पाठ -10	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
93	पैटर्न पाठ -11	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
94	भिन्न पाठ -12	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
95	मापन पाठ -13	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
96	भार पाठ -14	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
97	धारिता पाठ -15	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
98	समय पाठ -16	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
99	परिमाप और क्षेत्रफल पाठ -17	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
100	मुद्रा पाठ -18	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
101	आंकड़े और चित्रालेख पाठ -19	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	5
102	युवाओ मे चरित्र एवं राष्ट्र निर्माण का भाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
103	कर्मठता,त्याग,नि:स्वार्थ भाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
104	कर्म के प्रति द्रढ़ता और निष्ठा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
105	दीन-दुखियो की सेवा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
106	भ्रष्टाचार पर व्यंग्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
107	जीवों पर प्रेम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
108	भारतीय आदर्शों एवं शाश्वत मूल्यों का समावेश	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
109	स्नान और आस्था का महत्व	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
110	तीर्थों विकास	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
111	युवा पीढ़ी को परम्परा से जोड़ना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
112	महर्षि दधीचि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
113	महादानी कर्ण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
114	महादानी भामाशाह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
115	दान की महिमा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
116	यात्रा वृतांत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
117	यात्रा की तैयारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
118	बौद्ध, तिबत्ती और रावण के अनुसार मानसरोवर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
119	सिंधुपति महाराज दाहिर सेन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
120	भारत रत्न डॉ अब्दुल कलाम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
121	nan	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
122	कबीर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
123	कृष्ण- बाललीला	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
124	केवट का भाग्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
125	बिहारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
126	मीराँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
127	भक्ति और नीति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
128	राष्ट्र प्रेम और परोपकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
129	विरंगनाओ का स्वरूप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
130	कृष्ण का शांति संदेश	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
131	खुशहाल एवं आशावादी जीवन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
132	राजस्थान की वीर संस्कृति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	6
133	1 WORK WHILE YOU WORK	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	7
134	2 SMILE WITH A BLESSING	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	7
135	3 THE CLEVER MINISTER	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	7
136	4 GOOD HABITS	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	7
137	5 Swachh Bharat Abhiyan	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	7
138	6 Charbhujanath Mandir	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	7
139	7 Traffic Lights	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	7
140	8 Life Echoes	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	7
141	9 Birds Paradise	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	7
142	10 Little Pride	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	7
143	11 Our Lifeline-The Trees	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	7
144	12 Chhatrapatti Shivaji	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	7
145	13 Winds	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	7
146	14 The Crows and the Cruel Cobra	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	7
147	15 Freedom Fighters of Rahasthan	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	7
148	समर्पण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
149	सुभागी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
150	रणथंभौर की यात्रा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
151	सुदामा चरित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
152	महाराणा प्रताप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
153	संत कँवरराम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
154	भक्ति पदावली	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
155	मिसाइल मैन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
156	जैसलमेर की राजकुमारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
157	सुभाषचंद्र बोस का पत्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
158	गोसंरक्षण से ग्राम विकास	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
159	कुंडलियाँ छंद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
160	अपराजिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
161	जीप पर सवार इल्लियाँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
162	शक्ति और क्षमा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
163	हमारी भी सुनो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
164	हूंकार की कलंगी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	8
165	खिसकना , लुढ़कना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
166	आकृतियों की समझ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
167	रेखायें कुछ ऐसी भी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
168	वर्गीकरण करना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
169	कौन कहाँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
170	संख्याएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
171	जोड़ घटाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
172	गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
173	बराबर बटबारा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
174	खुले सौ के	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
175	मापन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
176	हल्का भारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
177	समय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
178	धारिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
179	आंकड़ों का प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
180	आओ सजाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
181	रोचक पहेलियाँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	9
182	परिमेय संख्याएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
183	घन एवं घनमूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
184	घात एवं घातांक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
185	दिमागी कसरत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
186	वैदिक गणित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
187	बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
188	चतुर्भुज की रचना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
189	ठोस आकारों का चित्रण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
190	बीजीय व्यंजक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
191	.गुणनखंड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
192	एक चर राशि वाले रैखिक समीकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
193	रैखिक आलेख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
194	राशियों की तुलना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
195	क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
196	पृष्ठीय क्षेत्रफल एवं आयतन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
197	आंकड़ों का प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	10
198	बचपन की यादें	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
199	अर्णी का परिवार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
200	कैसे जानू में	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
201	खेल प्रतियोगिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
202	फूल ही फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
203	पेड-पौधों की देखभाल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
204	कान खोले राज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
205	जंगल की बातें	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
206	पानी रे ! अजब तेरी कहानी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
207	पानी और हम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
208	अच्छा खाना मिलकर खाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
209	चोंच और पंजे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
210	चॉकलेट खाऊं या दाँत बचाऊँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
211	फसलों का सफ़र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
212	हमारे गौरव - II	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
213	हमारे राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
214	मेले	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
215	घर की बात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
216	स्वच्छ घर-स्वच्छ गाँव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
217	उगता सूरज पूर्व में	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
218	कपडे की कहानी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
219	यात्रा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	11
220	कृषि प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
221	धातु और अधातु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
222	संश्लेषित रेशे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
223	संश्लेषित रेशों के प्रकार एवं गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
224	प्लास्टिक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
225	प्लास्टिक के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
226	प्लास्टिक के अनुप्रयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
227	प्लास्टिक और पर्यावरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
228	रासायनिक अभिक्रियाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
229	जैव विविधता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
230	पौधों में जनन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
231	रक्त परिसंचरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
232	हमारा स्वास्थ्य, बीमारियाँ एवं बचाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
233	कार्य एवं ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
234	ध्वनि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
235	विद्युत् धारा के प्रभाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
236	विद्युत् धरा के प्रभाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
237	कृत्रिम उपग्रह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
238	सूचना प्रौद्योगिकी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
239	प्रकाश का अपवर्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
240	प्राकृतिक परिघटनाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
241	वायु एवं जल प्रदूषण व नियंत्रण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
242	पर्यावरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
243	कार्बन और ईंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
244	सड़क सुरक्षा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	12
\.


--
-- Data for Name: dataupload_chapterkeyword; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dataupload_chapterkeyword (id, keyword, created_at, updated_at, chapter_id) FROM stdin;
421	WORK WHILE YOU WORK	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	133
422	PLAY	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	133
423	TO BE HAPPY AND GAY.DO WITH ALL YOUR MIGHT	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	133
424	ONE THING EACH TIME	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	133
425	MOMENTS ARE USELESS	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	133
426	An old lady	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	134
427	go to market	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	134
428	basket of fruits	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	134
429	stepped on a banana peel	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	134
430	people laugh	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	134
431	fruits scattered	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	134
432	Meena help	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	134
433	pick all the fruits	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	134
434	threw the peel into a dustbin	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	134
435	may God bless you	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	134
436	King Somavarama and his minister	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
437	lost in forest	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
438	King thirsty	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
439	Minister not familiar with forest	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
440	search water every where	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
441	flock of deer pasiing by	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
442	got an idea	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
443	caught a deer	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
444	feed him salt	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
445	deer feel thristy	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
446	foll the deer	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
447	lool water	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
448	wisdom is marvellous	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
449	early to rise	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	136
450	wealthy and wise	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	136
451	comb your hair look a mass	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	136
452	wash your hands pray to god अच्छी आदते	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	136
453	rhyming words	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	136
454	use of before and after	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	136
455	Arun doing home work	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
456	do something on a paper	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
457	tear the paper and throw	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
458	sharp pencil	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
459	throw crumbs and pencil lead powder	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
460	floor very dirty	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
461	go to market with his mother	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
462	waliking on the side of the land	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
463	smell foul air	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
464	Heap of garvage	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
465	many flies and mosquitoes	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
466	His mother told him to keep sorroundings clean	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
467	throw the garbage in to dustbin	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
468	make city clean and healthy	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
469	raper throw into dustbin	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
470	clean his room	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
471	change his habits	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
472	Beautiful temple	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
473	located at medta city in nagaur	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
474	Rao Duda ji founded temple	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
475	Idol of lord appeared from inside the earth	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
476	Duda ji saw dream	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
477	built a temple	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
478	daughter Meera Bai services the deity	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
479	Meera bai temple	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
480	Statuas of shree Keshav Das	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
481	Shree Girdhar Gopal	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
482	Meera Bai	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
483	Jaimal	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
484	Many festivals celebrated as Nrasingh Chaturdarshi	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
485	Janmastmi	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
486	RamNavami	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
487	Follow the traffic rules	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	139
488	avoid accidents	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	139
489	cross roads	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	139
490	three bright lights	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	139
491	Red says stop	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	139
492	Orange says Wait	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	139
493	Green says Go	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	139
494		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	139
495	Do good have good	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
496	little child and his mother	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
497	ten rupees for toffees	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
498	child not happy	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
499	I hate you go to valley	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
500	shout	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
501	heard the echo afraid	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
502	run back to home	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
503	Mother asked him to shout	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
504	I love you	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
505	hugged his mother	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
506	learn a new lession in life	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
507	Keoladeo Ghana National Park	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
508	Ancient Mandir	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
509	Lord shiva	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
510	thick area of forest Kauchha dam	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
511	Bhartpur lake	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
512	duck shooting	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
513	Government banned	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
514	world heritage site	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
515	Siberian cranes	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
516		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
517	Girls are like flowers	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	142
518	stars to bloom and shin	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	142
519	don't make them clean and wipe	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	142
520	let read and write	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	142
521	Don't keep in cell	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	142
522	keep hobbies high	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	142
523		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	142
524	coming towards	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	143
525	air to breathe	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	143
526	hid themselves.jumped around	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	143
527	roared	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	143
528	affection	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	143
529	so many things	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	143
530	huge treees	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	143
531	Occasion	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
532	each other	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
533	how mejestic	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
534	disciple	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
535	bring	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
536	rule as a just king	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
537	command	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
538	treat me	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
539	Roar	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
540	feeding	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
541	tied up	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
542	not sick	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
543	testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
544	pleased	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
545	obidience	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
546	Blow over summser days	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
547	chasing chasing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
548	blow over wintry days	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
549	racing racing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
550	blow over midnight hours	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
551	blinking blinking	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
552	blow over morning flowers	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
553	dew lies winking winking	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
554	blow over city mills	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
555	hurring after	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
556	blow over grassy hills	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
557	laid her eggs	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	146
558	very pleased	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	146
559	hollow trunk	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	146
560	crow were away very sad	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	146
561	stole eggs	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	146
562	drive away	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	146
563	thought of a plan takes her ring	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	146
564	fly away	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	146
565	drop the ring down	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	146
566	dug the the hole got rid of	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	146
567		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
568	Bhagat singh	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
569	Sagarmal Gopa	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
570	vijay singh pathik	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
571	Freedom fighter	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
572	revoluntionary	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
573	arrested tortured	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
574	Great Patriot and freedom fighter	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
575	led	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
576	non-cooperation movement	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
577	gave shelter	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
578	defeated	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
579	समर्पित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	148
580	भाल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	148
581	ढाल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	148
582	अर्पित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	148
583	तृण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	148
584	घनेरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	148
585	अकिंचन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	148
586	नीड़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	148
587	निपुण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
588	कौड़ी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
589	निर्वाह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
590	आफ़त	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
591	उजड्ड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
592	गोदान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
593	निवाला	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
594	सुहाग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
595	विनीत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
596	अंत्येष्टि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
597	मिज़ाज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
598	नागा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
599	हठीले	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
600	उत्कण्ठा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
601	सुरम्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
602	निवृत्त	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
603	उत्सुकता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
604	हरीतिमा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
605	आच्छादित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
606	रोमांचित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
607	सावचेत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
608	बयार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
609	अठखेलियाँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
610	मृग छौने	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
611		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
612	जाहुजू	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
613	याम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
614	छड़िया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
615	भूपति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
616	अभिरामा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
617	छुयो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
618	सौं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
619	पगा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
620	झगा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
621	आहि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
622	बिहाल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
623	दुपटी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
624	उपानहु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
625	सामा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
626	चकि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
627	प्रलोभन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	152
628	प्रखर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	152
629	अंगार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	152
630	शौर्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	152
631	महाधृति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	152
632	विधायक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	152
633	वेदी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	152
634	महाव्रति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	152
635	सत्यकृति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	152
636	महामानव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	152
637	सृष्टि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
638	अनूठी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
639	अखंड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
640	प्रतिष्ठित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
641	मोहताजों	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
642	बेड़ो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
643	किअं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
644	तारि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
645	रिझाया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
646	मुहिंजो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
647	परिचाया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
648	अलख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
649	नाले	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
650	कुहर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
651	जामो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
652	मोमिन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
653	मकराकृत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
654	अरुन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
655	मोहनि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
656	साँवरि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
657	अधर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
658	सुधा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
659	उर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
660	छुद्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
661	कटि तट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
662	नूपुर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
663	रसाल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
664	बछल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
665	राजति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
666	धीर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
667	अमोलक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
668	नरहरि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
669	हरख-हरख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
670	भवसागर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
671	बैजंती माल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
672	ख्याति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	155
673	मेधावी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	155
674	विशेषज्ञ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	155
675	प्रक्षेपास्त्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	155
676	त्वरित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	155
677	क्षमता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	155
678	आपूर्ति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	155
679	प्रसारण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	155
680	निर्धारित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	155
681	प्रदीपन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	155
682	कर्णधार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	155
683	दुर्ग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
684	बलिष्ठ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
685	मर्दानी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
686	पेशकब्ज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
687	तरकस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
688	रास	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
689	जिरहबख्तर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
690	फौलादी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
691	हौदे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
692	हिनहिना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
693	झनझना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
694	वक्र दृष्टि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
695	धूर्त	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
696	विलीन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
697	उपत्यका	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
698	घूस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
699	निनाद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
700	कोर्निस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
701	दिलचस्प	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
702	कारावास	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
703	परिवेश	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
704	प्रकांड भाष्यकारों	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
705	वार्ड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
706	निष्कासित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
707	स्मृतियाँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
708	यंत्रणाओं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
709	बौद्धिक स्तर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
710	हार्दिकता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
711	वयोवृद्ध	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
712	प्रणयन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
713	सांत्वना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
714	दासता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
715	गहन चिंतन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
716	गावो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
717	विश्वस्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
718	मातरः	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
719	दात्री	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
720	आस्था	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
721	पुरातन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
722	द्वापर काल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
723	रक्षणीय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
724	बलिवर्द	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
725	वृषभ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
726	दृष्टिगोचर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
727	चौपाया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
728	विनिमय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
729	चरनोट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
730	बवासीर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
731	जलोदर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
732	चंचल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
733	ठाँऊ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
734	जस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
735	सुनाय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
736	तौलत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
737	दौलत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
738	पाहुन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
739	पाछै	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
740	पछताय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
741	टरत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
742	खानि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
743	बिकानो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
744	रान्ध्यो धरिये	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
745	जिय माहिं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
746	फूहर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
747	अपराजिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
748	अकस्मात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
749	विधाता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
750	विलक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
751	व्यक्तित्व	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
752	रिक्तता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
753	अन्तर्यामी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
754	विच्छिन्न	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
755	अभिशप्त	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
756	आनंदी मुद्रा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
757	अहाता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
758	उत्फुल्ल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
759	अवरुद्ध	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
760	फैलोशिप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
761	पीएच.डी.	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
762	इल्लियाँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
763	कपोल कल्पना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
764	बाजू	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
765	तुक मिलाकर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
766	सौभाग्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
767	पोथियाँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
768	अधिष्ठात्री	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
769	उन्मूलन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
770	इत्मीनान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
771	वक्तव्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
772	मनोबल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
773	नर व्याघ्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
774	सुयोधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
775	संपूज्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
776	रिपु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
777	भुजंग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
778	अनुनय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
779	पौरुष	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
780	मूढ़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
781	दर्प	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
782	गरल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
783	नाद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
784	शर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
785	दीप्ति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
786		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
787	संरक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
788	दुरुपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
789	सदुपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
790	वाद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
791	परिवाद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
792	विरुद्ध	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
793	कुपित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
794	रमता जोगी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
795	रासायनिक आक्रमण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
796	कसूर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
797	समक्ष	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
798	अवांछित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
799	जोहड़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
800	संवाहक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
801	प्राणहारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
802	हूकम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
803	सारा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
804	जमीत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
805	सूधी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
806	पोंचतां	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
807	हाजर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
808	जागीर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
809	हरामखोरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
810	सवारां	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
811	रियायत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
812	अरज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
813	डावड़ी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
814	नवो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
815	दसगताँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
816	ओलाँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
817	नैनपण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
818	ढोढ़ी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
819	ऊभा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
820	सरणाटो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
821	बळबळता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
822	ठिमरास	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
823	कूच	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
824	निसाण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
825	कंवळी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
826	मांझी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
827	पलाका	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
828	रान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
829	आन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
830	पराधीन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
831	भेस गुमान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
832	विपद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
833	मूंडो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
834	दिवा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
835	जूण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
836	खोस लीधी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
837	हूंकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
838	परसंगी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
839	पै'र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
840	कामदार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
\.


--
-- Data for Name: dataupload_section; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dataupload_section (id, section, created_at, updated_at, active, chapter_id) FROM stdin;
110	500 तक संख्याओ का अभ्यास	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	83
111	501 से 999 तक की संख्याओ की पहचान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	83
112	चार अंको की संख्याओं से परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	83
113	छोटे बड़े चिन्हों का ज्ञान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	84
114	ऐसा भी दिखता है	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	84
115	जनक के गांव का नजरी नक्शा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	84
116	3 अंको की जोड़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	85
117	हासिल के साथ जोड़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	85
118	देवनागरी अंको के साथ जोड़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	85
119	बिना हासिल का घटाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	86
120	हासिल के साथ घटाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	86
121	देवनागरी अंको के साथ घटाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	86
122	जोड़ व घटाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	86
123	एकाधिकेंन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	87
124	एकन्यूनेन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	87
125	द्विआयामी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	88
126	घन घनाभ आकृतियों को खोलकर द्विआयमी स्वरूपों से जोड़ना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	88
127	प्रकृति में सममिति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	89
128	दो या दो से अधिक सममित रेखाये	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	89
129	पहाड़े बनाने का अभ्यास	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	90
130	11 से 20 तक पहाड़े	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	90
131	दो अंको की संख्या का दो अंको की संख्या से गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	91
132	3 अंको की संख्या का दो अंको की संख्या से गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	91
133	भाग कैसे करे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	92
134	परिवेश में पैटर्न पहचानना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	93
135	संख्याओं मेँ पैटर्न	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	93
136	भिन्न की समझ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	94
137	स्केल का उपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	95
138	भार तुला से परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	96
139	लीटर इकाई का परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	97
140	अलग अलग धारिता का अनुमान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	97
141	मिलीलीटर इकाई का परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	97
142	तारीख लिखना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	98
143	दिन सप्ताह माह एवं वर्ष की समझ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	98
144	समय एवं काम की समझ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	98
145	परिमाप और क्षेत्रफल की समझ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	99
146	ग्रिड से क्षेत्रफल ज्ञात करना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	99
147	परिमाप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	99
148	मुद्राओ में सम्बंध	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	100
149	हिसाब किताब में मुद्रा का उपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	100
150	आँकड़ो को सूचीबद्ध करना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	101
151	चित्रलेख अवलोकन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	101
152	लेखक परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	102
153	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	102
154	युवाओ से	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	102
155	लेखक परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	103
156	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	103
157	नींव की ईंट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	103
158	लेखक परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	104
159	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	104
160	छोटा जादूगर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	104
161	लेखक परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	105
162	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	105
163	दीनों पर प्रेम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	105
164	लेखक परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	106
165	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	106
166	कहानी में व्यंग्य के माध्यम से प्रस्तुतीकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	106
167	लेखक परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	107
168	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	107
169	जीव- जंतुओं की समझ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	107
170	लेखक परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	108
171	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	108
172	चित्तोड़ दुर्ग की ऐतिहासिक घटना : दीपदान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	108
173	लेखक परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	109
174	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	110
175	भारतीय परंपराओं का महत्व	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	111
176	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	112
177	महर्षि दधीचि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	113
178	महादानी कर्ण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	114
179	महादानी भामाशाह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	115
180	लेखक परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	116
181	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	117
182	कैलाश मानसरोवर यात्रा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	118
183	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	119
184	दाहिर सेन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	120
185	डॉ अब्दुल कलाम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	121
186	कवि परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	122
187	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	122
188	लेखक परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	123
189	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	123
190	सूरदास के पद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	123
191	लेखक परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	124
192	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	124
193	केवट का भाग्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	124
194	लेखक परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	125
195	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	125
196	बिहारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	125
197	लेखक परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	126
198	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	126
199	मीराँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	126
200	कवि परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	127
201	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	127
202	बरवै और दोहे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	127
203	कवि परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	128
204	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	128
205	पुष्प की अभिलाषा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	128
206	पर्वत की अभिलाषा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	128
207	कवि परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	129
208	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	129
209	पूजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	129
210	कवि परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	130
211	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	130
212	श्री कृष्ण का दूतकार्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	130
213	कवि परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	131
214	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	131
215	सुखद जीवन-चित्रण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	131
216	कवि परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	132
217	पाठ परिचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	132
218	वीर नारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	132
219	ड्रम,संदूक एवं गेंद जैसी आकृतियों से परचय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	165
220	वृत्त,चौकोर एवं तिकोनी आकृतियाँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	166
221	सीधी तथा घुमावदार रेखायें बनाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	167
222	आकार,आकृति,रंग के आधार पर वस्तुओ का वर्गीकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	168
223	दो वस्तुओ की सापेक्ष स्थिति,कौन कहाँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	169
224	एक से सौ तक संख्याएं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	170
225	जोड़ और घटाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	171
226	गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	172
227	बराबर बटबारा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	173
228	खुले सौ के	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	174
229	मापन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	175
230	हल्का भारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	176
231	समय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	177
232	धारिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	178
233	आंकड़ों का प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	179
234	आओ सजाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	180
235	रोचक पहेलियाँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	181
236	1.1 प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	182
237	1.2 परिमेय संख्याओ पर संक्रियाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	182
238	1.3 परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	182
239	2.1 घन एवं घनमूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	183
240	2.2 घन संख्याओ से जुड़े कुछ पैटर्न	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	183
241	2.3 घनमूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	183
242	3.1 प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	184
243	3.2 घातांक (पूर्णांक),आधार (परिमेय संख्याये )	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	184
244	3.3 एक ओंर एक से अधिक संक्रियाओं वाले प्रश्न	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	184
245	3.4 वैज्ञानिक संकेतन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	184
246	4.1 प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	185
247	4.2 संख्याओं का व्यापक रूप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	185
248	4.3 संख्याओं के साथ खेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	185
249	4.4 भाजकता के नियम (बीजगणितीय सन्दर्भ में )	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	185
250	4.5 चार मूल संक्रियाओं (+,-,x तथा ÷ ) में रिक्त संख्याओं को ज्ञात करना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	185
251	4.6 कुछ ओंर तरीके	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	185
252	4.7 वर्ग पहेली	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	185
253	5.1 प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	186
254	5.2 तीन संख्याओं का गुणन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	186
255	5.3 घनफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	186
256	5.4 ध्वजांक विधि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	186
257	6.1 प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	187
258	6.2 बहुभुज के विकर्ण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	187
259	6.3 उत्तल ओंर अवतल बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	187
260	6.4 सम ओंर विषम बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	187
261	6.5 एक बहुभुज के बाह्य कोणों की मापों का योग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	187
262	6.6 चतुर्भुजों के गुण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	187
332	राष्ट्रीय फूल कमल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	202
263	6.7 विभिन्न प्रकार के चतुर्भुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	187
264	7.1 चतुर्भुज की रचना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	188
265	8.1 प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	189
266	8.2 प्रिज्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	189
267	8.3 पिरामिड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	189
268	8.4 बहुफलकों के लिए आयलर सूत्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	189
269	8.5 त्रिविमीय आकारों का द्विमीय निरूपण (जाल रूप से )	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	189
270	9.1 प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	190
271	9.2 व्यंजक की घात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	190
272	9.3 सजातीय एवं विजातीय पद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	190
273	9.4 बीजगणितीय व्यंजकों का योग और व्यवकलन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	190
274	9.5 बीजीय व्यंजको का गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	190
275	9.6 सर्वसमिका	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	190
276	10.1 .गुणनखंड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	191
277	10.2 बीजीय व्यंजको के गुणनखंड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	191
278	10.3 समिकाओ के प्रयोग द्वारा गुणनखंड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	191
279	10.4 बीजीय व्यंजकों का विभाजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	191
280	11.1 प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	192
281	11.2 इबारती प्रश्नों का हल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	192
282	12.1 प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	193
283	12.2 कार्तीय पद्धति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	193
284	12.3 निर्देशांक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	193
285	12.4 लेखाचित्र द्वारा कुछ वास्तविक संबंधो का निरूपण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	193
286	12.5 आलेख (लेखा चित्र) को पढना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	193
287	13.1 प्रतिशत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	194
288	13.2 लाभ - हानि (अंकित मूल्य, कमीशन, वैट, बट्टा, ऊपरी खर्च, छूट, सेवाकर इत्त्यादि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	194
289	13.3 सरल ब्याज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	194
290	13.4 चक्रवृधि ब्याज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	194
291	13.5 वृद्धि दर पर आधारित व्यावहारिक समस्याएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	194
292	13.6 सीधा एवं प्रतिलोम सम्बन्ध की समझ एवं इस पर आधारित समस्याएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	194
293	14.1 प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	195
294	14.2 समलम्ब चतुर्भुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	195
295	14.3 समचतुर्भुज का क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	195
296	14.4 चतुर्भुज का क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	195
297	14.5 बहुभुज का क्षेत्रफल (फील्ड बुक)	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	195
298	15.1 प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	196
299	15.2 घन एवं घनाभ का पृष्ठीय क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	196
300	15.3 बेलन का पृष्ठीय क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	196
301	15.4 आयतन एवं मानक इकाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	196
302	16.1 प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	197
303	16.2 बारंबारता बंटन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	197
304	16.3 आयत चित्र-आंकड़ों का आलेखीय निरूपण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	197
305	16.4 वृत्त आलेख या पाई चार्ट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	197
306	16.5 संयोग और प्रायिकता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	197
307	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	198
308	ननिहाल में	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	198
309	एकल परिवार व संयुक्त परिवार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	199
310	परिवार मे काम करने की स्थिति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	199
311	परिवार मे मुखिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	199
312	परिवार मे कमाने वाले सदस्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	199
313	पढ़ा लिखा परिवार या कम पढ़ा लिखा परिवार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	199
314	आशीर्वाद लेना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	199
315	अर्णी का परिचय व उसकी रुचि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	199
316	सोच व मूल्यों मे परिवर्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	199
317	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	200
318	सुनकर जानू	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	200
319	देखकर जानू	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	200
320	सूंघकर जानू	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	200
321	छुकर व चखकर जानो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	200
322	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	201
323	खेल की तैयारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	201
324	खो - खो का खेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	201
325	प्राथमिक चिकित्सा पेटी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	201
326	कबडडी के खेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	201
327	खेल भावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	201
328	रंग बिरंगे फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	202
329	मधुमक्खी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	202
330	सजावट में	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	202
331	चित्रों में	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	202
333	राज्य फूल रोहिडा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	202
334	जड़े	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	203
335	तना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	203
336	पेड़ हमारे साथी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	203
337	पेड़ पौधों की सुरक्षा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	203
338	कैसे कैसे कान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	204
339	कान के आधार पर जानवरों की पहचान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	204
340	पता कीजिये और लिखिए	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	204
341	जीव-जंतु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	205
342	जंगली जानवर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	205
343	जंतु संरक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	205
344	प्रकृति और हम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	205
345	पानी के गुण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	206
346	पानी का उपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	207
347	पानी गंदा क्यो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	207
348	पानी की सफाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	207
349	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	208
350	मिलकर खाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	208
351	अलग अलग अवसरों पर खाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	208
352	अच्छा खाना ,ख़राब खाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	208
353	खाने की स्वच्छता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	208
354	मौसमानुसार खाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	208
355	खाना बनाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	208
356	राजस्थान के कुछ पक्षी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	209
357	अलग अलग पंजे क्यों ?	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	209
358	अलग अलग चोंच क्यों ?	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	209
359	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	210
360	चॉकलेट खानी है	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	210
361	दांतो के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	210
362	हमारी आयु व दाँत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	210
363	लाल-पीले दांत क्यों ?	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	210
364	दांत खट्टे क्यों ?	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	210
365	फसल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	211
366	फसल के पकने पर किये जाने वाले काम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	211
367	खेत से घर तक खाने के सामान का सफ़र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	211
368	भोजन की आवश्यकता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	211
369	सार्वजनिक वितरण प्रणाली	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	211
370	सार्वजनिक वितरण प्रणाली क्या है	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	211
371	चरक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	212
372	सुश्रुत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	212
373	रानी दुर्गावती	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	212
374	वीर सावरकर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	212
375	सरदार वल्लभ भाई पटेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	212
376	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	213
377	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	213
378	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	214
379	राजस्थान के धार्मिक मेले	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	214
380	राजस्थान के व्यापारिक मेले	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	214
381	घर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	215
382	घर के अनेक स्वरुप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	215
383	जानवरों के घर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	215
384	स्व्च्छ घर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	216
385	स्वच्छ गाँव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	216
386	सफाई क्यों ?	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	216
387	कचरा निस्तारण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	216
388	चारों दिशाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	217
389	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	218
390	वस्त्र कैसे कैसे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	218
391	वस्त्र के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	218
392	कपड़ो को सुंदर व आकर्षक बनाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	218
393	प्रमुख भारतीय परिधान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	218
394	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	219
395	यात्रा के साधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	219
396	यात्रा के कारण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	219
397	राजस्थान भ्रमण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	219
398	राजस्थान के नक्शा में चिन्हिकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	219
399	फसल एवं उसके प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	220
400	राजस्थान के विभिन्न जिलों में उगाई जाने वाली प्रमुख फसलें	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	220
401	फसल और पर्यावरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	220
402	प्रोफेसर एम.एस. स्वामीनाथन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	220
403	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	220
404	प्रकृति में धातु और अधातु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	221
405	धातु व अधातु के भौतिक गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	221
406	धातु व अधातु के रासायनिक गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	221
407	दैनिक जीवन में धातु और अधातु के उपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	221
408	उत्कृष्ट धातुएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	221
409	मिश्र धातु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	221
410	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	221
411	संश्लेषित रेशे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	222
412	संश्लेषित रेशों के प्रकार एवं गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	223
413	प्लास्टिक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	224
414	प्लास्टिक के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	225
415	प्लास्टिक के अनुप्रयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	226
416	प्लास्टिक और पर्यावरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	227
417	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	227
418	रासायनिक अभिक्रिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	228
419	रासायनिक अभिक्रिया के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	228
420	रासायनिक अभिक्रिया के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	228
421	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	228
422	जैव विविधता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	229
423	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	229
424	पौधों में जनन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	230
425	पौधों में जनन ,	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	230
426	आप ने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	230
427	रक्त परिसंचरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	231
428	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	231
429	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	232
430	मनुष्यों में होने वाले सामान्य रोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	232
431	रोग कारक कृमि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	232
432	कुछ विशिष्ट रोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	232
433	टीकाकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	232
434	रोगों के निवारण हेतु राष्ट्रीय कार्यक्रम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	232
435	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	232
436	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	233
437	कार्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	233
438	ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	233
439	ऊर्जा का मात्रक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	233
440	यांत्रिक ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	233
441	ऊर्जा का रूपांतरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	233
442	ऊर्जा के विभिन्न स्त्रोत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	233
443	ऊर्जा का संरक्षण के उपाय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	233
444	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	233
445	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	234
446	ध्वनि की उत्पत्ति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	234
447	मानव में वाक ध्वनि का उत्पन्न होना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	234
448	ध्वनि का संचरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	234
449	प्रबलता एवं तारत्व	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	234
450	श्रव्य, अपश्रव्य व पराश्रव्य ध्वनि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	234
451	मानव कर्ण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	234
452	ध्वनि प्रदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	234
453	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	234
454	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	235
455	विद्युत् धारा के ऊष्मीय प्रभाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	236
456	फ्यूज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	236
457	विद्युत् धारा का चुंबकीय प्रभाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	236
458	विद्युत् चुम्बक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	236
459	विद्युत् घंटी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	236
460	द्रवों में विद्युत् चालन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	236
461	विद्युत् धारा का रासायनिक प्रभाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	236
462	विद्युत् लेपन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	236
463	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	236
464	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	237
465	कृत्रिम उपग्रह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	237
466	कृत्रिम उपग्रह प्रक्षेपण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	237
467	कृत्रिम उपग्रह के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	237
468	कृत्रिम उपग्रह के उपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	237
469	भारत के प्रमुख कृत्रिम उपग्रह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	237
470	भारतीय अंतरिक्ष अनुसंधान संगठन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	237
471	वैज्ञानिक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	237
472	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	237
473	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
474	सूचना के प्रमुख साधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
475	कृत्रिम उपग्रह और संचार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
476	कंप्यूटर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
477	इंटरनेट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
478	सूचना प्रौद्योगिकी एवं सहज समाज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
479	साइबर सुरक्षा -क्या और क्यों	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
480	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
481	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	239
482	प्रकाश का अपवर्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	239
483	अपवर्तन पर आधारित घटनाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	239
484	लेंस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	239
485	लेंसों के उपयोग व प्रकाशीय उपकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	239
486	मानव नेत्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	239
487	प्रकाश का वर्ण विक्षेपण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	239
488	वैज्ञानिक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	239
489	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	239
490	वायु दाब डालती है	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	240
491	वायु दाब पर वायु प्रभावके वेग का प्रभाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	240
492	पृथ्वी का असमान रूप से गर्म होना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	240
493	थल और जल का असमान रूप से गर्म होना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	240
494	तड़ित झंझावात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	240
495	चक्रवात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	240
496	टोरनेड़ो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	240
497	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	240
498	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	241
499	वायु प्रदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	241
500	अम्ल वर्षा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	241
501	हरित ग्रह प्रभाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	241
502	वायु प्रदूषण नियंत्रण के उपाय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	241
503	जल प्रदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	241
504	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	241
505	प्रस्तावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	242
506	पर्यावरण के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	242
507	प्राकृतिक पर्यावरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	242
508	पर्यावरण प्रदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	242
509	पर्यावरण संरक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	242
510	पर्यावरण रक्षा के लिए विभिन्न स्तर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	242
511	पर्यावरण और भारतीय दृष्टिकोण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	242
512	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	242
513	कार्बन और ईंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	243
514	कार्बन के अपररूप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	243
515	कार्बन -ईंधन का आवश्यक अवयव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	243
516	ईंधन के विभिन्न स्त्रोत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	243
517	पेट्रोलियम का शोधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	243
518	दहन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	243
519	ऊर्जा -संरक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	243
520	आपने क्या सीखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	243
521	सड़क सुरक्षा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	244
\.


--
-- Data for Name: dataupload_sectionkeyword; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dataupload_sectionkeyword (id, keyword, created_at, updated_at, section_id) FROM stdin;
122	तुलना चिह्न	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	113
123	बराबर चिह्न	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	113
124	ऊपर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	114
125	साइड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	114
126	सामने	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	114
127	नक्शा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	115
128	देवनागरी अंक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	118
129	हिंदी अंक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	118
130	घटाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	119
131	बाकी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	119
132	हासिल की घटाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	120
133	हासिल की घटाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	121
134	घटाव व जोड़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	122
135	द्विआयामी आकृतिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	125
136	त्रिआयामी आकृतिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	126
137	सममिति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	127
138	सममिति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	128
139	पहाड़े	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	129
140	पहाड़े	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	130
141	गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	131
142	दो अंको के साथ गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	131
143	तीन अंको के साथ गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	132
144	भाग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	133
145	बार बार घटाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	133
146	पैटर्न	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	134
147	पैटर्न	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
148	संख्याओं मेँ पैटर्न	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
149	मीटर से सेमी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
150	किग्रा से ग्राम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
151	लिटर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	139
152	धारिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	139
153	आयतन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	139
154	धारिता का अनुमान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
155	मिली से लिटर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
156	लिटर से मिली	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
157	तारीख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	142
158	दिनाँक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	142
159	दिन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	143
160	सप्ताह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	143
161	माह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	143
162	वर्ष	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	143
163	समय व काम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
164	परिमाप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
165	क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
166	क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	146
167	परिमाप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
168	मुद्रा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	148
169	रुपये खुले करना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	148
170	हिसाब किताब	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
171	आंकड़ो का प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
172	चित्रलेख अवलोकन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
173	स्वामी विवेकानंद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	152
174	राष्ट्रीय आदर्श	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
175	युवाओ से	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
176	रामवृक्ष बेनीपुरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	155
177	नि:स्वार्थ भावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
178	राष्ट्रोन्नति का भाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
179	जयशंकर प्रसाद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
180	मानवीय संवेदना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
181	स्वाभिमान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
182	वियोगी हरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
183	आस्तिकता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
184	दीन-दुखी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
185	हरिशंकर परसाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
186		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
187	भोला राम का जीव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	165
188	भ्रष्टाचार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	166
189	घूसखोरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	166
190	महादेवी वर्मा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	167
191	गिल्लू	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	168
192	जीवों से प्रेम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	169
193	सम्वेदना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	169
194	पन्ना धाय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	170
195	उदय सिंह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	171
196	चितौड़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	172
197	तीर्थ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	173
198	कुम्भ मेला	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	174
199	गंगा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	175
200	दधीचि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	176
201	कर्ण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	177
202	भामाशाह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	178
203	दानी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	179
204	मानसरोवर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	180
205	कैलाश	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	181
206	हिमालय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	182
207	दाहिर सेन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	183
208	डॉ अब्दुल कलाम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	184
209	कबीर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	185
210	सूरदास	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	188
211	सूर के पद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	189
212	सूर के पद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	190
213	केवट का भाग्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	191
214	केवट का भाग्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	192
215	केवट का भाग्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	193
216	बिहारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	194
217	बिहारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	195
218	बिहारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	196
219	मीराँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	197
220	मीराँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	198
221	मीराँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	199
222	रहीम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	200
223	रहीम के पद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	201
224	बरवै	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	202
225	दोहे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	202
226	माखन लाल चतुर्वेदी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	203
227	त्याग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	204
228	देशभक्ति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	205
229	परोपकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	206
230	श्याम नारायण पाण्डेय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	207
231	त्याग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	208
232	बलिदान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	208
233	पूजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	209
234	रामधारी सिंह दिनकर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	210
235	कृष्ण का दूतकार्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	211
236	दूतकार्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	212
237	सुभद्रा कुमारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	213
238	मेरा जीवन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	214
239	खुशहाल जीवन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	215
240	सूर्यमल मीसण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	216
241	वीर नारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	217
242	वीरांगना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	218
243	खिसकना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	219
244	लुढ़कना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	219
245	ड्रम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	219
246	संदूक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	219
247	गेंद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	219
248	वृत्ताकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	220
249	चौकोर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	220
250	तिकोनी आकृति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	220
251	सीधी रेखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	221
252	घुमावदर रेखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	221
253	चौकोर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	222
254	वृत्त	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	222
255	तिकोना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	222
256	वस्तुओ का वर्गीकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	222
257	ऊपर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	223
258	नीचे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	223
259	आगे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	223
260	पीछे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	223
261	बीच में	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	223
262	पास	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	223
263	एक से सौ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	224
264	संख्या गिनना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	224
265	संख्या लिखना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	224
266	संख्या बोलना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	224
267	दो अंको की संख्या में एक अंक की संख्या को जोड़ना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	225
268	दो अंको की संख्या में एक अंक की संख्या को घटाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	225
269	जोड़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	225
270	घटाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	225
271	गुणा बारबार जोड़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	226
272	गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	226
273	भाग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	227
274	बराबर बटबारा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	227
275	बटबारा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	227
276	बाँटना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	227
277	भारतीय मुद्रा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	228
278	सिक्के	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	228
279	नोट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	228
280	मुद्रा सम्बन्धी गतिविधि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	228
281	लम्बाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	229
282	तुलना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	229
283	मापन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	229
284	अमानक इकाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	229
285	भारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	230
286	हल्का	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	230
287	भार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	230
288	आयतन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	230
289	अंदाज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	230
290	दिन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	231
291	सप्ताह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	231
292	महीना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	231
293	बर्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	232
294	धारिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	232
295	आंकड़ों को व्यवस्थित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	233
296	आंकड़ों को एकत्रित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	233
297	रंग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	234
298	आकृति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	234
299	संख्याओं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	234
300	पैटर्न	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	234
301	गणित की रोचकता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	235
302	पहेलियाँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	235
303	गणित के खेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	235
304	परिमेय संख्याएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	236
305	घन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	239
306	घनमूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	239
307	घनमूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	241
308	घात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	242
309	घातांक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	242
310	घात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	243
311	घातांक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	243
312	पूर्णांक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	243
313	परिमेय संख्याये	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	243
314	घात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	244
315	घातांक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	244
316	एक से अधिक संक्रियाओं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	244
317	एक संक्रियाओं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	244
318	दिमागी कसरत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	246
319	दिमागी कसरत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	247
320	व्यापक रूप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	247
321	दिमागी कसरत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	249
322	भाजकता के नियम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	249
323	बीजगणितीय सन्दर्भ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	249
324	दिमागी कसरत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	250
325	रिक्त संख्याओं को ज्ञात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	250
326	मूल संक्रियाओं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	250
327	दिमागी कसरत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	251
328	दिमागी कसरत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	252
329	4.7 वर्ग पहेली	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	252
330	वैदिक गणित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	253
331	वैदिक गणित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	255
332	5.3 घनफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	255
333	वैदिक गणित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	256
334	5.4 ध्वजांक विधि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	256
335	बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	257
336	बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	258
337	विकर्ण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	258
338	बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	259
339	6.3 उत्तल ओंर अवतल बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	259
340	बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	260
341	अन्तः कोणों का योग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	260
342	बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	261
343	6.5 एक बहुभुज के बाह्य कोणों की मापों का योग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	261
344	बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	262
345	6.6 चतुर्भुजों के गुण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	262
346	ठोस आकारों का चित्रण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	265
347	ठोस आकारों का चित्रण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	267
348	8.3 पिरामिड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	267
349	ठोस आकारों का चित्रण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	268
350	आयलर सूत्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	268
351	बहुफलक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	268
352	बीजीय व्यंजक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	270
353	बीजीय व्यंजक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	271
354	9.2 व्यंजक की घात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	271
355	बीजीय व्यंजक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	272
356	सजातीय पद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	272
357	विजातीय पद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	272
358	बीजीय व्यंजक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	273
359	बीजगणितीय व्यंजकों का योग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	273
360	बीजगणितीय व्यंजकों व्यवकलन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	273
361	बीजीय व्यंजक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	275
362	सर्वसमिका	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	275
363	.गुणनखंड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	276
364	रैखिक समीकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	280
365	रैखिक समीकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	281
366	इबारती प्रश्न	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	281
367	रैखिक आलेख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	282
368	रैखिक आलेख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	283
369	12.2 कार्तीय पद्धति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	283
370	रैखिक आलेख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	284
371	12.3 निर्देशांक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	284
372	रैखिक आलेख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	285
373	लेखाचित्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	285
374	रैखिक आलेख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	286
375	आलेख को पढना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	286
376	लेखा चित्र को पढना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	286
377	राशियों की तुलना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	287
378	13.1 प्रतिशत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	287
379	राशियों की तुलना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
380	लाभ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
381	हानि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
382	अंकित मूल्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
383	कमीशन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
384	वैट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
385	बट्टा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
386	ऊपरी खर्च	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
387	छूट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
388	सेवाकर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
389	राशियों की तुलना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	289
390	13.3 सरल ब्याज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	289
391	राशियों की तुलना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	290
392	13.4 चक्रवृधि ब्याज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	290
393	राशियों की तुलना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
394	वृद्धि दर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
395	राशियों की तुलना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
396	सीधा सम्बन्ध	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
397	प्रतिलोम सम्बन्ध	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
398	क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	293
399	क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	294
400	समलम्ब चतुर्भुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	294
401	क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	295
402	समचतुर्भुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	295
403	क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	296
404	चतुर्भुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	296
405	पृष्ठीय क्षेत्रफल एवं आयतन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	298
406	पृष्ठीय क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	299
407	घनाभ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	299
408	घन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	299
409	पृष्ठीय क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	300
410	बेलन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	300
411	आंकड़ों का प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	302
412	नाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	307
413	ननिहाल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	307
414	माँ का घर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	307
415	माँ का पीहर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	307
416	मामा का घर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	307
417	ननिहाल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	308
418	माँ का पीहर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	308
419	माँ का घर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	308
420	माँ का बचपन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	308
421	बचपन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	308
422	कमाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	312
423	ज्ञानेन्द्रियों की पहचान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	317
424	जीभ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	321
425	चखना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	321
426		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	321
427	खेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	322
428	खेल भावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	322
429	खेल भावना का विकास	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	322
430	खेलो का महत्त्व	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	322
431	गुलाब	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	328
432	फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	328
433	गुलाबी फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	328
434	स्थलीय फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	328
435	सूरजमुखी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	328
436	पीले फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	328
437	सजावट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	330
438	पूजा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	330
439	घर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	330
440	मन्दिर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	330
441	चित्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	331
442	सजावट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	331
443	वस्त्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	331
444	बर्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	331
445	दिवार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	331
446	कमल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	332
447	जलीय फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	332
448	राष्ट्रीय फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	332
449	रोहिडा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	333
450	राज्य फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	333
451	पौधों के विभिन्न भाग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	334
452	जड़े	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	334
453	विभिन्न जड़ो के काम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	334
454	पेडो के लाभ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	336
455	पेड़ो से प्राप्त सामग्री	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	336
456	सुरक्षा जरुरी क्यों	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	337
457	पेड़ पौधों की देखभाल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	337
458	जानवरों के कान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	338
459	कान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	338
460	कानों के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	338
461	जानवरों के कान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	339
462	कान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	339
463	कानों के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	339
464	कान के आधार पर जानवरों की पहचान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	339
465	जानवरों के कान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	340
466	कान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	340
467	कानों के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	340
468	कान के आधार पर जानवरों का वर्गीकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	340
469	सामुहिक भोज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	349
470	एक साथ बैठकर भोजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	349
471	अलग अलग अवसरों पर खाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	351
472	परिक्षेत्र में मनाये जाने वाले पर्व	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	351
473	अचछा खाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	352
474	ख़राब खाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	352
475	खाना ख़राब क्यों होता है	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	352
476	ख़राब खाने की जानकारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	352
477	खाने की स्वच्छता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	353
478	स्वच्छता की जरुरत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	353
479	मौसमानुसार खाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	354
480	सर्दी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	354
481	गर्मी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	354
482	बरसात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	354
483	दाँत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	359
484	दांतों का रख -रखाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	359
485	दांतो के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	361
486	दांत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	363
487	तम्बाकू	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	363
488	कैंसर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	363
489	फसल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	365
490	बाजार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	367
491	दुकाने	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	367
492	मंडी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	367
493	भजन की आवश्यकता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	368
494	पोष्टिक भोजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	369
495	सार्वजनिक वितरण प्रणाली	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	369
496	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	376
497	प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	376
498	मेले	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	378
499	राजस्थान के मेले	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	378
500	घर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	381
501	घर की जरुरत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	381
502	घर के स्वरुप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	382
503	घर के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	382
504	जानवर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	383
505	जानवर और घर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	383
506	स्वछता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	384
507	सफाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	384
508	हमारा घर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	384
509	विकास एवं मौसम के आधार पर वस्त्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	389
510	विकास एवं मौसम के आधार पर वस्त्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	390
511	रंगाई और छपाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	392
512	विभिन्न प्रदेशो की पोशाके	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	393
513	यात्रा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	394
514	घूमना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	394
515	सफर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	394
516		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	394
517	यात्रा के साधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	395
518	बस से यात्रा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	395
519	घूमने के साधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	395
520	यात्रा के कारण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	396
521	यात्रा क्यो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	396
522	घूमने क्यो जाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	396
523	झीलों की नगरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	398
524	हल्दीघाटी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	398
525	उदयपुर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	398
526	जैसलमेर के दर्शनीय स्थल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	398
527	सोनार किला	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	398
528	मरू -महोत्सव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	398
529	पर्यावरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	401
530	बाढ़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	401
531	जीवन की सुरक्षा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	401
532	प्रोफेसर स्वामीनाथन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	402
533	हरित क्रांति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	402
534	आनुवंशिकी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	402
535	धातु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	404
536	अधातु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	404
537	चमकदार वस्तु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	404
538	चमक रहित वस्तु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	404
539		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	404
540	सोना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	408
541	चाँदी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	408
542	धातुएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	408
543	आभूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	409
544	स्टील	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	409
545	पीतल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	409
546	पैराशूट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	411
547	ब्रश	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	411
548	पर्दे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	411
549	प्राकृतिक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	411
550	कृत्रिम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	411
551	रेयोन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	412
552	नायलोन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	412
553	आरलोन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	412
554	डेक्रोन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	412
555	बाल्टी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	413
556	ब्रश	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	413
557	डिब्बे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	413
558	खिलौने	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	413
559	बिजली के स्विच	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	413
560	बर्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	413
561	डिब्बे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	415
562	खिलौने	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	415
563	बर्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	415
564	स्विच	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	415
565		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	415
566	आयरन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	418
567	सल्फर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	418
568	आयरन सल्फाइड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	418
569	गैस का उत्पन्न होना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	419
570	रंग परिवर्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	419
571	ऊष्मा परिवर्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	419
572	अवक्षपेण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	419
573	जैव विविधता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	422
574	पौधों में जनन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	424
575	रक्त परिसंचरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	427
576	आलिन्द	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	427
577	निलय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	427
578	धड़कन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	427
579	नाड़ी गति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	427
580	सामान्य बीमारियां	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	430
581	टीबी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	430
582	कोलेरा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	430
583	टाइफोइड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	430
584	पोलियो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	430
585	रेबीज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	430
586	चिकन पॉक्स	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	430
587	खसरा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	430
588	सामान्य सर्दी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	430
589	दस्त	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	430
590	मलेरिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	430
591	रोग कारक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	430
592	लक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	430
593	बचाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	430
594	उपचार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	430
595	कृमि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	431
596	संक्रमण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	431
597	बचाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	431
598	टीकाकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	433
599	रोगों के निवारण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	434
600	कार्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	436
601	ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	436
602	ध्वनि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	445
603	ध्वनि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	448
604	संचरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	448
605	ध्वनि का संचरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	448
606	विद्युत् घंटी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	454
607	विद्युत् बल्ब	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	454
608	ओवन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	454
609	विद्युत्घंटी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	457
610	विद्युत् क्रेन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	457
611	टेलीफोन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	457
612	टेलीग्राफ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	457
613	हथौड़ी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	459
614	लौहे की पत्ती	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	459
615	कुंडली	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	459
616	घंटी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	459
617	आसुत जल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	460
618	नींबू का रस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	460
619	एनोड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	461
620	कैथोड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	461
621	रासायनिक परिवर्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	461
622	कॉपर सल्फेट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	462
623	ताँबे की प्लेट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	462
624	विद्युत लेपन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	462
625	कृत्रिम उपग्रह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	464
626	कृत्रिम उपग्रह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	465
627	सूचना प्रौद्योगिकी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	473
628	कृत्रिम उपग्रह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	475
629	संचार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	475
630	भूस्थिर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	475
631	ध्रुवीय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	475
632	कंप्यूटर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	476
633	सोशल मीडिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	478
634	समाज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	478
635	साइबर क्राइम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	479
636	साइबर सुरक्षा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	479
637	पारदर्शी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	481
638	अपारदर्शी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	481
639	चमकदार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	481
640	प्रकाश	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	481
641	सिल्ली	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	481
642	वायु दाब	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	490
643	वायु दाब	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	491
644	वायु वेग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	491
645	वायु प्रवाह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	492
646	थल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	493
647	जल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	493
648	वायु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	493
649	गर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	493
650	टोरनेड़ो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	496
651	प्रदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	498
652	वायु प्रदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	498
653	जल प्रदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	498
654	गैस अवशोषक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	502
655	ऑक्सीकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	502
656	जन चेतना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	502
657	वैकल्पिक ईंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	502
658	जीवनशैली	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	511
659	पर्यावरण संरक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	511
660	ईंधन के अवयव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	515
661	पेट्रोलियम गैस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	517
662	पेट्रोल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	517
663	नेफ्था	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	517
664	केरोसीन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	517
665	डीज़ल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	517
666	लुब्रिकेंट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	517
667	पैराफीन मोम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	517
668	डामर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	517
669	दहन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	518
670	ऊर्जा -संरक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	519
671	सड़क सुरक्षा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	521
\.


--
-- Data for Name: dataupload_subsection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dataupload_subsection (id, sub_section, created_at, updated_at, active, section_id) FROM stdin;
14	संख्याओ का विस्तार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	110
15	संख्याओ का विस्तार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	111
16	संख्याओ का विस्तारित रूप व तुलना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	112
17	समूह द्वारा जोड़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	116
18	हासिल के साथ जोड़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	117
19	एकाधिकेंन पूर्वेण का अर्थ चिह्न	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	123
20	एकाधिकें पूर्वेण द्वारा योग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	123
21	एकन्यूनेन पूर्वेण का अर्थ व चिन्ह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	124
22	परममित्र अंक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	124
23	एकन्यूनेन पूर्वेण द्वारा घटाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	124
24	छायांकित भाग का भिन्न में निरूपण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	136
25	भिन्न को पढ़ना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	136
26	भिन्नो में तुलना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	136
27	1.2.1 योग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	237
28	1.2.2 घटाना(व्यवकलन)	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	237
29	1.2.3 गुणन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	237
30	1.2.4 भाग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	237
31	1.3.1 संवृत गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
32	1.3.1 संवृत गुणधर्म [ (I) योग ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
33	1.3.1 संवृत गुणधर्म [ (II) व्यवकलन ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
34	1.3.1 संवृत गुणधर्म [ (III) गुणन ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
35	1.3.1 संवृत गुणधर्म [ (IV) भाग ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
36	1.3.2 क्रम विनिमेय गुणधर्म [ (I) योग ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
37	1.3.2 क्रम विनिमेय गुणधर्म [ (II) व्यवकलन ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
38	1.3.2 क्रम विनिमेय गुणधर्म [ (III) गुणन ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
39	1.3.2 क्रम विनिमेय गुणधर्म [ (IV) भाग ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
40	1.3.3 साहचर्य (सहचारिता) गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
41	1.3.3 साहचर्य (सहचारिता) गुणधर्म [ (I) योग ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
42	1.3.3 साहचर्य (सहचारिता) गुणधर्म [ (II) व्यवकलन ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
43	1.3.3 साहचर्य (सहचारिता) गुणधर्म [ (III) गुणन ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
44	1.3.3 साहचर्य (सहचारिता) गुणधर्म [ (IV) भाग ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
45	1.3.4 शून्य की परिमेय संख्याओ के साथ संक्रियाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
46	1.3.5 गुणात्मक तत्समक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
47	1.3.6 योज्य प्रतिलोम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
48	1.3.7 गुणात्मक प्रतिलोम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
49	1.3.8 परिमेय संख्याओ के लिए गुणन की योग पर वितरकता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
50	1.3.9 दो परिमेय संख्याओ के बीच की परिमेय संख्या ज्ञात करना (औसत द्वारा)	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	238
51	2.1.1 सम एवम् विषम संख्याओ की घन संख्या	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	239
52	2.1.2 घन संख्याओ के इकाई का अंक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	239
53	2.2.1 क्रमागत विषम संख्याओ को जोड़ना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	240
54	2.2.2 घन एवं उनके अभाज्य गुणनखंड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	240
55	2.3.1 किसी संख्या का घनमूल अभाज्य गुणनखंड विधी द्वारा ज्ञात करना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	241
56	2.3.2 किसी घन संख्या का घनमूल (अवलोकन विधि द्वारा)	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	241
57	3.4.1 वैज्ञानिक संकेतन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	245
58	3.4.2 बहुत बड़ी संख्याओं ओंर बहुत छोटी संख्याओं की तुलना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	245
59	4.3.1 अंकों को पलटना-दो अंको की संख्या	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	248
60	4.3.2 अंको का पलटना -तीन अंको की संख्या	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	248
61	5.1.1 गुणन संक्रिया (उर्ध्वतिर्यग्यभ्याम सूत्र )	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	253
62	5.1.2 सूत्र निखिलम(उपाधार) से गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	253
63	5.2.1 सूत्र निखिलम (आधार )	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	254
64	6.7.1 समलम्ब चतुर्भुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	263
65	6.7.2 पतंग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	263
66	6.7.3 समान्तर चतुर्भुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	263
67	6.7.4 समान्तर चतुर्भुज की विशिष्ट स्थितियां [ 1. आयत ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	263
68	6.7.4 समान्तर चतुर्भुज की विशिष्ट स्थितियां [ 2. वर्ग ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	263
69	6.7.5 सम चतुर्भुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	263
70	7.1.1 चतुर्भुज की रचना करना जब चार भुजाऐं और एक विकर्ण दिया हुआ हो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	264
71	7.1.2 चतुर्भुज की रचना करना, जब दो विकर्ण और तीन भुजाएँ दी हुई हों	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	264
72	7.1.3 चतुर्भुज की रचना करना जब चार भुजाएँ एवं एक कोण दिया हुआ हो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	264
73	7.1.4 चतुर्भुज की रचना करना जब जब तीन भुजाऐं और उनके बीच के दो कोण दिए हुए हो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	264
74	7.1.5 चतुर्भुज की रचना करना जब जब दो आसन्न भुजाएँ और तीन कोण दिए हों	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	264
75	8.2.1 त्रिभुजीय प्रिज्म की आकृति बनाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	266
76	8.5.1 घनाभ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	269
77	8.5.2 घन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	269
78	8.5.3 बेलन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	269
79	8.5.4 शंकु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	269
80	8.5.5 प्रिज्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	269
81	8.5.6 पिरामिड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	269
82	9.5.1 एक पदीय व्यंजक का एक पदीय व्यंजक से गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	274
83	9.5.2 द्विपदी या त्रिपदी को एक पड़ी से गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	274
84	9.5.3 द्विपदीय व्यंजक का द्विपदीय व्यंजक से गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	274
85	9.5.4 द्विपदी को त्रिपदी से गुणा करना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	274
86	9.6.1 मानक सर्वसमिका	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	275
87	9.6.2 सर्वसमिकाओं का उपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	275
88	10.2.1 गुणनखंडन की विधियाँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	277
89	10.3.1 (x+a)(x+b) के रूप के गुणनखंड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	278
90	10.4.1 एक पदी का एक अन्य एक पदी से विभाजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	279
91	10.4.2 एक बहुपद में एक पदीय व्यंजक से भाग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	279
92	10.4.3 बहुपद का बहुपद से विभाजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	279
93	14.5.1 अनियमित बहुभुजों का क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	297
94	15.2.1 घनाभ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	299
95	15.2.2 घन का सम्पूर्ण पृष्ठीय क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	299
96	15.4.1 घन व घनाभ का आयतन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	301
97	15.4.2 बेलन का आयतन (धारिता)	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	301
98	16.1 (i) चित्रालेख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	302
99	16.1 (ii) दंड आलेख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	302
100	16.1 (iii) दोहरे दंड आलेख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	302
101	16.2.1 बारंबारता बंटन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	303
102	16.2.2 आंकड़ों का वर्गीकरण (वर्ग अंतराल के रूप में)	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	303
103	16.3 आयत चित्र-आंकड़ों का आलेखीय निरूपण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	304
104	16.4.1 पाई चार्ट बनाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	305
105	16.5.1 संयोग से अभिप्राय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	306
106	16.5.2 पासा और सिक्का उछालने पर प्राप्त संभावनाओं की गणना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	306
107	16.5.3 सम संभावित परिणाम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	306
108	16.5.4 अनुकूल संभावनाओं की गणना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	306
109	नानाजी -नानीजी , मामाजी - मामीजी, मौसीजी -मौसाजी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	308
110	मेहमानों की आवाभगत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	308
111	वंश वृक्ष बनाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	308
112	छोटे व बड़े परिवार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	309
113	महिलाओं की बाहरी एवं पुरुषों की घर के कार्य मे योगदान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	310
114	परिवार मे निर्णय लेने की भागीदारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	311
115	शैक्षिक ज्ञान व सह शैक्षिक ज्ञान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	313
116	चरण स्पर्श करना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	314
117	बालिकाओं को उच्च शिक्षा के लिए प्रोत्साहन करना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	315
118	समानता को महत्व देना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	316
119	कान की सामान्य जानकारी [ कान से जुडी समस्या ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	318
120	आँख की सामान्य जानकारी [ आँख से जुडी समस्या ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	319
121	आँख का महत्व	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	319
122	नाक की सामान्य जानकारी [ नाक से जुडी समस्या ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	320
123	त्वचा की सामान्य जानकारी [ त्वचा से जुडी समस्या ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	321
124	अच्छा स्पर्श व बुरा स्पर्श [ बुरे स्पर्श के प्रभाव ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	321
125	योजना बनाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	323
126	खो खो खेल नियम के जानकारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	324
127	प्राथमिक चिकित्सा पेटी की सामान्य जानकारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	325
128	कबडडी के खेल खेल नियम की जानकारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	326
129	खेल भावना के लिए खेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	327
130	स्वास्थय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	327
131	सहयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	327
132	गुलाब का फूल [ उपयोगिता, रंग ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	328
133	सूरजमुखी का फूल [ उपयोगिता, रंग ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	328
134	कमल का फूल [ उपयोगिता, रंग ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	328
135	शहद का बनना [ उपयोगिता ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	329
136	खेजड़ी की जड़े	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	334
137	बरगद की जड़े	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	334
138	तने के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	335
139	तने जो हम खाते हैं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	335
140	जंतुओं के प्रकार [ पालतू जानवर और जंगली जानवर ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	341
141	जंगली जानवरों के आवास [ जंगल ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	342
142	जंगली जानवरों के व्यवहार [ अकेले तथा झुण्ड में रहने वाले जानवर ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	342
143	अभ्यारण्य की सैर [ अभ्यारण्य क्या ? ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	343
144	अभ्यारण्य [ अभ्यारण्य क्यों ? ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	343
145	वनों का महत्व	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	344
146	जानवरों का दर्द	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	344
147	पानी का रंग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	345
148	पानी का स्वाद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	345
149	गायब हुआ पानी [ वाष्पीकरण ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	345
150	प्रकट हुआ पानी [ संघनन ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	345
151	पानी नहीं छलका [ पानी की सतह पर तनाव ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	345
152	पानी की ताकत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	345
153	पानी का बहना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	346
154	पानी व्यर्थ न करें	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	346
155	भूगर्भ से पानी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	346
156	पानी साफ केसे रहे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	347
157	नमामि गंगा कार्यक्रम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	348
158	गोठ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	350
159	गाल के लड्डू बनाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	355
160	हुदहुद ,बया ,गोडावण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	356
161	तैरने के लिए, टहनियों को पकड़ने के लिए, जमीन पर चलने के लिए, कड़ी सतह पर चढने के लिए	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	357
162	मांस चीरने के लिए, फूलो का रस चूसने के लिए, कीचड़ से कीड़े निकलने के लिए, लकड़ी तोड़ने के लिए अनाज और बीज तोड़ने के लिए	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	358
163	दांत बिना जीवन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	360
164	भोजन का दाँतों पर प्रभाव [ चॉकलेट और दाँत ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	360
165	दाँतों का स्वास्थ्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	360
166	दांतों के नाम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	361
167	दांतो की संख्या	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	361
168	दांतो की संरचना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	361
169	दांतो के कार्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	361
170	जन्म के समय दाँत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	362
171	शैशवास्था में दाँत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	362
172	किशोरावस्था में दाँत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	362
173	युवावस्था में दाँत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	362
174	वृद्धावस्था में दाँत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	362
175	स्वाद ग्रंथियां	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	364
176	थ्रेशर, भण्डारण,	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	366
177	अनाज मंडी, सब्जीमंडी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	366
178	सब्जीमंडी [ देर तक ख़राब होने वाली सब्जियां ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	366
179	बेचना/ खरीदना [ मिलने वाली सामग्री जो कृषि उपज है ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	366
180	उचित मूल्य की दुकान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	370
181	आयुर्वेद व चरक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	371
182	चरक संहिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	371
183	शल्य चिकित्सा की जानकारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	372
184	सुश्रुत की जानकारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	372
185	रानी दुर्गावती की जानकारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	373
186	वीर सावरकर की जानकारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	374
187	वीर सावरकर का संघर्ष व योगदान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	374
188	सरदार वल्लभ भाई पटेल की जानकारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	375
189	सरदार वल्लभ भाई पटेल का योगदान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	375
190	राष्ट्रीय ध्वज [ राष्ट्रीय ध्वज का नाम ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
191	राष्ट्रीय ध्वज [ राष्ट्रीय ध्वज में रंग व उनका क्रम ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
192	राष्ट्रीय ध्वज [ राष्ट्रीय ध्वज में अशोक चक्र ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
193	राष्ट्रीय ध्वज [ राष्ट्रीय ध्वज का चित्र बनाना ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
194	राष्ट्रीय गीत व गान [ राष्ट्रीय गान व राष्ट्रीय गीत से परिचय ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
195	राष्ट्रीय गीत व गान [ राष्ट्रीय गान व राष्ट्रीय गीत के रचियता ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
196	राष्ट्रीय गीत व गान [ राष्ट्रीय गान व राष्ट्रीय गीत में अंतर ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
197	राष्ट्रीय चिन्ह [ राष्ट्रीय चिन्ह का नाम ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
198	राष्ट्रीय चिन्ह [ राष्ट्रीय चिन्ह कहा से लिया गया है ? ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
199	राष्ट्रीय चिन्ह [ राष्ट्रीय चिन्ह में कौन-कौन से पशु दिखाई देते हैं? ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
200	राष्ट्रीय चिन्ह [ अशोक चक्र की जानकारी ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
201	राष्ट्रीय चिन्ह [ राष्ट्रीय चिन्ह कहाँ-कहाँ लगा हुआ दिखता है ? ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
202	राष्ट्रीय पंचांग [ राष्ट्रीय पंचांग की सामान्य जानकारी ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
203	अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय पक्षी ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
204	अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय पुष्प ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
205	अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय वृक्ष ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
206	अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय नदी ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
207	अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय पशु ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
208	अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय फल ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
209	अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय खेल ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
210	अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय मुद्रा ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	377
211	लक्खी मेला भर्तृहरि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	379
212	रामदेवरा मेला	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	379
213	ख्वाजा का उर्स	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	379
214	हाट मेले	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	380
215	गुफाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	382
216	कच्चा घर [ कच्ची बस्तियाँ ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	382
217	पक्का घर [ शहर और बहुमंजिला इमारतें ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	382
218	आवास विहीन लोगो के आश्रय स्थल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	382
219	स्वच्छ भारत मिशन [ शौचलय का उपयोग ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	385
220	गन्दगी के दुष्परिणाम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	386
221	जैव अपघटनीय व अनापघटनीय कचरा [ प्लास्टिक का कम उपयोग ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	387
222	चारों दिशाओं के नाम [ पूर्व दिशा का ज्ञान ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	388
223	पूर्व दिशा के परिप्रेक्ष्य में अन्य तीन दिशाओं का ज्ञान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	388
224	शरीर की विभिन्न अवस्थाओं के अनुरूप दिशाएं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	388
225	नक़्शे में दिशा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	388
226	नक़्शे में संकेत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	388
227	नक़्शे में दूरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	388
228	सूती वस्त्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	391
229	ऊनी वस्त्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	391
230	रेशमी वस्त्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	391
231	खादी वस्त्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	391
232	यात्रा की तैयारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	397
233	जयपुर भ्रमण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	397
234	जैसलमेर की सैर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	397
235	जोधपुर यात्रा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	397
236	उदयपुर दर्शन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	397
237	फसल की परिभाषा [ फसल के प्रकार ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	399
238	खेती के चरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	399
239	मिट्टी तैयार करना [ कृषि के औज़ार, जुताई ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	399
240	बुआई करना [ बीज बोने के परम्परागत एवं आधुनिक औज़ार ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	399
241	खाद एवं उवर्रक [ खाद एवं उर्वरक में अंतर, जैविक खाद के लाभ ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	399
242	सिंचाई करना [ सिंचाई की परिभाषा, लाभ , स्रोत, साधन ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	399
243	फसल की सुरक्षा करना [ कृषि की समस्याएं, कुप्रभाव एवं बचाव के तरीके ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	399
244	फसल काटना [ थ्रेसिंग ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	399
245	अनाज का भंडारण करना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	399
246	राजस्थान में प्रमुख फल एवं सब्जी उत्पादक क्षेत्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	400
247	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	403
248	भौतिक अवस्था , रंग , चमक , कठोरता , ध्वानिकता , घनत्व , गलनांक , चालकता , तन्यता ,	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	405
249	भौतिक अवस्था , रंग , चमक , कठोरता , ध्वानिकता , घनत्व , गलनांक , चालकता , भंगुरता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	405
250	वायु के साथ अभिक्रिया, जल के अभिक्रिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	406
251	धातु के उपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	407
252	अधातु के उपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	407
253	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	410
254	थर्मोप्लास्टिक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	414
255	थर्मोसेटिंग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	414
256	4 आर सिद्धान्त	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	416
257	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	417
258	संयोजन अभिक्रिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	420
259	वियोजन या अपघटनीय अभिक्रिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	420
260	विस्थापन अभिक्रियाएं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	420
261	ऑक्सीकरण अपचयन अभिक्रियाएं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	420
262	उदासीनीकरण अभिक्रिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	420
263	ऊष्माशोषी व ऊष्माक्षेपी अभिक्रियाएं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	420
264	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	421
265	जैव विविधता क्षरण के कारण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	422
266	वन्य जीव अभ्यारण्य, राष्ट्रीय उद्यान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	422
267	जैव विविधता के ऊष्ण स्थल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	422
268	कांकरेज , मालवी , राठी , नागौरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	422
269	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	423
270	कायिक जनन [ कलम लगाना ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	424
271	अलैंगिक जनन [ मुकुलन, विखण्डन , बीजाणु निर्माण ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	425
272	लैंगिक जनन [ एकलिंगी पुष्प , द्विलिंगी ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	424
273	अनिषेक जनन [ सरल फल, पुंज फल, संग्रहित फल ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	424
274	स्वपरागण परपरागण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	424
275	एकलिंगी पुष्प , द्विलिंगी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	424
276	आनुवंशिकता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	424
277	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	426
278	रुधिर प्लाज्मा ,रुधिर कणिकाऐं [ लाल रुधिर कणिकाएँ, श्वेत रुधिर कणिकाएँ, रुधिर प्लेटलेट्स या थ्रोम्बोसाइट्स ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	427
279	रुधिर वर्ग [ प्रतिजन , प्रतिरक्षी, रुधिर वर्ग का महत्त्व ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	427
280	रक्तदान व रक्त बैंक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	427
281	धमनी और शिराएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	427
282	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	428
283	संक्रामक एवं असंक्रामक रोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	429
284	नारू, एड्स, कुष्ठ रोग, एड्स, कैंसर, हेपेटाइटिस,कारण एवं निवारण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	432
285	हीमोफ़िलिया,खाद्य विषाक्तन,स्वाइन फ़्लू ,एनिमिया, डेंगू	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	432
286	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	435
287	कार्य [ कार्य का सूत्र , कार्य का मात्रक ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	437
288	ऊर्जा [ ऊर्जा, ऊर्जा का मात्रक ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	438
289	ऊर्जा का मात्रक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	439
290	यांत्रिक ऊर्जा [ गतिज ऊर्जा, स्थितिज ऊर्जा, ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	440
291	ऊर्जा के विभिन्न रूप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	440
292	ऊर्जा का रूपांतरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	441
293	ऊर्जा के विभिन्न स्त्रोत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	442
294	परंपरागत ऊर्जा स्त्रोत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	442
295	गैर परंपरागत ऊर्जा स्त्रोत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	442
296	ऊर्जा की बचत ही ऊर्जा का संरक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	442
297	ऊर्जा का संरक्षण के उपाय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	443
298	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	444
299	ध्वनि की उत्पत्ति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	446
300	मानव में वाक ध्वनि का उत्पन्न होना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	447
301	वायु में ध्वनि का संचरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	448
302	ठोस में ध्वनि का संचरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	448
303	द्रव में ध्वनि का संचरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	448
304	आयाम, आवृति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	448
305	कम्पन काल या आवर्तकाल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	448
306	ध्वनि की प्रबलता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	449
307	तारत्व	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	449
308	श्रव्य, अपश्रव्य व पराश्रव्य ध्वनि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	450
309	मानव कर्ण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	451
310	ध्वनि प्रदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	452
311	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	453
312	विद्युत् धारा के ऊष्मीय प्रभाव पर आधारित विद्युत् उपकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	455
313	लघुपथन [ लघुपथन के कारण, लघुपथन से हानि, लघुपरिपथ विच्छेदक ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	456
314	विद्युत् चुम्बक के उपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	458
315	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	463
316	कृत्रिम उपग्रह प्रक्षेपण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	466
317	भूस्थिर उपग्रह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	467
318	ध्रुवीय उपग्रह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	467
319	कृत्रिम उपग्रह के उपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	468
320	भारत के प्रमुख कृत्रिम उपग्रह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	469
321	भारतीय अंतरिक्ष अनुसंधान संगठन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	470
322	डॉ. विक्रम अंबालाल साराभाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	471
323	डॉ. ए,पी.जे. अब्दुल कलाम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	471
324	महत्वपूर्ण बिंदु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	472
325	रेडिओ, टेलीफोन, फैक्स, टेलीविज़न, इलेक्ट्रॉनिक मेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	474
326	ई-कॉमर्स ,टेलीमेडिसिन,ब्रॉड -बैंड,सोशल मीडिया ,ई-मित्र ,	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	477
327	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	480
328	प्रकाश का अपवर्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	482
329	अपवर्तन क्यों होता है	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	482
330	अपवर्तन पर आधारित घटनाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	483
331	लेंसों के प्रकार [ उत्तल लेंस, अभिसारी लेंस ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	484
332	लेंसों के प्रकार [ अवतल लेंस, अपसारी लेंस ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	484
333	लेंस से सम्बन्धित परिभाषाएँ [ मुख्य अक्ष, प्रकाश केन्द्र, फोकस बिन्दु, फोकस दूरी ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	484
334	उत्तल लेंस से प्रतिबिम्ब निर्माण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	484
335	अवतल लेंस से प्रतिबिम्ब निर्माण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	484
336	लेंसों के उपयोग व प्रकाशीय उपकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	485
337	मानव नेत्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	486
338	प्रकाश का वर्ण विक्षेपण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	487
339	वैज्ञानिक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	488
340	महत्वपूर्ण बिंदु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	489
341	तड़ित झंझावात से बचाव के उपाय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	494
342	सरकारी एवं सामाजिक स्तर पर सुरक्षा उपाय व कार्य [ प्रभावित क्षेत्रों में सावधानियाँ ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	495
343	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	497
344	वायु प्रदूषण के कारण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	499
345	वायु प्रदूषक एवं उनके दुष्प्रभाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	499
346	अम्ल वर्षा के दुष्प्रभाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	500
347	विश्व ऊष्णन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	501
348	जल प्रदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	503
349	जल प्रदूषण के कारण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	503
350	जल प्रदूषण के प्रभाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	503
351	जल प्रदूषण नियंत्रण के उपाय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	503
352	जल प्रदूषण पर विशिष्ट अध्ययन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	503
353	जल शुद्धिकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	503
354	महत्वपूर्ण बिंदु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	504
355	पर्यावरण का अर्थ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	505
356	सामाजिक पर्यावरण /प्राकृतिक पर्यावरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	506
357	प्राकृतिक पर्यावरण के घटक [ अजैविक घटक , जैविक घटक ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	507
358	प्राकृतिक प्रदूषण के प्रकार [ भू-प्रदूषण / मृदा प्रदूषण ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	508
359	पर्यावरण संरक्षण में राजस्थान की भूमिका [ १. खेजड़ली ग्राम का उदाहरण २. पिपलांत्री ग्राम ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	509
360	हमारी जीवन शैली व पर्यावरण संरक्षण [ पर्यावरण मित्र/जीवन शैली के व्यावहारिक पक्ष /पर्यावरण संरक्षण हेतु संकल्प ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	509
361	पर्यावरण रक्षा के लिए विभिन्न स्तर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	510
362	महत्वपूर्ण बिंदु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	512
363	कार्बन की उपस्थिति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	513
364	हीरा और ग्रेफाइट मे अन्तर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	514
365	जैव द्रव्यमान ,कच्चे तेल के कुंए ,कोयले की खान [ कोयला ,पेट्रोलियम ]	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	516
366	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	t	520
\.


--
-- Data for Name: dataupload_subsectionkeyword; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dataupload_subsectionkeyword (id, keyword, created_at, updated_at, sub_section_id) FROM stdin;
20	500 तक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	14
21	999 तक संख्या	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	15
22	चार अंको की संख्या	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	16
23	जोड़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	17
24	योग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	17
25	समूहीकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	17
26	हासिल की जोड़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	18
27	एकाधिक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	19
28	एकाधिकेन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	19
29	एकाधिकेन योग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	20
30	एकन्यूनेंन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	21
31	परममित्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	22
32	एकन्यूनेंन घटाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	23
33	भिन्न	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	24
34	बंटवारा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	24
35	भाग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	24
36	अंश	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	25
37	हर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	25
38	भिन्नो में तुलना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	26
39	परिमेय संख्याओ का योग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	27
40	परिमेय संख्याओ का घटाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	28
41	परिमेय संख्याओ का गुणन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	29
42	परिमेय संख्याओ का भाग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	30
43	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	31
44	संवृत गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	31
45	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	32
46	योग गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	32
47	संवृत गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	32
48	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	33
49	व्यवकलन गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	33
50	संवृत गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	33
51	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	34
52	गुणन गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	34
53	संवृत गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	34
54	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	35
55	भाग गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	35
56	संवृत गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	35
57	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	36
58	योग गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	36
59	क्रम विनिमेय गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	36
60	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	37
61	व्यवकलन गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	37
62	क्रम विनिमेय गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	37
63	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	38
64	गुणन गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	38
65	क्रम विनिमेय गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	38
66	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	39
67	भाग गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	39
68	क्रम विनिमेय गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	39
69	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	40
70	साहचर्य (सहचारिता) गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	40
71	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	41
72	योग गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	41
73	साहचर्य (सहचारिता) गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	41
74	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	42
75	व्यवकलन गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	42
76	साहचर्य (सहचारिता) गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	42
77	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	43
78	गुणन गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	43
79	साहचर्य (सहचारिता) गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	43
80	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	44
81	भाग गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	44
82	साहचर्य (सहचारिता) गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	44
83	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	45
84	शून्य के साथ संक्रियाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	45
85	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	46
86	गुणात्मक तत्समक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	46
87	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	47
88	1.3.6 योज्य प्रतिलोम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	47
89	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	48
90	1.3.7 गुणात्मक प्रतिलोम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	48
91	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	49
92	गुणन की योग पर वितरकता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	49
93	परिमेय संख्याओं के गुणधर्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	50
94	औसत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	50
95	परिमेय संख्याओ के बीच	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	50
96	घन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	51
97	घनमूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	51
98	सम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	51
99	घन संख्या	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	51
100	विषम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	51
101	घन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	52
102	घनमूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	52
103	इकाई का अंक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	52
104	घन संख्या	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	52
105	घन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	53
106	घनमूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	53
107	क्रमागत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	53
108	जोड़ना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	53
109	विषम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	53
110	घन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	54
111	घनमूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	54
112	अभाज्य गुणनखंड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	54
113	घनमूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	55
114	अभाज्य गुणनखंड विधी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	55
115	घनमूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	56
116	अवलोकन विधि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	56
117	घात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	57
118	घातांक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	57
119	3.4.1 वैज्ञानिक संकेतन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	57
120	घात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	58
121	घातांक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	58
122	3.4.2 बहुत बड़ी संख्याओं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	58
123	बहुत छोटी संख्याओं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	58
124	तुलना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	58
125	दिमागी कसरत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	59
126	अंकों को पलटना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	59
127	दो अंको की संख्या	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	59
128	दिमागी कसरत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	60
129	अंको का पलटना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	60
130	तीन अंको की संख्या	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	60
131	वैदिक गणित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	61
132	गुणन संक्रिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	61
133	उर्ध्वतिर्यग्यभ्याम सूत्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	61
134	वैदिक गणित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	62
135	सूत्र निखिलम(उपाधार) से गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	62
136	वैदिक गणित	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	63
137	5.2.1 सूत्र निखिलम (आधार )	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	63
138	बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	64
139	6.7.1 समलम्ब चतुर्भुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	64
140	बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	65
141	6.7.2 पतंग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	65
142	बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	66
143	6.7.3 समान्तर चतुर्भुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	66
144	बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	67
145	1. आयत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	67
146	बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	68
147	2. वर्ग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	68
148	बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	69
149	6.7.5 सम चतुर्भुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	69
150	चतुर्भुज की रचना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	70
151	चार भुजाऐं और एक विकर्ण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	70
152	चतुर्भुज की रचना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	71
153	जब दो विकर्ण और तीन भुजाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	71
154	चतुर्भुज की रचना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	72
155	चार भुजाएँ एवं एक कोण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	72
156	चतुर्भुज की रचना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	73
157	तीन भुजाऐं और उनके बीच के दो कोण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	73
158	चतुर्भुज की रचना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	74
159	दो आसन्न भुजाएँ और तीन कोण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	74
160	ठोस आकारों का चित्रण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	75
161	त्रिभुजीय प्रिज्म की आकृति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	75
162	त्रिभुजीय प्रिज्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	75
163	ठोस आकारों का चित्रण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	76
164	8.5.1 घनाभ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	76
165	ठोस आकारों का चित्रण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	77
166	8.5.2 घन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	77
167	ठोस आकारों का चित्रण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	78
168	बेलन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	78
169	ठोस आकारों का चित्रण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	79
170	8.5.4 शंकु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	79
171	ठोस आकारों का चित्रण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	80
172	8.5.5 प्रिज्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	80
173	ठोस आकारों का चित्रण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	81
174	8.5.6 पिरामिड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	81
175	बीजीय व्यंजक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	82
176	एक पदीय व्यंजक का एक पदीय व्यंजक से गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	82
177	गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	82
178	एक पदीय व्यंजक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	82
179	बीजीय व्यंजक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	83
180	द्विपदी या त्रिपदी को एक पदी से गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	83
181	त्रिपदी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	83
182	द्विपदी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	83
183	गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	83
184	बीजीय व्यंजक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	84
185	द्विपदीय व्यंजक का द्विपदीय व्यंजक से गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	84
186	द्विपदीय व्यंजक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	84
187	बीजीय व्यंजक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	85
188	द्विपदी को त्रिपदी से गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	85
189	त्रिपदी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	85
190	द्विपदी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	85
191	गुणा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	85
192	बीजीय व्यंजक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	86
193	मानक सर्वसमिका	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	86
194	बीजीय व्यंजक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	87
195	9.6.2 सर्वसमिकाओं का उपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	87
196	गुणनखंड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	88
197	10.2.1.1 सार्व गुणनखंड विधि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	88
198	10.2.1.2 समूहन द्वारा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	88
199	गुणनखंड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	89
200	(x+a)(x+b)	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	89
201	गुणनखंड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	90
202	विभाजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	90
203	एक पदी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	90
204	गुणनखंड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	91
205	एक बहुपद में एक पदीय व्यंजक से भाग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	91
206	एक पदीय व्यंजक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	91
207	गुणनखंड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	92
208	विभाजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	92
209	बहुपद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	92
210	क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	93
211	अनियमित बहुभुज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	93
212	पृष्ठीय क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	94
213	15.2.1 घनाभ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	94
214	पृष्ठीय क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	95
215	घन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	95
216	सम्पूर्ण पृष्ठीय क्षेत्रफल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	95
217	आयतन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	96
218	घन व घनाभ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	96
219	आयतन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	97
220	बेलन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	97
221	धारिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	97
222	आंकड़ों का प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	98
223	चित्रालेख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	98
224	आंकड़ों का प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	99
225	दंड आलेख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	99
226	आंकड़ों का प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	100
227	दोहरे दंड आलेख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	100
228	आंकड़ों का वर्गीकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	101
229	बारंबारता बंटन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	101
230	आंकड़ों का प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	102
231	आंकड़ों का वर्गीकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	102
232	वर्ग अंतराल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	102
233	आंकड़ों का प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	103
234	आलेखीय निरूपण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	103
235	आंकड़ों का प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	104
236	पाई चार्ट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	104
237	आंकड़ों का प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	105
238	संयोग से अभिप्राय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	105
239	आंकड़ों का प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	106
240	संभावनाओं की गणना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	106
241	पासा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	106
242	सिक्का	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	106
243	आंकड़ों का प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	107
244	सम संभावित परिणाम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	107
245	आंकड़ों का प्रबंधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	108
246	अनुकूल संभावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	108
247	नाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	109
248	नानी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	109
249	मामा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	109
250	मामी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	109
251	मौसा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	109
252	मौसी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	109
253	मेहमाननवाजी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	110
254	आवाभगत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	110
255	स्वागत-सत्कार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	110
256	वंश	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	111
257	वंश वृक्ष	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	111
258	वंश बेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	111
259	एकल परिवार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	112
260	संयुक्त परिवार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	112
261	महिला	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	113
262	पुरुष	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	113
263	कार्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	113
264	मुखिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	114
265	निर्णय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	114
266	पढ़ाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	115
267	लिखाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	115
268	आशीर्वाद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	116
269	सम्मान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	116
270	बुज़र्गों	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	116
271	बालिका	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	117
272	शिक्षा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	117
273	जाति भेद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	118
274	छुआछूत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	118
275	ऊंच नीच	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	118
276	लिंग भेद ना करना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	118
277	समानता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	118
278	सोच व मूल्यों मे परिवर्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	118
279	कान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	119
280	कान की सामान्य जानकारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	119
281	आँख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	120
282	आँख की सामान्य जानकारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	120
283	आँख	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	121
284	आँख का महत्व	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	121
285	सर्दी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	122
286	जुखाम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	122
287	नाक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	122
288	त्वचा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	123
289	त्वचा की सामान्य जानकारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	123
290	अच्छा स्पर्श	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	124
291	बुरा स्पर्श	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	124
292	खेल प्रतियोगिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	125
293	खेल नियम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	125
294	खेल मैदान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	125
295	खेल प्रतियोगिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	126
296	खेल नियम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	126
297	खो खो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	126
298	प्राथमिक चिकित्सा पेटी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	127
299	खेल प्रतियोगिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	128
300	खेल नियम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	128
301	कबडडी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	128
302	खेल प्रतियोगिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	129
303	खेल नियम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	129
304	खेल भावना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	129
305	खेल प्रतियोगिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	130
306	खेल नियम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	130
307	खेल प्रतियोगिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	131
308	खेल नियम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	131
309	गुलाब	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	132
310	फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	132
311	गुलाबी फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	132
312	स्थलीय फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	132
313	सूरजमुखी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	133
314	पीले फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	133
315	स्थलीय फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	133
316	कमल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	134
317	जलीय फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	134
318	राष्ट्रीय फूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	134
319	शहद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
320	मधुमक्खी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	135
321	विभिन्न जड़ो के काम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	136
322	खेजड़ी की जड़े	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	136
323	विभिन्न जड़ो के काम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
324	बरगद की जड़े	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	137
325	तने के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
326	तना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	138
327	तने खाते हैं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	139
328	तना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	139
329	जंगल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
330	जानवर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
331	जीवन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
332	जंतु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
333	पालतू व जंगली जानवरों में अंतर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	140
334	जंगल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
335	जानवर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
336	जीवन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
337	जंतु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
338	जंगल व वहाँ रहने वाले जीव जंतु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
339	जंगल और जानवरों में सम्बन्ध	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	141
340	जानवर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	142
341	झुण्ड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	142
342	जंगली जानवरों के व्यवहार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	142
343	अभ्यारण्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	143
344	जानवरों के संरक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	143
345	सरकारी जानकारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	143
346	संरक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
347	अभ्यारण्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
348	जंगल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	144
349	जीव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
350	जंतु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
351	अंतर्निर्भरता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	145
352	जानवर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	146
353	दया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	146
354	पानी के रंग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
355	रंगहीन पानी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
356	रंगीन पानी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	147
357	पानी का स्वाद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	148
358	शर्बत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	148
359	नीबूपानी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	148
360	वाष्पीकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
361	गर्मी का असर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
362	फैलवा का असर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
363	कपड़ो का सूखना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
364	वाष्पन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	149
365	संघनन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
366	जल च्रक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	150
367	पानी की सतह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	151
368	पानी की ताकत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	152
369	पानी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
370	पानी का उपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
371	पानी का बहना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	153
372	पानी का मापन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
373	पानी का महत्व	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	154
374	कुए	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	155
375	बोरवेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	155
376	भूगर्भ से पानी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	155
377	गंदापानी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
378	नदी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
379	पानी साफ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	156
380	पानी की सफाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
381	नमामि गंगा कार्यक्रम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	157
382	सामूहिक भोज के कारण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
383	सामूहिक भोज के उद्देश्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	158
384	गाल के लड्डू	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
385	खाना बनाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	159
386	हुदहुद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
387	बया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
388	गोडावण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
389	राजस्थान के पक्षि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	160
390	अलग अलग पंजे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
391	कार्यों के अनुसार पंजे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
392	तैरने के लिए	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
393	टहनियों को पकड़ने के लिए	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
394	जमीन पर चलने के लिए	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
395	कड़ी सतह पर चढने के लिए	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	161
396	अलग अलग चोंच	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
397	कार्यों के अनुसार चोंच	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
398	मांस चीरने के लिए	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
399	फूलो का रस चूसने के लिए	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
400	कीचड़ से कीड़े निकलने के लिए	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
401	लकड़ी तोड़ने के लिए अनाज और बीज तोड़ने के लिए	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	162
402	दाँत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
403	दांत और जीवन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	163
404		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
405	दांतो में कीड़ा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
406	दांतो की सड़न	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	164
407	दाँतो की सफाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	165
408	दांतो में संक्रमण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	165
409	दांतो के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	166
410	कृतंक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	166
411	रदनक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	166
412	अग्र -चवर्णक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	166
413	चवर्णक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	166
414	दांतों के नाम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	166
415	दांतो के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	167
416	कृतंक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	167
417	रदनक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	167
418	अग्र -चवर्णक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	167
419	चवर्णक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	167
420	दांतो की संख्या	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	167
421	दांतो के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	168
422	कृतंक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	168
423	रदनक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	168
424	अग्र -चवर्णक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	168
425	चवर्णक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	168
426	दांतो की संरचना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	168
427	दांतो के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	169
428	कृतंक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	169
429	रदनक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	169
430	अग्र -चवर्णक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	169
431	चवर्णक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	169
432	दांतो के कार्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	169
433	शिशु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	170
434	नवजात में दाँत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	170
435	दूध के दाँत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	171
436	हमारे दाँत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	172
437	दाँत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	173
438	अक्कल दाढ़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	173
439	वृद्धावस्था और दाँत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	174
440	दांत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	174
441	दांतों का गिरना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	174
442	उम्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	174
443	बढाती उम्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	174
444	हमारे दांत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	174
445	स्वाद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	175
446	जीभ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	175
447	स्वाद ग्रंथियां	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	175
448	विब्भिन स्वाद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	175
449	खट्टा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	175
450	मीठा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	175
451	कड़वा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	175
452	थ्रेशर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	176
453	भण्डारण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	176
454	बेचना/ खरीदना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	176
455	अनाज मंडी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	177
456	सब्जीमंडी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	177
457	फसल के पकने पर किये जाने वाले काम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	177
458	सब्जीमंडी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	178
459	सब्जियों का रखरखाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	178
460	किराने की दूकान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	179
461	उत्पादों का क्रय विक्रय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	179
462	राशन की दुकान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	180
463	सार्वजनिक वितरण प्रणाली	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	180
464	आयुर्वेद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	181
465	जड़ी बूटी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	181
466	चरक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	181
467	आयुर्वेदिक उपचार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	181
468	चरक की पुस्तक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	182
469	चरक संहिता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	182
470	शल्य चिकित्सा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	183
471	चीर फाड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	183
472	सुश्रुत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	184
473	सुश्रुत का योगदान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	184
474	चिकित्सा में सुश्रुत का योगदान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	184
475	रानी दुर्गावती	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	185
476	वीरांगना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	185
477	गढ़ा राज्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	185
478	दलपति शाह की पत्नी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	185
479	वीर सावरकर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	186
480	अभिनव भारत के संस्थापक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	186
481	वीर सावरकर की पुस्तक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	186
482	वीर सावरकर का अंग्रेज़ों के साथ संघर्ष	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	187
483	वीर सावरकर का समाज में योगदान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	187
484	सरदार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	188
485	सरदार पटेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	188
486	वल्लभ भाई पटेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	188
487	लोह पुरुष	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	188
488	सरदार पटेल का योगदान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	189
489	भारत में रियासतों का एकीकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	189
490	बेगार प्रथा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	189
491	बारडोली किसान आंदोलन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	189
492	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	190
493	प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	190
494	राष्ट्रीय ध्वज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	190
495	ध्वज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	190
496	तिरंगा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	190
497	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	191
498	प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	191
499	राष्ट्रीय ध्वज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	191
500	ध्वज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	191
501	तिरंगा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	191
502	झंडे का रंग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	191
503	तीन रंग केसरिआ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	191
504	हरा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	191
505	सफ़ेद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	191
506	अशोक चक्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	191
507	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	192
508	प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	192
509	राष्ट्रीय ध्वज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	192
510	ध्वज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	192
511	तिरंगा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	192
512	झंडे का रंग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	192
513	तीन रंग केसरिआ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	192
514	हरा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	192
515	सफ़ेद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	192
516	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	193
517	प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	193
518	राष्ट्रीय ध्वज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	193
519	ध्वज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	193
520	तिरंगा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	193
521	झंडे का रंग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	193
522	तीन रंग केसरिआ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	193
523	हरा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	193
524	सफ़ेद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	193
525	अशोक चक्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	193
526	राष्ट्रीय गान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	194
527	राष्ट्रीय गीत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	194
528	राष्ट्रीय गान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	195
529	राष्ट्रीय गीत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	195
530	कवि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	195
531	अंतर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	196
532	राष्ट्रीय गान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	196
533	राष्ट्रीय गीत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	196
534	राष्ट्रीय गान व गीत में अंतर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	196
535	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	197
536	राष्ट्रीय चिन्ह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	197
537	अशोक चक्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	197
538	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	198
539	राष्ट्रीय चिन्ह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	198
540	अशोक चक्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	198
541	सारनाथ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	198
542	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	199
543	राष्ट्रीय चिन्ह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	199
544	अशोक चक्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	199
545	सारनाथ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	199
546	राष्ट्रीय चिन्ह में पशु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	199
547	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	200
548	राष्ट्रीय चिन्ह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	200
549	अशोक चक्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	200
550	सारनाथ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	200
551	राष्ट्रीय चिन्ह में पशु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	200
552	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	201
553	राष्ट्रीय चिन्ह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	201
554	अशोक चक्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	201
555	सारनाथ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	201
556	राष्ट्रीय चिन्ह में पशु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	201
557	भारतीय पंचांग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	202
558	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	202
559	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	203
560	पक्षी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	203
561	मोर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	203
562	राष्ट्रीय पक्षी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	203
563	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	204
564	कमल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	204
565	राष्ट्रीय पुष्प	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	204
566	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	205
567	बरगद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	205
568	राष्ट्रीय वृक्ष	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	205
569	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	206
570	राष्ट्रीय नदी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	206
571	गंगा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	206
572	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	207
573	राष्ट्रीय जंतु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	207
574	बाघ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	207
575	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	208
576	राष्ट्रीय फल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	208
577	आम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	208
578	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	209
579	राष्ट्रीय खेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	209
580	हॉकी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	209
581	राष्ट्रीय प्रतीक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	210
582	राष्ट्रीय मुद्रा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	210
583	रुपया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	210
584	राजस्थान के धार्मिक मेले	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	211
585	भर्तृहरि मेला	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	211
586	लक्खी मेला	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	211
587	राजस्थान के धार्मिक मेले	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	212
588	रामदेवरा मेला	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	212
589	राजस्थान के धार्मिक मेले	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	213
590	ख्वाजा का उर्स	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	213
591	राजस्थान के व्यापारिक मेले	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	214
592	हाट मेले	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	214
593	गुफा मानव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	215
594	प्राचीन मानव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	215
595	घुम्मकड़ जीवन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	215
596	कच्चा घर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	216
597	घरो के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	216
598	झोपड़ी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	216
599	शहर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	217
600	इमारतें	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	217
601	कॉलोनियां	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	217
602	आश्रय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	218
603	बेघर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	218
604	रैन -बसेरे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	218
605	स्वच्छ भारत मिशन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	219
606	स्वछता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	219
607	शौचालय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	219
608	स्वछता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	220
609	सफाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	220
610	हमारा गाँव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	220
611	कचरे का प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	221
612	कचरा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	221
613	कूड़ा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	221
614	प्लास्टिक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	221
615	जैव-अपघटन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	221
616	दिशा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	222
617	पूर्व	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	222
618	उगता सूरज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	222
619	सूर्योदय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	222
620	दिशाओं का ज्ञान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	222
621	दिशाएं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	223
622	चार दिशाएं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	223
623	पूर्व दिशा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	223
624		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	223
625	दिशा ज्ञान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	224
626	दिशाएं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	224
627	नक्शा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	225
628	नक़्शे में दिशाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	225
629	दिशा संकेत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	225
630	नक्शा पढ़ना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	226
631	नक्शा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	226
632	नक़्शे में निर्देश	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	226
633	निर्देश	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	226
634	नक़्शे में दूरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	227
635	नक्शा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	227
636	दूरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	227
637	दूरी बताना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	227
638	दो स्थानों मध्य दूरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	227
639	सूती वस्त्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	228
640	ऊनी वस्त्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	229
641	रेशमी वस्त्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	230
642	खादी वस्त्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	231
643	यात्रा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	232
644	तैयारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	232
645	यात्रा की तैयारी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	232
646	जयपुर के दर्शनीय स्थल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	233
647	हवामहल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	233
648	जलमहल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	233
649	जंतर-मंतर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	233
650	आमेर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	233
651		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	233
652	जैसलमेर के दर्शनीय स्थल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	234
653	सोनार किला	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	234
654	मरू -महोत्सव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	234
655	जोधपुर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	235
656	सूर्य-नगरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	235
657		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	235
658	झीलों की नगरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	236
659	हल्दीघाटी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	236
660	उदयपुर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	236
661	रबी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	237
662	खरीफ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	237
663	जायद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	237
664	कृषि क्रियाकलाप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	238
665	उत्पादन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	238
666	औज़ार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	239
667	पारंपरिक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	239
668	जुताई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	239
669	किस्म	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	240
670	हल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	240
671	कल्टीवेटर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	240
672	सीडड्रिल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	240
673	ह्यूमस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	241
674	उर्वरता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	241
675	वर्मी कम्पोस्ट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	241
676	यूरिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	241
677		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	241
678	बीज अंकुरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	242
679	वाष्पोत्सर्जन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	242
680	जल स्रोत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	242
681	खरपतवार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	243
682	प्राकृतिक प्रकोप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	243
683	निराई - गुड़ाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	243
684	थ्रेसिंग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	244
685	कंबाइन मशीन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	244
686	भंडारण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	245
687	भंडारगृह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	245
688	साइलो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	245
689	बाजरा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	246
690	सरसों	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	246
691	जीरा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	246
692	संतरा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	246
693	सौंफ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	246
694	रबी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	247
695	खरीफ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	247
696	जायद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	247
697	खरपतवार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	247
698	रंग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	248
699	चमक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	248
700	कठोरता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	248
701	ध्वानिकता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	248
702	घनत्व	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	248
703	गलनांक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	248
704	चालकता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	248
705	तन्यता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	248
706		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	248
707	भौतिक अवस्था	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	249
708	रंग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	249
709	चमक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	249
710	कठोरता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	249
711	ध्वानिकता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	249
712	घनत्व	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	249
713	गलनांक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	249
714	चालकता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	249
715	भंगुरता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	249
716	वायु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	250
717	ऑक्सीजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	250
718	मैग्नीशियम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	250
719	जल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	250
720	अम्ल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	250
721	हाइड्रोजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	250
722	सल्फर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	250
723	बर्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	251
724	धूप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	251
725	वर्षा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	251
726	रेडियो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	251
727	तार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	251
728	थर्मामीटर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	251
729	लवण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	251
730	गंधक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	252
731	फास्फोरस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	252
732	ग्रेफाइट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	252
733	दियासलाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	252
734	पटाखे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	252
735	इलेक्ट्रोड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	252
736		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	252
737	धातु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	253
738	अधातु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	253
739	अभिक्रिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	253
740	गुण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	253
741	पॉलीथीन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	254
742	पीवीसी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	254
743	पोलिस्टाइरीन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	254
744	बिजली के बटन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	255
745	बर्तनों के हत्थे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	255
746	गाड़ियों की बैटरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	255
747	बेकेलाइट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	255
748	जैव - अनिम्नीकरणीय पदार्थ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	256
749	जैव - निम्नीकरणीय पदार्थ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	256
750	4 आर सिद्धान्त	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	256
751	संश्लेषित रेशे	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	257
752	प्लास्टिक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	257
753	बहुलक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	257
754	ताप सुनम्य प्लास्टिक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	257
755	ताप दृढ़ प्लास्टिक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	257
756	4 आर सिद्धान्त	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	257
757	लोहा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	258
758	ऑक्सीजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	258
759	आयरन ऑक्साइड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	258
760	संयोजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	258
761	योगशील	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	258
762	योगात्मक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	258
763	कैल्शियम कार्बोनेट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	259
764	कैल्शियम ऑक्साइड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	259
765	कार्बन डाइ ऑक्साइड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	259
766	वियोजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	259
767	अपघटन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	259
768	लोहा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	260
769	कॉपर सल्फेट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	260
770	फेरस सल्फेट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	260
771	कॉपर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	260
772	विस्थापन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	260
773	प्रतिस्थापन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	260
774	कॉपर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	261
775	ऑक्सीजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	261
776	मीथेन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	261
777	कार्बन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	261
778	हाइड्रोजन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	261
779	रेडॉक्स	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	261
780	ऑक्सीकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	261
781	अपचयन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	261
782	अम्ल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	262
783	क्षारक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	262
784	लवण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	262
785	उदासीनीकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	262
786	ऊष्मा का अवशोषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	263
787	ऊष्मा का उत्सर्जन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	263
788	ऊष्माशोषी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	263
789	ऊष्माक्षेपी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	263
790	रासायनिक अभिक्रियाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	264
791	जैव विविधता का क्षरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	265
792	वनोन्मूलन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	265
793	जैव विविधता का संरक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	266
794	वन्य जीव अभ्यारण्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	266
795	राष्ट्रीय उद्यान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	266
796	जैव विविधता के ऊष्ण स्थल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	267
797	रेड डाटा पुस्तक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	267
798	कांकरेज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	268
799	मालवी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	268
800	राठी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	268
801	नागौरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	268
802	जैव विविधता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	269
803	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	269
804	जनन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	270
805	कायिक जनन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	270
806	ब्रायोफिलम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	270
807	आलू	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	270
808	मुकुलन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	271
809	यीस्ट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	271
810	ब्रेड में फफूँद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	271
811	शैवाल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	271
812	बीजाणु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	271
813	विखंडन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	271
814	पुष्प के भाग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	272
815	जनन अंग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	272
816	पुंकेसर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	272
817	स्त्रीकेसर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	272
818	एकलिंगी पुष्प	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	272
819	द्विलिंगी पुष्प	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	272
820	सरल फल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	273
821	पुंज फल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	273
822	संग्रहित फल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	273
823	वर्तिका	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	274
824	वर्तिकाग्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	274
825	परागकोष	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	274
826	पराग कण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	274
827	परागकणों का अंकुरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	274
828	स्वपरागण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	274
829	परपरागण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	274
830	द्विगुणित युग्मनज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	275
831	निषेचन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	275
832	विपरीत लक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	276
833	मेंडल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	276
834	मटर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	276
835	आनुवंशिकता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	276
836	पौधों में जनन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	277
837	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	277
838	प्लाज्मा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	278
839	लाल रुधिर कणिकाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	278
840	श्वेत रुधिर कणिकाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	278
841	रुधिर प्लेटलेट्स या थ्रोम्बोसाइट्स और कार्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	278
842	रुधिर वर्ग A	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	279
843		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	279
844	B	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	279
845	AB	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	279
846	O दाता रुधिर वर्ग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	279
847	ग्राही रुधिर वर्ग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	279
848	रक्तदान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	280
849	रक्त बैंक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	280
850	केशिकाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	281
851	नाड़ी स्पंदन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	281
852	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	282
853	संक्रामक रोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	283
854	असंक्रामक रोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	283
855	नारू	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	284
856	एड्स	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	284
857	कुष्ठ रोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	284
858	कैंसर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	284
859	हेपेटाइटिस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	284
860	हीमोफिलिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	284
861	खाद्य विषाक्तता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	284
862	स्वाइन फ्लू	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	284
863	एनीमिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	284
864	डेंगू रोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	284
865		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	284
866	हीमोफ़िलिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	285
867	खाद्य विषाक्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	285
868	स्वाइन फ़्लू	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	285
869	एनिमिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	285
870	डेंगू	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	285
871	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	286
872	कार्य	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	287
873	कार्य का मात्रक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	287
874	विस्थापन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	287
875	बल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	287
876	बल की दिशा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	287
877	जूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	287
878	ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
879	ऊर्जा का मात्रक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
880	क्षमता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
881	वस्तु जिसने कार्य किया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
882	वस्तु जिस पर कार्य किया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
883	जूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	288
884	ऊर्जा का मात्रक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	289
885	जूल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	289
886	यांत्रिक ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	290
887	गतिज ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	290
888	स्थितिज ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	290
889	टरबाइन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	290
890	स्प्रिंग घड़ी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	290
891	गुलेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	290
892	तीर-कमान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	290
893		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	290
894	यांत्रिक ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
895	गतिज ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
896	स्थितिज ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
897	ऊर्जा के विभिन्न रूप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
898	ऊष्मा ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
899	रासायनिक ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
900	प्रकाश ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
901	विधुत ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
902	चुम्बकीय ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
903	ध्वनि ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
904	परमाणु ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
905	नाभिकीय ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
906	परमाणु भट्टी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
907	विधुत पंखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
908	विधुत मोटर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	291
909	यांत्रिक ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
910	गतिज ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
911	स्थितिज ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
912	ऊष्मा ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
913	विधुत ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
914	विधुत पंखा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
915	विधुत मोटर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
916	विधुत घंटी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
917	विधुत हीटर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
918	विधुत बल्ब	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
919	विधुत चुम्बक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
920	बेट्री चार्जर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
921	विधुत रेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	292
922	ऊर्जा के विभिन्न स्त्रोत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	293
923	परंपरागत ऊर्जा स्त्रोत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	294
924	जीवाश्म ईधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	294
925	काष्ठ ईधन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	294
926	पेट्रोल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	294
927	डीजल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	294
928	प्राकृतिक गैस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	294
929	कोयला	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	294
930	गैर परंपरागत ऊर्जा स्त्रोत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	295
931	वैकल्पिक स्त्रोत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	295
932	सौर ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	295
933	जल ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	295
934	पवन ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	295
935	भू-तापीय ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	295
936	जैव ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	295
937	महासागरीय ऊर्जा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	295
938	गोबर गैस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	295
939	ऊर्जा की बचत	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	296
940	ऊर्जा का संरक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	296
941	ऊर्जा का संरक्षण के उपाय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	297
942	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	298
943	ध्वनि की उत्पत्ति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	299
944	कम्पन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	299
945	मानव में वाक ध्वनि का उत्पन्न होना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	300
946	वाक् तंत्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	300
947	वाक् तंतु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	300
948	वायु में ध्वनि का संचरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	301
949	ठोस में ध्वनि का संचरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	302
950	द्रव में ध्वनि का संचरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	303
951	आयाम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	304
952	आवृति	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	304
953	हर्ट्ज	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	304
954	कम्पन काल या आवर्तकाल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	305
955	ध्वनि की प्रबलता	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	306
956	डेसीबल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	306
957	तारत्व	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	307
958	श्रव्य ध्वनि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	308
959	अपश्रव्य ध्वनि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	308
960	पराश्रव्य ध्वनि	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	308
961	इन्फ्रासोनिक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	308
962	अल्ट्रासोनिक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	308
963	मानव कर्ण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	309
964	श्रवण गुहिका	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	309
965	कर्ण पटह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	309
966	श्रवण तंत्रिका	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	309
967	ध्वनि प्रदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	310
968	ध्वनि प्रदूषण को सीमित रखने के उपाय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	310
969	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	311
970	निमज्जन छड़	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	312
971	विद्युत् टोस्टर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	312
972	अतिभारण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	313
973	एम.सी.बी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	313
974	डॉक्टर विद्युत् चुम्बक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	314
975	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	315
976	कृत्रिम उपग्रह प्रक्षेपण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	316
977	भूस्थिर उपग्रह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	317
978	संचार उपग्रह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	317
979	ध्रुवीय उपग्रह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	318
980	कृत्रिम उपग्रह के उपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	319
981	भारत के प्रमुख कृत्रिम उपग्रह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	320
982	भारतीय अंतरिक्ष अनुसंधान संगठन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	321
983	डॉ. विक्रम अंबालाल साराभाई	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	322
984	डॉ. ए	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	323
985	पी.जे. अब्दुल कलाम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	323
986	महत्वपूर्ण बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	324
987	रेडिओ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	325
988	टेलीफोन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	325
989	फैक्स	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	325
990	टेलीविज़न	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	325
991	इलेक्ट्रॉनिक मेल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	325
992	इ - कॉमर्स	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	326
993	टेलीमेडिसिन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	326
994	ब्रॉडबैंड	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	326
995	सोशल मीडिया	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	326
996	इ - मित्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	326
997	महत्वपूर्ण बिंदु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	327
998	कृत्रिम उपग्रह	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	327
999	उपयोग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	327
1000	संगठन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	327
1001	प्रकाश का अपवर्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	328
1002	विरल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	328
1003	सघन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	328
1004	वेग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	328
1005	अपवर्तन क्यों होता है	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	329
1006	विरल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	329
1007	सघन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	329
1008	वेग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	329
1009	अपवर्तन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	330
1010	घटनाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	330
1011	टिमटिमाना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	330
1012	लेंसों के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	331
1013	उत्तल लेंस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	331
1014	अभिसारी लेंस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	331
1015	लेंसों के प्रकार	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	332
1016	अवतल लेंस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	332
1017	अपसारी लेंस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	332
1018	लेंस से सम्बन्धित परिभाषाएँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	333
1019	मुख्य अक्ष	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	333
1020	प्रकाश केन्द्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	333
1021	फोकस बिन्दु	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	333
1022	फोकस दूरी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	333
1023	उत्तल लेंस से प्रतिबिम्ब निर्माण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	334
1024	अवतल लेंस से प्रतिबिम्ब निर्माण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	335
1025	लेंसों के उपयोग व प्रकाशीय उपकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	336
1026	मानव नेत्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	337
1027	प्रकाश का वर्ण विक्षेपण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	338
1028	डॉ. सी. वी. रमन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	339
1029	विरल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	340
1030	सघन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	340
1031	वेग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	340
1032	पारदर्शी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	340
1033	अपारदर्शी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	340
1034	लेंस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	340
1035	तड़ित झंझावात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	341
1036	चक्रवात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	342
1037	सुरक्षा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	342
1038	सावधानियाँ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	342
1039	वायुदाब	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	343
1040	वायु वेग	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	343
1041	जल थल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	343
1042	तड़ित झंझावात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	343
1043	टॉरनेडो	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	343
1044	चक्रवात	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	343
1045	ज्वालामुखी का फटना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	344
1046	खनन कार्यं	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	344
1047	धूम्रपान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	344
1048	कीटनाशक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	344
1049	प्राकृतिक आपदा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	344
1050	गैस रिसाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	344
1051	घातक प्रदूषक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	345
1052	संदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	345
1053	ऐतिहासिक धरोहर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	346
1054	संक्षारण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	346
1055	बंज़र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	346
1056	विनाशकारी प्रभाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	346
1057	विकिरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	347
1058	अवशोषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	347
1059	हिमनद	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	347
1060		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	347
1061	जल प्रदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	348
1062	जल प्रदूषण के कारण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	349
1063	जल प्रदूषण के प्रभाव	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	350
1064	जल प्रदूषण नियंत्रण के उपाय	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	351
1065	जल प्रदूषण पर विशिष्ट अध्ययन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	352
1066	जल शुद्धिकरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	353
1067	ज्वालामुखी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	354
1068	धूम्रपान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	354
1069	कीटनाशक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	354
1070	विकिरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	354
1071		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	354
1072	पर्यावरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	355
1073	पर्यावरण का अर्थ	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	355
1074	सामाजिक पर्यावरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	356
1075	प्राकृतिक पर्यावरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	356
1076	प्राकृतिक पर्यावरण के घटक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	357
1077	अजैविक घटक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	357
1078	जैविक घटक	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	357
1079	मृदा प्रदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	358
1080	ध्वनि प्रदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	358
1081	ताप प्रदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	358
1082	अमृता देवी	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	359
1083	खेजड़ली ग्राम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	359
1084	पिपलांत्री ग्राम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	359
1085	रक्षासूत्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	359
1086	पर्यावरण दिवस	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	360
1087	पर्यावरण मित्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	360
1088	जनचेतना	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	360
1089	पर्यावरण रक्षा के स्तर	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	361
1090	पर्यावरण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	362
1091	प्रदूषण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	362
1092	पर्यावरण संरक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	362
1093	पर्यावरण मित्र	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	362
1094	भारतीय जीवनशैली	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	362
1095	हीरा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	364
1096	ग्रेफाइट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	364
1097	क्रिस्टल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	364
1098	अक्रिस्टल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	364
1099	जैव द्रव्यमान	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	365
1100	कच्चे तेल के कुंए	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	365
1101	कोयले की खानकोयला	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	365
1102	पेट्रोलियम	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	365
1103		2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	365
1104	कार्बन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	366
1105	कोयला	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	366
1106	पेट्रोल	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	366
1107	अपररूप	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	366
1108	हीरा	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	366
1109	ग्रेफाइट	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	366
1110	दहन	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	366
1111	संरक्षण	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	366
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	configuration	book
8	configuration	grade
9	configuration	medium
10	configuration	state
11	configuration	subject
12	hardspot	hardspot
13	hardspot	hardspotcontributors
14	content	content
15	content	contentcontributors
16	dataupload	chapter
17	dataupload	chapterkeyword
18	dataupload	section
19	dataupload	sectionkeyword
20	dataupload	subsection
21	dataupload	subsectionkeyword
22	user	roles
23	user	userdetails
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-03-06 17:10:17.578483+05:30
2	auth	0001_initial	2019-03-06 17:10:18.65385+05:30
3	admin	0001_initial	2019-03-06 17:10:18.920525+05:30
4	admin	0002_logentry_remove_auto_add	2019-03-06 17:10:18.947851+05:30
5	admin	0003_logentry_add_action_flag_choices	2019-03-06 17:10:18.963678+05:30
6	contenttypes	0002_remove_content_type_name	2019-03-06 17:10:19.007467+05:30
7	auth	0002_alter_permission_name_max_length	2019-03-06 17:10:19.04128+05:30
8	auth	0003_alter_user_email_max_length	2019-03-06 17:10:19.08502+05:30
9	auth	0004_alter_user_username_opts	2019-03-06 17:10:19.109234+05:30
10	auth	0005_alter_user_last_login_null	2019-03-06 17:10:19.140642+05:30
11	auth	0006_require_contenttypes_0002	2019-03-06 17:10:19.151529+05:30
12	auth	0007_alter_validators_add_error_messages	2019-03-06 17:10:19.169182+05:30
13	auth	0008_alter_user_username_max_length	2019-03-06 17:10:19.251221+05:30
14	auth	0009_alter_user_last_name_max_length	2019-03-06 17:10:19.273483+05:30
15	configuration	0001_initial	2019-03-06 17:10:19.761935+05:30
16	dataupload	0001_initial	2019-03-06 17:10:20.472649+05:30
17	content	0001_initial	2019-03-06 17:10:21.793291+05:30
18	dataupload	0002_auto_20190306_1138	2019-03-06 17:10:21.903631+05:30
19	hardspot	0001_initial	2019-03-06 17:10:22.504929+05:30
20	sessions	0001_initial	2019-03-06 17:10:22.71344+05:30
21	user	0001_initial	2019-03-06 17:10:23.211579+05:30
22	content	0002_auto_20190308_1054	2019-03-08 16:24:23.036387+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: hardspot_hardspot; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hardspot_hardspot (id, hard_spot, description, points_to_be_covered, useful_to, approved, rating, comment, created_at, updated_at, approved_by_id, chapter_id, hardspot_contributor_id, section_id, sub_section_id) FROM stdin;
7	ड्रम,संदूक जैसी आकृतियों से परिचय	ड्रम,संदूक जैसी आकृतियों से अनभिज्ञता	विभिन्न आकृतिया जो ड्रम, संदूक जैसी हो को चित्रों के माध्यम से दिखाते हुयें समझाया जाएगा तथा कंटेंट के अंत में कुछ प्रश्नों को सम्मिलित किया जाएगा	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	48	219	\N
8	त्रिआयामी वस्तुओ की आकृति समझना	त्रिआयामी वस्तुओ की आकृतियों को समझाने में कठिनाई आने के कारण	त्रिआयामी वस्तुओ को चित्रों द्वारा प्रदर्शित कर समझाया जाएगा तथा कंटेंट के अंत में कुछ प्रश्नों को सम्मिलित किया जाएगा	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	47	219	\N
9	आकृतियों में किनारे पहचानना एवं गिनना	वस्तुओं में किनारे पहचानना एवं गिनना सिखाने में कठिनाई	विभिन्न वस्तुओं को चित्रों के माध्यम से दिखाते हुयें उनके किनारे एवं किनारों को समझाया जाएगा तथा कंटेंट के अंत में कुछ प्रश्नों को सम्मिलित किया जाएगा	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	52	220	\N
10	घुमावदार रेखाऐं और उनसे बनने वाले अंक एवं चित्र	घुमावदार रेखाओं के उपयोग से बनने वाले अंक एवं चित्र सिखाने के लिए आवश्यक हैं	घुमावदार रेखाओं के उपयोग से अंक एवं चित्र बना कर समझाया जाएगा तथा कंटेंट के अंत में कुछ प्रश्नों को सम्मिलित किया जाएगा	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	51	221	\N
11	वस्तुओं को आकार, आकृति एवं रंग के आधार पर वर्गीकृत करना ( अधिगम बिंदु )	वस्तुओं के आकार, आकृति एवं रंग की समझ विकसित करने में कठिनाई के कारण	विभिन्न प्रकार की वस्तुओं को चित्रों द्वारा दिखाते हुए आकार, आकृति एवं रंग मे अंतर व समानता को स्पस्ट किया जाएगा तथा कंटेंट के अंत में कुछ प्रश्नों को सम्मिलित किया जाएगा	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	50	222	\N
12	ऊपर-नीचे, आगे-पीछे, बीच में , कोने में आदि को समझना ( देखिए और बताइयें )	विषय वस्तु की अवस्थिति को समझाने के लिए आवश्कता हैं	एक चित्र में विभिन्न वस्तुओं को ऊपर-नीचे, आगे-पीछे, बीच में , कोने में दिखाते हुए उनकी अवस्थिति को समझाने का प्रयास अनेक चित्रों द्वारा तथा कंटेंट के अंत में कुछ प्रश्नों को सम्मिलित किया जाएगा	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	49	223	\N
13	संख्याएँ	एक से सौ तक की संख्याओं को समझने में कठिनाई	स्लाइड शो के माध्यम से अंको के साथ ध्वनि व् वस्तुओं की मात्राओं को दर्शाते हुए प्रश्नो को सम्मिलित किया जायेगा	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	48	224	\N
14	शून्य की समझ	"कुछ नहीं" व 10, 20 ,30 आदि अंकों को समझने में कठिनाई	चित्रों के माध्यम से एवं क्रियात्मक कार्यों द्वारा शून्य की समझ विकसित की जाएगी और अंत में कुछ प्रश्नों को छात्रों से पुछा जायेगा	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	47	224	\N
15	वस्तुओं को गिनकर बोलना v लिखना	समूह में दी गयी वस्तुओं को गिनने व गिनकर बोलने में कठिनाई	बच्चों के समक्ष तीलियों एवं अन्य वस्तुओं के समूह बना कर अलग अलग कर गिनवाना एवं पुनः उनके समूह बनवाना | अंत में अभ्यास कार्य द्वारा समझ का आकलन करना |	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	52	224	\N
16	जोड़ घटाव के संदर्भ में मौखिक एवं लिखित सवाल (अभ्यास कार्य)	जोड़ने और घटाने में छात्रों को कठिनाई	दैनिक जीवन के उदाहरणों के माध्यम से और स्लाइड पर उपयोगी चित्रों के माध्यम से जोड़ने और घटाने के सवालों को समझाना	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	51	225	\N
17	गुना यानि बार - बार जोड़ना	एक ही अंक को बार - बार जोड़ते हुए गुणा करने में कठिनाई महसूस करना	मैथ टूल का उपयोग करते हुए स्लाइड पर गुणा को बार - बार जोड़ के माध्यम से समझाना एवं प्रश्नों का समावेश किया जाएगा	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	50	226	\N
30	Cube and Cube root (Introduction)	घन एवं घनमूल में अंतर नहीं कर पाना	slide और audio के द्वारा घन एवं घनमूल के सवाल हल कर सकेंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	42	239	\N
18	अभ्यास कार्य	प्रश्नों को हल करने में कठिनाई	डायरेक्ट इंटरेक्शन द्वारा प्रश्नों को हल करके ऑडियो द्वारा समझाया जाएगा	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	49	227	\N
19	इनका प्रयोग करके लिखियें ( मुद्रा सम्बन्धी सवाल )	मुद्रा की अवधारणा को समझनें में कठिनाई	दैनिक जीवन में मुद्रा [ सिक्के व् नोटों के] के बदले में वस्तुओं को खरीदना | चित्रों में एक, दो ,पांच के सिक्कों और दस, बीस, पचास और सौ के नोट दिखा कर सम्बंधित नोट की संख्या को बोलकर बताना	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	48	228	\N
20	असमान अमानक इकाई द्वारा लम्बाई का मापन	मापन की समझ मे कठिनाई	चित्रों व वीडियो के माध्यम से मापन की समझ विकसित करना और प्रश्नों के माध्यम से अभ्यास कार्य करवाना	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	47	229	\N
21	भार व आयतन के सम्बन्ध को समझना ( अधिगम बिंदु )	भार व आयतन के संबंध को समझने में कठिनाई	चित्रों व दैनिक जीवन के उदाहरणों के माध्यम से हल्के व भारी की समझ विकसित की जाएगी और कन्टेन्ट के अंत मे कुछ उपयोगी प्रश्नों को सम्मिलित करेंगे	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	52	230	\N
22	( चित्र के निचे ) दिन,सप्ताह,महीनो में समय का बँटवारा	सप्ताह में दिनों की संख्या, महीने में दिनों की संख्या व साल में महीनों दिनों की संख्या का पता न होना	सप्ताह के दिनों के नाम व महीनों के नामों को स्लाइड पर रंगीन व सुन्दर लिख कर अभ्यास करवाना	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	51	231	\N
23	दैनिक जीवन में धारिता के सन्दर्भ ( अधिगम बिंदु )	धारिता या [धारण करने की क्षमता] को समझने में कठनाई	कन्टेन्ट के माध्यम से बच्चों को धारिता की विषयवस्तु को समझना साथ ही घर पर काम आने वाले बर्तनों जैसे गिलास, कटोरी, कप, मटकी, बाल्टी,जग आदि द्वारा भी "किसमे पानी कम और किसमे पानी ज्यादा" की अवधारणा को स्पष्ट करते हुए धारिता को समझायेंगे	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	50	232	\N
24	नामों में आए अक्षरों को गिनिए एवं लिखियें ( अधिगम बिंदु - आंकड़ों को व्यवस्थित कर सूचना निकाल पाना )	दो या दो से ज्यादा अक्षरों वाले नाम पढ़ने में कठिनाई	बंदनवार के रूप में अक्षरों को जमाकर अक्षरों को बच्चों से गिनवाना और साथ ही संख्या को सामने लिखने का अभ्यास कराना	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	49	233	\N
25	पैटर्न का खेल - बच्चों की कूद	पैटर्न में छूटी हुई/आगे आने वाली संख्याओं को पहचानने या ज्ञात करने में कठिनाई	खेल खेल में चित्रों व स्लाइड्स के द्वारा 2, 5, 10 के गुणज समझायेंगे साथ ही अभ्यास के माध्यम से चित्र पैटर्न के खाली स्थानों को भरने संबंधी कन्टेन्ट निर्माण किया जाएगा	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	48	234	\N
26	मन गणित	सारणी में स्तम्भ और आवर्त के अंकों को जोड़ने में कठिनाई। जोड़ व घटाने सम्बन्धी रिक्त स्थान( डॉट) को भरने में कठिनाई	कन्टेन्ट में सर्वप्रथम जोड़ संक्रिया को समझाते हुए स्तंभ व आवर्त की अवधारणा को स्पष्ट करेंगे तत्पश्चात सारणी में जोड़ना बताकर सम्बंधित रंग भरवाना ।	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	47	235	\N
27	Operations on Rational Numbers (Addition)	परिमेय संख्याओ की संक्रियाएँ करने में कठिनाई महसूस होना	slide और audio के द्वारा बच्चे जान पाएंगे कि परिमेय संख्याओं की संक्रियाएँ किस प्रकार करते हैं I	Both	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	45	\N	27
28	Characteristics of Rational numbers	संवृत गुणधर्म के बारे में जानकारी नहीं होने के कारण कठिनाई महसूस होना	slide, audio और प्रश्नोत्तर के द्वारा परिमेय संख्याओं के संवृत गुणधर्म बच्चे जान पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	44	\N	31
29	Associative Property	साहचर्य गुणधर्म के बारे में जानकारी नहीं होने के कारण कठिनाई महसूस होना	slide, audio और प्रश्नोत्तर के द्वारा परिमेय संख्याओं के साहचर्य गुणधर्म को बच्चे जान पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	43	\N	40
31	Cube root	घनमूल निकालने में कठिनाई महसूस होना	slide और audio के द्वारा घनमूल ज्ञात करने की अभाज्य गुणनखंड विधि को सीख सकेंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	41	241	\N
32	Power and Exponent (Introduction )	घात एवं घातांक में अंतर नहीं कर पाना तथा घातांक को हल करने में कठिनाई महसूस होना	slide और audio के द्वारा बच्चे घात एवं घातांक के बारे में समझ कर इनसे सम्बंधित सवाल हल कर सकेंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	46	242	\N
33	Expanded Form of Numbers	संख्याओ को व्यापक रूप में दाशमिक प्रणाली द्वारा हल करने में कठिनाई महसूस होना	slide और audio के द्वारा बच्चे संख्याओं के व्यापक रूप को समझ कर संख्याओ को दाशमिक प्रणाली में लिखना सीखेंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	45	247	\N
34	Rules of Divisibility ( in Algebraic Reference )	भाजकता के नियमों के अनुप्रयोग में कठिनाई महसूस होना	slide और audio के द्वारा बच्चे भाजकता के नियमों को आसानी से समझकर बीजगणित से सम्बंधित सवाल हल कर सकेंगे	Both	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	44	249	\N
35	Multiplication Operation ( Urdhwtirgbhyaam Formula )	उर्ध्वतिर्यग्भ्याम विधि द्वारा गुणन करने में कठिनाई महसूस होना	video के द्वारा वैदिक गणित में उर्ध्वतिर्यग्भ्याम विधि द्वारा गुणन संक्रिया को आसानी से समझ सकेंगे I	Both	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	43	\N	61
36	Multiplication By Nikhilam Formula ( Sub- Base)	निखिलम सूत्र को समझने में कठिनाई महसूस होना	video के द्वारा वैदिक गणित में निखिलम सूत्र (उपाधार) द्वारा गुणन संक्रिया को आसानी से समझ सकेंगे I	Both	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	42	\N	62
37	Dhwajank Method	ध्वजांक विधि को पूर्णरूप से नहीं समझ पाना	video के द्वारा वैदिक गणित में ध्वजांक विधि द्वारा भागफल संक्रिया को आसानी से समझ सकेंगे I	Both	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	41	256	\N
38	Diagonal of Polygon	बहुभुज में कई विकर्ण होने से विकर्णो को समझने में कठिनाई महसूस होना	slide और audio के द्वारा बहुभुज के विकर्णो के बारे में समझ पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	46	258	\N
39	Different Types of Quadrilateral	चतुर्भुज के गुणों को विस्तृत रूप से समझने में परेशानी होना	Images और audio के द्वारा विभिन्न प्रकार के चतुर्भुजों के गुणों को आसानी से समझ सकेंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	45	262	\N
40	To Construct a quadrilateral when four sides and One Diagonal are given	विकर्ण दिए होने पर चतुर्भुज की रचना करने में कठिनाई महसूस होना	video के द्वारा चतुर्भुज की चारों भुजाएँ एवं एक विकर्ण दिए होने पर चतुर्भुज की रचना करना सीख सकेंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	44	\N	70
41	To Construct a Quadrilateral when three sides and two angles are given	कोण दिए हुए होने की परिस्थिति में तथा तीन ही भुजाएँ दी होने से चतुर्भुज की रचना करने में कठिनाई महसूस होना	video के द्वारा तीन भुजाएं एवं उनके बीच के दो कोण दिए होने पर बच्चे चतुर्भुज की रचना करना सीख पाएंगे	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	43	\N	73
42	Prism	प्रिज्म की आकृति की जटिलता को समझने में कठिनाई महसूस होना	अलग - अलग images और audio के द्वारा प्रिज्म के बारे में आसानी से समझ पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	42	\N	75
43	Euler formula for Polyhedrons	आयलर सूत्र के आधार पर सवाल हल करने में कठिनाई महसूस होना	slide और audio के द्वारा बहुफलको के लिए आयलर सूत्र को समझ कर सवाल हल कर सकेंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	41	268	\N
44	Addition and Subtraction of Algebraic Expression	बीजीय व्यंजको की घातों की विविधता से योग एवं व्यवकलन में कठिनाई महसूस होना	slide और audio के द्वारा बीजीय व्यंजको के योग और व्यवकलन के सवालों को हल कर सकेंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	46	273	\N
45	Identities	सर्वसमिका में विद्यमान चर राशि के भिन्न भिन्न मान रखने पर समिका की जाँच में कठिनाई महसूस होना	slide और audio के द्वारा तीनो सर्वसमिकाओ को सरलतम रूप में एवं प्रश्नोत्तर द्वारा उनके उपयोग को समझ पाएंगे I	Both	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	45	275	\N
46	Method of Common Factors	गुणनखंड की भिन्न भिन्न विधियों की वजह से गुणनखंड करने में कठिनाई महसूस होना	slide और audio के द्वारा गुणनखंड की भिन्न भिन्न विधियों को प्रश्नोत्तर द्वारा भलीभांति समझ पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	44	276	\N
47	Factorization by using Identities	समिकाओ में विद्यमान विभिन्न घातों की वजह से गुणनखंड करने में कठिनाई महसूस होना	slide और audio के द्वारा किसी सर्वसमिका को गुणनखंड करने में किस प्रकार उपयोग में लाना है प्रश्नोत्तर द्वारा समझ पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	43	\N	89
48	Solution of word Problem	प्रश्नों के इबारती होने तथा विभिन्न विधियों एवं पहेलियों की वजह से प्रश्न हल करने में कठिनाई महसूस होना	slide और audio के द्वारा इबारती प्रश्नों को चर राशि के माध्यम से किस प्रकार हल करना प्रश्नोत्तर द्वारा समझ पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	42	281	\N
49	Coordinates	ग्राफ की पूर्ण जानकारी के अभाव एवं चतुर्थांशो में बिन्दुओ के स्थान निर्धारण में कठिनाई महसूस होना	slide और audio के द्वारा ग्राफ पेपर पर X और Y निर्देशांको का स्थान निर्धारण करना प्रश्नोत्तर द्वारा भलीभांति समझ पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	41	282	\N
50	Representation of some real relationship by the graph	लेखाचित्र हेतु ग्राफ पर बिन्दुओ का स्थान निर्धारण में कठिनाई महसूस होना	slide और audio के द्वारा ग्राफ पेपर पर बिन्दुओ का स्थान निर्धारण करना प्रश्नोत्तर द्वारा भलीभांति समझ पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	46	285	\N
51	Percentage	दो या दो से अधिक राशियों की तुलना के दौरान विभिन्न रूप में प्रदर्शित करने में कठिनाई महसूस होना	slide और audio के द्वारा दो या दो से अधिक राशियों की तुलना एवं अनुपातों के बारे में समझ पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	45	287	\N
52	Profit-Loss (Mark up price, Commission, Vat, Discount, Miscellaneous Expenses, Subsidy, Service tax etc.)	कमीशन, वैट, सेवाकर आदि की वजह से लाभ हानि के सवाल हल करने में कठिनाई महसूस होना	slide और audio के द्वारा अंकित मूल्य, कमीशन, वैट आदि की जानकारी द्वारा लाभ हानि से सम्बंधित प्रश्नों को आसानी से हल कर पाएंगे I	Both	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	44	288	\N
53	Compound Interest	चक्रवृद्धि ब्याज के सूत्र की जटिलता की वजह से प्रश्न हल करने में कठिनाई महसूस होना	slide और audio के द्वारा चक्रवृद्धि ब्याज की जटिलता को प्रश्नोत्तर द्वारा आसानी से हल कर सकेंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	43	290	\N
54	Trapezium	समलंब चतुर्भुज में सम्मुख भुजाओं का एक युग्म समानांतर होने से तथा अन्य भुजाए पृथक होने के कारण क्षेत्रफल निकालने में कठिनाई महसूस होना	slide और audio के द्वारा समलम्ब चतुर्भुज की सम्मुख भुजाओं के समान्तर युग्म सम्बंधित जानकारी साझा करने से क्षेत्रफल के सवालों को आसानी से हल कर सकेंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	42	294	\N
55	Area of a Polygon (Field book)	विभिन्न बहुभुजीय आकृतियों के क्षेत्रफल निकालने में कठिनाई महसूस होना	slide और audio के द्वारा बहुभुजो के शीर्षों को मिलाने पर प्राप्त होने वाली त्रिभुजाकार व चतुर्भुजाकार आकृतियों के क्षेत्रफलो के योग द्वारा बहुभुज का क्षेत्रफल आसानी से निकाल पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	41	\N	93
56	Surface Area of Cube and Cuboid	घन एवं घनाभ जैसी आकृतियों की पहचान करने और उनके पृष्ठीय क्षेत्रफल निकालने में कठिनाई महसूस होना	slide और audio के द्वारा घन एवं घनाभ जैसी आकृतियों के फलको की जानकारी साझा कर उनका पृष्ठीय क्षेत्रफल आसानी से निकाल पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	46	299	\N
73	Lotus	TO GIVE KNOWLEDGE ABOUT AQUATIC FLOWERS	Slide presentation should about aquatic flowers found in pond and lakes. The students would have konlledge about aquatic plants characters (big leaves on surface of water). The students should get knolledge about lotusflower its colour, uses in vagetable by its stems, importence in hindu relegious (Devi Saraswati the godess of education and knolledge), national flower status of lotus flower.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	38	\N	134
57	Surface Area of Cylinder	बेलन जैसी आकृतियों की पहचान करने और उनके पृष्ठीय क्षेत्रफल निकालने में कठिनाई महसूस होना	slide और audio के द्वारा टिन के डिब्बे, tubelight, गोल खम्भे आदि की जानकारी साझा कर बेलन के बारे में भलीभांति समझ पाएंगे तथा पृष्ठीय क्षेत्रफल के सवाल आसानी से हल कर पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	45	300	\N
58	Volume of Cylinder	बेलन के वृत्ताकार फलकों एवं लम्बाई की जटिलता की वजह से आयतन निकालने में कठिनाई महसूस होना	slide और audio के द्वारा बेलन के आधार और शीर्षों के सर्वांगसम और समानांतर होने सम्बन्धी जानकारी साझा कर बेलन के आयतन सम्बन्धी सवाल आसानी से हल कर पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	44	\N	97
59	Data handling (Introduction)	विभिन्न प्रकार से संग्रहित आँकड़ो के उपयोग में आने वाली कठिनाई एवं पृथक-पृथक आलेखों द्वारा आँकड़ो के निरूपण में कठिनाई महसूस होना	slide और audio के द्वारा विभिन्न तरीकों से संगृहित आँकड़ो के उपयोग द्वारा चित्रालेख एवं दंडालेख को आँकड़ो के निरूपण द्वारा आसानी से समझ पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	43	302	\N
60	Histogram-Graphical representation of data	आँकड़ो को वर्ग अंतराल के रूप में निरुपित करने तथा आयत चित्र निरूपण में दंड की लम्बाई एवं वर्ग अंतराल की बारंबारता दर्शाने में कठिनाई महसूस होना	slide और audio के द्वारा आँकड़ो को वर्ग अंतराल के रूप में निरुपित करके आयत चित्र बनाना आसानी से सीख पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	42	\N	103
61	pie chart	वृत्त आलेख के निरूपण के दौरान सम्पूर्ण वृत्त को आँकड़ो के हिसाब से कोणों के तहत त्रिज्या खंडो में विभाजित करने में कठिनाई महसूस होना	slide और audio के द्वारा आँकड़ो का वृत्तीय रूप में निरूपण वृत्त को त्रिज्या खंडो में कोणों के तहत विभाजित करने सम्बन्धी जानकारी साझा कर वृत्तालेख आसानी से बना पाएंगे I	Students	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	41	\N	104
62	in maternal house	STUDENTS FIND IT DIFFICULT TO LINK PREVIOUS LEARNINGS TO THE OBJECTIVE OF THIS CHAPTER	content will describe relataions of maternal including images of mother, father and other close relations and video wich show relations with questions	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	35	308	\N
63	Father in law's home	STUDENTS FIND IT DIFFICULT BEACUSE IT IS NOT A COMMON WORD IN OUR SOCIETY	content will describe the relations of father with maternal and it will have interactive questions to check their understanding	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	34	\N	109
64	Types of Families	STUDENTS FIND IT DIFFICULT BEACUASE IT LIVES IN A PARTICULAR FAMILY SO IT DOESN'T KNOW DIFFERENCE OF FAMILY	content will have images of different types of families . content will show the works of members in family and it will have interactive questions to check their understanding	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	40	\N	112
65	will have to change with time	IT IS DIFFICULT TO CO-RELATE THE "CHANGE" WITH PREVIOUS KNOWLEDGE AND IT IS NOT CLEAR WHAT TO CHANGE ACCORDING TO TIME ?	content will highlight the gender equality , girls education and castism with help of images and it will help the students to understand the change according to time.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	39	\N	118
66	How can I know?	STUDENTS FIND IT DIFFICULT TO LINK PREVIOUS LEARNINGS TO THE OBJECTIVE OF THIS CHAPTER	content will describe the works of sensory organs with help of images and and it will have interactive questions to check their understanding	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	38	317	\N
67	do not like to touch	IT IS DIFFICULT TO KNOW ABOUT THE SENSE OF TOUCH	content will educate children to feel difference between good and bad touch and they will aware about it	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	37	\N	124
68	find and write/kho-kho game	STUDENTS DON'T HAVE COMPLETE KNOWLEDGE OF KHO- KHO GAME RULES	content will create interest in students to kho- kho by giving the uderstanding of game .it will have the images and audio of rules of game .	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	36	\N	126
69	find and write/first aid box	ENCOURAGE THE STUDENTS FOR USING FIRST AID BOX	content will have audio and images to show the uses and importance of first aid box.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	35	\N	127
70	Rules of kabaddi	STUDENTS DON'T HAVE COMPLETE KNOWLEDGE OF KABADDI GAME RULES	content will have audio and images to give lively knowledge of rules of kabbadi .	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	34	\N	128
71	sportsmen spirit	BUILD SPORTSMEN SPIRIT IN STUDENTS	content will have audio and images to feel the sportsmen spirit .	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	40	\N	129
72	Rose and sunflower	TO GIVE KNOWLEDGE ABOUT TERRESTRIAL FLOWERS	Slide presentation should about terrestrial flower found in field and gardens. The students should get knolledge about roseflower by which gulkand and perfumes produced and sunflower (its colour, dependency of direction upon sunlight), and sunflower oil produced by its seeds.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	39	328	\N
96	sardar vallabh bhai patel	LEARNER WILL KNOW ABOUT OUR FREEDOM FIGHTERS	content will have image and audio about sardar vallabh bhai patel. it will have questions to check the uderstanding.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	36	\N	188
74	Honey bee is good	TO GIVE LIVELY KNOWLEDGE OF HONEY BEE AND HONEY MAKING PROCESS	Slide presentation should about honey bee and honey making process by honey bee. Students would get knolledge about honey bee (its habitate which are hives on rock and trees), they would also know that honey bee is a social creature and its three form (Rani, drone and workers) live together in one hive and they have their work division. The presentation should show the honey making process (sucking of flower juice, and converted in honey by honey bee and transport into hive shells and making it thick by blowing wind by its wings).	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	37	\N	135
75	Function of root	STUDENTS WILL KNOW ABOUT FUNCTIONS OF ROOTS	content will have images of different types of roots in different plants with respective images.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	36	334	\N
76	Stems of trees and plants	STUDENTS WILL KNOW ABOUT STEMS AND THEIR IMPORTANCE	content will have images and audio about stems . it will give lively experience to students	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	35	\N	138
77	Trees our friends	STUDENTS ARE UNABLE TO UNDERSTAND THE IMPORTANCE OF TREES	there will be audio and text related to trees and will give lively experience to sudents about importance of trees.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	34	336	\N
78	Ear opens secrets	CAN LEARN TYPES OF EAR IN DIFFERENT ANIMALS	Slide presentation would show about different type of ears in different animals and creatures. The student would be able to know about classified the animals upon their ear sige (small and big), apearince (outside or inside) with images.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	40	338	\N
79	Find and write (classification of animals on the basis of ears	Classification of animals upon types of ears in different animals.	Slide presentation would show about different type of ears in different animals and creatures. The student would be able classified the animals upon presence of their ear and hair. The student would be able to understand that few animals have their ear outside and having hairs they are viviparas (animals directly reproduct same animals) whereas some have internal ears and no hairs they are oviparous (agg givinig creature).	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	39	339	\N
80	visit of sanctuary	conservation of wild animals and to give knowledge of inhabitants of animals	content will includes images of various animals and sanctuaries and audio . it will have questions .	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	38	\N	143
81	pain of animals	they can feel love and care for the animals	this content will includes audio , images and text describing pain of animals	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	37	\N	146
82	Water was disappeared	TO KNOW ABOUT VAPORIZATION	Slide Presentaion would be about vaporisation and its process. The vaporisation process happen in open environment for example drying process of wet clothes, vaporisation in open see for making cloude and a boiling water pot. The presentation would show the dependency of vaporisation upon temprature, area of the surface and humidity of environment.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	36	\N	149
83	Water re-appears	TO KNOW ABOUT CONDENSATION	Slide Presentaion would show reapearing of water by condensation process. Student would be able to know about how water appears outside of the bottel and a pot of boiling water covered by flip. Student would also know about how small and tiny drops appears on plants in a crop field. The slide presentation would be able to understand students that water vapor present in environment convert into water drops after exposing low temtprature that is condensation process.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	35	\N	150
84	water from the earth	LEARNER HAVE LIMITED KNOWLEDGE OF WATER RESOURCES	multiple slides with audio containing images and text to describe undergroud water resources.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	34	\N	155
85	filtration of water / namami gange plan	LEARNER WILL KNOW ABOUT FILTRATION OF WATER AND DIFFERENT NATIONAL PLANS OF CLEANING OF RIVERS	multiple slides with images of clean ganga movement (namami gange abhiyan ) .	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	40	\N	157
86	Eating at different occasions	LEARNER WILL KNOW ABOUT DIFFERENT FOODS IN VARIOUS OCCASIONS	content will have images of various types of food eaten in different occasions and also includes audio related to food.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	39	351	\N
87	Good food and bad food/food hygiene	LEANER WILL KNOW ABOUT FOOD HYGIENE	images , audio ,text will be included in slides related to food hygiene	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	38	352	\N
88	Findout and wirte/food according to season	STUDENTS WILL EXPERIENCE ABOUT SEASONABLE FOODS	images , audio ,text will be included in slides related to seasonable foods and their importance in our food.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	37	354	\N
89	Why different types of claws	STUDENTS WILL BE ABLE TO KNOW ABOUT CLAW	images of different claws and text about the works of claws in various birds	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	36	\N	161
90	Why different types of beaks	STUDENTS WILL BE ABLE TO KNOW ABOUT BEAK	images of different beaks and text about the works of beaks in various birds	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	35	\N	162
91	Want to eat chocolate	Students of forth class are unable to correlate their food habits with thier dental health.They find it difficult to percept the term bacteria as well.	Images and audio in the content clearify how specific kind of food can be harmful for dental health.They also get an idea about bacterial attack in an interesting way through images and audio. They understand why proper cleaning of teeth is important for dental health.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	34	\N	163
92	Types of teeth	Students of forth are not able to understand what is the need of diferent types of teeth in our mouth	Images and audio in the content clerify what is the need of different types of teeth in our mouth and how they are different. Content also clerify the correlation between age and teeth.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	40	361	\N
93	journey of crops	STUDENTS WILL KNOW ABOUT PROCESS OF GETTING CROPS FROM FIELD TO HOME	content clerify the journey how the food we eat travel from the fields to shop through images and audio	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	39	365	\N
94	Public Distribution System	STUDENTS WILL KNOW ABOUT PUBLIC DISTRIBUTION SYSTEM	content clerify the concept of fair price shop, how it works and what is the need of this system through images and audio.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	38	369	\N
95	veer sawarkar	LEARNER WILL KNOW ABOUT OUR FREEDOM FIGHTERS	content will have image and audio about veer sawarkar . it will have questions to check the uderstanding.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	37	\N	186
97	Our National Symbols	LEARNER WILL KNOW ABOUT OUR NATIONAL SYMBOLS AND THEIR IMPORTANCE	Content clerify about our national symbols and thier importance through images and audio. It also clerify the concept of National Symbols to students.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	35	376	\N
98	National Song and National Anthem	LEARNER WILL KNOW ABOUT OUR NATIONAL SYMBOLS AND THEIR IMPORTANCE	Content clerify about our national symbols and thier importance through images and audio. It also clerify the concept of National Symbols to students.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	34	\N	194
99	National Song and National Anthem	LEARNER WILL KNOW ABOUT OUR NATIONAL SYMBOLS AND THEIR IMPORTANCE	Content clerify about our national symbols and thier importance through images and audio. It also clerify the concept of National Symbols to students.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	34	\N	202
100	Fairs	LEARNER HAVE LIMITED KNOWLEDGE OF VARIOUS FAIRS	Content clerify the motive and importance of fairs in our society through images and audio.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	39	378	\N
101	Lukkhy Fair	LEARNER HAVE LIMITED KNOWLEDGE OF VARIOUS FAIRS	Slide Presentaion with images and audio related to fairs . including what type of experience one gets in lukkhy fair	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	38	\N	211
102	Trade Fair	LEARNER HAVE LIMITED KNOWLEDGE OF VARIOUS FAIRS	Slide Presentaion with images and audio related to fairs . including different between other fairs.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	37	\N	214
103	Different types of Houses	Its difficult to understand the types of houses and their benefits for forth class students	Different types of houses and materials used in them is described through images and audio.students get an idea why a "HOUSE" IS important to everyone.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	36	382	\N
104	Houses of Animals	It will help students to understand the need of house for everyone,even for the animals	Students get that a HOUSE is important for everyone,for the animals as well either they are natural or man made through images and audio.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	35	383	\N
105	Waste Disposal	Students get it difficult to understand the need of proper disposal of waste	Different types of domestic waste, its proposed proper disposal method and 3 Rs are described in the content through images and conversation based audios.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	34	384	\N
106	Reduce use of plastic	students get it difficult to understand why plastic that is used widely should not be used	Content emphasize how PLASTIC WASTE is hazardous to our own environment and use of plastic must be TABOO by a short story through images and audio. content give the altrenate of plastic also that is ECO FRIENDLY.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	40	\N	221
107	Four Directions	STUDENTS DON'T HAVE CLEAR IDEAS OF DIRECTIONS	Slide Presentaion with images and audio related to directions.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	39	\N	222
108	Directions and signs in maps	STUDENTS DON'T HAVE PROPER KNOWLEDGE ABOUT MAPS AND MAP DIRECTIONS	Slide Presentaion with images and audio related to directions .it will includes measurement and how will student make signs in maps .	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	38	\N	225
109	Silk Clothes	STUDENTS DON'T HAVE PROPER KNOWLEDGE ABOUT SILK CLOTHS	different images of cloths .images of silk cloths and audio about cloths .	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	37	\N	230
110	Different types of dresses	STUDENTS WILL KNOW ATTIRE OF DIFFERENT STATES	this content will includes audio , images and text describing different types of dresses . different types of dresses in different states is going to shown in this content .	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	36	393	\N
111	Means of transport	STUDENTS MAY HAVE DIFFICULTIES TO IDENTIFY OF VARIOUS TRANSPORT MEANS	The presentation will show the different way of travell. The presentation would also able to give knolledge about the different vehicle used for transpotation.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	35	395	\N
112	Jaipur tour	STUDENTS WILL KNOW ABOUT HISTORICAL PLACES OF JAIPUR	The presentation would show the historical background of Jaipur. Student would also know about different places of historical importance and relegious spots also of Jaipur.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	34	\N	233
113	INTRODUCTION OF AGRICULTURE MANAGEMENT-CROPS AND ITS TYPES	TO HELP STUDENTS IN REVISION OF PREVIOUS CHAPTERS AND LEARNINGS OFTHE OBJECTIVES OF THIS CHAPTER	VIDEO SHOWING HOW DIFFERENT TYPES OF CROPS ARE RELATED TO THE WEATHER AND SEASONS IN INDIA (STUDIED IN PREVIOUS CHAPTER - CLIMATE OF INDIA). SHOW CROPS AND ITS TYPES USING IMAGES WITH INTERACTIONS THAT HELP STUDENTS IDENTIFY DIFFERENT TYPES OF CROPS	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	33	\N	237
114	PROVIDING MANURE AND FERTILIZERS	STUDENTS OFTEN GET CONFUSED BETWEEN MANURE AND FERTILIZER	CONTENT MUST DEFINE AND DIFFERENTIATE BETWEEN MANURE AND FERTILIZER USING IMAGES AND REAL LIFE EXAMPLES. THE CONTENT MUST CONTAIN A VIDEO THAT SHOW HOW MANURE AND FERTILIZERS ARE MADE TO FURHTER CLARIFY UPON THE DIFFERENCES. IN ADDITION TO IT, THE CONTENT CAN DEPICT THE ADVANTAGES OF USING BIO- MANURE OVER FERTILIZER IMAGE EXAMPLES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	32	\N	241
115	IRRIGATION	TO HELP IN LEARNING OF IRRIGATION PROCESS FOR STUDENTS & TEACHERS TO UNDERSTAND AND TEACH RESPECTIVELY	DEFINING AND DEMONSTRATING THE FUNCTIONING OF DIFFERENT METHODS OF IRRIGATION THROUGH REAL LIFE VIDEO EXAMPLES WHICH CAN HELP THE STUDENTS TO VISUALIZE THE PROCESS.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	31	\N	242
116	PROTECTION OF CROPS	TO ADD REAL LIFE EXAMPLES HIGHLIGHTING THE NEED FOR CROP PROTECTION	CONTENT MUST HAVE A CASE STUDY OF A FARMER WHEREIN THE FARMER FACES VARIOUS PROBLEMS WITH RESPECT TO PESTS AND HOW VARIOUS METHODS OF CROP PROTECTION CAN HELP HIM OVERCOME THE PROBLEMS. CONDUCTING AN ACTIVITY IN CLASS WHEREIN STUDENTS WILL BE ASKED ABOUT THE BEST METHOD FOR CROP PROTECTION FOR A PARTICULAR TYPE OF PROBLEM /PEST.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	30	\N	243
117	PROFESSOR M.S.SWAMINATHAN	GIVE MORE INFORMATION WHICH IS GIVEN ON THE LIFE HISTORY OF PROFESSOR M.S.SWAMINATHAN	VIDEO SHOWING THE WORKS AND LIFE HISTORY OF PROF. M.S. SWAMINATHAN. THE AWARDS AND RECOGNITION RECEIVED BY HIM FOR WORKS. HOW HIS WORKS BENEFITTED THE PUBLIC AND HOW IT IS BEING USED TODAY	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	29	402	\N
118	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	28	\N	247
119	PHYSICAL PROPERTIES OF METALS AND NON-METALS	TO HELP STUDENTS IN UNDERSTANDING OF PHYSICAL PROPERTIES OF METALS WITH MORE EXAMPLES	SLIDE AND VIDEO SHOWING METALS AND NON METALS IN NATURE, AND PHYSICAL PROPERTIES OF METALS AND NON-METALS	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	27	\N	248
120	CHEMICAL PROPERTIES OF METALS AND NON-METALS	TO HELP STUDENTS IN UNDERSTANDING OF CHEMICAL PROPERTIES OF METALS WITH MORE EXAMPLES	SLIDE AND VIDEO SHOWING CHEMICAL PROPERTIES OF METALS AND NON-METALS ,REACTION WITH AIR,WATER& ACIDS	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	33	\N	249
121	WHAT HAVE YOU LEARNT + USES OF METALS, NON-METALS IN DAILY LIFE + NOBLE METALS + MIX METALS	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	32	\N	253
122	SYNTHETIC FIBRES	TO HELP THE STUDENTS UNDERSTAND AND KNOW MORE ABOUT SYNTHETIC FIBRES AND ITS TYPES OR TRAITS.	CONTENT MUST HIGHLIGHT THE DEFINITION, TYPES AND TRAITS OF SYNTHETIC FIBRES OR POLYMERS.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	31	411	\N
123	CLASSIFICATION OF PLASTICS	TO HELP STUDENT LEARN MORE ABOUT PLASTICS.	CONTENT MUST CLASSIFY AND DIFFERENTIATE BETWEEN THERMO-PLASTIC AND THERMO-SETTING PLASTIC AND ITS PROPERTIES USING IMAGES AND DAILY LIFE EXAMPLES. CONTENT MUST HIGHLIGHT THAT PLASTIC IS VERY HARMFUL FOR OUR ENVIRONMENT AND HOW TO PROTECT OUR ENVIRONMENT-4R PRINCIPLE	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	30	\N	254
124	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	29	\N	257
125	CHEMICAL REACTIONS	TO HELP STUDENT LEARN MORE ABOUT CHEMICAL REACTIONS.	SLIDES MUST HIGHLIGHT WHAT IS CHEMICAL REACTION, DEFINITION OF CHEMICAL REACTION. AND VIDEO / SLIDES SHOWING PROPERTIES OF CHEMICAL REACTIONS BY EXPERIMENTS.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	28	418	\N
126	REDOX REACTIONS	TO HELP STUDENT LEARN MORE ABOUT REDOX REACTION.	VIDEO / SLIDES MUST SHOWING OXIDATION REACTION AND REDUCTION REACTION BY EXPERIMENT. ALSO ABOUT ENDOTHERMIC AND EXOTHERMIC REACTION	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	27	\N	261
127	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER AND PRACTICE THROUGH SOLVING THE QUESTIONS	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	33	\N	264
128	ACTIVITY WORK	TO HELP STUDENT LEARN MORE ABOUT CHEMICAL REACTION.	VIDEO SHOWING EXPERIMENT GIVEN IN ACTIVITY	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	32	\N	264
129	INTRODUCTION OF BIODIVERSITY	TO HELP THE STUDENTS UNDERSTAND AND LEARN ABOUT THE ENDANGERED SPECIES AND THE REASONS FOR IT	VIDEO AND SLIDES SHOWING HABITATES EXTINCT,ENDANGERED AND SPECISAL AREA CREATOURS	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	31	422	\N
130	DEGRADETION OF BIODIVERSITY	HELP STUDENTS DEVELOP THE HABIT OF WILDLIFE PRESERVATION	SLIDES AND VIDEO SHOWING DEGRADETION OF BIODIVERSITY,DEFORESTATION, HUNTING OF ANIMALS AND BIRDS,	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	30	\N	265
131	PROTECTION OF BIODIVERSITY	DEVELOPMENT AND IMPLEMENTATION OF PROTECTION OF BIODIVERSITY	VIDEO SHOEING HOW TO PROTECT BIODIVERSITY,VARIOUS RESERVES, NATIONAL PARKS, PROTECTED FOREST AREAS, ZOOLOGICAL PARKS, BOTANICAL GARDENS AND ALSO ABOUT HOTSPOT OF BIODIVERSITY, ACCOMMODATION OF HIGHLY BIODIVERSITY AND SPECIALTY SPECIES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	29	\N	266
132	YEH BHI JANE	TO HELP STUDENT LEARN MORE ABOUT BIODIVERSITY	VIDEO SHOWING BIODIVERCITY OF COWS IN RAJASTHAN ,KANKREZ COW IMAGE,MALVI COW IMAGE AND FEATURE,RATHI COW IMAGE &FEATURE,NAGAURI COW IMAGE &FEATURE	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	28	\N	268
133	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	27	\N	269
134	REPRODUCTION IN PLANTS & TYPES OF REPRODUCTION	STUDENTS NEEDS TO LEARN HOW REPRODUCTION TAKES PLACE IN PLANTS	CONTENT MUST HIGHLIGHT WHAT IS REPRODUCTION? HOW DOSE IT TAKES PLACE IN VARIOUS ORGANISMS ?IT MUST HAVE VEDIOS SHOWING VARIOUS TYPES OF REPRODUCTION IN DIFFERENT( LOWER AND HIGHER) PLANTS FOR THEIR UNDERSTANDING.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	33	424	\N
135	POLLINATION IN FLOWERING PLANTS BY VARIOUS AGENTS & TYPES OF POLLINATION	GIVE MORE EXAMPLES AND PRACTICES ARE PROVIDED IN TEXT BOOK SO DIFFICULT TO UNDERSTAND & DIFFERENNTIATE SELF AND CROSS POLLINATION BY THE STUDENTS	VIDEO SLIDES MUST HAVE SUFFICIENT SUBJECT MATTER TO EXPLAIN AND VISUALIZE THE PROCESS OF SELF AND CROSS POLLINATION IN PLANTS ALSO SHOWING GERNIMATION OF POLLEN GRAINS ON STIGMA ,ITS GROWTH INSIDE THE STYLE AND HOW MALE GAMETS REACHES TO OVULE AND FERTILIZE THE EGG CELL & FORMATION OF SEEDS AND FRUIT	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	32	\N	274
136	HEREDITY	STUDENTS HAS NO PREVIOUS KNOWLEGDE WHY OFFSPRINGS ARE SIMILAR TO THEIR PARENTS? AND HOW CHARACTERS ARE BEING TRANSFERRED FROM ONE GENERATION TO ANOTHER?	SLIDES CAN VISUALISE THE EXPRESSION OF TRAITS IN PEA PLANT ,MEANING OF HEREDITY,FLOW OF GENETIC CHARACTERS BY MENDAL'S EXPERIMENTS & STATING MENDAL'S LAWS OF HEREDITY.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	31	\N	276
137	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	30	\N	277
138	INTRODUCTION OF BLOOD STRUCTURE	TO HELP THE STUDENTS TO KNOW ABOUT THE PHYSICAL & CHEMICAL COMPOSITION OF BLOOD	VIDEO & SLIDE SHOWING TO EXPLAIN BLOOD STRUCTURERBC,WBC,PLATLETS	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	29	427	\N
139	BLOOD GROUPS	STUDENTS CAN GET HELP TO UNDERSTAND DIFFERTENT BLOOD GROUPS	VIDEO ,AUDIO &SLIDES SHOWING BLOOD GROUPS GRP-A,GPR-B,GRP-AB,GRP-O	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	28	\N	279
140	BLOOD DONATION AND BLOOD BANK	IMPORTANCE OF BLOOD DONATION AND BLOOD BANKS	VIDEO AND SLIDES SHOWING PROCESS OF BLOOD TRANSFUSION IN HUMAN BEINGS AND BLOOD BANK"S INFORMATION & WHY BLOOD DONATION IS IMPORTANT	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	27	\N	280
141	HUMAN HEART AND BLOOD CIRCULATION	STUDENTS KNOW ABOUT HEART INTERNAL STRUCTURE AND UNDERSTEND HOW TO CIRCULATE BLOOD	VIDEO AND SLIDES SHOWING INTERNAL STRUCTURE AND FUNCTIONING OF HUMAN HEART, BLOOD CIRCULATION ,AND WHY OXYGENATED BLOOD DONOT MIX WITH DEOXYGENATED BLOOD	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	33	\N	281
142	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	32	\N	282
143	DISEASES & TYPES OF DISEASES (WITH CAUSE)	STUDENTS ARE RARELY KNOWN WHAT IS HEALTH AND HOW DEASESES CAN BE DEFINED AND CLASSIFIED	CONTENT MUST DEFINE DISEASE AND DIFFERENTIATE BETWEEN INFECTIOUS AND NON-INFECTIOUS DISEASE. USING IMAGES AND REAL LIFE EXAMPLES. THE CONTENT MUST CONTAIN SLIDES THAT SHOWS WHAT IS DISEASE AND TYPES OF DISEASE. CONCERNING IMAGES WITH EXAMPLES.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	31	\N	283
144	SPECIFIC DISEASE	THIS IS AN IMPORTANT DISEASE BUT IT IS DIFFICULT FOR STUDENTS & TEACHERS TO UNDERSTAND AND TEACH RESPECTIVELY	SLIDES SHOWING WHAT IS AIDS, CANCER, SWINE FLU, DENGUE , ITS CAUSES, SYMPTOMS, PREVENTION & TREATMENT	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	30	430	\N
145	VACCINATION	TO HELP THE STUDENTS UNDERSTAND AND LEARN ABOUT VACCINATION	SLIDES SHOWING WITH VIDEO WHAT IS VACCINE AND HOW DOES IT WORK? AND WHICH VACCINE IS APPROPRIATE FOR WHICH AGE	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	29	433	\N
146	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	28	\N	286
147	INTRODUCTION OF WORK	STUDENTS OFTEN DOSEN'T KNOW HOW WORK IS CONSIDERED AND DEFINED IN PHYSICS	VIDEO DESCRIBING WHAT IS WORK , HOW IS WORK DONE WITH DEFINATIONS, FORCE AND DISPLACEMENT OF FORCE, UNITS OF WORK AND VARIOUS DAY TO DAY LIFE EXAMPLES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	27	436	\N
148	INTRODUCTION OF ENERGY	STUDENTS OFTEN GET CONFUSED ON WHAT IS ENERGY, THE LAW OF CONSERVATION OF ENERGY, EXPLAINATION IN A PRACTICAL MANNER WILL HELP STUDENTS UNDERSTANDING THE CONCEPT THOROUGH	VIDEO SHOWING WHAT IS ENERGY , TYPES OF ENERGY AND LAW STATING ABOUT ENERGY WITH VARIOUS DAY TO DAY LIFE EXAMPLES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	33	\N	288
149	FORMS OF ENERGY	STUDENTS ARE UNABLE TO VISUALIZE THE VARIOUS FORMS ENERGY AND THE CONVERSION OF ONE FORM OF ENERGY TO OTHER	VIDEO SHOWING FORMS OF ENERGY , HOW ENERGY IS PRODUCED FROM DIFFERENT FROMS AND UTILIZED WITH DETAILED EXPLANATION WITH VARIOUS DAY TO DAY LIFE EXAMPLES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	32	\N	291
150	ENERGY TRANSFORMATION	STUDENTS ARE UNABLE TO VISUALIZE THE TRANSFORMATION OF ENERGY ONE FORM OF ENERGY TO OTHER	VIDEO SHOWING TRANSFORMATION OF ENERGY AND THE LAW OF CONSERVATION OF ENERGY WHICH STATES ENERGY TRANSFORMES FROM ONE FORM TO OTHER WITH DETAILED EXPLANATION WITH VARIOUS DAY TO DAY LIFE EXAMPLES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	31	\N	292
151	CONVENTIONAL SOURCES OF ENERGY	REAL LIFE EXAMPLES WITH PICTURES GIVE A PERFECT VISUALIZATION	VIDEO SHOWING CONVENTIONAL SOURCES OF ENERGY RELATING TO DAY TO DAY LIFE EXAMPLES TO UNDERSTAND BETTER	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	30	\N	294
152	NON-CONVENTIONAL SOURCES OF ENERGY	REAL LIFE EXAMPLES WITH PICTURES GIVE A PERFECT VISUALIZATION	VIDEO SHOWING NON-CONVENTIONAL SOURCES OF ENERGY RELATING TO DAY TO DAY LIFE EXAMPLES TO UNDERSTAND BETTER	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	29	\N	295
153	CONSERVATION OF ENERGY	TO HELP STUDENTS DEVELOP THE HABIT OF CONSERVATION OF ENERGY	VIDEO SHOWING CONSERVATION OF ENERGY AND ITS IMPORTANCE WILL HELP STUDENTS DEVELOP THE HABIT OF CONSERVATION OF ENERGY	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	28	\N	296
154	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	27	\N	298
155	INTRODUCTION OF SOUND	STUDENTS WILL GET A BETTER INSIGHT ON WHAT IS SOUND AND WHAT PROCUDES SOUND WITH REAL LIFE EXAMPLES	VIDEO SHOWING HOW SOUND IS PRODUCED WITH DAY TO DAY LIFE EXAMPLES TO UNDERSTAND THE CONCEPT IN PRACTICAL LIFE	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	33	445	\N
156	PROPAGATION OF SOUND	STUDENTS WILL GET A BETTER INSIGHT ON HOW SOUND PROPOGATES AND WHAT IS REQUIRED FOR THE PROPOGATION OF SOUND	VIDEO SHOWING PROPAGTION OF SOUND AND SOUND REQUIRES MEDIUM (SOLID, LIQUID AND GAS) TO PROPOGATE WITH DETAILED EXPLANATION WITH VARIOUS DAY TO DAY LIFE EXAMPLES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	32	448	\N
157	AMPLITUDE,FREQUENCY AND TIME PERIOD	STUDENTS ARE UNABLE TO VISUALIZE THE IMPORTANCE OF AMPLITUDE,FREQUENCY AND TIME PERIOD RATHER THAN JUST DEFINATION TO LEARN	VIDEO SHOWING AMPLITUDE,FREQUENCY AND TIME PERIOD THEIR IMPORTANCE AND USE WITH DETAILED EXPLANATION WITH VARIOUS EXAMPLES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	31	\N	304
158	STRENGTH AND PITCH	STUDENTS ARE UNABLE TO VISUALIZE THE IMPORTANCE OF STRENGTH AND PITCH RATHER THAN JUST DEFINATION TO LEARN	VIDEO SHOWING STRENGTH AND PITCH WITH DETAILED EXPLANATION WITH VARIOUS EXAMPLES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	30	\N	306
159	HUMAN EAR	STUDENTS WILL GET A BETTER INSIGHT ON HOW HUMAN EAR FUNCTIONS WITH DETAILED DIGRAMATIC VIEW OF A 3D EAR	VIDEO SHOWING HUMAN EAR WITH DETAILED DIGRAMATIC VIEW OF A 3D EAR AND COMPLETE FUNCTION AND A BIT ABOUT SOUND POLLUTION	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	29	\N	309
160	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	28	\N	311
161	THERMAL EFFECT OF ELECTRIC CURRENT	STUDENTS WILL GET A BETTER VISUALIZATON ON THERMAL EFFECT OF ELECTRIC CURRENT WITH REAL LIFE EXAMPLES	VIDEO/ SLIDE SHOWING HOW THERMAL EFFECT OF ELECTRIC CURRENT IS PASSED WITH VARIOUS EXAMPLES OF DAY TO DAY LIFE	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	27	\N	312
162	FUSE / SHORT CIRCUIT	STUDENTS WILL GET A BETTER VISUALIZATON ON FUSE / SHORT CIRCUIT WITH REAL LIFE EXAMPLES	VIDEO/ SLIDE SHOWING HOW FUSE / SHORT CIRCUIT FALLS, WHAT ARE THE REASONS, DISADVANTAGES AND CAUTIONS SHOULD BE TAKEN IN DAY TO DAY LIFE WITH VARIOUS EXAMPLES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	33	\N	313
163	MAGNETIC EFFECT OF ELECTRIC CURRENT	STUDENTS WILL GET A BETTER VISUALIZATON ON MAGNETIC EFFECT OF ELECTRIC CURRENT WITH REAL LIFE EXAMPLES	VIDEO/ SLIDE SHOWING HOW MAGNETIC EFFECT OF ELECTRIC CURRENT IS PASSED WITH VARIOUS EXAMPLES OF DAY TO DAY LIFE	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	32	457	\N
164	ELECTROMAGNET	STUDENTS WILL GET A BETTER VISUALIZATON ON ELECTROMAGNET AND ELECTRIC BELL WITH REAL LIFE EXAMPLES	VIDEO/ SLIDE SHOWING WORKING OF ELECTRO MAGNET AND ELECTRIC BELL WITH VARIOUS EXAMPLES OF DAY TO DAY LIFE	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	31	\N	314
165	CHEMICAL EFFECTS OF ELECTRIC CURRENT	STUDENTS WILL GET A BETTER VISUALIZATON ON CHEMICAL EFFECT OF ELECTRIC CURRENT WITH REAL LIFE EXAMPLES	VIDEO/ SLIDE SHOWING HOW CHEMICAL EFFECT OF ELECTRIC CURRENT IS PASSED WITH VARIOUS EXAMPLES OF DAY TO DAY LIFE	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	30	461	\N
166	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	29	\N	315
167	ARTIFICIAL SATELLITE	STUDENTS ARE UNABLE TO VISUALIZE WHAT ARE ARTIFICIAL SATELLITE AND ITS LAUNCHING INTO SPACE , TYPES AND ITS USES	VIDEOS AND SLIDES SHOWING WHAT ARE ARTIFICIAL SATELLITE AND ITS LAUNCHING INTO SPACE , ITS TYPES AND WHAT ARE ITS USES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	28	465	\N
168	MAIN ARTIFICIAL SATELLITES OF INDIA	TO HELP IN UNDERSTANDING ABOUT MAIN ARTIFICIAL SATELLITE OF INDIA AND COMPLETE DETAILD INFORMATION ABOUT ARYBHATT, IRS, INSAT, ETC....	SLIDES SHOWING MAIN ARTIFICIAL SATELLITE OF INDIA AND COMPLETE DETAILD INFORMATION ABOUT ARYBHATT, IRS, INSAT, ETC....	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	27	\N	320
169	INDIAN SPACE RESEARCH ORGANIZATION-ISRO	DETAILED EXPLAINATION WILL GIVE STUDENTS A INSIGHT ON OUR SPACE RESEARCH ORGANIZATION TO DEVELOP INTEREST	SLIDES SHOWING CONTRIBUTION OF ISRO IN INDIAN SPACE PROGRAMME	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	33	\N	321
170	DR. VIKRAM AMBALAL SARABHAI	TO HELP IN UNDERSTANDING ABOUT THE LIFE HISTORY OF DR. VIKRAM AMBALAL SARABHAI	VIDEO SHOWING THE WORKS AND LIFE HISTORY OF DR. VIKRAM AMBALAL SARABHAI. THE AWARDS AND RECOGNITION RECEIVED BY HIM FOR WORKS. HOW HIS WORKS BENEFITTED THE PUBLIC AND HOW IT IS BEING USED TODAY	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	32	\N	322
171	DR. A.P.J. ABUDL KALAM	TO HELP IN UNDERSTANDING ABOUT THE LIFE HISTORY OF DR. A.P.J. ABUDL KALAM	VIDEO SHOWING THE WORKS AND LIFE HISTORY OF DR. A.P.J. ABUDL KALAM. THE AWARDS AND RECOGNITION RECEIVED BY HIM FOR WORKS. HOW HIS WORKS BENEFITTED THE PUBLIC AND HOW IT IS BEING USED TODAY	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	31	\N	323
172	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	30	\N	324
173	INTRODUCTION OF INFORMATION TECHNOLOGY	INFORMING STUDENTS ABOUT NEW TECHNOLOGY	SLIDE SHOWING WHAT IS IT AND MODE OF COMMUNICATION,REDIO,TELEVISION,TELEPHONE,FAX	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	29	473	\N
174	ELECTRONIC MAIL OR E-MAIL	SHOWING AND TEACHING STUDENTS ABOUT E-MAIL PRACTICALLY	SLIDE SHOWNIG WHAT IS E-MAIL, E-MAIL ADDRESS, HOW TO CREAT E-MAIL ACCOUNT	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	28	\N	325
175	INTERNET + MAJOR SERVICES BASED ON INTERNET	SHOWING AND TEACHING STUDENTS ABOUT E-MAIL PRACTICALLY	SLIDE SHOWING MAJOR SERVICES,E-COMMERCE,TELEMEDISION,SOCIAL MEDIA,E-MITRA BASED ON INTERNET	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	27	\N	326
176	CYBER SECURITY	SPREADING AWARENESS ABOUT CYBER SECURITY	SLIDE SHOWING WHAT IS OR WHY CYBER SECURITY IS IMPORTANT	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	33	479	\N
177	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	32	\N	327
178	REFRACTION OF LIGHT	TO HELP IN UNDERSTANDING ABOUT VISUALIZE WHAT REFRACTION IS AND OFTEN CONFUSE IT WITH REFLECTION	VIDEO SHOWING REFRACTION OF LIGHT , THE LAW OF REFLECTION AND HOW REFRACTION IS DIFERENT FROM REFLECTION STUDIED IN CLASS 7TH AND ITS EXAMPLES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	31	\N	328
179	LENS	TO HELP IN UNDERSTANDING ABOUT THE TYPE OF LENSES AVAILABLE AND ITS PRACTICAL LIFE USE	SLIDES AND VIDEOS SHOWING TYPES OF LENS THEIR USE AND IMPORTANCE IN DAY TO DAY LIFE	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	30	\N	331
180	IMAGE FORMATION WITH CONVEX LENS	TO HELP IN UNDERSTANDING ABOUT THE IMAGE FORMATION AND OFTEN END UP LEARING THE FORMATION OF IMAGES OF VARIOUS TYPES OF LENSES	VIDEO SHOWING IMAGE FORMATION WITH CONVEX LENS AND LEARNING TECHNIQUES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	29	\N	334
181	USES OF LENS AND LIGHT DEVICES	PRACTICAL EXAMPLES NECESSARY	VIDEO SHOWING USES OF LENS AND LIGHT DEVICES WITH PRACTICAL EXAMPLES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	28	\N	336
182	HUMAN EYE	STUDENTS WILL GET A BETTER INSIGHT ON HOW HUMAN EYE FUNCTIONS WITH DETAILED DIGRAMATIC VIEW OF A 3D EYE WITH RESPECT TO LENSES	VIDEO SHOWING HUMAN EYE WITH DETAILED DIGRAMATIC VIEW OF A 3D EYE AND COMPLETE FUNCTION WITH RESPECT TO LENSES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	27	\N	337
183	DISPERSION OF LIGHT	PRACTICAL MAKES PARFECT	VIDEO SHOWING DISPERSION OF LIGHT , WHAT CAUSES IT AND THE PHENOMINON CAUSED BY THE DESPERSION OF LIGHT	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	33	\N	338
184	DR. C.V. RAMAN	TO HELP IN UNDERSTANDING ABOUT THE LIFE HISTORY OF DR. C.V. RAMAN	VIDEO SHOWING THE WORKS AND LIFE HISTORY OF DR. C.V. RAMAN. THE AWARDS AND RECOGNITION RECEIVED BY HIM FOR WORKS. HOW HIS WORKS BENEFITTED THE PUBLIC AND HOW IT IS BEING USED TODAY	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	32	\N	339
185	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	31	\N	340
186	INTRODUCTION OF NATURAL PHENOMENON "AIR","TO PROVIDE STUDENTS A BETTER INSIGHT OF THE NATURAL PHENOMENON OF AIR EXERTS PRESSURE.	VIDEO MUST SHOWING PHENOMENON OF AIR EXERT PRESSURE, EFFECT OF VELOCITY OF AIR ON AIR PRESSURE, NON UNIFORM HEATING OF LAND AND WATER	1	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	31	490	\N
187	THUNDER STORM, CYCLONE & TORNADO	TO HELP STUDENT LEARN MORE ABOUT THUMDER STORM, CYCLONE & TORNADO.	VIDEO AND SLIDES SHOWING WHAT IS THUNDER STORM, CYCLONE & TORNADO AND SAFETY MEASURES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	29	\N	342
188	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	28	\N	343
189	AIR POLLUTION	STUDENTS WILL GET MORE INFORMATION ABOUT AIR POLLUTION.	VIDEO /SLIDES MUST SHOWING AIR POLLUTION	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	27	\N	344
190	ACID RAIN	TO HELP THE STUDENTS UNDERSTAND AND MORE IFORMATION ABOUT ACID RAIN.	VIDEO SHOWING ACID RAIN	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	33	\N	346
191	GREEN HOUSE EFFECT	TO HELP THE STUDENTS UNDERSTAND AND MORE IFORMATION ABOUT GREEN HOUSE EFFECT.	VIDEO SHOWING GREEN HOUSE EFFECT	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	32	\N	347
192	SPECIFIC STUDY ON WATER POLLUTION	DETAILED EXPLAINATION WILL GIVE STUDENTS A INSIGHT ABOUT WATER POLLUTION TO DEVELOP INTEREST	VIDEO SHOWING SPECIFIC STUDY ON WATER POLLUTION	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	31	\N	352
193	WATER PURIFICATION	TO HELP THE STUDENTS UNDERSTAND AND MORE IFORMATION ABOUT WATER PURIFICATION.	VIDEO SHOWING WATER PURIFICATION	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	30	\N	353
194	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	29	\N	354
195	ENVIRONMENT	TO HELP THE STUDENTS UNDERSTAND AND MORE IFORMATION ABOUT ENVIRONMENT.	SLIDES MUST HIGHLIGHT WHAT IS ENVIRONMENT AND ITS TYPES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	28	\N	355
196	ENVIRONMENT POLLUTION	TO HELP THE STUDENTS UNDERSTAND AND LEARN ABOUT ENVIRONMENT POLLUTION	SLIDES MUST HIGHLIGHT THE DEFINITION OF ENVIRONMENT POLLUTION AND ITS TYPES OR ADVERSE EFFECTS.	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	27	\N	357
197	ENVIRONMENT CONSERVATION	STUDENTS DO NOT HAVE ENOUGH INFORMATION ABOUT THIS	SLIDES MUST HIGHLIGHT THE RELATION WITH OUR LIFE STYLE AND ENVIRONMENT CONSERVATION	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	33	\N	360
198	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	32	\N	362
199	ALLOTROPS OF CARBON	STUDENTS DO NOT HAVE ENOUGH INFORMATION ABOUT THIS	VIDEO SHOWING  THE PROPERTY AND DIFFERENCE BETWEEN DIAMOND AND GRAPHITE	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	31	\N	364
200	PETROLEUM AND ITS REFINING	SHOWING THE STUDENTS THE PROCESS OF REFINING PETROLEUM	VIDEO AND SLIDES SHOWING PETROLEUM REFINING.PETROLEUM GAS, PETROL, NAPHTHA, KEROSENE, DESAL, LUBRICANT, PARAPHIN, ASPHALT	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	30	517	\N
201	ENERGY CONSERVATION	TEACHING STUDENTS AND HELPING THEM IMPLEMENT THE STEPS FOR ENERGY CONSERVATION	VIDEO AND SLIDES SHOWING HOW TO CONSERVE ENERGY	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	29	519	\N
202	WHAT HAVE YOU LEARNT	TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER	CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	28	\N	366
203	ROAD SAFTY	TO HELP THE STUDENTS TO UNDERSTAND ROAD SAFETY RULES	VIDEO SHOWING IMPORTANT ROAD SAFTY RULES WITH DETAILED EXPLANATION WITH VARIOUS DAY TO DAY LIFE EXAMPLES	Teachers	t	4	Testing	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	10	\N	27	521	\N
207	भाषिक व्यंग्यो को समझने मे	इसमे व्यंग्यात्मक शैली का ज्यादा प्रयोग किया गया है	समान अर्थ वाली विषय वस्तु की आवश्यक्ता होगी	Both	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	105	90	\N	\N
208	हिन्दी व्याकरण	नियमों की अधिकता के कारण कठिनाई होती है	सन्धि व समास के विभिन्न उदाहरणों का	Both	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	148	91	\N	\N
209	चरित्र चित्रण को समझने में ,पत्रों की महत्ता को समझने में ,वास्तविक जीवन से सामंजस्य बिठाने में	भाषा एक भाषा होती है भाषाओं में उसके गूढ़ रहस्य को समझना जरूरी है	अलग अलग पात्र बनाकर उनसे संवाद का अभिनय का  विडियो	Students	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	149	91	\N	\N
210	साहित्य के इतिहास की जानकारी आवश्यक है शब्दों का अर्थ समझने के लिए शब्दावली की जानकारी आवश्यक है	साहित्य के इतिहास में तात्कालिक परिस्थितियों का वर्णन किया है जो कवि को समझने के लिए आवश्यक है	हिन्दी साहित्य के इतिहास की जानकारी दी जाए क्योंकि किसी भी साहित्य को पढ़ाने के लिए साहित्य के इतिहास की जानकारी आवश्यक है	Both	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	122	98	\N	\N
211	साहित्य के इतिहास की जानकारी आवश्यक है शब्दों का अर्थ समझने के लिए शब्दावली की जानकारी आवश्यक है	साहित्य के इतिहास में तात्कालिक परिस्थितियों का वर्णन किया है जो कवि को समझने के लिए आवश्यक है	हिन्दी साहित्य के इतिहास की जानकारी दी जाए क्योंकि किसी भी साहित्य को पढ़ाने के लिए साहित्य के इतिहास की जानकारी आवश्यक है	Both	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	122	98	\N	\N
212	साहित्य के इतिहास की जानकारी आवश्यक है शब्दों का अर्थ समझने के लिए शब्दावली की जानकारी आवश्यक है	साहित्य के इतिहास में तात्कालिक परिस्थितियों का वर्णन किया है जो कवि को समझने के लिए आवश्यक है	हिन्दी साहित्य के इतिहास की जानकारी दी जाए क्योंकि किसी भी साहित्य को पढ़ाने के लिए साहित्य के इतिहास की जानकारी आवश्यक है	Both	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	122	98	\N	\N
213	साहित्य के इतिहास की जानकारी आवश्यक है शब्दों का अर्थ समझने के लिए शब्दावली की जानकारी आवश्यक है	साहित्य के इतिहास में तात्कालिक परिस्थितियों का वर्णन किया है जो कवि को समझने के लिए आवश्यक है	हिन्दी साहित्य के इतिहास की जानकारी दी जाए क्योंकि किसी भी साहित्य को पढ़ाने के लिए साहित्य के इतिहास की जानकारी आवश्यक है	Both	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	122	98	\N	\N
214	साहित्य के इतिहास की जानकारी आवश्यक है शब्दों का अर्थ समझने के लिए शब्दावली की जानकारी आवश्यक है	साहित्य के इतिहास में तात्कालिक परिस्थितियों का वर्णन किया है जो कवि को समझने के लिए आवश्यक है	हिन्दी साहित्य के इतिहास की जानकारी दी जाए क्योंकि किसी भी साहित्य को पढ़ाने के लिए साहित्य के इतिहास की जानकारी आवश्यक है	Both	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	122	98	\N	\N
215	साहित्य के इतिहास की जानकारी आवश्यक है शब्दों का अर्थ समझने के लिए शब्दावली की जानकारी आवश्यक है	साहित्य के इतिहास में तात्कालिक परिस्थितियों का वर्णन किया है जो कवि को समझने के लिए आवश्यक है	हिन्दी साहित्य के इतिहास की जानकारी दी जाए क्योंकि किसी भी साहित्य को पढ़ाने के लिए साहित्य के इतिहास की जानकारी आवश्यक है	Both	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	122	98	\N	\N
216	साहित्य के इतिहास की जानकारी आवश्यक है शब्दों का अर्थ समझने के लिए शब्दावली की जानकारी आवश्यक है	साहित्य के इतिहास में तात्कालिक परिस्थितियों का वर्णन किया है जो कवि को समझने के लिए आवश्यक है	हिन्दी साहित्य के इतिहास की जानकारी दी जाए क्योंकि किसी भी साहित्य को पढ़ाने के लिए साहित्य के इतिहास की जानकारी आवश्यक है	Both	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	122	98	\N	\N
217	Ss- notmuch	Ss- notmuch	Ss- notmuch	Both	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	102	92	\N	\N
218	Right speak and pronounces in english	Pronunciation is hard to a student.	Speaking with right pronouncation	Both	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	133	93	\N	\N
219	ghghghhhhg	kjkkkkjjkkj kjnkukuhu kuiku kjjkjiuh	ijlilllllliiil inilj uhuiui	Both	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	94	194	\N
220	jhgh gyg gy uh h h gyghtc   yf  tftrdrddxccxvc fgcdx	gghtg gyg ygyg yg uigy  iuh iuh	yg uhuh	Teachers	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	105	94	\N	\N
221	Steps of Vedic Mathematics	Steps are very complicated	Animated video	Students	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	87	95	\N	\N
222	भ्रष्टाचार	नही है	भ्रष्टाचार को उजागर करने के लिए व इसके दुष्प्रभाव को बताने के लिए  लोक गीतों  जो की वहा की  लोकल  भाषा में  हो की रचना की जाये	Both	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	106	96	\N	\N
223	test	test	test	Both	f	\N	\N	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30	\N	\N	97	144	\N
\.


--
-- Data for Name: hardspot_hardspotcontributors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hardspot_hardspotcontributors (id, first_name, last_name, email, mobile, created_at, updated_at) FROM stdin;
8	Anand kumar	Tiwary	anandtiwary021@gmail.com	8084207920	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
9	Anand	Tiwary	anand@gmail.com	8084207920	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
10	himanshu	suthar	himanshusuthar480322@gimal.com	9166062042	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
11	himanshu	\N	\N	9166062042	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
12	r	f	rakeshkumar.meena.2189@gmail.com	9571367762	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
13	Sanjay kumar	Sharma	sharmasanjay01980@gmail.com	9414861231	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
14	Sanjay kumar	Sharma	sharmasanjay01980@gmail.com	9414861231	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
15	Pawan	Singhal	\N	9929482423	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
16	BABULAL	BUNKAR	gsss.devgudha@gmail.com	9667599010	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
17	Kanhaiyalal	Joshi	\N	9413236341	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
18	Kanhaiya lal	Joshi	\N	9413236341	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
19	Rajesh	Jhajharia	rajeshbotanica@gmail.com	9829139494	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
20	sunita bairwa	bairwa	bairwasunita07@gmail.com	9660736996	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
21	RAKESH	MEENA	rakeshkumar.meena.2189@gmail.com	9571367762	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
22	Rakesh	Songara	\N	7878431924	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
23	hajari rawat	\N	rawathajarilal@gmail.com	8104364121	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
24	jay	hopal	\N	7878168904	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
25	Prajna	Hegde	prajna@ekstep.org	8884678249	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
26	Praveen	Singh	Yuvanrajput0824@gimal.com	9664330180	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
27	रश्मि	गोगर	NULL	9314065176	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
28	सुनील	कुमार	NULL	9828139629	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
29	अशोक	गुप्ता	NULL	9829497751	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
30	नूतन	कुमार	NULL	9829020058	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
31	नरेन्द्र	कुमार	NULL	9785985135	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
32	खगेन्द्र	कुमार	NULL	8949243464	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
33	रविन्द्र	कुमार	NULL	9462168815	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
34	हितेश	कुमार	NULL	9467010380	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
35	अशोक	कुमार	NULL	9784306648	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
36	मोहित	कुमार	NULL	9351589413	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
37	देवदत्त	आर्य	NULL	7597853958	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
38	सुरेश	शर्मा	NULL	9461247647	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
39	रविन्द्र	कुमार	NULL	9413031334	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
40	मेघा	माथुर	NULL	9460367179	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
41	मदन	मोहन	NULL	9462970695	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
42	बिंदु	अग्रवाल	NULL	9461147045	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
43	सुनीता	बत्रा	NULL	9928942232	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
44	इंद्रा	मेघवाल	NULL	8058140403	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
45	मनमोहन	शर्मा	NULL	7023766468	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
46	राजेश	शर्मा	NULL	7424905919	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
47	प्रशांत	कुमार	NULL	9694809649	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
48	निलेश	सिंह	NULL	9782574037	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
49	विक्रम	मीणा	NULL	9610675100	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
50	दीपक	गुप्ता	NULL	9785385390	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
51	धर्म	सिंह	NULL	9413376375	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
52	रामराज	बैरवा	NULL	9461151115	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
53	deepshikha	kashyap	deepshikhakashyap2010@gmail.com	9785712088	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
54	ramkishan	gothwal	rkgothwal1972@gmail.com	9166060320	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
55	anjut	gehlot	gehlotanju1968@gmail.com	9829099296	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
56	karmpal	yadav	billudabad@gmail.com	9928989726	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
57	nidhi	ajay 25ya	mail.pachisia@gmail.com	9461309244	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
58	rajesh	kumar	rajeshtaxak99@gmail.com	9602372889	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
59	raj	pal	rpal78427@gmail.com	9772738366	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
60	anju	gehlot	gehlotanju1968@gmail.com	9829099296	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
61	Vikash	Choudhary	vikashmechu7@gmail.com	9784186622	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
62	A	B	dsfe@gmail.com	1111222211	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
63	A	B	dsfe@gmail.com	9423454321	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
64	Mahesh	\N	\N	9703411789	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
65	a	b	xyz@gmail.com	9090909090	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
66	Harish	M R	harish.mr@mantralabsglobal.com	9743233714	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
67	Nitesh	Kumawat	\N	9351166113	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
68	AMIT KUMAR SONI	\N	amitsoni14nov@gmail.com	9462337135	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
69	Rajasthan	\N	\N	9848012345	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
70	Devendra	Kumawat	\N	7014700293	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
71	sandeep	verma	sandeepgsskp@gmail.com	9462254136	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
72	ARUNB KUMAR	MEENA	arunchanda89@gmail.com	9414765081	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
73	ARUN KUMAR	MEENA	arunchanda89@gmail.com	9414765081	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
74	mukesh	khoda	musekhoda@gmail.com	9785017172	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
75	laxmi narayan	bairwa	laxmikantvermaikv431@gmail.com	8619655092	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
76	trgrfrtgtrg	rgrtfgrfr	\N	9414200155	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
77	Vinod	Yadav	\N	6376292969	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
78	Vinod	Yadav	\N	6376292969	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
79	Vinod	Yadav	\N	6376292969	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
80	Sunil	Jatawat	lnmiit	9024047948	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
81	Sunil	Jatawat	\N	9024047948	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
82	Vala	Ram	valaramchoudhari96@gmail.com	8890879645	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
83	Afeef	\N	\N	7664059604	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
84	Ram	Das	jyotiamardas@gmail.com	8822457429	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
85	Jitu	Das	jitutapandas@gmail.com	7002891363	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
86	rahul	pindyar	rahulpindyar95@gamil com	9024505996	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
87	Sujal	Sahu	sujals342@gmail.com	7737469499	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
88	preeti sharma	\N	preetisawasthi@gmail.com	9001027484	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
89	ramawatar	yadav	yadavram.68@gmail.com	9214536511	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
90	pradeepsingh	rathore	pradeeprathore12371@gmail.com	9413454777	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
91	Shankar Lal	Sad	shankarlalswami320@gmail.vom	9983435942	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
92	ss	ss	\N	8765432100	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
93	Ashok	Prajapat	ashokkumhar141990@gmail.com	9828333328	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30
94	sharma	kumar	\N	9602790699	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30
95	Pranshu	\N	pranshubharia@gmail.com	9610654707	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30
96	UMAR	BAIG	umarbaigbahter@gmail.com	9772176231	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30
97	test	test	dsfdas@fds.com	9867898767	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30
98	Sanjay 	Kumar sharma	sharmasanjay01980@gmail.com	9414861231	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.739167+05:30
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_roles (id, rolename, created_at, updated_at) FROM stdin;
1	admin	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30
2	user	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30
\.


--
-- Data for Name: user_userdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_userdetails (user_id, created_at, updated_at, role_id, state_id) FROM stdin;
1	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	1	1
2	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	2	1
3	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	2	1
4	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	2	1
5	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	2	1
6	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	2	1
7	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	2	1
8	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	2	1
9	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	2	1
10	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	2	1
11	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	1	1
12	2019-02-22 12:50:44.683792+05:30	2019-02-22 12:50:44.683792+05:30	2	1
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 92, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: configuration_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.configuration_book_id_seq', 1, false);


--
-- Name: configuration_grade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.configuration_grade_id_seq', 1, false);


--
-- Name: configuration_medium_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.configuration_medium_id_seq', 1, false);


--
-- Name: configuration_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.configuration_state_id_seq', 1, false);


--
-- Name: configuration_subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.configuration_subject_id_seq', 1, false);


--
-- Name: content_content_chapter_keywords_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_content_chapter_keywords_id_seq', 1, false);


--
-- Name: content_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_content_id_seq', 1, false);


--
-- Name: content_content_section_keywords_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_content_section_keywords_id_seq', 1, false);


--
-- Name: content_content_sub_section_keywords_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_content_sub_section_keywords_id_seq', 1, false);


--
-- Name: content_contentcontributors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_contentcontributors_id_seq', 1, false);


--
-- Name: dataupload_chapter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dataupload_chapter_id_seq', 1, false);


--
-- Name: dataupload_chapterkeyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dataupload_chapterkeyword_id_seq', 1, false);


--
-- Name: dataupload_section_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dataupload_section_id_seq', 1, false);


--
-- Name: dataupload_sectionkeyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dataupload_sectionkeyword_id_seq', 1, false);


--
-- Name: dataupload_subsection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dataupload_subsection_id_seq', 1, false);


--
-- Name: dataupload_subsectionkeyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dataupload_subsectionkeyword_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 23, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- Name: hardspot_hardspot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hardspot_hardspot_id_seq', 1, false);


--
-- Name: hardspot_hardspotcontributors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hardspot_hardspotcontributors_id_seq', 1, true);


--
-- Name: user_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_roles_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: configuration_book configuration_book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration_book
    ADD CONSTRAINT configuration_book_pkey PRIMARY KEY (id);


--
-- Name: configuration_grade configuration_grade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration_grade
    ADD CONSTRAINT configuration_grade_pkey PRIMARY KEY (id);


--
-- Name: configuration_medium configuration_medium_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration_medium
    ADD CONSTRAINT configuration_medium_pkey PRIMARY KEY (id);


--
-- Name: configuration_state configuration_state_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration_state
    ADD CONSTRAINT configuration_state_pkey PRIMARY KEY (id);


--
-- Name: configuration_subject configuration_subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration_subject
    ADD CONSTRAINT configuration_subject_pkey PRIMARY KEY (id);


--
-- Name: content_content_chapter_keywords content_content_chapter__content_id_chapterkeywor_5bf662f2_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content_chapter_keywords
    ADD CONSTRAINT content_content_chapter__content_id_chapterkeywor_5bf662f2_uniq UNIQUE (content_id, chapterkeyword_id);


--
-- Name: content_content_chapter_keywords content_content_chapter_keywords_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content_chapter_keywords
    ADD CONSTRAINT content_content_chapter_keywords_pkey PRIMARY KEY (id);


--
-- Name: content_content content_content_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content
    ADD CONSTRAINT content_content_pkey PRIMARY KEY (id);


--
-- Name: content_content_section_keywords content_content_section__content_id_sectionkeywor_61e23760_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content_section_keywords
    ADD CONSTRAINT content_content_section__content_id_sectionkeywor_61e23760_uniq UNIQUE (content_id, sectionkeyword_id);


--
-- Name: content_content_section_keywords content_content_section_keywords_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content_section_keywords
    ADD CONSTRAINT content_content_section_keywords_pkey PRIMARY KEY (id);


--
-- Name: content_content_sub_section_keywords content_content_sub_sect_content_id_subsectionkey_1484b5ff_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content_sub_section_keywords
    ADD CONSTRAINT content_content_sub_sect_content_id_subsectionkey_1484b5ff_uniq UNIQUE (content_id, subsectionkeyword_id);


--
-- Name: content_content_sub_section_keywords content_content_sub_section_keywords_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content_sub_section_keywords
    ADD CONSTRAINT content_content_sub_section_keywords_pkey PRIMARY KEY (id);


--
-- Name: content_contentcontributors content_contentcontributors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_contentcontributors
    ADD CONSTRAINT content_contentcontributors_pkey PRIMARY KEY (id);


--
-- Name: dataupload_chapter dataupload_chapter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_chapter
    ADD CONSTRAINT dataupload_chapter_pkey PRIMARY KEY (id);


--
-- Name: dataupload_chapterkeyword dataupload_chapterkeyword_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_chapterkeyword
    ADD CONSTRAINT dataupload_chapterkeyword_pkey PRIMARY KEY (id);


--
-- Name: dataupload_section dataupload_section_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_section
    ADD CONSTRAINT dataupload_section_pkey PRIMARY KEY (id);


--
-- Name: dataupload_sectionkeyword dataupload_sectionkeyword_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_sectionkeyword
    ADD CONSTRAINT dataupload_sectionkeyword_pkey PRIMARY KEY (id);


--
-- Name: dataupload_subsection dataupload_subsection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_subsection
    ADD CONSTRAINT dataupload_subsection_pkey PRIMARY KEY (id);


--
-- Name: dataupload_subsectionkeyword dataupload_subsectionkeyword_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_subsectionkeyword
    ADD CONSTRAINT dataupload_subsectionkeyword_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: hardspot_hardspot hardspot_hardspot_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hardspot_hardspot
    ADD CONSTRAINT hardspot_hardspot_pkey PRIMARY KEY (id);


--
-- Name: hardspot_hardspotcontributors hardspot_hardspotcontributors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hardspot_hardspotcontributors
    ADD CONSTRAINT hardspot_hardspotcontributors_pkey PRIMARY KEY (id);


--
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);


--
-- Name: user_userdetails user_userdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_userdetails
    ADD CONSTRAINT user_userdetails_pkey PRIMARY KEY (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: configuration_book_subject_id_c6d6a761; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX configuration_book_subject_id_c6d6a761 ON public.configuration_book USING btree (subject_id);


--
-- Name: configuration_grade_medium_id_3fb04f22; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX configuration_grade_medium_id_3fb04f22 ON public.configuration_grade USING btree (medium_id);


--
-- Name: configuration_medium_state_id_ebb97ac2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX configuration_medium_state_id_ebb97ac2 ON public.configuration_medium USING btree (state_id);


--
-- Name: configuration_subject_grade_id_6bb1b952; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX configuration_subject_grade_id_6bb1b952 ON public.configuration_subject USING btree (grade_id);


--
-- Name: content_content_approved_by_id_a288ec0d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_content_approved_by_id_a288ec0d ON public.content_content USING btree (approved_by_id);


--
-- Name: content_content_chapter_id_8919f40e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_content_chapter_id_8919f40e ON public.content_content USING btree (chapter_id);


--
-- Name: content_content_chapter_keywords_chapterkeyword_id_70bbe313; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_content_chapter_keywords_chapterkeyword_id_70bbe313 ON public.content_content_chapter_keywords USING btree (chapterkeyword_id);


--
-- Name: content_content_chapter_keywords_content_id_712bc27e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_content_chapter_keywords_content_id_712bc27e ON public.content_content_chapter_keywords USING btree (content_id);


--
-- Name: content_content_content_contributors_id_ddf7fb5c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_content_content_contributors_id_ddf7fb5c ON public.content_content USING btree (content_contributors_id);


--
-- Name: content_content_rated_by_id_7f0a1b47; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_content_rated_by_id_7f0a1b47 ON public.content_content USING btree (rated_by_id);


--
-- Name: content_content_section_id_ad3e5308; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_content_section_id_ad3e5308 ON public.content_content USING btree (section_id);


--
-- Name: content_content_section_keywords_content_id_f3c379c4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_content_section_keywords_content_id_f3c379c4 ON public.content_content_section_keywords USING btree (content_id);


--
-- Name: content_content_section_keywords_sectionkeyword_id_df18ffcb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_content_section_keywords_sectionkeyword_id_df18ffcb ON public.content_content_section_keywords USING btree (sectionkeyword_id);


--
-- Name: content_content_sub_sectio_subsectionkeyword_id_9b84b5a9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_content_sub_sectio_subsectionkeyword_id_9b84b5a9 ON public.content_content_sub_section_keywords USING btree (subsectionkeyword_id);


--
-- Name: content_content_sub_section_id_ef1d3991; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_content_sub_section_id_ef1d3991 ON public.content_content USING btree (sub_section_id);


--
-- Name: content_content_sub_section_keywords_content_id_b6cc5e30; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_content_sub_section_keywords_content_id_b6cc5e30 ON public.content_content_sub_section_keywords USING btree (content_id);


--
-- Name: dataupload_chapter_book_id_d23e6232; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dataupload_chapter_book_id_d23e6232 ON public.dataupload_chapter USING btree (book_id);


--
-- Name: dataupload_chapterkeyword_chapter_id_bd6be872; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dataupload_chapterkeyword_chapter_id_bd6be872 ON public.dataupload_chapterkeyword USING btree (chapter_id);


--
-- Name: dataupload_section_chapter_id_245cb0c6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dataupload_section_chapter_id_245cb0c6 ON public.dataupload_section USING btree (chapter_id);


--
-- Name: dataupload_sectionkeyword_section_id_cf111a22; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dataupload_sectionkeyword_section_id_cf111a22 ON public.dataupload_sectionkeyword USING btree (section_id);


--
-- Name: dataupload_subsection_section_id_d6d6a414; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dataupload_subsection_section_id_d6d6a414 ON public.dataupload_subsection USING btree (section_id);


--
-- Name: dataupload_subsectionkeyword_sub_section_id_9d2feedc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dataupload_subsectionkeyword_sub_section_id_9d2feedc ON public.dataupload_subsectionkeyword USING btree (sub_section_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: hardspot_hardspot_approved_by_id_00717670; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX hardspot_hardspot_approved_by_id_00717670 ON public.hardspot_hardspot USING btree (approved_by_id);


--
-- Name: hardspot_hardspot_chapter_id_d18f5198; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX hardspot_hardspot_chapter_id_d18f5198 ON public.hardspot_hardspot USING btree (chapter_id);


--
-- Name: hardspot_hardspot_hardspot_contributor_id_1cd2f5fd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX hardspot_hardspot_hardspot_contributor_id_1cd2f5fd ON public.hardspot_hardspot USING btree (hardspot_contributor_id);


--
-- Name: hardspot_hardspot_section_id_60e16704; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX hardspot_hardspot_section_id_60e16704 ON public.hardspot_hardspot USING btree (section_id);


--
-- Name: hardspot_hardspot_sub_section_id_799edfa9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX hardspot_hardspot_sub_section_id_799edfa9 ON public.hardspot_hardspot USING btree (sub_section_id);


--
-- Name: user_userdetails_role_id_d0a179dc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_userdetails_role_id_d0a179dc ON public.user_userdetails USING btree (role_id);


--
-- Name: user_userdetails_state_id_f8b8fd5c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_userdetails_state_id_f8b8fd5c ON public.user_userdetails USING btree (state_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: configuration_book configuration_book_subject_id_c6d6a761_fk_configura; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration_book
    ADD CONSTRAINT configuration_book_subject_id_c6d6a761_fk_configura FOREIGN KEY (subject_id) REFERENCES public.configuration_subject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: configuration_grade configuration_grade_medium_id_3fb04f22_fk_configura; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration_grade
    ADD CONSTRAINT configuration_grade_medium_id_3fb04f22_fk_configura FOREIGN KEY (medium_id) REFERENCES public.configuration_medium(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: configuration_medium configuration_medium_state_id_ebb97ac2_fk_configura; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration_medium
    ADD CONSTRAINT configuration_medium_state_id_ebb97ac2_fk_configura FOREIGN KEY (state_id) REFERENCES public.configuration_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: configuration_subject configuration_subjec_grade_id_6bb1b952_fk_configura; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration_subject
    ADD CONSTRAINT configuration_subjec_grade_id_6bb1b952_fk_configura FOREIGN KEY (grade_id) REFERENCES public.configuration_grade(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_content content_content_approved_by_id_a288ec0d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content
    ADD CONSTRAINT content_content_approved_by_id_a288ec0d_fk_auth_user_id FOREIGN KEY (approved_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_content_chapter_keywords content_content_chap_chapterkeyword_id_70bbe313_fk_datauploa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content_chapter_keywords
    ADD CONSTRAINT content_content_chap_chapterkeyword_id_70bbe313_fk_datauploa FOREIGN KEY (chapterkeyword_id) REFERENCES public.dataupload_chapterkeyword(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_content_chapter_keywords content_content_chap_content_id_712bc27e_fk_content_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content_chapter_keywords
    ADD CONSTRAINT content_content_chap_content_id_712bc27e_fk_content_c FOREIGN KEY (content_id) REFERENCES public.content_content(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_content content_content_chapter_id_8919f40e_fk_dataupload_chapter_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content
    ADD CONSTRAINT content_content_chapter_id_8919f40e_fk_dataupload_chapter_id FOREIGN KEY (chapter_id) REFERENCES public.dataupload_chapter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_content content_content_content_contributors_ddf7fb5c_fk_content_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content
    ADD CONSTRAINT content_content_content_contributors_ddf7fb5c_fk_content_c FOREIGN KEY (content_contributors_id) REFERENCES public.content_contentcontributors(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_content content_content_rated_by_id_7f0a1b47_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content
    ADD CONSTRAINT content_content_rated_by_id_7f0a1b47_fk_auth_user_id FOREIGN KEY (rated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_content_section_keywords content_content_sect_content_id_f3c379c4_fk_content_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content_section_keywords
    ADD CONSTRAINT content_content_sect_content_id_f3c379c4_fk_content_c FOREIGN KEY (content_id) REFERENCES public.content_content(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_content_section_keywords content_content_sect_sectionkeyword_id_df18ffcb_fk_datauploa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content_section_keywords
    ADD CONSTRAINT content_content_sect_sectionkeyword_id_df18ffcb_fk_datauploa FOREIGN KEY (sectionkeyword_id) REFERENCES public.dataupload_sectionkeyword(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_content content_content_section_id_ad3e5308_fk_dataupload_section_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content
    ADD CONSTRAINT content_content_section_id_ad3e5308_fk_dataupload_section_id FOREIGN KEY (section_id) REFERENCES public.dataupload_section(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_content_sub_section_keywords content_content_sub__content_id_b6cc5e30_fk_content_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content_sub_section_keywords
    ADD CONSTRAINT content_content_sub__content_id_b6cc5e30_fk_content_c FOREIGN KEY (content_id) REFERENCES public.content_content(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_content_sub_section_keywords content_content_sub__subsectionkeyword_id_9b84b5a9_fk_datauploa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content_sub_section_keywords
    ADD CONSTRAINT content_content_sub__subsectionkeyword_id_9b84b5a9_fk_datauploa FOREIGN KEY (subsectionkeyword_id) REFERENCES public.dataupload_subsectionkeyword(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_content content_content_sub_section_id_ef1d3991_fk_datauploa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_content
    ADD CONSTRAINT content_content_sub_section_id_ef1d3991_fk_datauploa FOREIGN KEY (sub_section_id) REFERENCES public.dataupload_subsection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dataupload_chapter dataupload_chapter_book_id_d23e6232_fk_configuration_book_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_chapter
    ADD CONSTRAINT dataupload_chapter_book_id_d23e6232_fk_configuration_book_id FOREIGN KEY (book_id) REFERENCES public.configuration_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dataupload_chapterkeyword dataupload_chapterke_chapter_id_bd6be872_fk_datauploa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_chapterkeyword
    ADD CONSTRAINT dataupload_chapterke_chapter_id_bd6be872_fk_datauploa FOREIGN KEY (chapter_id) REFERENCES public.dataupload_chapter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dataupload_section dataupload_section_chapter_id_245cb0c6_fk_dataupload_chapter_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_section
    ADD CONSTRAINT dataupload_section_chapter_id_245cb0c6_fk_dataupload_chapter_id FOREIGN KEY (chapter_id) REFERENCES public.dataupload_chapter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dataupload_sectionkeyword dataupload_sectionke_section_id_cf111a22_fk_datauploa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_sectionkeyword
    ADD CONSTRAINT dataupload_sectionke_section_id_cf111a22_fk_datauploa FOREIGN KEY (section_id) REFERENCES public.dataupload_section(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dataupload_subsection dataupload_subsectio_section_id_d6d6a414_fk_datauploa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_subsection
    ADD CONSTRAINT dataupload_subsectio_section_id_d6d6a414_fk_datauploa FOREIGN KEY (section_id) REFERENCES public.dataupload_section(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dataupload_subsectionkeyword dataupload_subsectio_sub_section_id_9d2feedc_fk_datauploa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataupload_subsectionkeyword
    ADD CONSTRAINT dataupload_subsectio_sub_section_id_9d2feedc_fk_datauploa FOREIGN KEY (sub_section_id) REFERENCES public.dataupload_subsection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: hardspot_hardspot hardspot_hardspot_approved_by_id_00717670_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hardspot_hardspot
    ADD CONSTRAINT hardspot_hardspot_approved_by_id_00717670_fk_auth_user_id FOREIGN KEY (approved_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: hardspot_hardspot hardspot_hardspot_chapter_id_d18f5198_fk_dataupload_chapter_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hardspot_hardspot
    ADD CONSTRAINT hardspot_hardspot_chapter_id_d18f5198_fk_dataupload_chapter_id FOREIGN KEY (chapter_id) REFERENCES public.dataupload_chapter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: hardspot_hardspot hardspot_hardspot_hardspot_contributor_1cd2f5fd_fk_hardspot_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hardspot_hardspot
    ADD CONSTRAINT hardspot_hardspot_hardspot_contributor_1cd2f5fd_fk_hardspot_ FOREIGN KEY (hardspot_contributor_id) REFERENCES public.hardspot_hardspotcontributors(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: hardspot_hardspot hardspot_hardspot_section_id_60e16704_fk_dataupload_section_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hardspot_hardspot
    ADD CONSTRAINT hardspot_hardspot_section_id_60e16704_fk_dataupload_section_id FOREIGN KEY (section_id) REFERENCES public.dataupload_section(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: hardspot_hardspot hardspot_hardspot_sub_section_id_799edfa9_fk_datauploa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hardspot_hardspot
    ADD CONSTRAINT hardspot_hardspot_sub_section_id_799edfa9_fk_datauploa FOREIGN KEY (sub_section_id) REFERENCES public.dataupload_subsection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_userdetails user_userdetails_role_id_d0a179dc_fk_user_roles_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_userdetails
    ADD CONSTRAINT user_userdetails_role_id_d0a179dc_fk_user_roles_id FOREIGN KEY (role_id) REFERENCES public.user_roles(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_userdetails user_userdetails_state_id_f8b8fd5c_fk_configuration_state_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_userdetails
    ADD CONSTRAINT user_userdetails_state_id_f8b8fd5c_fk_configuration_state_id FOREIGN KEY (state_id) REFERENCES public.configuration_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_userdetails user_userdetails_user_id_ba1db37e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_userdetails
    ADD CONSTRAINT user_userdetails_user_id_ba1db37e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

