--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 11.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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



--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission VALUES (25, 'Can add Book', 7, 'add_book');
INSERT INTO public.auth_permission VALUES (26, 'Can change Book', 7, 'change_book');
INSERT INTO public.auth_permission VALUES (27, 'Can delete Book', 7, 'delete_book');
INSERT INTO public.auth_permission VALUES (28, 'Can view Book', 7, 'view_book');
INSERT INTO public.auth_permission VALUES (29, 'Can add Grade', 8, 'add_grade');
INSERT INTO public.auth_permission VALUES (30, 'Can change Grade', 8, 'change_grade');
INSERT INTO public.auth_permission VALUES (31, 'Can delete Grade', 8, 'delete_grade');
INSERT INTO public.auth_permission VALUES (32, 'Can view Grade', 8, 'view_grade');
INSERT INTO public.auth_permission VALUES (33, 'Can add Medium', 9, 'add_medium');
INSERT INTO public.auth_permission VALUES (34, 'Can change Medium', 9, 'change_medium');
INSERT INTO public.auth_permission VALUES (35, 'Can delete Medium', 9, 'delete_medium');
INSERT INTO public.auth_permission VALUES (36, 'Can view Medium', 9, 'view_medium');
INSERT INTO public.auth_permission VALUES (37, 'Can add State', 10, 'add_state');
INSERT INTO public.auth_permission VALUES (38, 'Can change State', 10, 'change_state');
INSERT INTO public.auth_permission VALUES (39, 'Can delete State', 10, 'delete_state');
INSERT INTO public.auth_permission VALUES (40, 'Can view State', 10, 'view_state');
INSERT INTO public.auth_permission VALUES (41, 'Can add Subject', 11, 'add_subject');
INSERT INTO public.auth_permission VALUES (42, 'Can change Subject', 11, 'change_subject');
INSERT INTO public.auth_permission VALUES (43, 'Can delete Subject', 11, 'delete_subject');
INSERT INTO public.auth_permission VALUES (44, 'Can view Subject', 11, 'view_subject');
INSERT INTO public.auth_permission VALUES (45, 'Can add Hard Spot', 12, 'add_hardspot');
INSERT INTO public.auth_permission VALUES (46, 'Can change Hard Spot', 12, 'change_hardspot');
INSERT INTO public.auth_permission VALUES (47, 'Can delete Hard Spot', 12, 'delete_hardspot');
INSERT INTO public.auth_permission VALUES (48, 'Can view Hard Spot', 12, 'view_hardspot');
INSERT INTO public.auth_permission VALUES (49, 'Can add Hardspot Contributor', 13, 'add_hardspotcontributors');
INSERT INTO public.auth_permission VALUES (50, 'Can change Hardspot Contributor', 13, 'change_hardspotcontributors');
INSERT INTO public.auth_permission VALUES (51, 'Can delete Hardspot Contributor', 13, 'delete_hardspotcontributors');
INSERT INTO public.auth_permission VALUES (52, 'Can view Hardspot Contributor', 13, 'view_hardspotcontributors');
INSERT INTO public.auth_permission VALUES (53, 'Can add content', 14, 'add_content');
INSERT INTO public.auth_permission VALUES (54, 'Can change content', 14, 'change_content');
INSERT INTO public.auth_permission VALUES (55, 'Can delete content', 14, 'delete_content');
INSERT INTO public.auth_permission VALUES (56, 'Can view content', 14, 'view_content');
INSERT INTO public.auth_permission VALUES (57, 'Can add Content Contributor', 15, 'add_contentcontributors');
INSERT INTO public.auth_permission VALUES (58, 'Can change Content Contributor', 15, 'change_contentcontributors');
INSERT INTO public.auth_permission VALUES (59, 'Can delete Content Contributor', 15, 'delete_contentcontributors');
INSERT INTO public.auth_permission VALUES (60, 'Can view Content Contributor', 15, 'view_contentcontributors');
INSERT INTO public.auth_permission VALUES (61, 'Can add Chapter', 16, 'add_chapter');
INSERT INTO public.auth_permission VALUES (62, 'Can change Chapter', 16, 'change_chapter');
INSERT INTO public.auth_permission VALUES (63, 'Can delete Chapter', 16, 'delete_chapter');
INSERT INTO public.auth_permission VALUES (64, 'Can view Chapter', 16, 'view_chapter');
INSERT INTO public.auth_permission VALUES (65, 'Can add Chapter keyword', 17, 'add_chapterkeyword');
INSERT INTO public.auth_permission VALUES (66, 'Can change Chapter keyword', 17, 'change_chapterkeyword');
INSERT INTO public.auth_permission VALUES (67, 'Can delete Chapter keyword', 17, 'delete_chapterkeyword');
INSERT INTO public.auth_permission VALUES (68, 'Can view Chapter keyword', 17, 'view_chapterkeyword');
INSERT INTO public.auth_permission VALUES (69, 'Can add Section', 18, 'add_section');
INSERT INTO public.auth_permission VALUES (70, 'Can change Section', 18, 'change_section');
INSERT INTO public.auth_permission VALUES (71, 'Can delete Section', 18, 'delete_section');
INSERT INTO public.auth_permission VALUES (72, 'Can view Section', 18, 'view_section');
INSERT INTO public.auth_permission VALUES (73, 'Can add Section keyword', 19, 'add_sectionkeyword');
INSERT INTO public.auth_permission VALUES (74, 'Can change Section keyword', 19, 'change_sectionkeyword');
INSERT INTO public.auth_permission VALUES (75, 'Can delete Section keyword', 19, 'delete_sectionkeyword');
INSERT INTO public.auth_permission VALUES (76, 'Can view Section keyword', 19, 'view_sectionkeyword');
INSERT INTO public.auth_permission VALUES (77, 'Can add Sub section', 20, 'add_subsection');
INSERT INTO public.auth_permission VALUES (78, 'Can change Sub section', 20, 'change_subsection');
INSERT INTO public.auth_permission VALUES (79, 'Can delete Sub section', 20, 'delete_subsection');
INSERT INTO public.auth_permission VALUES (80, 'Can view Sub section', 20, 'view_subsection');
INSERT INTO public.auth_permission VALUES (81, 'Can add Sub section keyword', 21, 'add_subsectionkeyword');
INSERT INTO public.auth_permission VALUES (82, 'Can change Sub section keyword', 21, 'change_subsectionkeyword');
INSERT INTO public.auth_permission VALUES (83, 'Can delete Sub section keyword', 21, 'delete_subsectionkeyword');
INSERT INTO public.auth_permission VALUES (84, 'Can view Sub section keyword', 21, 'view_subsectionkeyword');
INSERT INTO public.auth_permission VALUES (85, 'Can add Role', 22, 'add_roles');
INSERT INTO public.auth_permission VALUES (86, 'Can change Role', 22, 'change_roles');
INSERT INTO public.auth_permission VALUES (87, 'Can delete Role', 22, 'delete_roles');
INSERT INTO public.auth_permission VALUES (88, 'Can view Role', 22, 'view_roles');
INSERT INTO public.auth_permission VALUES (89, 'Can add user detail', 23, 'add_userdetails');
INSERT INTO public.auth_permission VALUES (90, 'Can change user detail', 23, 'change_userdetails');
INSERT INTO public.auth_permission VALUES (91, 'Can delete user detail', 23, 'delete_userdetails');
INSERT INTO public.auth_permission VALUES (92, 'Can view user detail', 23, 'view_userdetails');


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_user VALUES (1, 'pbkdf2_sha256$120000$smJBkHS32RPC$ehpA18K5K547fAY0kdFYMUOdx3wSX8Ctc703K/crxNc=', '2019-02-13 11:15:35.759274+05:30', true, 'admin', '', '', '', true, true, '2019-01-08 08:14:01.547658+05:30');
INSERT INTO public.auth_user VALUES (2, 'pbkdf2_sha256$120000$j8fR9SPMUHzY$JOoUdLrdHG2HBthBgm3+OwYFCDboH0n54UzpLbJr9HU=', NULL, false, '8058925975', '', '', '', false, true, '2019-01-09 07:04:19+05:30');
INSERT INTO public.auth_user VALUES (3, 'pbkdf2_sha256$120000$aHLy6KRcY83d$O5uaINMuLPMqYh2MAGsAtfFb1swL0TG4vS7q8OYv+wA=', NULL, false, '9413947875', '', '', '', false, true, '2019-01-09 07:04:49.78253+05:30');
INSERT INTO public.auth_user VALUES (4, 'pbkdf2_sha256$120000$E8lJgiv4QOb7$UwM0L/+KGyClMg6wt2BoONkHNIxKj/j5lyoYqAHYbIo=', NULL, false, '9530196917', '', '', '', false, true, '2019-01-09 07:05:06.165594+05:30');
INSERT INTO public.auth_user VALUES (5, 'pbkdf2_sha256$120000$dEjWGnxoUWmc$nGdcaOTsglVqJkHkE8DVhfTBXKM+P0W+47Z8PGIbJT0=', NULL, false, '9982502969', '', '', '', false, true, '2019-01-09 07:05:22.962521+05:30');
INSERT INTO public.auth_user VALUES (6, 'pbkdf2_sha256$120000$sAF1xFdt8hEy$Jqjf83JfYCohxsG1CVUz/jhZOggrmvLvH/0Lc5k/hzo=', NULL, false, '9829344623', '', '', '', false, true, '2019-01-09 07:05:40.571858+05:30');
INSERT INTO public.auth_user VALUES (7, 'pbkdf2_sha256$120000$Sfv7Fl8aG3lW$8Ky8BR2pp7HZreqT85jWY70wjkgddUae+2r+zGVB8pY=', NULL, false, '9413051277', '', '', '', false, true, '2019-01-09 07:05:55.746943+05:30');
INSERT INTO public.auth_user VALUES (8, 'pbkdf2_sha256$120000$NEwBRf3t1NBF$gxrwOd0OcOUUfIn3oZt/IjAKDpfBJvZRWFsngiM0Qmo=', NULL, false, '9929003135', '', '', '', false, true, '2019-01-09 07:06:12.367355+05:30');
INSERT INTO public.auth_user VALUES (9, 'pbkdf2_sha256$120000$S23jDtUDffhQ$Pzi3O5TkaJnMmlHTk3u01yff7z9LTZK08VjHrrQukOM=', NULL, false, '9703411789', '', '', '', false, true, '2019-01-09 07:06:28.109711+05:30');
INSERT INTO public.auth_user VALUES (10, 'pbkdf2_sha256$120000$2cPFnYnOfPKq$qgSwa5/JEfFVmnIWmLyXzTpy6aATEPFMuv6hPPO81gM=', NULL, false, '9798002064', '', '', '', false, true, '2019-01-09 07:06:50.204287+05:30');
INSERT INTO public.auth_user VALUES (11, 'pbkdf2_sha256$120000$6OtRSs5TfPP4$uyKfjYMb24WZtYfRnWONbmZWXaJ1eEjyxE09StsKFso=', NULL, false, '9790952320', '', '', '', false, true, '2019-01-09 07:07:04.183188+05:30');
INSERT INTO public.auth_user VALUES (12, 'pbkdf2_sha256$120000$Dm8j54ky9SyL$52eFIV0tl4aBQj1gMZWi86mEJo14O4BAGrE5mNpworQ=', NULL, false, '9836214970', '', '', '', false, true, '2019-01-09 07:07:18.343568+05:30');


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: configuration_book; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.configuration_book VALUES (5, 'गणित-4', true, false, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 5);
INSERT INTO public.configuration_book VALUES (6, 'प्रबोधिनी', true, false, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 6);
INSERT INTO public.configuration_book VALUES (7, 'LET''S LEARN ENGLISH', true, false, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 7);
INSERT INTO public.configuration_book VALUES (8, 'हिन्दी कक्षा 8', true, false, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 8);
INSERT INTO public.configuration_book VALUES (9, 'गणित-2', false, true, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 9);
INSERT INTO public.configuration_book VALUES (10, 'गणित-8', false, true, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 10);
INSERT INTO public.configuration_book VALUES (11, 'पर्यावरण अध्ययन-4 (अपना परिवेश )', false, true, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 11);
INSERT INTO public.configuration_book VALUES (12, 'विज्ञान-8', false, true, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 12);


--
-- Data for Name: configuration_grade; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.configuration_grade VALUES (5, 'Class 4', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 2);
INSERT INTO public.configuration_grade VALUES (6, 'Class 9', '2019-02-22 12:49:44.683792+05:30', '2019-02-22 12:49:44.739167+05:30', 2);
INSERT INTO public.configuration_grade VALUES (7, 'Class 3', '2019-02-22 12:48:44.683792+05:30', '2019-02-22 12:48:44.739167+05:30', 2);
INSERT INTO public.configuration_grade VALUES (8, 'Class 8', '2019-02-22 12:47:44.683792+05:30', '2019-02-22 12:47:44.739167+05:30', 2);
INSERT INTO public.configuration_grade VALUES (9, 'Class 2', '2019-02-22 12:46:44.683792+05:30', '2019-02-22 12:46:44.739167+05:30', 2);


--
-- Data for Name: configuration_medium; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.configuration_medium VALUES (2, 'Hindi', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 1);


--
-- Data for Name: configuration_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.configuration_state VALUES (1, 'State (Rajasthan)', NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');


--
-- Data for Name: configuration_subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.configuration_subject VALUES (5, 'Mathematics', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 5);
INSERT INTO public.configuration_subject VALUES (6, 'Hindi', '2019-02-22 12:49:44.683792+05:30', '2019-02-22 12:49:44.739167+05:30', 6);
INSERT INTO public.configuration_subject VALUES (7, 'English', '2019-02-22 12:48:44.683792+05:30', '2019-02-22 12:48:44.739167+05:30', 7);
INSERT INTO public.configuration_subject VALUES (8, 'Hindi', '2019-02-22 12:47:44.683792+05:30', '2019-02-22 12:47:44.739167+05:30', 8);
INSERT INTO public.configuration_subject VALUES (9, 'Mathematics', '2019-02-22 12:46:44.683792+05:30', '2019-02-22 12:46:44.739167+05:30', 9);
INSERT INTO public.configuration_subject VALUES (10, 'Mathematics', '2019-02-22 12:45:44.683792+05:30', '2019-02-22 12:45:44.739167+05:30', 8);
INSERT INTO public.configuration_subject VALUES (11, 'EVS', '2019-02-22 12:44:44.683792+05:30', '2019-02-22 12:44:44.739167+05:30', 5);
INSERT INTO public.configuration_subject VALUES (12, 'Science', '2019-02-22 12:43:44.683792+05:30', '2019-02-22 12:43:44.739167+05:30', 8);


--
-- Data for Name: content_content; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.content_content VALUES (4, 'रक्ताधान_Blood Transfusion', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%B0%E0%A4%95%E0%A4%A4%E0%A4%A7%E0%A4%A8-Blood_Transfusion_155202912983805.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 1, NULL, NULL, 279);
INSERT INTO public.content_content VALUES (5, 'रक्त समूह', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202862341718.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 231, 1, NULL, NULL, NULL);
INSERT INTO public.content_content VALUES (6, 'एल.पी.जी.', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202864249799.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 243, 1, NULL, NULL, NULL);
INSERT INTO public.content_content VALUES (7, 'C. N. G.', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202866235946.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 243, 1, NULL, NULL, NULL);
INSERT INTO public.content_content VALUES (8, 'रासायनिक अभिक्रियाएँ', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/videoplayback_5_1_155202887480476.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 1, NULL, 419, NULL);
INSERT INTO public.content_content VALUES (9, 'वियोजन या अपघटनीय अभिक्रिया', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%B8%E0%A4%AF%E0%A4%9C%E0%A4%A8_%E0%A4%8F%E0%A4%B5_%E0%A4%B5%E0%A4%AF%E0%A4%9C%E0%A4%A8_%E0%A4%85%E0%A4%AD%E0%A4%95%E0%A4%B0%E0%A4%AF%E0%A4%8F_ADDITION_AND_DISSOCIATION_REACTIONS1548434598203_155202914786429.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 1, NULL, NULL, 259);
INSERT INTO public.content_content VALUES (10, 'संयोजन अभिक्रिया', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%B8%E0%A4%AF%E0%A4%9C%E0%A4%A8_%E0%A4%85%E0%A4%AD%E0%A4%95%E0%A4%B0%E0%A4%AF%E0%A4%8F_ADDITION_REACTIONS_155202925743756.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 1, NULL, NULL, 258);
INSERT INTO public.content_content VALUES (11, 'बेलन का आयतन', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Mathematics/10/VID_20190126_1226141_155202930822898.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 1, NULL, NULL, 97);
INSERT INTO public.content_content VALUES (12, 'विस्थापन अभिक्रियाएं', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%B5%E0%A4%B8%E0%A4%A5%E0%A4%AA%E0%A4%A8_%E0%A4%85%E0%A4%AD%E0%A4%95%E0%A4%B0%E0%A4%AF%E0%A4%8F_Displacement_Reaction_155202933359013.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 1, NULL, NULL, 260);
INSERT INTO public.content_content VALUES (13, 'बेलन और शंकु के आयतन में सम्बन्ध', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Mathematics/10/volume_of_cylinder_and_cone_155202935642199.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 1, NULL, NULL, 97);
INSERT INTO public.content_content VALUES (14, 'ऊष्माशोषी एवं ऊष्माक्षेपी अभिक्रियाएं', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%89%E0%A4%B7%E0%A4%AE%E0%A4%95%E0%A4%B7%E0%A4%AA_%E0%A4%8F%E0%A4%B5_%E0%A4%89%E0%A4%B7%E0%A4%AE%E0%A4%B6%E0%A4%B7_%E0%A4%85%E0%A4%AD%E0%A4%95%E0%A4%B0%E0%A4%AF%E0%A4%8F_Exothermic_and_Endothermic_Reactions_155202936858926.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 1, NULL, NULL, 263);
INSERT INTO public.content_content VALUES (15, 'धातु एवं अधातु', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202869228783.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 221, 1, NULL, NULL, NULL);
INSERT INTO public.content_content VALUES (16, 'धातु व अधातु के भौतिक गुणधर्म', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%A7%E0%A4%A4_%E0%A4%8F%E0%A4%B5_%E0%A4%85%E0%A4%A7%E0%A4%A4_Metal_and_Non_metal1_155202890496887.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 1, NULL, 405, NULL);
INSERT INTO public.content_content VALUES (17, 'धातु व अधातु के रासायनिक गुणधर्म', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%A7%E0%A4%A4_%E0%A4%8F%E0%A4%B5_%E0%A4%85%E0%A4%A7%E0%A4%A4_Metal_and_Non_metal2_155202893030982.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 1, NULL, 406, NULL);
INSERT INTO public.content_content VALUES (18, 'पौधों में लैंगिक जनन', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202871152156.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 230, 29, NULL, NULL, NULL);
INSERT INTO public.content_content VALUES (19, 'पौधो मे लैंगिक जनन part 1', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202874060997.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 230, 29, NULL, NULL, NULL);
INSERT INTO public.content_content VALUES (20, 'पौधो मे लैंगिक जनन part 2', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202877579075.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 230, 29, NULL, NULL, NULL);
INSERT INTO public.content_content VALUES (21, 'पौधों में लैंगिक जनन part 2', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/Ghnabh_ka_Kshetrafal_155202880750302.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 230, 29, NULL, NULL, NULL);
INSERT INTO public.content_content VALUES (22, 'राज्य पुष्प  रोहिडा', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/rohida_pusp_155202895484924.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, 333, NULL);
INSERT INTO public.content_content VALUES (23, 'जयपुर भ्रमण', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/Rec_0003_155202939091885.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 26, NULL, NULL, 233);
INSERT INTO public.content_content VALUES (24, 'प्रोफेसर एम.एस. स्वामीनाथन', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/M.S._Swameenathan_155202895870789.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, 402, NULL);
INSERT INTO public.content_content VALUES (25, 'आनुवंशिकता', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%86%E0%A4%A8%E0%A4%B5%E0%A4%B6%E0%A4%95%E0%A4%A4__Heredity_15492059777821549206073035_155202939773553.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 26, NULL, NULL, 276);
INSERT INTO public.content_content VALUES (26, 'अवतल लेंस से प्रतिबिम्ब निर्माण', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/concave_lens_155202944466510.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 26, NULL, NULL, 335);
INSERT INTO public.content_content VALUES (27, 'लेंस से सम्बंधित परिभाषाएँ', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/%E0%A4%B2%E0%A4%B8__Lens__defination_155202946033141.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 333);
INSERT INTO public.content_content VALUES (28, 'जैसलमेर की सैर', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/Rec_0004_155202948478068.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 26, NULL, NULL, 234);
INSERT INTO public.content_content VALUES (29, 'जोधपुर यात्रा', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/Rec_0006_155202948929902.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 26, NULL, NULL, 235);
INSERT INTO public.content_content VALUES (30, 'उदयपुर दर्शन', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/Rec_0008_155202949194784.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 26, NULL, NULL, 236);
INSERT INTO public.content_content VALUES (31, 'राजस्थान के नक्शे में चिन्हिकरण', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/Rec_0005_155202896381925.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 26, NULL, 398, NULL);
INSERT INTO public.content_content VALUES (32, 'सुश्रुत', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/Rec_0009_155202901542312.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 26, NULL, 372, NULL);
INSERT INTO public.content_content VALUES (33, '4 आर सिद्धांत', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/4_R_155202949652572.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 256);
INSERT INTO public.content_content VALUES (34, 'सबसे बड़ा पुष्प - रेफ्लेशिया', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/refleeshiya_155202902124820.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, 426, NULL);
INSERT INTO public.content_content VALUES (35, 'मिश्र धातु', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/alloy_155202902321545.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, 409, NULL);
INSERT INTO public.content_content VALUES (36, 'केवलादेव राष्ट्रीय उद्यान', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/keoladeo_155202950255022.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 266);
INSERT INTO public.content_content VALUES (37, 'वन्य जीव अभ्यारण्य , राष्ट्रीय उद्यान', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/national_parks_155202951671515.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 266);
INSERT INTO public.content_content VALUES (38, 'जैव विविधता के ऊष्ण स्थल', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/hot_spots_155202952273042.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 267);
INSERT INTO public.content_content VALUES (39, 'ऊर्जा के स्रोत', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/energy_sourse_155202954154351.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 293);
INSERT INTO public.content_content VALUES (40, 'ऊर्जा', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/energy_155202954877610.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 288);
INSERT INTO public.content_content VALUES (41, 'यांत्रिक ऊर्जा', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/kepe_155202955454067.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 290);
INSERT INTO public.content_content VALUES (42, 'ऊर्जा का रूपांतरण', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/energy_trans_155202956482654.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 292);
INSERT INTO public.content_content VALUES (43, 'ऊर्जा का संरक्षण', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/energy_conjervation_155202957530252.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 297);
INSERT INTO public.content_content VALUES (44, 'रक्त परिसंचरण', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/blood_circulation_155202904701535.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, 427, NULL);
INSERT INTO public.content_content VALUES (45, 'रक्त', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/blood_155202958114153.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 282);
INSERT INTO public.content_content VALUES (46, 'धमनी और शिराएँ', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/dhamni_sira_155202958766278.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 281);
INSERT INTO public.content_content VALUES (47, 'RBC ,WBC ,PLETLETS', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/rbcwbcpletlets_155202959639431.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 278);
INSERT INTO public.content_content VALUES (48, 'रक्त बैंक', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/blood_bank_155202960427357.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 280);
INSERT INTO public.content_content VALUES (49, 'थर्मोप्लास्टिक', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/thermoplastik_155202961022561.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 254);
INSERT INTO public.content_content VALUES (50, 'थर्मोसेटिंग प्लास्टिक', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/thermoseting_plastik_155202961632709.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 255);
INSERT INTO public.content_content VALUES (51, 'संश्लेषित रेशें एवं इनके प्रकार', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/artificial_fibre_155202905220101.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, 412, NULL);
INSERT INTO public.content_content VALUES (52, 'एकलिंगी एवं द्विलिंगी पुष्प', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/unibi_sexual_flower_155202962188464.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 275);
INSERT INTO public.content_content VALUES (53, 'स्वपरागण एवं परपरागण', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/saw_evm_par_pragan_155202962862404.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 274);
INSERT INTO public.content_content VALUES (54, 'रात्री में तारों का टिमटिमाना', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/star_155202963423062.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 330);
INSERT INTO public.content_content VALUES (55, 'बर्तन के पैंदे में रखे सिक्के का ऊपर उठा हुआ दिखाई देना', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/coin_155202964545949.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 330);
INSERT INTO public.content_content VALUES (56, 'द्रव में आंशिक रूप से डूबी पेंसिल का मुड़ा हुआ दिखाई देना।', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/pencil_155202965641366.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 330);
INSERT INTO public.content_content VALUES (57, 'डेंगू', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/dengu_155202967124691.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 285);
INSERT INTO public.content_content VALUES (58, 'एड्स', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/aids_155202967719987.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 284);
INSERT INTO public.content_content VALUES (59, 'सूर्योदय से पहले एवं सूर्यास्त के बाद सूर्य का दिखाई देना', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/sun_155202968707860.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 330);
INSERT INTO public.content_content VALUES (60, 'हेपेटाइटिस', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/hepetaitis_155202969767068.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 284);
INSERT INTO public.content_content VALUES (61, 'कुष्ठ रोग', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/kust_155202970398650.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 284);
INSERT INTO public.content_content VALUES (62, 'हीमोफीलिया', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/hemofiliya_155202971013311.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 285);
INSERT INTO public.content_content VALUES (63, 'एनिमिया', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/animiya_155202971576420.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 285);
INSERT INTO public.content_content VALUES (64, 'ध्वनि', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/sound_155202972116019.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 299);
INSERT INTO public.content_content VALUES (65, 'मानव में वाक ध्वनि का उत्पन्न होना', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/sound_by_human_155202972691785.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 300);
INSERT INTO public.content_content VALUES (66, 'ध्वनि का संचरण', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/dhwni_ka_sanchran_155202906721770.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, 448, NULL);
INSERT INTO public.content_content VALUES (67, 'नारू', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/naru_155202973266760.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 284);
INSERT INTO public.content_content VALUES (68, 'ध्वनि के प्रकार', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/types_of_sound_155202973819420.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 308);
INSERT INTO public.content_content VALUES (69, 'ध्वनि  प्रदूषण', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/sound_pollution_155202974881745.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 310);
INSERT INTO public.content_content VALUES (70, 'आयाम एवं आवृति', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/aayam_aavrti_155202975482986.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 304);
INSERT INTO public.content_content VALUES (71, 'कम्पन काल या आवर्तकाल', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/aavrtkal_155202976058207.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 305);
INSERT INTO public.content_content VALUES (72, 'ध्वनि की प्रबलता', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/dhwni_ki_prablata_155202976485510.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 306);
INSERT INTO public.content_content VALUES (73, 'तारत्व', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/tartv_155202977190319.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 307);
INSERT INTO public.content_content VALUES (74, 'अपवर्तन का कारण', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/reasion_of_refraction_155202977754639.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 329);
INSERT INTO public.content_content VALUES (75, 'सरदार वल्लभ भाई पटेल', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 4/EVS/11/statue_of_unity_155202907780685.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 26, NULL, 375, NULL);
INSERT INTO public.content_content VALUES (76, 'shapes class 2 maths', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 2/Mathematics/9/Ghnabh_ka_Kshetrafal_155202883964344.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 166, 116, NULL, NULL, NULL);
INSERT INTO public.content_content VALUES (77, 'फसल की परिभाषा [ फसल के प्रकार ]', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/crops_and_its_types_155202978814206.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 237);
INSERT INTO public.content_content VALUES (78, 'पर्यावरण', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/environment_155202980285197.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 355);
INSERT INTO public.content_content VALUES (79, 'खाद एवं उर्वरक {खाद एवं उर्वरक में अंतर , जैविक खाद के लाभ }', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/khad_or_urvarak_155202980887742.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 21, NULL, NULL, 241);
INSERT INTO public.content_content VALUES (80, 'राजस्थान में प्रमुख फल एवं सब्जी उत्पादक क्षेत्र', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/fasal_map15517557664621551755836636_155202982420205.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 26, NULL, NULL, 246);
INSERT INTO public.content_content VALUES (81, 'राजस्थान के विभिन्न जिलों में उगाई जाने वाली प्रमुख फसलें', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Science/12/fasal_map1551756198471_155202909077743.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 26, NULL, 400, NULL);
INSERT INTO public.content_content VALUES (82, 'Chaturbhuj Ki Rachna', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Mathematics/10/Ghnabh_ka_Kshetrafal_155202886442765.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 188, 160, NULL, NULL, NULL);
INSERT INTO public.content_content VALUES (83, 'समान्तर व समलम्ब चतुर्भुज', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Mathematics/10/EIGL50351_155202910839537.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 160, NULL, 294, NULL);
INSERT INTO public.content_content VALUES (84, 'Ghanabh ka Khsetrafal by Mr. Jagdish Prasad', 'https://evolveprodall.blob.core.windows.net/evolve/State (Rajasthan)/Hindi/Class 8/Mathematics/10/Ghnabh_ka_Kshetrafal_155202911923241.mp4', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 150, NULL, 299, NULL);


--
-- Data for Name: content_content_chapter_keywords; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: content_content_section_keywords; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.content_content_section_keywords VALUES (1, 8, 569);
INSERT INTO public.content_content_section_keywords VALUES (2, 8, 570);
INSERT INTO public.content_content_section_keywords VALUES (3, 8, 571);
INSERT INTO public.content_content_section_keywords VALUES (4, 8, 572);
INSERT INTO public.content_content_section_keywords VALUES (5, 22, 449);
INSERT INTO public.content_content_section_keywords VALUES (6, 22, 450);
INSERT INTO public.content_content_section_keywords VALUES (7, 24, 532);
INSERT INTO public.content_content_section_keywords VALUES (8, 24, 533);
INSERT INTO public.content_content_section_keywords VALUES (9, 31, 523);
INSERT INTO public.content_content_section_keywords VALUES (10, 31, 524);
INSERT INTO public.content_content_section_keywords VALUES (11, 31, 525);
INSERT INTO public.content_content_section_keywords VALUES (12, 31, 526);
INSERT INTO public.content_content_section_keywords VALUES (13, 31, 527);
INSERT INTO public.content_content_section_keywords VALUES (16, 35, 543);
INSERT INTO public.content_content_section_keywords VALUES (14, 35, 544);
INSERT INTO public.content_content_section_keywords VALUES (15, 35, 545);
INSERT INTO public.content_content_section_keywords VALUES (17, 44, 575);
INSERT INTO public.content_content_section_keywords VALUES (21, 51, 551);
INSERT INTO public.content_content_section_keywords VALUES (18, 51, 552);
INSERT INTO public.content_content_section_keywords VALUES (19, 51, 553);
INSERT INTO public.content_content_section_keywords VALUES (20, 51, 554);
INSERT INTO public.content_content_section_keywords VALUES (22, 66, 603);
INSERT INTO public.content_content_section_keywords VALUES (23, 66, 604);
INSERT INTO public.content_content_section_keywords VALUES (24, 66, 605);
INSERT INTO public.content_content_section_keywords VALUES (25, 83, 399);
INSERT INTO public.content_content_section_keywords VALUES (26, 83, 400);
INSERT INTO public.content_content_section_keywords VALUES (27, 84, 407);


--
-- Data for Name: content_content_sub_section_keywords; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.content_content_sub_section_keywords VALUES (2, 4, 846);
INSERT INTO public.content_content_sub_section_keywords VALUES (3, 4, 847);
INSERT INTO public.content_content_sub_section_keywords VALUES (4, 9, 766);
INSERT INTO public.content_content_sub_section_keywords VALUES (5, 9, 767);
INSERT INTO public.content_content_sub_section_keywords VALUES (6, 10, 760);
INSERT INTO public.content_content_sub_section_keywords VALUES (7, 10, 761);
INSERT INTO public.content_content_sub_section_keywords VALUES (8, 10, 762);
INSERT INTO public.content_content_sub_section_keywords VALUES (9, 11, 219);
INSERT INTO public.content_content_sub_section_keywords VALUES (10, 11, 220);
INSERT INTO public.content_content_sub_section_keywords VALUES (11, 11, 221);
INSERT INTO public.content_content_sub_section_keywords VALUES (12, 12, 772);
INSERT INTO public.content_content_sub_section_keywords VALUES (13, 12, 773);
INSERT INTO public.content_content_sub_section_keywords VALUES (14, 13, 219);
INSERT INTO public.content_content_sub_section_keywords VALUES (15, 13, 220);
INSERT INTO public.content_content_sub_section_keywords VALUES (16, 14, 786);
INSERT INTO public.content_content_sub_section_keywords VALUES (17, 14, 787);
INSERT INTO public.content_content_sub_section_keywords VALUES (18, 14, 788);
INSERT INTO public.content_content_sub_section_keywords VALUES (19, 14, 789);
INSERT INTO public.content_content_sub_section_keywords VALUES (20, 23, 646);
INSERT INTO public.content_content_sub_section_keywords VALUES (21, 23, 647);
INSERT INTO public.content_content_sub_section_keywords VALUES (22, 23, 648);
INSERT INTO public.content_content_sub_section_keywords VALUES (23, 23, 649);
INSERT INTO public.content_content_sub_section_keywords VALUES (24, 23, 650);
INSERT INTO public.content_content_sub_section_keywords VALUES (25, 23, 651);
INSERT INTO public.content_content_sub_section_keywords VALUES (26, 25, 833);
INSERT INTO public.content_content_sub_section_keywords VALUES (27, 25, 835);
INSERT INTO public.content_content_sub_section_keywords VALUES (28, 26, 1024);
INSERT INTO public.content_content_sub_section_keywords VALUES (29, 27, 1018);
INSERT INTO public.content_content_sub_section_keywords VALUES (30, 27, 1019);
INSERT INTO public.content_content_sub_section_keywords VALUES (31, 27, 1020);
INSERT INTO public.content_content_sub_section_keywords VALUES (32, 27, 1021);
INSERT INTO public.content_content_sub_section_keywords VALUES (33, 27, 1022);
INSERT INTO public.content_content_sub_section_keywords VALUES (34, 28, 652);
INSERT INTO public.content_content_sub_section_keywords VALUES (35, 28, 653);
INSERT INTO public.content_content_sub_section_keywords VALUES (36, 28, 654);
INSERT INTO public.content_content_sub_section_keywords VALUES (38, 29, 655);
INSERT INTO public.content_content_sub_section_keywords VALUES (37, 29, 656);
INSERT INTO public.content_content_sub_section_keywords VALUES (39, 30, 658);
INSERT INTO public.content_content_sub_section_keywords VALUES (40, 30, 659);
INSERT INTO public.content_content_sub_section_keywords VALUES (41, 30, 660);
INSERT INTO public.content_content_sub_section_keywords VALUES (42, 33, 750);
INSERT INTO public.content_content_sub_section_keywords VALUES (43, 36, 795);
INSERT INTO public.content_content_sub_section_keywords VALUES (44, 37, 793);
INSERT INTO public.content_content_sub_section_keywords VALUES (45, 37, 794);
INSERT INTO public.content_content_sub_section_keywords VALUES (46, 37, 795);
INSERT INTO public.content_content_sub_section_keywords VALUES (47, 38, 796);
INSERT INTO public.content_content_sub_section_keywords VALUES (48, 39, 922);
INSERT INTO public.content_content_sub_section_keywords VALUES (49, 40, 878);
INSERT INTO public.content_content_sub_section_keywords VALUES (50, 40, 879);
INSERT INTO public.content_content_sub_section_keywords VALUES (51, 40, 880);
INSERT INTO public.content_content_sub_section_keywords VALUES (52, 40, 881);
INSERT INTO public.content_content_sub_section_keywords VALUES (53, 40, 882);
INSERT INTO public.content_content_sub_section_keywords VALUES (54, 40, 883);
INSERT INTO public.content_content_sub_section_keywords VALUES (55, 41, 886);
INSERT INTO public.content_content_sub_section_keywords VALUES (56, 41, 887);
INSERT INTO public.content_content_sub_section_keywords VALUES (57, 41, 888);
INSERT INTO public.content_content_sub_section_keywords VALUES (58, 41, 890);
INSERT INTO public.content_content_sub_section_keywords VALUES (59, 41, 891);
INSERT INTO public.content_content_sub_section_keywords VALUES (60, 41, 892);
INSERT INTO public.content_content_sub_section_keywords VALUES (61, 42, 909);
INSERT INTO public.content_content_sub_section_keywords VALUES (62, 42, 910);
INSERT INTO public.content_content_sub_section_keywords VALUES (63, 42, 911);
INSERT INTO public.content_content_sub_section_keywords VALUES (64, 42, 912);
INSERT INTO public.content_content_sub_section_keywords VALUES (65, 42, 913);
INSERT INTO public.content_content_sub_section_keywords VALUES (66, 42, 914);
INSERT INTO public.content_content_sub_section_keywords VALUES (67, 42, 915);
INSERT INTO public.content_content_sub_section_keywords VALUES (68, 42, 916);
INSERT INTO public.content_content_sub_section_keywords VALUES (69, 42, 917);
INSERT INTO public.content_content_sub_section_keywords VALUES (70, 42, 918);
INSERT INTO public.content_content_sub_section_keywords VALUES (71, 42, 921);
INSERT INTO public.content_content_sub_section_keywords VALUES (72, 43, 941);
INSERT INTO public.content_content_sub_section_keywords VALUES (75, 47, 839);
INSERT INTO public.content_content_sub_section_keywords VALUES (73, 47, 840);
INSERT INTO public.content_content_sub_section_keywords VALUES (74, 47, 841);
INSERT INTO public.content_content_sub_section_keywords VALUES (76, 48, 849);
INSERT INTO public.content_content_sub_section_keywords VALUES (77, 49, 741);
INSERT INTO public.content_content_sub_section_keywords VALUES (78, 49, 742);
INSERT INTO public.content_content_sub_section_keywords VALUES (79, 49, 743);
INSERT INTO public.content_content_sub_section_keywords VALUES (80, 50, 744);
INSERT INTO public.content_content_sub_section_keywords VALUES (81, 50, 745);
INSERT INTO public.content_content_sub_section_keywords VALUES (82, 50, 746);
INSERT INTO public.content_content_sub_section_keywords VALUES (83, 50, 747);
INSERT INTO public.content_content_sub_section_keywords VALUES (88, 53, 823);
INSERT INTO public.content_content_sub_section_keywords VALUES (84, 53, 825);
INSERT INTO public.content_content_sub_section_keywords VALUES (85, 53, 826);
INSERT INTO public.content_content_sub_section_keywords VALUES (86, 53, 828);
INSERT INTO public.content_content_sub_section_keywords VALUES (87, 53, 829);
INSERT INTO public.content_content_sub_section_keywords VALUES (89, 54, 1009);
INSERT INTO public.content_content_sub_section_keywords VALUES (90, 54, 1010);
INSERT INTO public.content_content_sub_section_keywords VALUES (91, 54, 1011);
INSERT INTO public.content_content_sub_section_keywords VALUES (92, 55, 1009);
INSERT INTO public.content_content_sub_section_keywords VALUES (93, 55, 1010);
INSERT INTO public.content_content_sub_section_keywords VALUES (94, 56, 1009);
INSERT INTO public.content_content_sub_section_keywords VALUES (95, 56, 1010);
INSERT INTO public.content_content_sub_section_keywords VALUES (96, 57, 870);
INSERT INTO public.content_content_sub_section_keywords VALUES (97, 58, 856);
INSERT INTO public.content_content_sub_section_keywords VALUES (98, 59, 1009);
INSERT INTO public.content_content_sub_section_keywords VALUES (99, 59, 1010);
INSERT INTO public.content_content_sub_section_keywords VALUES (100, 61, 857);
INSERT INTO public.content_content_sub_section_keywords VALUES (101, 62, 866);
INSERT INTO public.content_content_sub_section_keywords VALUES (102, 63, 869);
INSERT INTO public.content_content_sub_section_keywords VALUES (104, 64, 943);
INSERT INTO public.content_content_sub_section_keywords VALUES (103, 64, 944);
INSERT INTO public.content_content_sub_section_keywords VALUES (105, 65, 945);
INSERT INTO public.content_content_sub_section_keywords VALUES (106, 65, 946);
INSERT INTO public.content_content_sub_section_keywords VALUES (107, 65, 947);
INSERT INTO public.content_content_sub_section_keywords VALUES (108, 67, 855);
INSERT INTO public.content_content_sub_section_keywords VALUES (112, 68, 958);
INSERT INTO public.content_content_sub_section_keywords VALUES (113, 68, 959);
INSERT INTO public.content_content_sub_section_keywords VALUES (109, 68, 960);
INSERT INTO public.content_content_sub_section_keywords VALUES (110, 68, 961);
INSERT INTO public.content_content_sub_section_keywords VALUES (111, 68, 962);
INSERT INTO public.content_content_sub_section_keywords VALUES (116, 70, 951);
INSERT INTO public.content_content_sub_section_keywords VALUES (114, 70, 952);
INSERT INTO public.content_content_sub_section_keywords VALUES (115, 70, 953);
INSERT INTO public.content_content_sub_section_keywords VALUES (117, 71, 954);
INSERT INTO public.content_content_sub_section_keywords VALUES (118, 72, 955);
INSERT INTO public.content_content_sub_section_keywords VALUES (119, 72, 956);
INSERT INTO public.content_content_sub_section_keywords VALUES (120, 73, 957);
INSERT INTO public.content_content_sub_section_keywords VALUES (122, 74, 1005);
INSERT INTO public.content_content_sub_section_keywords VALUES (123, 74, 1006);
INSERT INTO public.content_content_sub_section_keywords VALUES (124, 74, 1007);
INSERT INTO public.content_content_sub_section_keywords VALUES (121, 74, 1008);
INSERT INTO public.content_content_sub_section_keywords VALUES (125, 77, 661);
INSERT INTO public.content_content_sub_section_keywords VALUES (126, 77, 662);
INSERT INTO public.content_content_sub_section_keywords VALUES (127, 77, 663);
INSERT INTO public.content_content_sub_section_keywords VALUES (128, 78, 1072);
INSERT INTO public.content_content_sub_section_keywords VALUES (129, 78, 1073);
INSERT INTO public.content_content_sub_section_keywords VALUES (130, 79, 673);
INSERT INTO public.content_content_sub_section_keywords VALUES (131, 79, 674);
INSERT INTO public.content_content_sub_section_keywords VALUES (132, 79, 675);
INSERT INTO public.content_content_sub_section_keywords VALUES (133, 79, 676);
INSERT INTO public.content_content_sub_section_keywords VALUES (134, 80, 692);
INSERT INTO public.content_content_sub_section_keywords VALUES (135, 80, 693);


--
-- Data for Name: content_contentcontributors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.content_contentcontributors VALUES (1, 'Anand', 'Tiwary', 'anandtiwary021@gmail.com', '8084207920', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (2, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (3, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (4, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (5, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (6, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (7, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (8, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (9, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (10, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (11, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (12, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (13, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (14, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (15, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (16, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (17, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (18, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (19, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (20, 'rupendra', 'rupendra', 'rrupendrasingh45@gmail.com', '6367669162', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (21, 'rajesh', 'jhajharia', 'rajeshbotanica@gmail.com', '9829139494', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (23, 'Anand kr', 'Tiwary', NULL, '8084207910', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (24, 'rakesh kumar meena', 'sonu', 'rakeshkumar.meena.2189@gmail.com', '9571367762', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (25, 'test', 'tesst', 'test@gmail.com', '9856767898', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (26, 'rajnish', 'jhajharia', 'rajnishfrzlove75@gmail.com', '9413785594', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (27, 'Shyam', 'Saini', NULL, '8209674844', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (28, 'RAKESH KUMAR', 'MEENA', 'rakeshkumar.meena.2189@gmail.com', '9571367762', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (29, 'Archana', 'Nawal', 'archana11nawal@gmail.com', '9928897040', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (30, 'Manmohan', 'Sharma', 'mmohan11961@gmail.com', '7023766468', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (31, 'hajari rawat', NULL, 'rawathajarilal@gmail.com', '8104364121', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (32, 'JAGDISH CHANDRA', 'BALAI', 'jcmalvi@gmail.com', '9413716658', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (33, 'Mani Ram', 'Patier', 'manipatier92@gmail.com', '9785801616', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (34, 'Praveen', 'Singh', 'Yuvanrajput0824@gimal.com', '9664330180', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (35, 'Sahil', 'Khan', 'sk9477960@gmail.com', '9024278080', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (36, 'Krishan', 'Kumar', NULL, '9828211562', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (37, 'hapqy', 'inkhiya', 'inkhiyahappy2259@gmail.com', '8619404603', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (38, 'Sanju', 'Chahar', 'sanju.1583@gmail.com', '9828153583', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (39, 'Rohit', 'Kumawat', 'rk5181rk@gmale', '7976721195', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (40, 'Mahesh', NULL, NULL, '9703411789', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (41, 'Kamod', 'Singh', 'kamodsingh356@gmail.com', '9782315957', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (42, 'Brij', 'saini', 'brijsaini60@gmail.com', '9352862778', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (43, 'veerendra', 'singh', 'veerendrasingh534@gmail.com', '9414592200', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (44, 'rajesh', 'kumar', 'rajeshtaxak99@gmail.com', '9602372889', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (45, 'preetam', 'singh', 'preetam91799@gmail.com', '9050294348', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (46, 'phool chand', 'meena', 'pcm33886@gmail.com', '9414683290', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (47, 'nidhi', 'ajay 25ya', 'mail.pachisia@gmail.com', '9461309244', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (48, 'dsdsfdgfg', 'gfgfdghfh', NULL, '1122344546', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (49, 'ioipdsdsfdgfg', 'gfgfdghfh', 'xksdjfkkskdgmail,com', '9822344546', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (50, 'AVINASH KUMAR', 'SINGH', NULL, '8290877782', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (51, 'RUBY', 'YADAV', 'rubyyash8@gmail.com', '9928076483', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (52, 'Manju', 'Bala', 'manjurajkasana@gmail.com', '7619755555', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (53, 'karmpal', 'yadav', 'billudabad@gmail.com', '9928989726', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (54, 'PRAMOD', 'MITTAL', 'mittalpramod1968@gmail.com', '9414335844', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (55, 'anil', 'kumar', 'anilkumarkakodiya@gmail.com', '7073004397', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (56, 'MANNA LAL', 'YADAV', 'mannalalyadav1969@gmail.com', '9887162043', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (57, 'rajpal', 'yadav', 'rpal78427@gmail.com', '9772738366', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (58, 'Asha', 'Sharma', '8shaloos@gmail.com', '9660627267', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (59, 'amit', 'kumar', 'amit151119@gmail.com', '9413456178', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (60, 'PRAMOD KUMAR', 'MITTAL', 'mittalpramod1968@gmail.com', '9414335844', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (61, 'nidhi', 'ajay', 'mail.pachhisia@gmail.com', '9460154632', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (62, 'chhigan', 'mourya', 'chhiganlala88@gmail.com', '9602195946', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (63, 'kailash', 'saini', 'kailashsainigovtsr@gmail.com', '9694985602', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (64, 'piresh', 'rathore', 'pireshrathore8989@gmail.com', '7878839009', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (65, 'piresh', 'rathore', 'pireshrathore8989@gmail.com', '7878839009', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (66, 'rohit', 'gawariya', NULL, '7568179983', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (67, 'Vikash', 'Choudhary', 'vikashmechu7@gmail.com', '9784186622', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (68, 'Vikash', 'Choudhary', 'vikashmechu7@gmail.com', '9784186622', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (69, 'सुरेश चन्द', 'नवल', 'naval7098@gmail.com', '9928843790', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (70, 'सुरेश', 'चन्द नवल', 'naval7098@gmail.com', '9928843790', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (71, 'सुरेश', 'नवल', 'naval7098@gmail.com', '9928843790', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (72, 'ANIL KUMAR', 'KUMAR', 'ANILKUMARKAKODIYA@GMAIL.COM', '7073004397', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (73, 'gfghgh', 'bjjj', NULL, '1234567890', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (74, 'Ritu', 'Utreja', 'rituutreja88@gmail.com', '8118866057', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (75, 'Anil', 'kumar', 'anilkumarkakodiya@gmail.com', '773004397', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (76, 'Sanjay', 'Pingal', 'manishdewat121@email.com', '6367134315', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (77, 'Kailash', 'Kumawat', 'kk4770514@gmail.com', '9079110900', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (78, 'sachin', 'gurjar', 'sachingurjarsa2@gmail.com', '6367460415', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (79, 'Sanjay', 'Pingal', NULL, '8875983674', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (80, 'Jagdish prasad Nehra  (sikar)', NULL, NULL, '9571628242', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (81, 'Jagdish prasad Nehra', NULL, 'jagdishsikar2020@gmail.com', '9571628242', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (82, 'Devraj', 'Bairwa', 'devrajbairwa720@gmail.com', '9079047607', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (83, 'Kanhaiyalal', 'Joshi', NULL, '9413236341', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (84, 'ARJUN', 'KUMAR', 'arjunkjeengar@gmail.com', '9413248526', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (85, 'Devendra', 'Kumawat', NULL, '7014700293', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (86, 'Sandeep', 'Kumar', NULL, '6375311597', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (87, 'Sandeep', 'Kumar', NULL, '6375311597', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (88, 'Jesaram dhaniya', 'Vivek', 'vivekrajasthani251@gmail.com', '8107986452', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (89, 'sohan', 'Bairwa', 'sohanabhishek72@gmail.com', '9460071857', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (90, 'Maliram', 'Yadav', 'mrpaota87@gmail.com', '9413683031', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (91, 'SHYAM', 'SINGH', 'shyampratap.singh4@gmail.com', '9001434881', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (92, 'Hetram', 'Meena', 'hetramm6@gmail.com', '8058904787', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (93, 'RAJENDRA', NULL, 'rajendrak7777@gmail.com', '9024756952', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (94, 'Asha', 'Choudhary', '1043asha@gmail.com', '7014240805', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (95, 'Ajay', 'Kumar', 'ajaykishanlal@gmail.com', '9413445495', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (96, 'kailash', 'Saini', 'kailashsainichala@gmail.com', '9414700543', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (97, 'सुरेन्द्र सहारण', NULL, 'surendrasaharan59@gmail.com', '9928352376', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (98, 'Surender', 'Kumar', 'surendrasaharan59@gmail.com', '9928352376', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (99, 'UPENDRA', 'TRIVEDI', 'upendra1472@gmail.com', '9460379665', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (100, 'rajesh', 'kumhar', 'rajkumhar06@gmail.com', '8233502628', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (101, 'Manish', 'Sahu', 'mddooni@gmail.com', '9660945401', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (102, 'Nanita', 'Chouhan', NULL, '9461028804', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (103, 'Ramji', 'gurjar', 'rasgurjar8058@gmqil.com', '8058404516', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (104, 'Karan', 'Singh', 'singh.karan438@gmail.com', '8769741274', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (105, 'mamta', 'goyal', 'mamtagoyal17784@gmail.com', '7300436001', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (106, 'dharm', 'meena', 'dsghunawat24@gmail.con', '9983649926', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (107, 'Jamil ahmed', NULL, NULL, '9694600090', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (108, 'Jayant', 'Joshi', 'Jayanthoshi25@yahoo.in', '9829147434', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (109, 'Dayaram', 'Nehra', 'dayaramnehra19@gmail.com', '6376046149', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (110, 'अशोक', 'सोनी', 'ashokkumar25061976@gmail.com', '9571776336', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (111, 'अशोक कुमार', 'सोनी', 'ashokkumar25061976@gmail.com', '9571776336', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (112, 'अशोक कुमार', 'स्वर्णकार', 'ashokkumar25061976@gmail.com', '9571776336', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (113, 'Sonia', 'Rankawat', 'soniarankawat13@gmail.com', '8946801827', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (114, 'MUKESH', 'Mukka', 'mukeshsaran555@gmail.com', '7014724735', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (115, 'BAJRANG', 'BISHNOI', 'bajrangbishnoi03@gmail.com', '9166181288', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (116, 'Rajendra Singh', 'Lamba', 'lamba5467@gmail.com', '9829847328', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (117, 'rahul', 'puniya', 'puniyarahul44@gmail.com', '8107392861', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (118, 'MUKESH', 'KUMAR', 'reddymukesh1988@gmail.com', '9414600809', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (119, 'ewrfsrftrfg', 'rttrgtrgtrg', NULL, '9414200155', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (120, 'kamlesh', 'tambi', 'tambikamlesh12344@gmail.com', '8432683485', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (121, 's k', 'suresh kumar', 'sk4256@gamail.com', '8000358159', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (122, 'Zakir', 'Hussain', 'zakirnawazy@gmail.com', '9460576310', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (123, 'jeetram', 'bairwa', 'jeetubadgouti@gmail.com', '9983780614', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (124, 'NAHAR SINGH', 'DEV', 'SINGHNAHAR07@GMAIL.COM', '9672541899', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (125, 'Vala', 'Ram', 'valaramchoudhari96@gmail.com', '8890879645', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (126, 'GASSS BAGORA', 'Bagora', 'gssbagora123@gmail.com', '9636335575', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (127, 'taru', 'mangraj', 'tr486387@gmail.com', '9588203369', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (128, 'Vinod', 'Bairwa', 'bairwavinod037@gmail.com', '6350114773', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (129, 'vishnu', 'soni', 'sovishnu97@gmail.com', '9649238751', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (130, 'Aaru', 'Joshi', NULL, '9875801800', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (131, 'Afeef', NULL, NULL, '7664059604', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (132, 'Pankaj', 'Sarkar', NULL, '9859954123', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (133, 'Amar', 'Das', 'jyotiamardas@gmail.com', '8822457429', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (134, 'Jiauddin', 'Khan', 'rinkubtc@gmail.com', '9707665106', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (135, 'vinodkumar', 'meena', 'vinodmugalpura@gmail.com', '9694213189', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (136, 'Vinod goswami', 'Vinod goswami', 'jainagar', '7877156098', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (137, 'Hari Prasad', 'Sharma', 'hariprasad.dpr@rediffmail.com', '9460908854', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (138, 'Jagdish prasad Nehra   (sikar)', NULL, 'jagdishsikar2020@gmail.com', '9571628242', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (139, 'Narayan', 'Lal', NULL, '8302418098', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (140, 'Ssv', 'Verma', 'vermasurendra300@gmail.com', '8302342562', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (141, 'harshit', 'verma', 'hv84422@gmail.com', '6367285553', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (142, 'rajendra', 'lamba', 'lamba5467@gmail.com', '9829847328', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (143, 'Sunil', 'Sunil', 'jatiyawas', '8000382531', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (144, 'Sunil', 'Saini', 'sunilsaini9783220262@gmail.com', '9351465601', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (145, 'preeti sharma', 'sharma', 'preetisawasthi@gmail.com', '9001027484', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (146, 'Sarthak', 'Satapathy', 'sarthak@centralsquarefoundation.org', '9963922517', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (147, 'Monu', 'Singh', NULL, '8302555789', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (148, 'rahul', 'bhat', 'ritekbhat846@gmail.com', '8619791595', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (149, 'mohit', 'hudda', 'huddagjaat@gmail.com', '7877026153', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (150, 'Raksha', 'Rajput', 'raksharajput@gmail.com', '9717772990', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (151, 'Kameswara Rao', 'Bh', 'kamesh@ekstep.org', '9790952320', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (152, 'Tanshi', 'Gupta', 'guptaajaybmr@gmail.com', '7597575891', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (153, 'Bheru', 'Dhangar', 'bherudhangar35@gmail.com', '7878021054', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (154, 'Dilip', 'Choudhary', 'dilipchoudhary36363636@gmail.com', '6377433263', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (155, 'ramawatar', 'yadav', 'yadavram.68@gmail.com', '9214536511', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (156, 'Sanjani', 'Sharma', 'sanjani201sharma@gmail.com', '8209680996', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (157, 'Jagdish Prasad', 'nehra', NULL, '9571628242', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (158, 'bhaira', 'ram', 'bhairamram637@gmail.com', '9024911487', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (159, 'Mitraj singh', 'Chouhan', NULL, '6367824327', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.content_contentcontributors VALUES (160, 'Jagdish Prasad', 'Nehra', NULL, '8058904787', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');


--
-- Data for Name: dataupload_chapter; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.dataupload_chapter VALUES (83, 'पुस्तकालय पाठ -1', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (84, 'जनक का गांव पाठ -2', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (85, 'संख्याओं में जोड़ पाठ -3', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (86, 'संख्याओं में जोड़ घटाव पाठ -4', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (87, 'वैदिक गणित पाठ -5', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (88, 'आकृतियॉ पाठ -6', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (89, 'सममिति पाठ -7', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (90, 'आओ पहाड़े बनाये पाठ -8', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (91, 'संख्याओ में गुणा पाठ -9', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (92, 'आओ भाग करे पाठ -10', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (93, 'पैटर्न पाठ -11', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (94, 'भिन्न पाठ -12', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (95, 'मापन पाठ -13', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (96, 'भार पाठ -14', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (97, 'धारिता पाठ -15', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (98, 'समय पाठ -16', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (99, 'परिमाप और क्षेत्रफल पाठ -17', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (100, 'मुद्रा पाठ -18', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (101, 'आंकड़े और चित्रालेख पाठ -19', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 5);
INSERT INTO public.dataupload_chapter VALUES (102, 'युवाओ मे चरित्र एवं राष्ट्र निर्माण का भाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (103, 'कर्मठता,त्याग,नि:स्वार्थ भाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (104, 'कर्म के प्रति द्रढ़ता और निष्ठा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (105, 'दीन-दुखियो की सेवा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (106, 'भ्रष्टाचार पर व्यंग्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (107, 'जीवों पर प्रेम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (108, 'भारतीय आदर्शों एवं शाश्वत मूल्यों का समावेश', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (109, 'स्नान और आस्था का महत्व', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (110, 'तीर्थों विकास', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (111, 'युवा पीढ़ी को परम्परा से जोड़ना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (112, 'महर्षि दधीचि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (113, 'महादानी कर्ण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (114, 'महादानी भामाशाह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (115, 'दान की महिमा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (116, 'यात्रा वृतांत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (117, 'यात्रा की तैयारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (118, 'बौद्ध, तिबत्ती और रावण के अनुसार मानसरोवर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (119, 'सिंधुपति महाराज दाहिर सेन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (120, 'भारत रत्न डॉ अब्दुल कलाम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (121, 'nan', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (122, 'कबीर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (123, 'कृष्ण- बाललीला', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (124, 'केवट का भाग्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (125, 'बिहारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (126, 'मीराँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (127, 'भक्ति और नीति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (128, 'राष्ट्र प्रेम और परोपकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (129, 'विरंगनाओ का स्वरूप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (130, 'कृष्ण का शांति संदेश', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (131, 'खुशहाल एवं आशावादी जीवन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (132, 'राजस्थान की वीर संस्कृति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 6);
INSERT INTO public.dataupload_chapter VALUES (133, '1 WORK WHILE YOU WORK', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 7);
INSERT INTO public.dataupload_chapter VALUES (134, '2 SMILE WITH A BLESSING', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 7);
INSERT INTO public.dataupload_chapter VALUES (135, '3 THE CLEVER MINISTER', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 7);
INSERT INTO public.dataupload_chapter VALUES (136, '4 GOOD HABITS', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 7);
INSERT INTO public.dataupload_chapter VALUES (137, '5 Swachh Bharat Abhiyan', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 7);
INSERT INTO public.dataupload_chapter VALUES (138, '6 Charbhujanath Mandir', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 7);
INSERT INTO public.dataupload_chapter VALUES (139, '7 Traffic Lights', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 7);
INSERT INTO public.dataupload_chapter VALUES (140, '8 Life Echoes', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 7);
INSERT INTO public.dataupload_chapter VALUES (141, '9 Birds Paradise', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 7);
INSERT INTO public.dataupload_chapter VALUES (142, '10 Little Pride', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 7);
INSERT INTO public.dataupload_chapter VALUES (143, '11 Our Lifeline-The Trees', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 7);
INSERT INTO public.dataupload_chapter VALUES (144, '12 Chhatrapatti Shivaji', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 7);
INSERT INTO public.dataupload_chapter VALUES (145, '13 Winds', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 7);
INSERT INTO public.dataupload_chapter VALUES (146, '14 The Crows and the Cruel Cobra', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 7);
INSERT INTO public.dataupload_chapter VALUES (147, '15 Freedom Fighters of Rahasthan', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 7);
INSERT INTO public.dataupload_chapter VALUES (148, 'समर्पण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (149, 'सुभागी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (150, 'रणथंभौर की यात्रा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (151, 'सुदामा चरित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (152, 'महाराणा प्रताप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (153, 'संत कँवरराम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (154, 'भक्ति पदावली', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (155, 'मिसाइल मैन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (156, 'जैसलमेर की राजकुमारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (157, 'सुभाषचंद्र बोस का पत्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (158, 'गोसंरक्षण से ग्राम विकास', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (159, 'कुंडलियाँ छंद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (160, 'अपराजिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (161, 'जीप पर सवार इल्लियाँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (162, 'शक्ति और क्षमा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (163, 'हमारी भी सुनो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (164, 'हूंकार की कलंगी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 8);
INSERT INTO public.dataupload_chapter VALUES (165, 'खिसकना , लुढ़कना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (166, 'आकृतियों की समझ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (167, 'रेखायें कुछ ऐसी भी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (168, 'वर्गीकरण करना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (169, 'कौन कहाँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (170, 'संख्याएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (171, 'जोड़ घटाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (172, 'गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (173, 'बराबर बटबारा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (174, 'खुले सौ के', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (175, 'मापन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (176, 'हल्का भारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (177, 'समय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (178, 'धारिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (179, 'आंकड़ों का प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (180, 'आओ सजाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (181, 'रोचक पहेलियाँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 9);
INSERT INTO public.dataupload_chapter VALUES (182, 'परिमेय संख्याएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (183, 'घन एवं घनमूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (184, 'घात एवं घातांक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (185, 'दिमागी कसरत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (186, 'वैदिक गणित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (187, 'बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (188, 'चतुर्भुज की रचना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (189, 'ठोस आकारों का चित्रण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (190, 'बीजीय व्यंजक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (191, '.गुणनखंड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (192, 'एक चर राशि वाले रैखिक समीकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (193, 'रैखिक आलेख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (194, 'राशियों की तुलना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (195, 'क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (196, 'पृष्ठीय क्षेत्रफल एवं आयतन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (197, 'आंकड़ों का प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 10);
INSERT INTO public.dataupload_chapter VALUES (198, 'बचपन की यादें', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (199, 'अर्णी का परिवार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (200, 'कैसे जानू में', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (201, 'खेल प्रतियोगिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (202, 'फूल ही फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (203, 'पेड-पौधों की देखभाल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (204, 'कान खोले राज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (205, 'जंगल की बातें', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (206, 'पानी रे ! अजब तेरी कहानी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (207, 'पानी और हम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (208, 'अच्छा खाना मिलकर खाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (209, 'चोंच और पंजे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (210, 'चॉकलेट खाऊं या दाँत बचाऊँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (211, 'फसलों का सफ़र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (212, 'हमारे गौरव - II', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (213, 'हमारे राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (214, 'मेले', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (215, 'घर की बात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (216, 'स्वच्छ घर-स्वच्छ गाँव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (217, 'उगता सूरज पूर्व में', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (218, 'कपडे की कहानी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (219, 'यात्रा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 11);
INSERT INTO public.dataupload_chapter VALUES (220, 'कृषि प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (221, 'धातु और अधातु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (222, 'संश्लेषित रेशे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (223, 'संश्लेषित रेशों के प्रकार एवं गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (224, 'प्लास्टिक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (225, 'प्लास्टिक के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (226, 'प्लास्टिक के अनुप्रयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (227, 'प्लास्टिक और पर्यावरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (228, 'रासायनिक अभिक्रियाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (229, 'जैव विविधता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (230, 'पौधों में जनन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (231, 'रक्त परिसंचरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (232, 'हमारा स्वास्थ्य, बीमारियाँ एवं बचाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (233, 'कार्य एवं ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (234, 'ध्वनि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (235, 'विद्युत् धारा के प्रभाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (236, 'विद्युत् धरा के प्रभाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (237, 'कृत्रिम उपग्रह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (238, 'सूचना प्रौद्योगिकी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (239, 'प्रकाश का अपवर्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (240, 'प्राकृतिक परिघटनाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (241, 'वायु एवं जल प्रदूषण व नियंत्रण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (242, 'पर्यावरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (243, 'कार्बन और ईंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);
INSERT INTO public.dataupload_chapter VALUES (244, 'सड़क सुरक्षा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 12);


--
-- Data for Name: dataupload_chapterkeyword; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.dataupload_chapterkeyword VALUES (421, 'WORK WHILE YOU WORK', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 133);
INSERT INTO public.dataupload_chapterkeyword VALUES (422, 'PLAY', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 133);
INSERT INTO public.dataupload_chapterkeyword VALUES (423, 'TO BE HAPPY AND GAY.DO WITH ALL YOUR MIGHT', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 133);
INSERT INTO public.dataupload_chapterkeyword VALUES (424, 'ONE THING EACH TIME', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 133);
INSERT INTO public.dataupload_chapterkeyword VALUES (425, 'MOMENTS ARE USELESS', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 133);
INSERT INTO public.dataupload_chapterkeyword VALUES (426, 'An old lady', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 134);
INSERT INTO public.dataupload_chapterkeyword VALUES (427, 'go to market', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 134);
INSERT INTO public.dataupload_chapterkeyword VALUES (428, 'basket of fruits', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 134);
INSERT INTO public.dataupload_chapterkeyword VALUES (429, 'stepped on a banana peel', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 134);
INSERT INTO public.dataupload_chapterkeyword VALUES (430, 'people laugh', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 134);
INSERT INTO public.dataupload_chapterkeyword VALUES (431, 'fruits scattered', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 134);
INSERT INTO public.dataupload_chapterkeyword VALUES (432, 'Meena help', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 134);
INSERT INTO public.dataupload_chapterkeyword VALUES (433, 'pick all the fruits', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 134);
INSERT INTO public.dataupload_chapterkeyword VALUES (434, 'threw the peel into a dustbin', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 134);
INSERT INTO public.dataupload_chapterkeyword VALUES (435, 'may God bless you', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 134);
INSERT INTO public.dataupload_chapterkeyword VALUES (436, 'King Somavarama and his minister', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_chapterkeyword VALUES (437, 'lost in forest', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_chapterkeyword VALUES (438, 'King thirsty', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_chapterkeyword VALUES (439, 'Minister not familiar with forest', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_chapterkeyword VALUES (440, 'search water every where', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_chapterkeyword VALUES (441, 'flock of deer pasiing by', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_chapterkeyword VALUES (442, 'got an idea', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_chapterkeyword VALUES (443, 'caught a deer', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_chapterkeyword VALUES (444, 'feed him salt', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_chapterkeyword VALUES (445, 'deer feel thristy', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_chapterkeyword VALUES (446, 'foll the deer', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_chapterkeyword VALUES (447, 'lool water', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_chapterkeyword VALUES (448, 'wisdom is marvellous', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_chapterkeyword VALUES (449, 'early to rise', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 136);
INSERT INTO public.dataupload_chapterkeyword VALUES (450, 'wealthy and wise', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 136);
INSERT INTO public.dataupload_chapterkeyword VALUES (451, 'comb your hair look a mass', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 136);
INSERT INTO public.dataupload_chapterkeyword VALUES (452, 'wash your hands pray to god अच्छी आदते', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 136);
INSERT INTO public.dataupload_chapterkeyword VALUES (453, 'rhyming words', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 136);
INSERT INTO public.dataupload_chapterkeyword VALUES (454, 'use of before and after', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 136);
INSERT INTO public.dataupload_chapterkeyword VALUES (455, 'Arun doing home work', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (456, 'do something on a paper', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (457, 'tear the paper and throw', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (458, 'sharp pencil', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (459, 'throw crumbs and pencil lead powder', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (460, 'floor very dirty', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (461, 'go to market with his mother', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (462, 'waliking on the side of the land', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (463, 'smell foul air', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (464, 'Heap of garvage', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (465, 'many flies and mosquitoes', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (466, 'His mother told him to keep sorroundings clean', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (467, 'throw the garbage in to dustbin', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (468, 'make city clean and healthy', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (469, 'raper throw into dustbin', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (470, 'clean his room', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (471, 'change his habits', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_chapterkeyword VALUES (472, 'Beautiful temple', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_chapterkeyword VALUES (473, 'located at medta city in nagaur', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_chapterkeyword VALUES (474, 'Rao Duda ji founded temple', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_chapterkeyword VALUES (475, 'Idol of lord appeared from inside the earth', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_chapterkeyword VALUES (476, 'Duda ji saw dream', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_chapterkeyword VALUES (477, 'built a temple', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_chapterkeyword VALUES (478, 'daughter Meera Bai services the deity', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_chapterkeyword VALUES (479, 'Meera bai temple', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_chapterkeyword VALUES (480, 'Statuas of shree Keshav Das', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_chapterkeyword VALUES (481, 'Shree Girdhar Gopal', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_chapterkeyword VALUES (482, 'Meera Bai', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_chapterkeyword VALUES (483, 'Jaimal', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_chapterkeyword VALUES (484, 'Many festivals celebrated as Nrasingh Chaturdarshi', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_chapterkeyword VALUES (485, 'Janmastmi', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_chapterkeyword VALUES (486, 'RamNavami', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_chapterkeyword VALUES (487, 'Follow the traffic rules', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 139);
INSERT INTO public.dataupload_chapterkeyword VALUES (488, 'avoid accidents', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 139);
INSERT INTO public.dataupload_chapterkeyword VALUES (489, 'cross roads', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 139);
INSERT INTO public.dataupload_chapterkeyword VALUES (490, 'three bright lights', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 139);
INSERT INTO public.dataupload_chapterkeyword VALUES (491, 'Red says stop', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 139);
INSERT INTO public.dataupload_chapterkeyword VALUES (492, 'Orange says Wait', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 139);
INSERT INTO public.dataupload_chapterkeyword VALUES (493, 'Green says Go', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 139);
INSERT INTO public.dataupload_chapterkeyword VALUES (494, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 139);
INSERT INTO public.dataupload_chapterkeyword VALUES (495, 'Do good have good', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_chapterkeyword VALUES (496, 'little child and his mother', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_chapterkeyword VALUES (497, 'ten rupees for toffees', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_chapterkeyword VALUES (498, 'child not happy', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_chapterkeyword VALUES (499, 'I hate you go to valley', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_chapterkeyword VALUES (500, 'shout', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_chapterkeyword VALUES (501, 'heard the echo afraid', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_chapterkeyword VALUES (502, 'run back to home', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_chapterkeyword VALUES (503, 'Mother asked him to shout', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_chapterkeyword VALUES (504, 'I love you', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_chapterkeyword VALUES (505, 'hugged his mother', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_chapterkeyword VALUES (506, 'learn a new lession in life', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_chapterkeyword VALUES (507, 'Keoladeo Ghana National Park', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_chapterkeyword VALUES (508, 'Ancient Mandir', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_chapterkeyword VALUES (509, 'Lord shiva', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_chapterkeyword VALUES (510, 'thick area of forest Kauchha dam', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_chapterkeyword VALUES (511, 'Bhartpur lake', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_chapterkeyword VALUES (512, 'duck shooting', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_chapterkeyword VALUES (513, 'Government banned', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_chapterkeyword VALUES (514, 'world heritage site', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_chapterkeyword VALUES (515, 'Siberian cranes', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_chapterkeyword VALUES (516, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_chapterkeyword VALUES (517, 'Girls are like flowers', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 142);
INSERT INTO public.dataupload_chapterkeyword VALUES (518, 'stars to bloom and shin', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 142);
INSERT INTO public.dataupload_chapterkeyword VALUES (519, 'don''t make them clean and wipe', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 142);
INSERT INTO public.dataupload_chapterkeyword VALUES (520, 'let read and write', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 142);
INSERT INTO public.dataupload_chapterkeyword VALUES (521, 'Don''t keep in cell', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 142);
INSERT INTO public.dataupload_chapterkeyword VALUES (522, 'keep hobbies high', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 142);
INSERT INTO public.dataupload_chapterkeyword VALUES (523, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 142);
INSERT INTO public.dataupload_chapterkeyword VALUES (524, 'coming towards', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 143);
INSERT INTO public.dataupload_chapterkeyword VALUES (525, 'air to breathe', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 143);
INSERT INTO public.dataupload_chapterkeyword VALUES (526, 'hid themselves.jumped around', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 143);
INSERT INTO public.dataupload_chapterkeyword VALUES (527, 'roared', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 143);
INSERT INTO public.dataupload_chapterkeyword VALUES (528, 'affection', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 143);
INSERT INTO public.dataupload_chapterkeyword VALUES (529, 'so many things', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 143);
INSERT INTO public.dataupload_chapterkeyword VALUES (530, 'huge treees', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 143);
INSERT INTO public.dataupload_chapterkeyword VALUES (531, 'Occasion', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_chapterkeyword VALUES (532, 'each other', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_chapterkeyword VALUES (533, 'how mejestic', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_chapterkeyword VALUES (534, 'disciple', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_chapterkeyword VALUES (535, 'bring', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_chapterkeyword VALUES (536, 'rule as a just king', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_chapterkeyword VALUES (537, 'command', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_chapterkeyword VALUES (538, 'treat me', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_chapterkeyword VALUES (539, 'Roar', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_chapterkeyword VALUES (540, 'feeding', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_chapterkeyword VALUES (541, 'tied up', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_chapterkeyword VALUES (542, 'not sick', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_chapterkeyword VALUES (543, 'testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_chapterkeyword VALUES (544, 'pleased', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_chapterkeyword VALUES (545, 'obidience', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_chapterkeyword VALUES (546, 'Blow over summser days', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_chapterkeyword VALUES (547, 'chasing chasing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_chapterkeyword VALUES (548, 'blow over wintry days', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_chapterkeyword VALUES (549, 'racing racing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_chapterkeyword VALUES (550, 'blow over midnight hours', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_chapterkeyword VALUES (551, 'blinking blinking', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_chapterkeyword VALUES (552, 'blow over morning flowers', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_chapterkeyword VALUES (553, 'dew lies winking winking', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_chapterkeyword VALUES (554, 'blow over city mills', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_chapterkeyword VALUES (555, 'hurring after', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_chapterkeyword VALUES (556, 'blow over grassy hills', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_chapterkeyword VALUES (557, 'laid her eggs', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 146);
INSERT INTO public.dataupload_chapterkeyword VALUES (558, 'very pleased', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 146);
INSERT INTO public.dataupload_chapterkeyword VALUES (559, 'hollow trunk', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 146);
INSERT INTO public.dataupload_chapterkeyword VALUES (560, 'crow were away very sad', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 146);
INSERT INTO public.dataupload_chapterkeyword VALUES (561, 'stole eggs', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 146);
INSERT INTO public.dataupload_chapterkeyword VALUES (562, 'drive away', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 146);
INSERT INTO public.dataupload_chapterkeyword VALUES (563, 'thought of a plan takes her ring', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 146);
INSERT INTO public.dataupload_chapterkeyword VALUES (564, 'fly away', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 146);
INSERT INTO public.dataupload_chapterkeyword VALUES (565, 'drop the ring down', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 146);
INSERT INTO public.dataupload_chapterkeyword VALUES (566, 'dug the the hole got rid of', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 146);
INSERT INTO public.dataupload_chapterkeyword VALUES (567, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_chapterkeyword VALUES (568, 'Bhagat singh', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_chapterkeyword VALUES (569, 'Sagarmal Gopa', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_chapterkeyword VALUES (570, 'vijay singh pathik', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_chapterkeyword VALUES (571, 'Freedom fighter', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_chapterkeyword VALUES (572, 'revoluntionary', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_chapterkeyword VALUES (573, 'arrested tortured', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_chapterkeyword VALUES (574, 'Great Patriot and freedom fighter', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_chapterkeyword VALUES (575, 'led', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_chapterkeyword VALUES (576, 'non-cooperation movement', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_chapterkeyword VALUES (577, 'gave shelter', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_chapterkeyword VALUES (578, 'defeated', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_chapterkeyword VALUES (579, 'समर्पित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 148);
INSERT INTO public.dataupload_chapterkeyword VALUES (580, 'भाल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 148);
INSERT INTO public.dataupload_chapterkeyword VALUES (581, 'ढाल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 148);
INSERT INTO public.dataupload_chapterkeyword VALUES (582, 'अर्पित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 148);
INSERT INTO public.dataupload_chapterkeyword VALUES (583, 'तृण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 148);
INSERT INTO public.dataupload_chapterkeyword VALUES (584, 'घनेरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 148);
INSERT INTO public.dataupload_chapterkeyword VALUES (585, 'अकिंचन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 148);
INSERT INTO public.dataupload_chapterkeyword VALUES (586, 'नीड़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 148);
INSERT INTO public.dataupload_chapterkeyword VALUES (587, 'निपुण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_chapterkeyword VALUES (588, 'कौड़ी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_chapterkeyword VALUES (589, 'निर्वाह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_chapterkeyword VALUES (590, 'आफ़त', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_chapterkeyword VALUES (591, 'उजड्ड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_chapterkeyword VALUES (592, 'गोदान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_chapterkeyword VALUES (593, 'निवाला', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_chapterkeyword VALUES (594, 'सुहाग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_chapterkeyword VALUES (595, 'विनीत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_chapterkeyword VALUES (596, 'अंत्येष्टि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_chapterkeyword VALUES (597, 'मिज़ाज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_chapterkeyword VALUES (598, 'नागा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_chapterkeyword VALUES (599, 'हठीले', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_chapterkeyword VALUES (600, 'उत्कण्ठा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_chapterkeyword VALUES (601, 'सुरम्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_chapterkeyword VALUES (602, 'निवृत्त', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_chapterkeyword VALUES (603, 'उत्सुकता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_chapterkeyword VALUES (604, 'हरीतिमा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_chapterkeyword VALUES (605, 'आच्छादित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_chapterkeyword VALUES (606, 'रोमांचित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_chapterkeyword VALUES (607, 'सावचेत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_chapterkeyword VALUES (608, 'बयार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_chapterkeyword VALUES (609, 'अठखेलियाँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_chapterkeyword VALUES (610, 'मृग छौने', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_chapterkeyword VALUES (611, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_chapterkeyword VALUES (612, 'जाहुजू', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_chapterkeyword VALUES (613, 'याम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_chapterkeyword VALUES (614, 'छड़िया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_chapterkeyword VALUES (615, 'भूपति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_chapterkeyword VALUES (616, 'अभिरामा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_chapterkeyword VALUES (617, 'छुयो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_chapterkeyword VALUES (618, 'सौं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_chapterkeyword VALUES (619, 'पगा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_chapterkeyword VALUES (620, 'झगा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_chapterkeyword VALUES (621, 'आहि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_chapterkeyword VALUES (622, 'बिहाल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_chapterkeyword VALUES (623, 'दुपटी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_chapterkeyword VALUES (624, 'उपानहु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_chapterkeyword VALUES (625, 'सामा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_chapterkeyword VALUES (626, 'चकि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_chapterkeyword VALUES (627, 'प्रलोभन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 152);
INSERT INTO public.dataupload_chapterkeyword VALUES (628, 'प्रखर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 152);
INSERT INTO public.dataupload_chapterkeyword VALUES (629, 'अंगार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 152);
INSERT INTO public.dataupload_chapterkeyword VALUES (630, 'शौर्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 152);
INSERT INTO public.dataupload_chapterkeyword VALUES (631, 'महाधृति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 152);
INSERT INTO public.dataupload_chapterkeyword VALUES (632, 'विधायक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 152);
INSERT INTO public.dataupload_chapterkeyword VALUES (633, 'वेदी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 152);
INSERT INTO public.dataupload_chapterkeyword VALUES (634, 'महाव्रति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 152);
INSERT INTO public.dataupload_chapterkeyword VALUES (635, 'सत्यकृति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 152);
INSERT INTO public.dataupload_chapterkeyword VALUES (636, 'महामानव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 152);
INSERT INTO public.dataupload_chapterkeyword VALUES (637, 'सृष्टि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (638, 'अनूठी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (639, 'अखंड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (640, 'प्रतिष्ठित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (641, 'मोहताजों', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (642, 'बेड़ो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (643, 'किअं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (644, 'तारि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (645, 'रिझाया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (646, 'मुहिंजो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (647, 'परिचाया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (648, 'अलख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (649, 'नाले', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (650, 'कुहर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (651, 'जामो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (652, 'मोमिन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_chapterkeyword VALUES (653, 'मकराकृत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (654, 'अरुन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (655, 'मोहनि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (656, 'साँवरि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (657, 'अधर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (658, 'सुधा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (659, 'उर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (660, 'छुद्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (661, 'कटि तट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (662, 'नूपुर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (663, 'रसाल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (664, 'बछल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (665, 'राजति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (666, 'धीर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (667, 'अमोलक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (668, 'नरहरि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (669, 'हरख-हरख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (670, 'भवसागर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (671, 'बैजंती माल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_chapterkeyword VALUES (672, 'ख्याति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 155);
INSERT INTO public.dataupload_chapterkeyword VALUES (673, 'मेधावी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 155);
INSERT INTO public.dataupload_chapterkeyword VALUES (674, 'विशेषज्ञ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 155);
INSERT INTO public.dataupload_chapterkeyword VALUES (675, 'प्रक्षेपास्त्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 155);
INSERT INTO public.dataupload_chapterkeyword VALUES (676, 'त्वरित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 155);
INSERT INTO public.dataupload_chapterkeyword VALUES (677, 'क्षमता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 155);
INSERT INTO public.dataupload_chapterkeyword VALUES (678, 'आपूर्ति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 155);
INSERT INTO public.dataupload_chapterkeyword VALUES (679, 'प्रसारण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 155);
INSERT INTO public.dataupload_chapterkeyword VALUES (680, 'निर्धारित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 155);
INSERT INTO public.dataupload_chapterkeyword VALUES (681, 'प्रदीपन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 155);
INSERT INTO public.dataupload_chapterkeyword VALUES (682, 'कर्णधार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 155);
INSERT INTO public.dataupload_chapterkeyword VALUES (683, 'दुर्ग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (684, 'बलिष्ठ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (685, 'मर्दानी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (686, 'पेशकब्ज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (687, 'तरकस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (688, 'रास', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (689, 'जिरहबख्तर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (690, 'फौलादी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (691, 'हौदे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (692, 'हिनहिना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (693, 'झनझना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (694, 'वक्र दृष्टि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (695, 'धूर्त', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (696, 'विलीन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (697, 'उपत्यका', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (698, 'घूस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (699, 'निनाद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (700, 'कोर्निस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_chapterkeyword VALUES (701, 'दिलचस्प', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_chapterkeyword VALUES (702, 'कारावास', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_chapterkeyword VALUES (703, 'परिवेश', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_chapterkeyword VALUES (704, 'प्रकांड भाष्यकारों', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_chapterkeyword VALUES (705, 'वार्ड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_chapterkeyword VALUES (706, 'निष्कासित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_chapterkeyword VALUES (707, 'स्मृतियाँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_chapterkeyword VALUES (708, 'यंत्रणाओं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_chapterkeyword VALUES (709, 'बौद्धिक स्तर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_chapterkeyword VALUES (710, 'हार्दिकता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_chapterkeyword VALUES (711, 'वयोवृद्ध', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_chapterkeyword VALUES (712, 'प्रणयन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_chapterkeyword VALUES (713, 'सांत्वना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_chapterkeyword VALUES (714, 'दासता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_chapterkeyword VALUES (715, 'गहन चिंतन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (716, 'गावो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (717, 'विश्वस्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (718, 'मातरः', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (719, 'दात्री', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (720, 'आस्था', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (721, 'पुरातन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (722, 'द्वापर काल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (723, 'रक्षणीय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (724, 'बलिवर्द', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (725, 'वृषभ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (726, 'दृष्टिगोचर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (727, 'चौपाया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (728, 'विनिमय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (729, 'चरनोट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (730, 'बवासीर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (731, 'जलोदर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_chapterkeyword VALUES (732, 'चंचल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_chapterkeyword VALUES (733, 'ठाँऊ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_chapterkeyword VALUES (734, 'जस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_chapterkeyword VALUES (735, 'सुनाय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_chapterkeyword VALUES (736, 'तौलत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_chapterkeyword VALUES (737, 'दौलत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_chapterkeyword VALUES (738, 'पाहुन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_chapterkeyword VALUES (739, 'पाछै', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_chapterkeyword VALUES (740, 'पछताय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_chapterkeyword VALUES (741, 'टरत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_chapterkeyword VALUES (742, 'खानि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_chapterkeyword VALUES (743, 'बिकानो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_chapterkeyword VALUES (744, 'रान्ध्यो धरिये', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_chapterkeyword VALUES (745, 'जिय माहिं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_chapterkeyword VALUES (746, 'फूहर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_chapterkeyword VALUES (747, 'अपराजिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_chapterkeyword VALUES (748, 'अकस्मात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_chapterkeyword VALUES (749, 'विधाता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_chapterkeyword VALUES (750, 'विलक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_chapterkeyword VALUES (751, 'व्यक्तित्व', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_chapterkeyword VALUES (752, 'रिक्तता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_chapterkeyword VALUES (753, 'अन्तर्यामी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_chapterkeyword VALUES (754, 'विच्छिन्न', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_chapterkeyword VALUES (755, 'अभिशप्त', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_chapterkeyword VALUES (756, 'आनंदी मुद्रा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_chapterkeyword VALUES (757, 'अहाता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_chapterkeyword VALUES (758, 'उत्फुल्ल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_chapterkeyword VALUES (759, 'अवरुद्ध', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_chapterkeyword VALUES (760, 'फैलोशिप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_chapterkeyword VALUES (761, 'पीएच.डी.', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_chapterkeyword VALUES (762, 'इल्लियाँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_chapterkeyword VALUES (763, 'कपोल कल्पना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_chapterkeyword VALUES (764, 'बाजू', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_chapterkeyword VALUES (765, 'तुक मिलाकर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_chapterkeyword VALUES (766, 'सौभाग्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_chapterkeyword VALUES (767, 'पोथियाँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_chapterkeyword VALUES (768, 'अधिष्ठात्री', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_chapterkeyword VALUES (769, 'उन्मूलन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_chapterkeyword VALUES (770, 'इत्मीनान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_chapterkeyword VALUES (771, 'वक्तव्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_chapterkeyword VALUES (772, 'मनोबल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_chapterkeyword VALUES (773, 'नर व्याघ्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_chapterkeyword VALUES (774, 'सुयोधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_chapterkeyword VALUES (775, 'संपूज्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_chapterkeyword VALUES (776, 'रिपु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_chapterkeyword VALUES (777, 'भुजंग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_chapterkeyword VALUES (778, 'अनुनय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_chapterkeyword VALUES (779, 'पौरुष', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_chapterkeyword VALUES (780, 'मूढ़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_chapterkeyword VALUES (781, 'दर्प', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_chapterkeyword VALUES (782, 'गरल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_chapterkeyword VALUES (783, 'नाद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_chapterkeyword VALUES (784, 'शर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_chapterkeyword VALUES (785, 'दीप्ति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_chapterkeyword VALUES (786, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_chapterkeyword VALUES (787, 'संरक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_chapterkeyword VALUES (788, 'दुरुपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_chapterkeyword VALUES (789, 'सदुपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_chapterkeyword VALUES (790, 'वाद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_chapterkeyword VALUES (791, 'परिवाद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_chapterkeyword VALUES (792, 'विरुद्ध', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_chapterkeyword VALUES (793, 'कुपित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_chapterkeyword VALUES (794, 'रमता जोगी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_chapterkeyword VALUES (795, 'रासायनिक आक्रमण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_chapterkeyword VALUES (796, 'कसूर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_chapterkeyword VALUES (797, 'समक्ष', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_chapterkeyword VALUES (798, 'अवांछित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_chapterkeyword VALUES (799, 'जोहड़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_chapterkeyword VALUES (800, 'संवाहक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_chapterkeyword VALUES (801, 'प्राणहारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_chapterkeyword VALUES (802, 'हूकम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (803, 'सारा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (804, 'जमीत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (805, 'सूधी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (806, 'पोंचतां', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (807, 'हाजर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (808, 'जागीर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (809, 'हरामखोरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (810, 'सवारां', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (811, 'रियायत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (812, 'अरज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (813, 'डावड़ी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (814, 'नवो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (815, 'दसगताँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (816, 'ओलाँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (817, 'नैनपण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (818, 'ढोढ़ी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (819, 'ऊभा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (820, 'सरणाटो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (821, 'बळबळता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (822, 'ठिमरास', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (823, 'कूच', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (824, 'निसाण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (825, 'कंवळी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (826, 'मांझी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (827, 'पलाका', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (828, 'रान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (829, 'आन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (830, 'पराधीन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (831, 'भेस गुमान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (832, 'विपद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (833, 'मूंडो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (834, 'दिवा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (835, 'जूण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (836, 'खोस लीधी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (837, 'हूंकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (838, 'परसंगी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (839, 'पै''र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_chapterkeyword VALUES (840, 'कामदार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);


--
-- Data for Name: dataupload_section; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.dataupload_section VALUES (110, '500 तक संख्याओ का अभ्यास', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 83);
INSERT INTO public.dataupload_section VALUES (111, '501 से 999 तक की संख्याओ की पहचान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 83);
INSERT INTO public.dataupload_section VALUES (112, 'चार अंको की संख्याओं से परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 83);
INSERT INTO public.dataupload_section VALUES (113, 'छोटे बड़े चिन्हों का ज्ञान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 84);
INSERT INTO public.dataupload_section VALUES (114, 'ऐसा भी दिखता है', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 84);
INSERT INTO public.dataupload_section VALUES (115, 'जनक के गांव का नजरी नक्शा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 84);
INSERT INTO public.dataupload_section VALUES (116, '3 अंको की जोड़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 85);
INSERT INTO public.dataupload_section VALUES (117, 'हासिल के साथ जोड़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 85);
INSERT INTO public.dataupload_section VALUES (118, 'देवनागरी अंको के साथ जोड़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 85);
INSERT INTO public.dataupload_section VALUES (119, 'बिना हासिल का घटाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 86);
INSERT INTO public.dataupload_section VALUES (120, 'हासिल के साथ घटाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 86);
INSERT INTO public.dataupload_section VALUES (121, 'देवनागरी अंको के साथ घटाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 86);
INSERT INTO public.dataupload_section VALUES (122, 'जोड़ व घटाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 86);
INSERT INTO public.dataupload_section VALUES (123, 'एकाधिकेंन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 87);
INSERT INTO public.dataupload_section VALUES (124, 'एकन्यूनेन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 87);
INSERT INTO public.dataupload_section VALUES (125, 'द्विआयामी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 88);
INSERT INTO public.dataupload_section VALUES (126, 'घन घनाभ आकृतियों को खोलकर द्विआयमी स्वरूपों से जोड़ना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 88);
INSERT INTO public.dataupload_section VALUES (127, 'प्रकृति में सममिति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 89);
INSERT INTO public.dataupload_section VALUES (128, 'दो या दो से अधिक सममित रेखाये', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 89);
INSERT INTO public.dataupload_section VALUES (129, 'पहाड़े बनाने का अभ्यास', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 90);
INSERT INTO public.dataupload_section VALUES (130, '11 से 20 तक पहाड़े', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 90);
INSERT INTO public.dataupload_section VALUES (131, 'दो अंको की संख्या का दो अंको की संख्या से गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 91);
INSERT INTO public.dataupload_section VALUES (132, '3 अंको की संख्या का दो अंको की संख्या से गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 91);
INSERT INTO public.dataupload_section VALUES (133, 'भाग कैसे करे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 92);
INSERT INTO public.dataupload_section VALUES (134, 'परिवेश में पैटर्न पहचानना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 93);
INSERT INTO public.dataupload_section VALUES (135, 'संख्याओं मेँ पैटर्न', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 93);
INSERT INTO public.dataupload_section VALUES (136, 'भिन्न की समझ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 94);
INSERT INTO public.dataupload_section VALUES (137, 'स्केल का उपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 95);
INSERT INTO public.dataupload_section VALUES (138, 'भार तुला से परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 96);
INSERT INTO public.dataupload_section VALUES (139, 'लीटर इकाई का परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 97);
INSERT INTO public.dataupload_section VALUES (140, 'अलग अलग धारिता का अनुमान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 97);
INSERT INTO public.dataupload_section VALUES (141, 'मिलीलीटर इकाई का परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 97);
INSERT INTO public.dataupload_section VALUES (142, 'तारीख लिखना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 98);
INSERT INTO public.dataupload_section VALUES (143, 'दिन सप्ताह माह एवं वर्ष की समझ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 98);
INSERT INTO public.dataupload_section VALUES (144, 'समय एवं काम की समझ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 98);
INSERT INTO public.dataupload_section VALUES (145, 'परिमाप और क्षेत्रफल की समझ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 99);
INSERT INTO public.dataupload_section VALUES (146, 'ग्रिड से क्षेत्रफल ज्ञात करना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 99);
INSERT INTO public.dataupload_section VALUES (147, 'परिमाप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 99);
INSERT INTO public.dataupload_section VALUES (148, 'मुद्राओ में सम्बंध', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 100);
INSERT INTO public.dataupload_section VALUES (149, 'हिसाब किताब में मुद्रा का उपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 100);
INSERT INTO public.dataupload_section VALUES (150, 'आँकड़ो को सूचीबद्ध करना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 101);
INSERT INTO public.dataupload_section VALUES (151, 'चित्रलेख अवलोकन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 101);
INSERT INTO public.dataupload_section VALUES (152, 'लेखक परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 102);
INSERT INTO public.dataupload_section VALUES (153, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 102);
INSERT INTO public.dataupload_section VALUES (154, 'युवाओ से', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 102);
INSERT INTO public.dataupload_section VALUES (155, 'लेखक परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 103);
INSERT INTO public.dataupload_section VALUES (156, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 103);
INSERT INTO public.dataupload_section VALUES (157, 'नींव की ईंट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 103);
INSERT INTO public.dataupload_section VALUES (158, 'लेखक परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 104);
INSERT INTO public.dataupload_section VALUES (159, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 104);
INSERT INTO public.dataupload_section VALUES (160, 'छोटा जादूगर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 104);
INSERT INTO public.dataupload_section VALUES (161, 'लेखक परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 105);
INSERT INTO public.dataupload_section VALUES (162, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 105);
INSERT INTO public.dataupload_section VALUES (163, 'दीनों पर प्रेम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 105);
INSERT INTO public.dataupload_section VALUES (164, 'लेखक परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 106);
INSERT INTO public.dataupload_section VALUES (165, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 106);
INSERT INTO public.dataupload_section VALUES (166, 'कहानी में व्यंग्य के माध्यम से प्रस्तुतीकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 106);
INSERT INTO public.dataupload_section VALUES (167, 'लेखक परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 107);
INSERT INTO public.dataupload_section VALUES (168, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 107);
INSERT INTO public.dataupload_section VALUES (169, 'जीव- जंतुओं की समझ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 107);
INSERT INTO public.dataupload_section VALUES (170, 'लेखक परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 108);
INSERT INTO public.dataupload_section VALUES (171, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 108);
INSERT INTO public.dataupload_section VALUES (172, 'चित्तोड़ दुर्ग की ऐतिहासिक घटना : दीपदान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 108);
INSERT INTO public.dataupload_section VALUES (173, 'लेखक परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 109);
INSERT INTO public.dataupload_section VALUES (174, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 110);
INSERT INTO public.dataupload_section VALUES (175, 'भारतीय परंपराओं का महत्व', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 111);
INSERT INTO public.dataupload_section VALUES (176, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 112);
INSERT INTO public.dataupload_section VALUES (177, 'महर्षि दधीचि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 113);
INSERT INTO public.dataupload_section VALUES (178, 'महादानी कर्ण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 114);
INSERT INTO public.dataupload_section VALUES (179, 'महादानी भामाशाह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 115);
INSERT INTO public.dataupload_section VALUES (180, 'लेखक परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 116);
INSERT INTO public.dataupload_section VALUES (181, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 117);
INSERT INTO public.dataupload_section VALUES (182, 'कैलाश मानसरोवर यात्रा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 118);
INSERT INTO public.dataupload_section VALUES (183, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 119);
INSERT INTO public.dataupload_section VALUES (184, 'दाहिर सेन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 120);
INSERT INTO public.dataupload_section VALUES (185, 'डॉ अब्दुल कलाम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 121);
INSERT INTO public.dataupload_section VALUES (186, 'कवि परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 122);
INSERT INTO public.dataupload_section VALUES (187, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 122);
INSERT INTO public.dataupload_section VALUES (188, 'लेखक परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 123);
INSERT INTO public.dataupload_section VALUES (189, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 123);
INSERT INTO public.dataupload_section VALUES (190, 'सूरदास के पद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 123);
INSERT INTO public.dataupload_section VALUES (191, 'लेखक परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 124);
INSERT INTO public.dataupload_section VALUES (192, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 124);
INSERT INTO public.dataupload_section VALUES (193, 'केवट का भाग्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 124);
INSERT INTO public.dataupload_section VALUES (194, 'लेखक परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 125);
INSERT INTO public.dataupload_section VALUES (195, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 125);
INSERT INTO public.dataupload_section VALUES (196, 'बिहारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 125);
INSERT INTO public.dataupload_section VALUES (197, 'लेखक परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 126);
INSERT INTO public.dataupload_section VALUES (198, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 126);
INSERT INTO public.dataupload_section VALUES (199, 'मीराँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 126);
INSERT INTO public.dataupload_section VALUES (200, 'कवि परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 127);
INSERT INTO public.dataupload_section VALUES (201, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 127);
INSERT INTO public.dataupload_section VALUES (202, 'बरवै और दोहे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 127);
INSERT INTO public.dataupload_section VALUES (203, 'कवि परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 128);
INSERT INTO public.dataupload_section VALUES (204, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 128);
INSERT INTO public.dataupload_section VALUES (205, 'पुष्प की अभिलाषा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 128);
INSERT INTO public.dataupload_section VALUES (206, 'पर्वत की अभिलाषा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 128);
INSERT INTO public.dataupload_section VALUES (207, 'कवि परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 129);
INSERT INTO public.dataupload_section VALUES (208, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 129);
INSERT INTO public.dataupload_section VALUES (209, 'पूजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 129);
INSERT INTO public.dataupload_section VALUES (210, 'कवि परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 130);
INSERT INTO public.dataupload_section VALUES (211, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 130);
INSERT INTO public.dataupload_section VALUES (212, 'श्री कृष्ण का दूतकार्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 130);
INSERT INTO public.dataupload_section VALUES (213, 'कवि परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 131);
INSERT INTO public.dataupload_section VALUES (214, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 131);
INSERT INTO public.dataupload_section VALUES (215, 'सुखद जीवन-चित्रण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 131);
INSERT INTO public.dataupload_section VALUES (216, 'कवि परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 132);
INSERT INTO public.dataupload_section VALUES (217, 'पाठ परिचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 132);
INSERT INTO public.dataupload_section VALUES (218, 'वीर नारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 132);
INSERT INTO public.dataupload_section VALUES (219, 'ड्रम,संदूक एवं गेंद जैसी आकृतियों से परचय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 165);
INSERT INTO public.dataupload_section VALUES (220, 'वृत्त,चौकोर एवं तिकोनी आकृतियाँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 166);
INSERT INTO public.dataupload_section VALUES (221, 'सीधी तथा घुमावदार रेखायें बनाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 167);
INSERT INTO public.dataupload_section VALUES (222, 'आकार,आकृति,रंग के आधार पर वस्तुओ का वर्गीकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 168);
INSERT INTO public.dataupload_section VALUES (223, 'दो वस्तुओ की सापेक्ष स्थिति,कौन कहाँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 169);
INSERT INTO public.dataupload_section VALUES (224, 'एक से सौ तक संख्याएं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 170);
INSERT INTO public.dataupload_section VALUES (225, 'जोड़ और घटाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 171);
INSERT INTO public.dataupload_section VALUES (226, 'गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 172);
INSERT INTO public.dataupload_section VALUES (227, 'बराबर बटबारा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 173);
INSERT INTO public.dataupload_section VALUES (228, 'खुले सौ के', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 174);
INSERT INTO public.dataupload_section VALUES (229, 'मापन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 175);
INSERT INTO public.dataupload_section VALUES (230, 'हल्का भारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 176);
INSERT INTO public.dataupload_section VALUES (231, 'समय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 177);
INSERT INTO public.dataupload_section VALUES (232, 'धारिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 178);
INSERT INTO public.dataupload_section VALUES (233, 'आंकड़ों का प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 179);
INSERT INTO public.dataupload_section VALUES (234, 'आओ सजाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 180);
INSERT INTO public.dataupload_section VALUES (235, 'रोचक पहेलियाँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 181);
INSERT INTO public.dataupload_section VALUES (236, '1.1 प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 182);
INSERT INTO public.dataupload_section VALUES (237, '1.2 परिमेय संख्याओ पर संक्रियाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 182);
INSERT INTO public.dataupload_section VALUES (238, '1.3 परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 182);
INSERT INTO public.dataupload_section VALUES (239, '2.1 घन एवं घनमूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 183);
INSERT INTO public.dataupload_section VALUES (240, '2.2 घन संख्याओ से जुड़े कुछ पैटर्न', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 183);
INSERT INTO public.dataupload_section VALUES (241, '2.3 घनमूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 183);
INSERT INTO public.dataupload_section VALUES (242, '3.1 प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 184);
INSERT INTO public.dataupload_section VALUES (243, '3.2 घातांक (पूर्णांक),आधार (परिमेय संख्याये )', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 184);
INSERT INTO public.dataupload_section VALUES (244, '3.3 एक ओंर एक से अधिक संक्रियाओं वाले प्रश्न', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 184);
INSERT INTO public.dataupload_section VALUES (245, '3.4 वैज्ञानिक संकेतन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 184);
INSERT INTO public.dataupload_section VALUES (246, '4.1 प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 185);
INSERT INTO public.dataupload_section VALUES (247, '4.2 संख्याओं का व्यापक रूप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 185);
INSERT INTO public.dataupload_section VALUES (248, '4.3 संख्याओं के साथ खेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 185);
INSERT INTO public.dataupload_section VALUES (249, '4.4 भाजकता के नियम (बीजगणितीय सन्दर्भ में )', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 185);
INSERT INTO public.dataupload_section VALUES (250, '4.5 चार मूल संक्रियाओं (+,-,x तथा ÷ ) में रिक्त संख्याओं को ज्ञात करना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 185);
INSERT INTO public.dataupload_section VALUES (251, '4.6 कुछ ओंर तरीके', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 185);
INSERT INTO public.dataupload_section VALUES (252, '4.7 वर्ग पहेली', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 185);
INSERT INTO public.dataupload_section VALUES (253, '5.1 प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 186);
INSERT INTO public.dataupload_section VALUES (254, '5.2 तीन संख्याओं का गुणन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 186);
INSERT INTO public.dataupload_section VALUES (255, '5.3 घनफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 186);
INSERT INTO public.dataupload_section VALUES (256, '5.4 ध्वजांक विधि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 186);
INSERT INTO public.dataupload_section VALUES (257, '6.1 प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 187);
INSERT INTO public.dataupload_section VALUES (258, '6.2 बहुभुज के विकर्ण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 187);
INSERT INTO public.dataupload_section VALUES (259, '6.3 उत्तल ओंर अवतल बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 187);
INSERT INTO public.dataupload_section VALUES (260, '6.4 सम ओंर विषम बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 187);
INSERT INTO public.dataupload_section VALUES (261, '6.5 एक बहुभुज के बाह्य कोणों की मापों का योग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 187);
INSERT INTO public.dataupload_section VALUES (262, '6.6 चतुर्भुजों के गुण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 187);
INSERT INTO public.dataupload_section VALUES (332, 'राष्ट्रीय फूल कमल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 202);
INSERT INTO public.dataupload_section VALUES (263, '6.7 विभिन्न प्रकार के चतुर्भुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 187);
INSERT INTO public.dataupload_section VALUES (264, '7.1 चतुर्भुज की रचना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 188);
INSERT INTO public.dataupload_section VALUES (265, '8.1 प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 189);
INSERT INTO public.dataupload_section VALUES (266, '8.2 प्रिज्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 189);
INSERT INTO public.dataupload_section VALUES (267, '8.3 पिरामिड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 189);
INSERT INTO public.dataupload_section VALUES (268, '8.4 बहुफलकों के लिए आयलर सूत्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 189);
INSERT INTO public.dataupload_section VALUES (269, '8.5 त्रिविमीय आकारों का द्विमीय निरूपण (जाल रूप से )', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 189);
INSERT INTO public.dataupload_section VALUES (270, '9.1 प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 190);
INSERT INTO public.dataupload_section VALUES (271, '9.2 व्यंजक की घात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 190);
INSERT INTO public.dataupload_section VALUES (272, '9.3 सजातीय एवं विजातीय पद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 190);
INSERT INTO public.dataupload_section VALUES (273, '9.4 बीजगणितीय व्यंजकों का योग और व्यवकलन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 190);
INSERT INTO public.dataupload_section VALUES (274, '9.5 बीजीय व्यंजको का गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 190);
INSERT INTO public.dataupload_section VALUES (275, '9.6 सर्वसमिका', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 190);
INSERT INTO public.dataupload_section VALUES (276, '10.1 .गुणनखंड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 191);
INSERT INTO public.dataupload_section VALUES (277, '10.2 बीजीय व्यंजको के गुणनखंड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 191);
INSERT INTO public.dataupload_section VALUES (278, '10.3 समिकाओ के प्रयोग द्वारा गुणनखंड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 191);
INSERT INTO public.dataupload_section VALUES (279, '10.4 बीजीय व्यंजकों का विभाजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 191);
INSERT INTO public.dataupload_section VALUES (280, '11.1 प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 192);
INSERT INTO public.dataupload_section VALUES (281, '11.2 इबारती प्रश्नों का हल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 192);
INSERT INTO public.dataupload_section VALUES (282, '12.1 प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 193);
INSERT INTO public.dataupload_section VALUES (283, '12.2 कार्तीय पद्धति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 193);
INSERT INTO public.dataupload_section VALUES (284, '12.3 निर्देशांक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 193);
INSERT INTO public.dataupload_section VALUES (285, '12.4 लेखाचित्र द्वारा कुछ वास्तविक संबंधो का निरूपण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 193);
INSERT INTO public.dataupload_section VALUES (286, '12.5 आलेख (लेखा चित्र) को पढना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 193);
INSERT INTO public.dataupload_section VALUES (287, '13.1 प्रतिशत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 194);
INSERT INTO public.dataupload_section VALUES (288, '13.2 लाभ - हानि (अंकित मूल्य, कमीशन, वैट, बट्टा, ऊपरी खर्च, छूट, सेवाकर इत्त्यादि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 194);
INSERT INTO public.dataupload_section VALUES (289, '13.3 सरल ब्याज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 194);
INSERT INTO public.dataupload_section VALUES (290, '13.4 चक्रवृधि ब्याज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 194);
INSERT INTO public.dataupload_section VALUES (291, '13.5 वृद्धि दर पर आधारित व्यावहारिक समस्याएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 194);
INSERT INTO public.dataupload_section VALUES (292, '13.6 सीधा एवं प्रतिलोम सम्बन्ध की समझ एवं इस पर आधारित समस्याएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 194);
INSERT INTO public.dataupload_section VALUES (293, '14.1 प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 195);
INSERT INTO public.dataupload_section VALUES (294, '14.2 समलम्ब चतुर्भुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 195);
INSERT INTO public.dataupload_section VALUES (295, '14.3 समचतुर्भुज का क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 195);
INSERT INTO public.dataupload_section VALUES (296, '14.4 चतुर्भुज का क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 195);
INSERT INTO public.dataupload_section VALUES (297, '14.5 बहुभुज का क्षेत्रफल (फील्ड बुक)', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 195);
INSERT INTO public.dataupload_section VALUES (298, '15.1 प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 196);
INSERT INTO public.dataupload_section VALUES (299, '15.2 घन एवं घनाभ का पृष्ठीय क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 196);
INSERT INTO public.dataupload_section VALUES (300, '15.3 बेलन का पृष्ठीय क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 196);
INSERT INTO public.dataupload_section VALUES (301, '15.4 आयतन एवं मानक इकाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 196);
INSERT INTO public.dataupload_section VALUES (302, '16.1 प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 197);
INSERT INTO public.dataupload_section VALUES (303, '16.2 बारंबारता बंटन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 197);
INSERT INTO public.dataupload_section VALUES (304, '16.3 आयत चित्र-आंकड़ों का आलेखीय निरूपण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 197);
INSERT INTO public.dataupload_section VALUES (305, '16.4 वृत्त आलेख या पाई चार्ट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 197);
INSERT INTO public.dataupload_section VALUES (306, '16.5 संयोग और प्रायिकता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 197);
INSERT INTO public.dataupload_section VALUES (307, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 198);
INSERT INTO public.dataupload_section VALUES (308, 'ननिहाल में', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 198);
INSERT INTO public.dataupload_section VALUES (309, 'एकल परिवार व संयुक्त परिवार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 199);
INSERT INTO public.dataupload_section VALUES (310, 'परिवार मे काम करने की स्थिति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 199);
INSERT INTO public.dataupload_section VALUES (311, 'परिवार मे मुखिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 199);
INSERT INTO public.dataupload_section VALUES (312, 'परिवार मे कमाने वाले सदस्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 199);
INSERT INTO public.dataupload_section VALUES (313, 'पढ़ा लिखा परिवार या कम पढ़ा लिखा परिवार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 199);
INSERT INTO public.dataupload_section VALUES (314, 'आशीर्वाद लेना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 199);
INSERT INTO public.dataupload_section VALUES (315, 'अर्णी का परिचय व उसकी रुचि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 199);
INSERT INTO public.dataupload_section VALUES (316, 'सोच व मूल्यों मे परिवर्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 199);
INSERT INTO public.dataupload_section VALUES (317, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 200);
INSERT INTO public.dataupload_section VALUES (318, 'सुनकर जानू', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 200);
INSERT INTO public.dataupload_section VALUES (319, 'देखकर जानू', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 200);
INSERT INTO public.dataupload_section VALUES (320, 'सूंघकर जानू', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 200);
INSERT INTO public.dataupload_section VALUES (321, 'छुकर व चखकर जानो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 200);
INSERT INTO public.dataupload_section VALUES (322, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 201);
INSERT INTO public.dataupload_section VALUES (323, 'खेल की तैयारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 201);
INSERT INTO public.dataupload_section VALUES (324, 'खो - खो का खेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 201);
INSERT INTO public.dataupload_section VALUES (325, 'प्राथमिक चिकित्सा पेटी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 201);
INSERT INTO public.dataupload_section VALUES (326, 'कबडडी के खेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 201);
INSERT INTO public.dataupload_section VALUES (327, 'खेल भावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 201);
INSERT INTO public.dataupload_section VALUES (328, 'रंग बिरंगे फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 202);
INSERT INTO public.dataupload_section VALUES (329, 'मधुमक्खी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 202);
INSERT INTO public.dataupload_section VALUES (330, 'सजावट में', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 202);
INSERT INTO public.dataupload_section VALUES (331, 'चित्रों में', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 202);
INSERT INTO public.dataupload_section VALUES (333, 'राज्य फूल रोहिडा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 202);
INSERT INTO public.dataupload_section VALUES (334, 'जड़े', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 203);
INSERT INTO public.dataupload_section VALUES (335, 'तना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 203);
INSERT INTO public.dataupload_section VALUES (336, 'पेड़ हमारे साथी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 203);
INSERT INTO public.dataupload_section VALUES (337, 'पेड़ पौधों की सुरक्षा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 203);
INSERT INTO public.dataupload_section VALUES (338, 'कैसे कैसे कान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 204);
INSERT INTO public.dataupload_section VALUES (339, 'कान के आधार पर जानवरों की पहचान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 204);
INSERT INTO public.dataupload_section VALUES (340, 'पता कीजिये और लिखिए', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 204);
INSERT INTO public.dataupload_section VALUES (341, 'जीव-जंतु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 205);
INSERT INTO public.dataupload_section VALUES (342, 'जंगली जानवर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 205);
INSERT INTO public.dataupload_section VALUES (343, 'जंतु संरक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 205);
INSERT INTO public.dataupload_section VALUES (344, 'प्रकृति और हम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 205);
INSERT INTO public.dataupload_section VALUES (345, 'पानी के गुण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 206);
INSERT INTO public.dataupload_section VALUES (346, 'पानी का उपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 207);
INSERT INTO public.dataupload_section VALUES (347, 'पानी गंदा क्यो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 207);
INSERT INTO public.dataupload_section VALUES (348, 'पानी की सफाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 207);
INSERT INTO public.dataupload_section VALUES (349, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 208);
INSERT INTO public.dataupload_section VALUES (350, 'मिलकर खाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 208);
INSERT INTO public.dataupload_section VALUES (351, 'अलग अलग अवसरों पर खाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 208);
INSERT INTO public.dataupload_section VALUES (352, 'अच्छा खाना ,ख़राब खाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 208);
INSERT INTO public.dataupload_section VALUES (353, 'खाने की स्वच्छता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 208);
INSERT INTO public.dataupload_section VALUES (354, 'मौसमानुसार खाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 208);
INSERT INTO public.dataupload_section VALUES (355, 'खाना बनाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 208);
INSERT INTO public.dataupload_section VALUES (356, 'राजस्थान के कुछ पक्षी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 209);
INSERT INTO public.dataupload_section VALUES (357, 'अलग अलग पंजे क्यों ?', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 209);
INSERT INTO public.dataupload_section VALUES (358, 'अलग अलग चोंच क्यों ?', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 209);
INSERT INTO public.dataupload_section VALUES (359, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 210);
INSERT INTO public.dataupload_section VALUES (360, 'चॉकलेट खानी है', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 210);
INSERT INTO public.dataupload_section VALUES (361, 'दांतो के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 210);
INSERT INTO public.dataupload_section VALUES (362, 'हमारी आयु व दाँत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 210);
INSERT INTO public.dataupload_section VALUES (363, 'लाल-पीले दांत क्यों ?', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 210);
INSERT INTO public.dataupload_section VALUES (364, 'दांत खट्टे क्यों ?', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 210);
INSERT INTO public.dataupload_section VALUES (365, 'फसल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 211);
INSERT INTO public.dataupload_section VALUES (366, 'फसल के पकने पर किये जाने वाले काम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 211);
INSERT INTO public.dataupload_section VALUES (367, 'खेत से घर तक खाने के सामान का सफ़र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 211);
INSERT INTO public.dataupload_section VALUES (368, 'भोजन की आवश्यकता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 211);
INSERT INTO public.dataupload_section VALUES (369, 'सार्वजनिक वितरण प्रणाली', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 211);
INSERT INTO public.dataupload_section VALUES (370, 'सार्वजनिक वितरण प्रणाली क्या है', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 211);
INSERT INTO public.dataupload_section VALUES (371, 'चरक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 212);
INSERT INTO public.dataupload_section VALUES (372, 'सुश्रुत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 212);
INSERT INTO public.dataupload_section VALUES (373, 'रानी दुर्गावती', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 212);
INSERT INTO public.dataupload_section VALUES (374, 'वीर सावरकर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 212);
INSERT INTO public.dataupload_section VALUES (375, 'सरदार वल्लभ भाई पटेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 212);
INSERT INTO public.dataupload_section VALUES (376, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 213);
INSERT INTO public.dataupload_section VALUES (377, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 213);
INSERT INTO public.dataupload_section VALUES (378, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 214);
INSERT INTO public.dataupload_section VALUES (379, 'राजस्थान के धार्मिक मेले', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 214);
INSERT INTO public.dataupload_section VALUES (380, 'राजस्थान के व्यापारिक मेले', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 214);
INSERT INTO public.dataupload_section VALUES (381, 'घर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 215);
INSERT INTO public.dataupload_section VALUES (382, 'घर के अनेक स्वरुप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 215);
INSERT INTO public.dataupload_section VALUES (383, 'जानवरों के घर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 215);
INSERT INTO public.dataupload_section VALUES (384, 'स्व्च्छ घर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 216);
INSERT INTO public.dataupload_section VALUES (385, 'स्वच्छ गाँव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 216);
INSERT INTO public.dataupload_section VALUES (386, 'सफाई क्यों ?', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 216);
INSERT INTO public.dataupload_section VALUES (387, 'कचरा निस्तारण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 216);
INSERT INTO public.dataupload_section VALUES (388, 'चारों दिशाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 217);
INSERT INTO public.dataupload_section VALUES (389, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 218);
INSERT INTO public.dataupload_section VALUES (390, 'वस्त्र कैसे कैसे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 218);
INSERT INTO public.dataupload_section VALUES (391, 'वस्त्र के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 218);
INSERT INTO public.dataupload_section VALUES (392, 'कपड़ो को सुंदर व आकर्षक बनाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 218);
INSERT INTO public.dataupload_section VALUES (393, 'प्रमुख भारतीय परिधान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 218);
INSERT INTO public.dataupload_section VALUES (394, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 219);
INSERT INTO public.dataupload_section VALUES (395, 'यात्रा के साधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 219);
INSERT INTO public.dataupload_section VALUES (396, 'यात्रा के कारण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 219);
INSERT INTO public.dataupload_section VALUES (397, 'राजस्थान भ्रमण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 219);
INSERT INTO public.dataupload_section VALUES (398, 'राजस्थान के नक्शा में चिन्हिकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 219);
INSERT INTO public.dataupload_section VALUES (399, 'फसल एवं उसके प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 220);
INSERT INTO public.dataupload_section VALUES (400, 'राजस्थान के विभिन्न जिलों में उगाई जाने वाली प्रमुख फसलें', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 220);
INSERT INTO public.dataupload_section VALUES (401, 'फसल और पर्यावरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 220);
INSERT INTO public.dataupload_section VALUES (402, 'प्रोफेसर एम.एस. स्वामीनाथन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 220);
INSERT INTO public.dataupload_section VALUES (403, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 220);
INSERT INTO public.dataupload_section VALUES (404, 'प्रकृति में धातु और अधातु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 221);
INSERT INTO public.dataupload_section VALUES (405, 'धातु व अधातु के भौतिक गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 221);
INSERT INTO public.dataupload_section VALUES (406, 'धातु व अधातु के रासायनिक गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 221);
INSERT INTO public.dataupload_section VALUES (407, 'दैनिक जीवन में धातु और अधातु के उपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 221);
INSERT INTO public.dataupload_section VALUES (408, 'उत्कृष्ट धातुएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 221);
INSERT INTO public.dataupload_section VALUES (409, 'मिश्र धातु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 221);
INSERT INTO public.dataupload_section VALUES (410, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 221);
INSERT INTO public.dataupload_section VALUES (411, 'संश्लेषित रेशे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 222);
INSERT INTO public.dataupload_section VALUES (412, 'संश्लेषित रेशों के प्रकार एवं गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 223);
INSERT INTO public.dataupload_section VALUES (413, 'प्लास्टिक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 224);
INSERT INTO public.dataupload_section VALUES (414, 'प्लास्टिक के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 225);
INSERT INTO public.dataupload_section VALUES (415, 'प्लास्टिक के अनुप्रयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 226);
INSERT INTO public.dataupload_section VALUES (416, 'प्लास्टिक और पर्यावरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 227);
INSERT INTO public.dataupload_section VALUES (417, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 227);
INSERT INTO public.dataupload_section VALUES (418, 'रासायनिक अभिक्रिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 228);
INSERT INTO public.dataupload_section VALUES (419, 'रासायनिक अभिक्रिया के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 228);
INSERT INTO public.dataupload_section VALUES (420, 'रासायनिक अभिक्रिया के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 228);
INSERT INTO public.dataupload_section VALUES (421, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 228);
INSERT INTO public.dataupload_section VALUES (422, 'जैव विविधता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 229);
INSERT INTO public.dataupload_section VALUES (423, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 229);
INSERT INTO public.dataupload_section VALUES (424, 'पौधों में जनन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 230);
INSERT INTO public.dataupload_section VALUES (425, 'पौधों में जनन ,', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 230);
INSERT INTO public.dataupload_section VALUES (426, 'आप ने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 230);
INSERT INTO public.dataupload_section VALUES (427, 'रक्त परिसंचरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 231);
INSERT INTO public.dataupload_section VALUES (428, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 231);
INSERT INTO public.dataupload_section VALUES (429, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 232);
INSERT INTO public.dataupload_section VALUES (430, 'मनुष्यों में होने वाले सामान्य रोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 232);
INSERT INTO public.dataupload_section VALUES (431, 'रोग कारक कृमि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 232);
INSERT INTO public.dataupload_section VALUES (432, 'कुछ विशिष्ट रोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 232);
INSERT INTO public.dataupload_section VALUES (433, 'टीकाकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 232);
INSERT INTO public.dataupload_section VALUES (434, 'रोगों के निवारण हेतु राष्ट्रीय कार्यक्रम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 232);
INSERT INTO public.dataupload_section VALUES (435, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 232);
INSERT INTO public.dataupload_section VALUES (436, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 233);
INSERT INTO public.dataupload_section VALUES (437, 'कार्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 233);
INSERT INTO public.dataupload_section VALUES (438, 'ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 233);
INSERT INTO public.dataupload_section VALUES (439, 'ऊर्जा का मात्रक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 233);
INSERT INTO public.dataupload_section VALUES (440, 'यांत्रिक ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 233);
INSERT INTO public.dataupload_section VALUES (441, 'ऊर्जा का रूपांतरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 233);
INSERT INTO public.dataupload_section VALUES (442, 'ऊर्जा के विभिन्न स्त्रोत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 233);
INSERT INTO public.dataupload_section VALUES (443, 'ऊर्जा का संरक्षण के उपाय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 233);
INSERT INTO public.dataupload_section VALUES (444, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 233);
INSERT INTO public.dataupload_section VALUES (445, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 234);
INSERT INTO public.dataupload_section VALUES (446, 'ध्वनि की उत्पत्ति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 234);
INSERT INTO public.dataupload_section VALUES (447, 'मानव में वाक ध्वनि का उत्पन्न होना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 234);
INSERT INTO public.dataupload_section VALUES (448, 'ध्वनि का संचरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 234);
INSERT INTO public.dataupload_section VALUES (449, 'प्रबलता एवं तारत्व', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 234);
INSERT INTO public.dataupload_section VALUES (450, 'श्रव्य, अपश्रव्य व पराश्रव्य ध्वनि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 234);
INSERT INTO public.dataupload_section VALUES (451, 'मानव कर्ण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 234);
INSERT INTO public.dataupload_section VALUES (452, 'ध्वनि प्रदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 234);
INSERT INTO public.dataupload_section VALUES (453, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 234);
INSERT INTO public.dataupload_section VALUES (454, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 235);
INSERT INTO public.dataupload_section VALUES (455, 'विद्युत् धारा के ऊष्मीय प्रभाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 236);
INSERT INTO public.dataupload_section VALUES (456, 'फ्यूज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 236);
INSERT INTO public.dataupload_section VALUES (457, 'विद्युत् धारा का चुंबकीय प्रभाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 236);
INSERT INTO public.dataupload_section VALUES (458, 'विद्युत् चुम्बक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 236);
INSERT INTO public.dataupload_section VALUES (459, 'विद्युत् घंटी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 236);
INSERT INTO public.dataupload_section VALUES (460, 'द्रवों में विद्युत् चालन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 236);
INSERT INTO public.dataupload_section VALUES (461, 'विद्युत् धारा का रासायनिक प्रभाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 236);
INSERT INTO public.dataupload_section VALUES (462, 'विद्युत् लेपन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 236);
INSERT INTO public.dataupload_section VALUES (463, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 236);
INSERT INTO public.dataupload_section VALUES (464, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 237);
INSERT INTO public.dataupload_section VALUES (465, 'कृत्रिम उपग्रह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 237);
INSERT INTO public.dataupload_section VALUES (466, 'कृत्रिम उपग्रह प्रक्षेपण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 237);
INSERT INTO public.dataupload_section VALUES (467, 'कृत्रिम उपग्रह के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 237);
INSERT INTO public.dataupload_section VALUES (468, 'कृत्रिम उपग्रह के उपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 237);
INSERT INTO public.dataupload_section VALUES (469, 'भारत के प्रमुख कृत्रिम उपग्रह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 237);
INSERT INTO public.dataupload_section VALUES (470, 'भारतीय अंतरिक्ष अनुसंधान संगठन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 237);
INSERT INTO public.dataupload_section VALUES (471, 'वैज्ञानिक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 237);
INSERT INTO public.dataupload_section VALUES (472, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 237);
INSERT INTO public.dataupload_section VALUES (473, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_section VALUES (474, 'सूचना के प्रमुख साधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_section VALUES (475, 'कृत्रिम उपग्रह और संचार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_section VALUES (476, 'कंप्यूटर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_section VALUES (477, 'इंटरनेट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_section VALUES (478, 'सूचना प्रौद्योगिकी एवं सहज समाज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_section VALUES (479, 'साइबर सुरक्षा -क्या और क्यों', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_section VALUES (480, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_section VALUES (481, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 239);
INSERT INTO public.dataupload_section VALUES (482, 'प्रकाश का अपवर्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 239);
INSERT INTO public.dataupload_section VALUES (483, 'अपवर्तन पर आधारित घटनाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 239);
INSERT INTO public.dataupload_section VALUES (484, 'लेंस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 239);
INSERT INTO public.dataupload_section VALUES (485, 'लेंसों के उपयोग व प्रकाशीय उपकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 239);
INSERT INTO public.dataupload_section VALUES (486, 'मानव नेत्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 239);
INSERT INTO public.dataupload_section VALUES (487, 'प्रकाश का वर्ण विक्षेपण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 239);
INSERT INTO public.dataupload_section VALUES (488, 'वैज्ञानिक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 239);
INSERT INTO public.dataupload_section VALUES (489, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 239);
INSERT INTO public.dataupload_section VALUES (490, 'वायु दाब डालती है', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 240);
INSERT INTO public.dataupload_section VALUES (491, 'वायु दाब पर वायु प्रभावके वेग का प्रभाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 240);
INSERT INTO public.dataupload_section VALUES (492, 'पृथ्वी का असमान रूप से गर्म होना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 240);
INSERT INTO public.dataupload_section VALUES (493, 'थल और जल का असमान रूप से गर्म होना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 240);
INSERT INTO public.dataupload_section VALUES (494, 'तड़ित झंझावात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 240);
INSERT INTO public.dataupload_section VALUES (495, 'चक्रवात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 240);
INSERT INTO public.dataupload_section VALUES (496, 'टोरनेड़ो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 240);
INSERT INTO public.dataupload_section VALUES (497, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 240);
INSERT INTO public.dataupload_section VALUES (498, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 241);
INSERT INTO public.dataupload_section VALUES (499, 'वायु प्रदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 241);
INSERT INTO public.dataupload_section VALUES (500, 'अम्ल वर्षा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 241);
INSERT INTO public.dataupload_section VALUES (501, 'हरित ग्रह प्रभाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 241);
INSERT INTO public.dataupload_section VALUES (502, 'वायु प्रदूषण नियंत्रण के उपाय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 241);
INSERT INTO public.dataupload_section VALUES (503, 'जल प्रदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 241);
INSERT INTO public.dataupload_section VALUES (504, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 241);
INSERT INTO public.dataupload_section VALUES (505, 'प्रस्तावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 242);
INSERT INTO public.dataupload_section VALUES (506, 'पर्यावरण के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 242);
INSERT INTO public.dataupload_section VALUES (507, 'प्राकृतिक पर्यावरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 242);
INSERT INTO public.dataupload_section VALUES (508, 'पर्यावरण प्रदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 242);
INSERT INTO public.dataupload_section VALUES (509, 'पर्यावरण संरक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 242);
INSERT INTO public.dataupload_section VALUES (510, 'पर्यावरण रक्षा के लिए विभिन्न स्तर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 242);
INSERT INTO public.dataupload_section VALUES (511, 'पर्यावरण और भारतीय दृष्टिकोण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 242);
INSERT INTO public.dataupload_section VALUES (512, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 242);
INSERT INTO public.dataupload_section VALUES (513, 'कार्बन और ईंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 243);
INSERT INTO public.dataupload_section VALUES (514, 'कार्बन के अपररूप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 243);
INSERT INTO public.dataupload_section VALUES (515, 'कार्बन -ईंधन का आवश्यक अवयव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 243);
INSERT INTO public.dataupload_section VALUES (516, 'ईंधन के विभिन्न स्त्रोत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 243);
INSERT INTO public.dataupload_section VALUES (517, 'पेट्रोलियम का शोधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 243);
INSERT INTO public.dataupload_section VALUES (518, 'दहन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 243);
INSERT INTO public.dataupload_section VALUES (519, 'ऊर्जा -संरक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 243);
INSERT INTO public.dataupload_section VALUES (520, 'आपने क्या सीखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 243);
INSERT INTO public.dataupload_section VALUES (521, 'सड़क सुरक्षा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 244);


--
-- Data for Name: dataupload_sectionkeyword; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.dataupload_sectionkeyword VALUES (122, 'तुलना चिह्न', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 113);
INSERT INTO public.dataupload_sectionkeyword VALUES (123, 'बराबर चिह्न', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 113);
INSERT INTO public.dataupload_sectionkeyword VALUES (124, 'ऊपर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 114);
INSERT INTO public.dataupload_sectionkeyword VALUES (125, 'साइड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 114);
INSERT INTO public.dataupload_sectionkeyword VALUES (126, 'सामने', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 114);
INSERT INTO public.dataupload_sectionkeyword VALUES (127, 'नक्शा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 115);
INSERT INTO public.dataupload_sectionkeyword VALUES (128, 'देवनागरी अंक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 118);
INSERT INTO public.dataupload_sectionkeyword VALUES (129, 'हिंदी अंक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 118);
INSERT INTO public.dataupload_sectionkeyword VALUES (130, 'घटाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 119);
INSERT INTO public.dataupload_sectionkeyword VALUES (131, 'बाकी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 119);
INSERT INTO public.dataupload_sectionkeyword VALUES (132, 'हासिल की घटाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 120);
INSERT INTO public.dataupload_sectionkeyword VALUES (133, 'हासिल की घटाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 121);
INSERT INTO public.dataupload_sectionkeyword VALUES (134, 'घटाव व जोड़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 122);
INSERT INTO public.dataupload_sectionkeyword VALUES (135, 'द्विआयामी आकृतिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 125);
INSERT INTO public.dataupload_sectionkeyword VALUES (136, 'त्रिआयामी आकृतिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 126);
INSERT INTO public.dataupload_sectionkeyword VALUES (137, 'सममिति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 127);
INSERT INTO public.dataupload_sectionkeyword VALUES (138, 'सममिति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 128);
INSERT INTO public.dataupload_sectionkeyword VALUES (139, 'पहाड़े', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 129);
INSERT INTO public.dataupload_sectionkeyword VALUES (140, 'पहाड़े', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 130);
INSERT INTO public.dataupload_sectionkeyword VALUES (141, 'गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 131);
INSERT INTO public.dataupload_sectionkeyword VALUES (142, 'दो अंको के साथ गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 131);
INSERT INTO public.dataupload_sectionkeyword VALUES (143, 'तीन अंको के साथ गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 132);
INSERT INTO public.dataupload_sectionkeyword VALUES (144, 'भाग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 133);
INSERT INTO public.dataupload_sectionkeyword VALUES (145, 'बार बार घटाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 133);
INSERT INTO public.dataupload_sectionkeyword VALUES (146, 'पैटर्न', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 134);
INSERT INTO public.dataupload_sectionkeyword VALUES (147, 'पैटर्न', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_sectionkeyword VALUES (148, 'संख्याओं मेँ पैटर्न', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_sectionkeyword VALUES (149, 'मीटर से सेमी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_sectionkeyword VALUES (150, 'किग्रा से ग्राम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_sectionkeyword VALUES (151, 'लिटर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 139);
INSERT INTO public.dataupload_sectionkeyword VALUES (152, 'धारिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 139);
INSERT INTO public.dataupload_sectionkeyword VALUES (153, 'आयतन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 139);
INSERT INTO public.dataupload_sectionkeyword VALUES (154, 'धारिता का अनुमान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_sectionkeyword VALUES (155, 'मिली से लिटर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_sectionkeyword VALUES (156, 'लिटर से मिली', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_sectionkeyword VALUES (157, 'तारीख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 142);
INSERT INTO public.dataupload_sectionkeyword VALUES (158, 'दिनाँक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 142);
INSERT INTO public.dataupload_sectionkeyword VALUES (159, 'दिन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 143);
INSERT INTO public.dataupload_sectionkeyword VALUES (160, 'सप्ताह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 143);
INSERT INTO public.dataupload_sectionkeyword VALUES (161, 'माह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 143);
INSERT INTO public.dataupload_sectionkeyword VALUES (162, 'वर्ष', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 143);
INSERT INTO public.dataupload_sectionkeyword VALUES (163, 'समय व काम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_sectionkeyword VALUES (164, 'परिमाप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_sectionkeyword VALUES (165, 'क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_sectionkeyword VALUES (166, 'क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 146);
INSERT INTO public.dataupload_sectionkeyword VALUES (167, 'परिमाप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_sectionkeyword VALUES (168, 'मुद्रा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 148);
INSERT INTO public.dataupload_sectionkeyword VALUES (169, 'रुपये खुले करना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 148);
INSERT INTO public.dataupload_sectionkeyword VALUES (170, 'हिसाब किताब', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_sectionkeyword VALUES (171, 'आंकड़ो का प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_sectionkeyword VALUES (172, 'चित्रलेख अवलोकन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_sectionkeyword VALUES (173, 'स्वामी विवेकानंद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 152);
INSERT INTO public.dataupload_sectionkeyword VALUES (174, 'राष्ट्रीय आदर्श', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_sectionkeyword VALUES (175, 'युवाओ से', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_sectionkeyword VALUES (176, 'रामवृक्ष बेनीपुरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 155);
INSERT INTO public.dataupload_sectionkeyword VALUES (177, 'नि:स्वार्थ भावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_sectionkeyword VALUES (178, 'राष्ट्रोन्नति का भाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_sectionkeyword VALUES (179, 'जयशंकर प्रसाद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_sectionkeyword VALUES (180, 'मानवीय संवेदना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_sectionkeyword VALUES (181, 'स्वाभिमान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_sectionkeyword VALUES (182, 'वियोगी हरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_sectionkeyword VALUES (183, 'आस्तिकता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_sectionkeyword VALUES (184, 'दीन-दुखी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_sectionkeyword VALUES (185, 'हरिशंकर परसाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_sectionkeyword VALUES (186, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_sectionkeyword VALUES (187, 'भोला राम का जीव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 165);
INSERT INTO public.dataupload_sectionkeyword VALUES (188, 'भ्रष्टाचार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 166);
INSERT INTO public.dataupload_sectionkeyword VALUES (189, 'घूसखोरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 166);
INSERT INTO public.dataupload_sectionkeyword VALUES (190, 'महादेवी वर्मा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 167);
INSERT INTO public.dataupload_sectionkeyword VALUES (191, 'गिल्लू', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 168);
INSERT INTO public.dataupload_sectionkeyword VALUES (192, 'जीवों से प्रेम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 169);
INSERT INTO public.dataupload_sectionkeyword VALUES (193, 'सम्वेदना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 169);
INSERT INTO public.dataupload_sectionkeyword VALUES (194, 'पन्ना धाय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 170);
INSERT INTO public.dataupload_sectionkeyword VALUES (195, 'उदय सिंह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 171);
INSERT INTO public.dataupload_sectionkeyword VALUES (196, 'चितौड़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 172);
INSERT INTO public.dataupload_sectionkeyword VALUES (197, 'तीर्थ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 173);
INSERT INTO public.dataupload_sectionkeyword VALUES (198, 'कुम्भ मेला', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 174);
INSERT INTO public.dataupload_sectionkeyword VALUES (199, 'गंगा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 175);
INSERT INTO public.dataupload_sectionkeyword VALUES (200, 'दधीचि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 176);
INSERT INTO public.dataupload_sectionkeyword VALUES (201, 'कर्ण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 177);
INSERT INTO public.dataupload_sectionkeyword VALUES (202, 'भामाशाह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 178);
INSERT INTO public.dataupload_sectionkeyword VALUES (203, 'दानी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 179);
INSERT INTO public.dataupload_sectionkeyword VALUES (204, 'मानसरोवर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 180);
INSERT INTO public.dataupload_sectionkeyword VALUES (205, 'कैलाश', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 181);
INSERT INTO public.dataupload_sectionkeyword VALUES (206, 'हिमालय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 182);
INSERT INTO public.dataupload_sectionkeyword VALUES (207, 'दाहिर सेन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 183);
INSERT INTO public.dataupload_sectionkeyword VALUES (208, 'डॉ अब्दुल कलाम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 184);
INSERT INTO public.dataupload_sectionkeyword VALUES (209, 'कबीर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 185);
INSERT INTO public.dataupload_sectionkeyword VALUES (210, 'सूरदास', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 188);
INSERT INTO public.dataupload_sectionkeyword VALUES (211, 'सूर के पद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 189);
INSERT INTO public.dataupload_sectionkeyword VALUES (212, 'सूर के पद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 190);
INSERT INTO public.dataupload_sectionkeyword VALUES (213, 'केवट का भाग्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 191);
INSERT INTO public.dataupload_sectionkeyword VALUES (214, 'केवट का भाग्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 192);
INSERT INTO public.dataupload_sectionkeyword VALUES (215, 'केवट का भाग्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 193);
INSERT INTO public.dataupload_sectionkeyword VALUES (216, 'बिहारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 194);
INSERT INTO public.dataupload_sectionkeyword VALUES (217, 'बिहारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 195);
INSERT INTO public.dataupload_sectionkeyword VALUES (218, 'बिहारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 196);
INSERT INTO public.dataupload_sectionkeyword VALUES (219, 'मीराँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 197);
INSERT INTO public.dataupload_sectionkeyword VALUES (220, 'मीराँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 198);
INSERT INTO public.dataupload_sectionkeyword VALUES (221, 'मीराँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 199);
INSERT INTO public.dataupload_sectionkeyword VALUES (222, 'रहीम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 200);
INSERT INTO public.dataupload_sectionkeyword VALUES (223, 'रहीम के पद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 201);
INSERT INTO public.dataupload_sectionkeyword VALUES (224, 'बरवै', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 202);
INSERT INTO public.dataupload_sectionkeyword VALUES (225, 'दोहे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 202);
INSERT INTO public.dataupload_sectionkeyword VALUES (226, 'माखन लाल चतुर्वेदी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 203);
INSERT INTO public.dataupload_sectionkeyword VALUES (227, 'त्याग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 204);
INSERT INTO public.dataupload_sectionkeyword VALUES (228, 'देशभक्ति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 205);
INSERT INTO public.dataupload_sectionkeyword VALUES (229, 'परोपकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 206);
INSERT INTO public.dataupload_sectionkeyword VALUES (230, 'श्याम नारायण पाण्डेय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 207);
INSERT INTO public.dataupload_sectionkeyword VALUES (231, 'त्याग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 208);
INSERT INTO public.dataupload_sectionkeyword VALUES (232, 'बलिदान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 208);
INSERT INTO public.dataupload_sectionkeyword VALUES (233, 'पूजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 209);
INSERT INTO public.dataupload_sectionkeyword VALUES (234, 'रामधारी सिंह दिनकर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 210);
INSERT INTO public.dataupload_sectionkeyword VALUES (235, 'कृष्ण का दूतकार्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 211);
INSERT INTO public.dataupload_sectionkeyword VALUES (236, 'दूतकार्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 212);
INSERT INTO public.dataupload_sectionkeyword VALUES (237, 'सुभद्रा कुमारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 213);
INSERT INTO public.dataupload_sectionkeyword VALUES (238, 'मेरा जीवन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 214);
INSERT INTO public.dataupload_sectionkeyword VALUES (239, 'खुशहाल जीवन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 215);
INSERT INTO public.dataupload_sectionkeyword VALUES (240, 'सूर्यमल मीसण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 216);
INSERT INTO public.dataupload_sectionkeyword VALUES (241, 'वीर नारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 217);
INSERT INTO public.dataupload_sectionkeyword VALUES (242, 'वीरांगना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 218);
INSERT INTO public.dataupload_sectionkeyword VALUES (243, 'खिसकना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 219);
INSERT INTO public.dataupload_sectionkeyword VALUES (244, 'लुढ़कना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 219);
INSERT INTO public.dataupload_sectionkeyword VALUES (245, 'ड्रम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 219);
INSERT INTO public.dataupload_sectionkeyword VALUES (246, 'संदूक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 219);
INSERT INTO public.dataupload_sectionkeyword VALUES (247, 'गेंद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 219);
INSERT INTO public.dataupload_sectionkeyword VALUES (248, 'वृत्ताकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 220);
INSERT INTO public.dataupload_sectionkeyword VALUES (249, 'चौकोर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 220);
INSERT INTO public.dataupload_sectionkeyword VALUES (250, 'तिकोनी आकृति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 220);
INSERT INTO public.dataupload_sectionkeyword VALUES (251, 'सीधी रेखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 221);
INSERT INTO public.dataupload_sectionkeyword VALUES (252, 'घुमावदर रेखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 221);
INSERT INTO public.dataupload_sectionkeyword VALUES (253, 'चौकोर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 222);
INSERT INTO public.dataupload_sectionkeyword VALUES (254, 'वृत्त', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 222);
INSERT INTO public.dataupload_sectionkeyword VALUES (255, 'तिकोना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 222);
INSERT INTO public.dataupload_sectionkeyword VALUES (256, 'वस्तुओ का वर्गीकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 222);
INSERT INTO public.dataupload_sectionkeyword VALUES (257, 'ऊपर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 223);
INSERT INTO public.dataupload_sectionkeyword VALUES (258, 'नीचे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 223);
INSERT INTO public.dataupload_sectionkeyword VALUES (259, 'आगे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 223);
INSERT INTO public.dataupload_sectionkeyword VALUES (260, 'पीछे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 223);
INSERT INTO public.dataupload_sectionkeyword VALUES (261, 'बीच में', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 223);
INSERT INTO public.dataupload_sectionkeyword VALUES (262, 'पास', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 223);
INSERT INTO public.dataupload_sectionkeyword VALUES (263, 'एक से सौ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 224);
INSERT INTO public.dataupload_sectionkeyword VALUES (264, 'संख्या गिनना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 224);
INSERT INTO public.dataupload_sectionkeyword VALUES (265, 'संख्या लिखना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 224);
INSERT INTO public.dataupload_sectionkeyword VALUES (266, 'संख्या बोलना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 224);
INSERT INTO public.dataupload_sectionkeyword VALUES (267, 'दो अंको की संख्या में एक अंक की संख्या को जोड़ना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 225);
INSERT INTO public.dataupload_sectionkeyword VALUES (268, 'दो अंको की संख्या में एक अंक की संख्या को घटाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 225);
INSERT INTO public.dataupload_sectionkeyword VALUES (269, 'जोड़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 225);
INSERT INTO public.dataupload_sectionkeyword VALUES (270, 'घटाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 225);
INSERT INTO public.dataupload_sectionkeyword VALUES (271, 'गुणा बारबार जोड़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 226);
INSERT INTO public.dataupload_sectionkeyword VALUES (272, 'गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 226);
INSERT INTO public.dataupload_sectionkeyword VALUES (273, 'भाग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 227);
INSERT INTO public.dataupload_sectionkeyword VALUES (274, 'बराबर बटबारा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 227);
INSERT INTO public.dataupload_sectionkeyword VALUES (275, 'बटबारा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 227);
INSERT INTO public.dataupload_sectionkeyword VALUES (276, 'बाँटना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 227);
INSERT INTO public.dataupload_sectionkeyword VALUES (277, 'भारतीय मुद्रा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 228);
INSERT INTO public.dataupload_sectionkeyword VALUES (278, 'सिक्के', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 228);
INSERT INTO public.dataupload_sectionkeyword VALUES (279, 'नोट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 228);
INSERT INTO public.dataupload_sectionkeyword VALUES (280, 'मुद्रा सम्बन्धी गतिविधि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 228);
INSERT INTO public.dataupload_sectionkeyword VALUES (281, 'लम्बाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 229);
INSERT INTO public.dataupload_sectionkeyword VALUES (282, 'तुलना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 229);
INSERT INTO public.dataupload_sectionkeyword VALUES (283, 'मापन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 229);
INSERT INTO public.dataupload_sectionkeyword VALUES (284, 'अमानक इकाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 229);
INSERT INTO public.dataupload_sectionkeyword VALUES (285, 'भारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 230);
INSERT INTO public.dataupload_sectionkeyword VALUES (286, 'हल्का', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 230);
INSERT INTO public.dataupload_sectionkeyword VALUES (287, 'भार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 230);
INSERT INTO public.dataupload_sectionkeyword VALUES (288, 'आयतन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 230);
INSERT INTO public.dataupload_sectionkeyword VALUES (289, 'अंदाज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 230);
INSERT INTO public.dataupload_sectionkeyword VALUES (290, 'दिन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 231);
INSERT INTO public.dataupload_sectionkeyword VALUES (291, 'सप्ताह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 231);
INSERT INTO public.dataupload_sectionkeyword VALUES (292, 'महीना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 231);
INSERT INTO public.dataupload_sectionkeyword VALUES (293, 'बर्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 232);
INSERT INTO public.dataupload_sectionkeyword VALUES (294, 'धारिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 232);
INSERT INTO public.dataupload_sectionkeyword VALUES (295, 'आंकड़ों को व्यवस्थित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 233);
INSERT INTO public.dataupload_sectionkeyword VALUES (296, 'आंकड़ों को एकत्रित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 233);
INSERT INTO public.dataupload_sectionkeyword VALUES (297, 'रंग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 234);
INSERT INTO public.dataupload_sectionkeyword VALUES (298, 'आकृति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 234);
INSERT INTO public.dataupload_sectionkeyword VALUES (299, 'संख्याओं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 234);
INSERT INTO public.dataupload_sectionkeyword VALUES (300, 'पैटर्न', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 234);
INSERT INTO public.dataupload_sectionkeyword VALUES (301, 'गणित की रोचकता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 235);
INSERT INTO public.dataupload_sectionkeyword VALUES (302, 'पहेलियाँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 235);
INSERT INTO public.dataupload_sectionkeyword VALUES (303, 'गणित के खेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 235);
INSERT INTO public.dataupload_sectionkeyword VALUES (304, 'परिमेय संख्याएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 236);
INSERT INTO public.dataupload_sectionkeyword VALUES (305, 'घन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 239);
INSERT INTO public.dataupload_sectionkeyword VALUES (306, 'घनमूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 239);
INSERT INTO public.dataupload_sectionkeyword VALUES (307, 'घनमूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 241);
INSERT INTO public.dataupload_sectionkeyword VALUES (308, 'घात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 242);
INSERT INTO public.dataupload_sectionkeyword VALUES (309, 'घातांक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 242);
INSERT INTO public.dataupload_sectionkeyword VALUES (310, 'घात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 243);
INSERT INTO public.dataupload_sectionkeyword VALUES (311, 'घातांक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 243);
INSERT INTO public.dataupload_sectionkeyword VALUES (312, 'पूर्णांक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 243);
INSERT INTO public.dataupload_sectionkeyword VALUES (313, 'परिमेय संख्याये', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 243);
INSERT INTO public.dataupload_sectionkeyword VALUES (314, 'घात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 244);
INSERT INTO public.dataupload_sectionkeyword VALUES (315, 'घातांक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 244);
INSERT INTO public.dataupload_sectionkeyword VALUES (316, 'एक से अधिक संक्रियाओं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 244);
INSERT INTO public.dataupload_sectionkeyword VALUES (317, 'एक संक्रियाओं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 244);
INSERT INTO public.dataupload_sectionkeyword VALUES (318, 'दिमागी कसरत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 246);
INSERT INTO public.dataupload_sectionkeyword VALUES (319, 'दिमागी कसरत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 247);
INSERT INTO public.dataupload_sectionkeyword VALUES (320, 'व्यापक रूप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 247);
INSERT INTO public.dataupload_sectionkeyword VALUES (321, 'दिमागी कसरत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 249);
INSERT INTO public.dataupload_sectionkeyword VALUES (322, 'भाजकता के नियम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 249);
INSERT INTO public.dataupload_sectionkeyword VALUES (323, 'बीजगणितीय सन्दर्भ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 249);
INSERT INTO public.dataupload_sectionkeyword VALUES (324, 'दिमागी कसरत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 250);
INSERT INTO public.dataupload_sectionkeyword VALUES (325, 'रिक्त संख्याओं को ज्ञात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 250);
INSERT INTO public.dataupload_sectionkeyword VALUES (326, 'मूल संक्रियाओं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 250);
INSERT INTO public.dataupload_sectionkeyword VALUES (327, 'दिमागी कसरत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 251);
INSERT INTO public.dataupload_sectionkeyword VALUES (328, 'दिमागी कसरत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 252);
INSERT INTO public.dataupload_sectionkeyword VALUES (329, '4.7 वर्ग पहेली', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 252);
INSERT INTO public.dataupload_sectionkeyword VALUES (330, 'वैदिक गणित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 253);
INSERT INTO public.dataupload_sectionkeyword VALUES (331, 'वैदिक गणित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 255);
INSERT INTO public.dataupload_sectionkeyword VALUES (332, '5.3 घनफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 255);
INSERT INTO public.dataupload_sectionkeyword VALUES (333, 'वैदिक गणित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 256);
INSERT INTO public.dataupload_sectionkeyword VALUES (334, '5.4 ध्वजांक विधि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 256);
INSERT INTO public.dataupload_sectionkeyword VALUES (335, 'बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 257);
INSERT INTO public.dataupload_sectionkeyword VALUES (336, 'बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 258);
INSERT INTO public.dataupload_sectionkeyword VALUES (337, 'विकर्ण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 258);
INSERT INTO public.dataupload_sectionkeyword VALUES (338, 'बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 259);
INSERT INTO public.dataupload_sectionkeyword VALUES (339, '6.3 उत्तल ओंर अवतल बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 259);
INSERT INTO public.dataupload_sectionkeyword VALUES (340, 'बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 260);
INSERT INTO public.dataupload_sectionkeyword VALUES (341, 'अन्तः कोणों का योग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 260);
INSERT INTO public.dataupload_sectionkeyword VALUES (342, 'बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 261);
INSERT INTO public.dataupload_sectionkeyword VALUES (343, '6.5 एक बहुभुज के बाह्य कोणों की मापों का योग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 261);
INSERT INTO public.dataupload_sectionkeyword VALUES (344, 'बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 262);
INSERT INTO public.dataupload_sectionkeyword VALUES (345, '6.6 चतुर्भुजों के गुण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 262);
INSERT INTO public.dataupload_sectionkeyword VALUES (346, 'ठोस आकारों का चित्रण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 265);
INSERT INTO public.dataupload_sectionkeyword VALUES (347, 'ठोस आकारों का चित्रण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 267);
INSERT INTO public.dataupload_sectionkeyword VALUES (348, '8.3 पिरामिड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 267);
INSERT INTO public.dataupload_sectionkeyword VALUES (349, 'ठोस आकारों का चित्रण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 268);
INSERT INTO public.dataupload_sectionkeyword VALUES (350, 'आयलर सूत्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 268);
INSERT INTO public.dataupload_sectionkeyword VALUES (351, 'बहुफलक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 268);
INSERT INTO public.dataupload_sectionkeyword VALUES (352, 'बीजीय व्यंजक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 270);
INSERT INTO public.dataupload_sectionkeyword VALUES (353, 'बीजीय व्यंजक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 271);
INSERT INTO public.dataupload_sectionkeyword VALUES (354, '9.2 व्यंजक की घात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 271);
INSERT INTO public.dataupload_sectionkeyword VALUES (355, 'बीजीय व्यंजक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 272);
INSERT INTO public.dataupload_sectionkeyword VALUES (356, 'सजातीय पद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 272);
INSERT INTO public.dataupload_sectionkeyword VALUES (357, 'विजातीय पद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 272);
INSERT INTO public.dataupload_sectionkeyword VALUES (358, 'बीजीय व्यंजक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 273);
INSERT INTO public.dataupload_sectionkeyword VALUES (359, 'बीजगणितीय व्यंजकों का योग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 273);
INSERT INTO public.dataupload_sectionkeyword VALUES (360, 'बीजगणितीय व्यंजकों व्यवकलन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 273);
INSERT INTO public.dataupload_sectionkeyword VALUES (361, 'बीजीय व्यंजक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 275);
INSERT INTO public.dataupload_sectionkeyword VALUES (362, 'सर्वसमिका', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 275);
INSERT INTO public.dataupload_sectionkeyword VALUES (363, '.गुणनखंड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 276);
INSERT INTO public.dataupload_sectionkeyword VALUES (364, 'रैखिक समीकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 280);
INSERT INTO public.dataupload_sectionkeyword VALUES (365, 'रैखिक समीकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 281);
INSERT INTO public.dataupload_sectionkeyword VALUES (366, 'इबारती प्रश्न', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 281);
INSERT INTO public.dataupload_sectionkeyword VALUES (367, 'रैखिक आलेख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 282);
INSERT INTO public.dataupload_sectionkeyword VALUES (368, 'रैखिक आलेख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 283);
INSERT INTO public.dataupload_sectionkeyword VALUES (369, '12.2 कार्तीय पद्धति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 283);
INSERT INTO public.dataupload_sectionkeyword VALUES (370, 'रैखिक आलेख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 284);
INSERT INTO public.dataupload_sectionkeyword VALUES (371, '12.3 निर्देशांक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 284);
INSERT INTO public.dataupload_sectionkeyword VALUES (372, 'रैखिक आलेख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 285);
INSERT INTO public.dataupload_sectionkeyword VALUES (373, 'लेखाचित्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 285);
INSERT INTO public.dataupload_sectionkeyword VALUES (374, 'रैखिक आलेख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 286);
INSERT INTO public.dataupload_sectionkeyword VALUES (375, 'आलेख को पढना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 286);
INSERT INTO public.dataupload_sectionkeyword VALUES (376, 'लेखा चित्र को पढना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 286);
INSERT INTO public.dataupload_sectionkeyword VALUES (377, 'राशियों की तुलना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 287);
INSERT INTO public.dataupload_sectionkeyword VALUES (378, '13.1 प्रतिशत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 287);
INSERT INTO public.dataupload_sectionkeyword VALUES (379, 'राशियों की तुलना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_sectionkeyword VALUES (380, 'लाभ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_sectionkeyword VALUES (381, 'हानि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_sectionkeyword VALUES (382, 'अंकित मूल्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_sectionkeyword VALUES (383, 'कमीशन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_sectionkeyword VALUES (384, 'वैट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_sectionkeyword VALUES (385, 'बट्टा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_sectionkeyword VALUES (386, 'ऊपरी खर्च', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_sectionkeyword VALUES (387, 'छूट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_sectionkeyword VALUES (388, 'सेवाकर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_sectionkeyword VALUES (389, 'राशियों की तुलना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 289);
INSERT INTO public.dataupload_sectionkeyword VALUES (390, '13.3 सरल ब्याज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 289);
INSERT INTO public.dataupload_sectionkeyword VALUES (391, 'राशियों की तुलना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 290);
INSERT INTO public.dataupload_sectionkeyword VALUES (392, '13.4 चक्रवृधि ब्याज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 290);
INSERT INTO public.dataupload_sectionkeyword VALUES (393, 'राशियों की तुलना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_sectionkeyword VALUES (394, 'वृद्धि दर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_sectionkeyword VALUES (395, 'राशियों की तुलना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_sectionkeyword VALUES (396, 'सीधा सम्बन्ध', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_sectionkeyword VALUES (397, 'प्रतिलोम सम्बन्ध', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_sectionkeyword VALUES (398, 'क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 293);
INSERT INTO public.dataupload_sectionkeyword VALUES (399, 'क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 294);
INSERT INTO public.dataupload_sectionkeyword VALUES (400, 'समलम्ब चतुर्भुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 294);
INSERT INTO public.dataupload_sectionkeyword VALUES (401, 'क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 295);
INSERT INTO public.dataupload_sectionkeyword VALUES (402, 'समचतुर्भुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 295);
INSERT INTO public.dataupload_sectionkeyword VALUES (403, 'क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 296);
INSERT INTO public.dataupload_sectionkeyword VALUES (404, 'चतुर्भुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 296);
INSERT INTO public.dataupload_sectionkeyword VALUES (405, 'पृष्ठीय क्षेत्रफल एवं आयतन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 298);
INSERT INTO public.dataupload_sectionkeyword VALUES (406, 'पृष्ठीय क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 299);
INSERT INTO public.dataupload_sectionkeyword VALUES (407, 'घनाभ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 299);
INSERT INTO public.dataupload_sectionkeyword VALUES (408, 'घन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 299);
INSERT INTO public.dataupload_sectionkeyword VALUES (409, 'पृष्ठीय क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 300);
INSERT INTO public.dataupload_sectionkeyword VALUES (410, 'बेलन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 300);
INSERT INTO public.dataupload_sectionkeyword VALUES (411, 'आंकड़ों का प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 302);
INSERT INTO public.dataupload_sectionkeyword VALUES (412, 'नाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 307);
INSERT INTO public.dataupload_sectionkeyword VALUES (413, 'ननिहाल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 307);
INSERT INTO public.dataupload_sectionkeyword VALUES (414, 'माँ का घर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 307);
INSERT INTO public.dataupload_sectionkeyword VALUES (415, 'माँ का पीहर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 307);
INSERT INTO public.dataupload_sectionkeyword VALUES (416, 'मामा का घर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 307);
INSERT INTO public.dataupload_sectionkeyword VALUES (417, 'ननिहाल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 308);
INSERT INTO public.dataupload_sectionkeyword VALUES (418, 'माँ का पीहर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 308);
INSERT INTO public.dataupload_sectionkeyword VALUES (419, 'माँ का घर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 308);
INSERT INTO public.dataupload_sectionkeyword VALUES (420, 'माँ का बचपन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 308);
INSERT INTO public.dataupload_sectionkeyword VALUES (421, 'बचपन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 308);
INSERT INTO public.dataupload_sectionkeyword VALUES (422, 'कमाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 312);
INSERT INTO public.dataupload_sectionkeyword VALUES (423, 'ज्ञानेन्द्रियों की पहचान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 317);
INSERT INTO public.dataupload_sectionkeyword VALUES (424, 'जीभ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 321);
INSERT INTO public.dataupload_sectionkeyword VALUES (425, 'चखना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 321);
INSERT INTO public.dataupload_sectionkeyword VALUES (426, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 321);
INSERT INTO public.dataupload_sectionkeyword VALUES (427, 'खेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 322);
INSERT INTO public.dataupload_sectionkeyword VALUES (428, 'खेल भावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 322);
INSERT INTO public.dataupload_sectionkeyword VALUES (429, 'खेल भावना का विकास', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 322);
INSERT INTO public.dataupload_sectionkeyword VALUES (430, 'खेलो का महत्त्व', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 322);
INSERT INTO public.dataupload_sectionkeyword VALUES (431, 'गुलाब', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 328);
INSERT INTO public.dataupload_sectionkeyword VALUES (432, 'फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 328);
INSERT INTO public.dataupload_sectionkeyword VALUES (433, 'गुलाबी फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 328);
INSERT INTO public.dataupload_sectionkeyword VALUES (434, 'स्थलीय फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 328);
INSERT INTO public.dataupload_sectionkeyword VALUES (435, 'सूरजमुखी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 328);
INSERT INTO public.dataupload_sectionkeyword VALUES (436, 'पीले फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 328);
INSERT INTO public.dataupload_sectionkeyword VALUES (437, 'सजावट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 330);
INSERT INTO public.dataupload_sectionkeyword VALUES (438, 'पूजा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 330);
INSERT INTO public.dataupload_sectionkeyword VALUES (439, 'घर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 330);
INSERT INTO public.dataupload_sectionkeyword VALUES (440, 'मन्दिर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 330);
INSERT INTO public.dataupload_sectionkeyword VALUES (441, 'चित्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 331);
INSERT INTO public.dataupload_sectionkeyword VALUES (442, 'सजावट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 331);
INSERT INTO public.dataupload_sectionkeyword VALUES (443, 'वस्त्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 331);
INSERT INTO public.dataupload_sectionkeyword VALUES (444, 'बर्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 331);
INSERT INTO public.dataupload_sectionkeyword VALUES (445, 'दिवार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 331);
INSERT INTO public.dataupload_sectionkeyword VALUES (446, 'कमल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 332);
INSERT INTO public.dataupload_sectionkeyword VALUES (447, 'जलीय फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 332);
INSERT INTO public.dataupload_sectionkeyword VALUES (448, 'राष्ट्रीय फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 332);
INSERT INTO public.dataupload_sectionkeyword VALUES (449, 'रोहिडा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 333);
INSERT INTO public.dataupload_sectionkeyword VALUES (450, 'राज्य फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 333);
INSERT INTO public.dataupload_sectionkeyword VALUES (451, 'पौधों के विभिन्न भाग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 334);
INSERT INTO public.dataupload_sectionkeyword VALUES (452, 'जड़े', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 334);
INSERT INTO public.dataupload_sectionkeyword VALUES (453, 'विभिन्न जड़ो के काम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 334);
INSERT INTO public.dataupload_sectionkeyword VALUES (454, 'पेडो के लाभ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 336);
INSERT INTO public.dataupload_sectionkeyword VALUES (455, 'पेड़ो से प्राप्त सामग्री', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 336);
INSERT INTO public.dataupload_sectionkeyword VALUES (456, 'सुरक्षा जरुरी क्यों', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 337);
INSERT INTO public.dataupload_sectionkeyword VALUES (457, 'पेड़ पौधों की देखभाल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 337);
INSERT INTO public.dataupload_sectionkeyword VALUES (458, 'जानवरों के कान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 338);
INSERT INTO public.dataupload_sectionkeyword VALUES (459, 'कान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 338);
INSERT INTO public.dataupload_sectionkeyword VALUES (460, 'कानों के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 338);
INSERT INTO public.dataupload_sectionkeyword VALUES (461, 'जानवरों के कान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 339);
INSERT INTO public.dataupload_sectionkeyword VALUES (462, 'कान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 339);
INSERT INTO public.dataupload_sectionkeyword VALUES (463, 'कानों के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 339);
INSERT INTO public.dataupload_sectionkeyword VALUES (464, 'कान के आधार पर जानवरों की पहचान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 339);
INSERT INTO public.dataupload_sectionkeyword VALUES (465, 'जानवरों के कान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 340);
INSERT INTO public.dataupload_sectionkeyword VALUES (466, 'कान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 340);
INSERT INTO public.dataupload_sectionkeyword VALUES (467, 'कानों के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 340);
INSERT INTO public.dataupload_sectionkeyword VALUES (468, 'कान के आधार पर जानवरों का वर्गीकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 340);
INSERT INTO public.dataupload_sectionkeyword VALUES (469, 'सामुहिक भोज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 349);
INSERT INTO public.dataupload_sectionkeyword VALUES (470, 'एक साथ बैठकर भोजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 349);
INSERT INTO public.dataupload_sectionkeyword VALUES (471, 'अलग अलग अवसरों पर खाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 351);
INSERT INTO public.dataupload_sectionkeyword VALUES (472, 'परिक्षेत्र में मनाये जाने वाले पर्व', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 351);
INSERT INTO public.dataupload_sectionkeyword VALUES (473, 'अचछा खाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 352);
INSERT INTO public.dataupload_sectionkeyword VALUES (474, 'ख़राब खाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 352);
INSERT INTO public.dataupload_sectionkeyword VALUES (475, 'खाना ख़राब क्यों होता है', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 352);
INSERT INTO public.dataupload_sectionkeyword VALUES (476, 'ख़राब खाने की जानकारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 352);
INSERT INTO public.dataupload_sectionkeyword VALUES (477, 'खाने की स्वच्छता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 353);
INSERT INTO public.dataupload_sectionkeyword VALUES (478, 'स्वच्छता की जरुरत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 353);
INSERT INTO public.dataupload_sectionkeyword VALUES (479, 'मौसमानुसार खाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 354);
INSERT INTO public.dataupload_sectionkeyword VALUES (480, 'सर्दी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 354);
INSERT INTO public.dataupload_sectionkeyword VALUES (481, 'गर्मी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 354);
INSERT INTO public.dataupload_sectionkeyword VALUES (482, 'बरसात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 354);
INSERT INTO public.dataupload_sectionkeyword VALUES (483, 'दाँत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 359);
INSERT INTO public.dataupload_sectionkeyword VALUES (484, 'दांतों का रख -रखाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 359);
INSERT INTO public.dataupload_sectionkeyword VALUES (485, 'दांतो के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 361);
INSERT INTO public.dataupload_sectionkeyword VALUES (486, 'दांत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 363);
INSERT INTO public.dataupload_sectionkeyword VALUES (487, 'तम्बाकू', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 363);
INSERT INTO public.dataupload_sectionkeyword VALUES (488, 'कैंसर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 363);
INSERT INTO public.dataupload_sectionkeyword VALUES (489, 'फसल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 365);
INSERT INTO public.dataupload_sectionkeyword VALUES (490, 'बाजार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 367);
INSERT INTO public.dataupload_sectionkeyword VALUES (491, 'दुकाने', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 367);
INSERT INTO public.dataupload_sectionkeyword VALUES (492, 'मंडी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 367);
INSERT INTO public.dataupload_sectionkeyword VALUES (493, 'भजन की आवश्यकता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 368);
INSERT INTO public.dataupload_sectionkeyword VALUES (494, 'पोष्टिक भोजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 369);
INSERT INTO public.dataupload_sectionkeyword VALUES (495, 'सार्वजनिक वितरण प्रणाली', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 369);
INSERT INTO public.dataupload_sectionkeyword VALUES (496, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 376);
INSERT INTO public.dataupload_sectionkeyword VALUES (497, 'प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 376);
INSERT INTO public.dataupload_sectionkeyword VALUES (498, 'मेले', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 378);
INSERT INTO public.dataupload_sectionkeyword VALUES (499, 'राजस्थान के मेले', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 378);
INSERT INTO public.dataupload_sectionkeyword VALUES (500, 'घर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 381);
INSERT INTO public.dataupload_sectionkeyword VALUES (501, 'घर की जरुरत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 381);
INSERT INTO public.dataupload_sectionkeyword VALUES (502, 'घर के स्वरुप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 382);
INSERT INTO public.dataupload_sectionkeyword VALUES (503, 'घर के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 382);
INSERT INTO public.dataupload_sectionkeyword VALUES (504, 'जानवर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 383);
INSERT INTO public.dataupload_sectionkeyword VALUES (505, 'जानवर और घर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 383);
INSERT INTO public.dataupload_sectionkeyword VALUES (506, 'स्वछता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 384);
INSERT INTO public.dataupload_sectionkeyword VALUES (507, 'सफाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 384);
INSERT INTO public.dataupload_sectionkeyword VALUES (508, 'हमारा घर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 384);
INSERT INTO public.dataupload_sectionkeyword VALUES (509, 'विकास एवं मौसम के आधार पर वस्त्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 389);
INSERT INTO public.dataupload_sectionkeyword VALUES (510, 'विकास एवं मौसम के आधार पर वस्त्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 390);
INSERT INTO public.dataupload_sectionkeyword VALUES (511, 'रंगाई और छपाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 392);
INSERT INTO public.dataupload_sectionkeyword VALUES (512, 'विभिन्न प्रदेशो की पोशाके', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 393);
INSERT INTO public.dataupload_sectionkeyword VALUES (513, 'यात्रा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 394);
INSERT INTO public.dataupload_sectionkeyword VALUES (514, 'घूमना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 394);
INSERT INTO public.dataupload_sectionkeyword VALUES (515, 'सफर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 394);
INSERT INTO public.dataupload_sectionkeyword VALUES (516, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 394);
INSERT INTO public.dataupload_sectionkeyword VALUES (517, 'यात्रा के साधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 395);
INSERT INTO public.dataupload_sectionkeyword VALUES (518, 'बस से यात्रा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 395);
INSERT INTO public.dataupload_sectionkeyword VALUES (519, 'घूमने के साधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 395);
INSERT INTO public.dataupload_sectionkeyword VALUES (520, 'यात्रा के कारण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 396);
INSERT INTO public.dataupload_sectionkeyword VALUES (521, 'यात्रा क्यो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 396);
INSERT INTO public.dataupload_sectionkeyword VALUES (522, 'घूमने क्यो जाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 396);
INSERT INTO public.dataupload_sectionkeyword VALUES (523, 'झीलों की नगरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 398);
INSERT INTO public.dataupload_sectionkeyword VALUES (524, 'हल्दीघाटी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 398);
INSERT INTO public.dataupload_sectionkeyword VALUES (525, 'उदयपुर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 398);
INSERT INTO public.dataupload_sectionkeyword VALUES (526, 'जैसलमेर के दर्शनीय स्थल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 398);
INSERT INTO public.dataupload_sectionkeyword VALUES (527, 'सोनार किला', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 398);
INSERT INTO public.dataupload_sectionkeyword VALUES (528, 'मरू -महोत्सव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 398);
INSERT INTO public.dataupload_sectionkeyword VALUES (529, 'पर्यावरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 401);
INSERT INTO public.dataupload_sectionkeyword VALUES (530, 'बाढ़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 401);
INSERT INTO public.dataupload_sectionkeyword VALUES (531, 'जीवन की सुरक्षा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 401);
INSERT INTO public.dataupload_sectionkeyword VALUES (532, 'प्रोफेसर स्वामीनाथन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 402);
INSERT INTO public.dataupload_sectionkeyword VALUES (533, 'हरित क्रांति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 402);
INSERT INTO public.dataupload_sectionkeyword VALUES (534, 'आनुवंशिकी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 402);
INSERT INTO public.dataupload_sectionkeyword VALUES (535, 'धातु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 404);
INSERT INTO public.dataupload_sectionkeyword VALUES (536, 'अधातु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 404);
INSERT INTO public.dataupload_sectionkeyword VALUES (537, 'चमकदार वस्तु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 404);
INSERT INTO public.dataupload_sectionkeyword VALUES (538, 'चमक रहित वस्तु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 404);
INSERT INTO public.dataupload_sectionkeyword VALUES (539, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 404);
INSERT INTO public.dataupload_sectionkeyword VALUES (540, 'सोना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 408);
INSERT INTO public.dataupload_sectionkeyword VALUES (541, 'चाँदी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 408);
INSERT INTO public.dataupload_sectionkeyword VALUES (542, 'धातुएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 408);
INSERT INTO public.dataupload_sectionkeyword VALUES (543, 'आभूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 409);
INSERT INTO public.dataupload_sectionkeyword VALUES (544, 'स्टील', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 409);
INSERT INTO public.dataupload_sectionkeyword VALUES (545, 'पीतल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 409);
INSERT INTO public.dataupload_sectionkeyword VALUES (546, 'पैराशूट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 411);
INSERT INTO public.dataupload_sectionkeyword VALUES (547, 'ब्रश', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 411);
INSERT INTO public.dataupload_sectionkeyword VALUES (548, 'पर्दे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 411);
INSERT INTO public.dataupload_sectionkeyword VALUES (549, 'प्राकृतिक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 411);
INSERT INTO public.dataupload_sectionkeyword VALUES (550, 'कृत्रिम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 411);
INSERT INTO public.dataupload_sectionkeyword VALUES (551, 'रेयोन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 412);
INSERT INTO public.dataupload_sectionkeyword VALUES (552, 'नायलोन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 412);
INSERT INTO public.dataupload_sectionkeyword VALUES (553, 'आरलोन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 412);
INSERT INTO public.dataupload_sectionkeyword VALUES (554, 'डेक्रोन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 412);
INSERT INTO public.dataupload_sectionkeyword VALUES (555, 'बाल्टी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 413);
INSERT INTO public.dataupload_sectionkeyword VALUES (556, 'ब्रश', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 413);
INSERT INTO public.dataupload_sectionkeyword VALUES (557, 'डिब्बे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 413);
INSERT INTO public.dataupload_sectionkeyword VALUES (558, 'खिलौने', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 413);
INSERT INTO public.dataupload_sectionkeyword VALUES (559, 'बिजली के स्विच', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 413);
INSERT INTO public.dataupload_sectionkeyword VALUES (560, 'बर्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 413);
INSERT INTO public.dataupload_sectionkeyword VALUES (561, 'डिब्बे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 415);
INSERT INTO public.dataupload_sectionkeyword VALUES (562, 'खिलौने', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 415);
INSERT INTO public.dataupload_sectionkeyword VALUES (563, 'बर्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 415);
INSERT INTO public.dataupload_sectionkeyword VALUES (564, 'स्विच', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 415);
INSERT INTO public.dataupload_sectionkeyword VALUES (565, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 415);
INSERT INTO public.dataupload_sectionkeyword VALUES (566, 'आयरन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 418);
INSERT INTO public.dataupload_sectionkeyword VALUES (567, 'सल्फर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 418);
INSERT INTO public.dataupload_sectionkeyword VALUES (568, 'आयरन सल्फाइड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 418);
INSERT INTO public.dataupload_sectionkeyword VALUES (569, 'गैस का उत्पन्न होना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 419);
INSERT INTO public.dataupload_sectionkeyword VALUES (570, 'रंग परिवर्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 419);
INSERT INTO public.dataupload_sectionkeyword VALUES (571, 'ऊष्मा परिवर्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 419);
INSERT INTO public.dataupload_sectionkeyword VALUES (572, 'अवक्षपेण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 419);
INSERT INTO public.dataupload_sectionkeyword VALUES (573, 'जैव विविधता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 422);
INSERT INTO public.dataupload_sectionkeyword VALUES (574, 'पौधों में जनन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 424);
INSERT INTO public.dataupload_sectionkeyword VALUES (575, 'रक्त परिसंचरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 427);
INSERT INTO public.dataupload_sectionkeyword VALUES (576, 'आलिन्द', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 427);
INSERT INTO public.dataupload_sectionkeyword VALUES (577, 'निलय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 427);
INSERT INTO public.dataupload_sectionkeyword VALUES (578, 'धड़कन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 427);
INSERT INTO public.dataupload_sectionkeyword VALUES (579, 'नाड़ी गति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 427);
INSERT INTO public.dataupload_sectionkeyword VALUES (580, 'सामान्य बीमारियां', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 430);
INSERT INTO public.dataupload_sectionkeyword VALUES (581, 'टीबी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 430);
INSERT INTO public.dataupload_sectionkeyword VALUES (582, 'कोलेरा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 430);
INSERT INTO public.dataupload_sectionkeyword VALUES (583, 'टाइफोइड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 430);
INSERT INTO public.dataupload_sectionkeyword VALUES (584, 'पोलियो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 430);
INSERT INTO public.dataupload_sectionkeyword VALUES (585, 'रेबीज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 430);
INSERT INTO public.dataupload_sectionkeyword VALUES (586, 'चिकन पॉक्स', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 430);
INSERT INTO public.dataupload_sectionkeyword VALUES (587, 'खसरा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 430);
INSERT INTO public.dataupload_sectionkeyword VALUES (588, 'सामान्य सर्दी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 430);
INSERT INTO public.dataupload_sectionkeyword VALUES (589, 'दस्त', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 430);
INSERT INTO public.dataupload_sectionkeyword VALUES (590, 'मलेरिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 430);
INSERT INTO public.dataupload_sectionkeyword VALUES (591, 'रोग कारक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 430);
INSERT INTO public.dataupload_sectionkeyword VALUES (592, 'लक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 430);
INSERT INTO public.dataupload_sectionkeyword VALUES (593, 'बचाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 430);
INSERT INTO public.dataupload_sectionkeyword VALUES (594, 'उपचार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 430);
INSERT INTO public.dataupload_sectionkeyword VALUES (595, 'कृमि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 431);
INSERT INTO public.dataupload_sectionkeyword VALUES (596, 'संक्रमण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 431);
INSERT INTO public.dataupload_sectionkeyword VALUES (597, 'बचाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 431);
INSERT INTO public.dataupload_sectionkeyword VALUES (598, 'टीकाकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 433);
INSERT INTO public.dataupload_sectionkeyword VALUES (599, 'रोगों के निवारण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 434);
INSERT INTO public.dataupload_sectionkeyword VALUES (600, 'कार्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 436);
INSERT INTO public.dataupload_sectionkeyword VALUES (601, 'ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 436);
INSERT INTO public.dataupload_sectionkeyword VALUES (602, 'ध्वनि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 445);
INSERT INTO public.dataupload_sectionkeyword VALUES (603, 'ध्वनि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 448);
INSERT INTO public.dataupload_sectionkeyword VALUES (604, 'संचरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 448);
INSERT INTO public.dataupload_sectionkeyword VALUES (605, 'ध्वनि का संचरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 448);
INSERT INTO public.dataupload_sectionkeyword VALUES (606, 'विद्युत् घंटी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 454);
INSERT INTO public.dataupload_sectionkeyword VALUES (607, 'विद्युत् बल्ब', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 454);
INSERT INTO public.dataupload_sectionkeyword VALUES (608, 'ओवन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 454);
INSERT INTO public.dataupload_sectionkeyword VALUES (609, 'विद्युत्घंटी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 457);
INSERT INTO public.dataupload_sectionkeyword VALUES (610, 'विद्युत् क्रेन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 457);
INSERT INTO public.dataupload_sectionkeyword VALUES (611, 'टेलीफोन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 457);
INSERT INTO public.dataupload_sectionkeyword VALUES (612, 'टेलीग्राफ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 457);
INSERT INTO public.dataupload_sectionkeyword VALUES (613, 'हथौड़ी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 459);
INSERT INTO public.dataupload_sectionkeyword VALUES (614, 'लौहे की पत्ती', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 459);
INSERT INTO public.dataupload_sectionkeyword VALUES (615, 'कुंडली', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 459);
INSERT INTO public.dataupload_sectionkeyword VALUES (616, 'घंटी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 459);
INSERT INTO public.dataupload_sectionkeyword VALUES (617, 'आसुत जल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 460);
INSERT INTO public.dataupload_sectionkeyword VALUES (618, 'नींबू का रस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 460);
INSERT INTO public.dataupload_sectionkeyword VALUES (619, 'एनोड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 461);
INSERT INTO public.dataupload_sectionkeyword VALUES (620, 'कैथोड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 461);
INSERT INTO public.dataupload_sectionkeyword VALUES (621, 'रासायनिक परिवर्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 461);
INSERT INTO public.dataupload_sectionkeyword VALUES (622, 'कॉपर सल्फेट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 462);
INSERT INTO public.dataupload_sectionkeyword VALUES (623, 'ताँबे की प्लेट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 462);
INSERT INTO public.dataupload_sectionkeyword VALUES (624, 'विद्युत लेपन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 462);
INSERT INTO public.dataupload_sectionkeyword VALUES (625, 'कृत्रिम उपग्रह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 464);
INSERT INTO public.dataupload_sectionkeyword VALUES (626, 'कृत्रिम उपग्रह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 465);
INSERT INTO public.dataupload_sectionkeyword VALUES (627, 'सूचना प्रौद्योगिकी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 473);
INSERT INTO public.dataupload_sectionkeyword VALUES (628, 'कृत्रिम उपग्रह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 475);
INSERT INTO public.dataupload_sectionkeyword VALUES (629, 'संचार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 475);
INSERT INTO public.dataupload_sectionkeyword VALUES (630, 'भूस्थिर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 475);
INSERT INTO public.dataupload_sectionkeyword VALUES (631, 'ध्रुवीय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 475);
INSERT INTO public.dataupload_sectionkeyword VALUES (632, 'कंप्यूटर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 476);
INSERT INTO public.dataupload_sectionkeyword VALUES (633, 'सोशल मीडिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 478);
INSERT INTO public.dataupload_sectionkeyword VALUES (634, 'समाज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 478);
INSERT INTO public.dataupload_sectionkeyword VALUES (635, 'साइबर क्राइम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 479);
INSERT INTO public.dataupload_sectionkeyword VALUES (636, 'साइबर सुरक्षा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 479);
INSERT INTO public.dataupload_sectionkeyword VALUES (637, 'पारदर्शी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 481);
INSERT INTO public.dataupload_sectionkeyword VALUES (638, 'अपारदर्शी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 481);
INSERT INTO public.dataupload_sectionkeyword VALUES (639, 'चमकदार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 481);
INSERT INTO public.dataupload_sectionkeyword VALUES (640, 'प्रकाश', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 481);
INSERT INTO public.dataupload_sectionkeyword VALUES (641, 'सिल्ली', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 481);
INSERT INTO public.dataupload_sectionkeyword VALUES (642, 'वायु दाब', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 490);
INSERT INTO public.dataupload_sectionkeyword VALUES (643, 'वायु दाब', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 491);
INSERT INTO public.dataupload_sectionkeyword VALUES (644, 'वायु वेग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 491);
INSERT INTO public.dataupload_sectionkeyword VALUES (645, 'वायु प्रवाह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 492);
INSERT INTO public.dataupload_sectionkeyword VALUES (646, 'थल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 493);
INSERT INTO public.dataupload_sectionkeyword VALUES (647, 'जल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 493);
INSERT INTO public.dataupload_sectionkeyword VALUES (648, 'वायु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 493);
INSERT INTO public.dataupload_sectionkeyword VALUES (649, 'गर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 493);
INSERT INTO public.dataupload_sectionkeyword VALUES (650, 'टोरनेड़ो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 496);
INSERT INTO public.dataupload_sectionkeyword VALUES (651, 'प्रदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 498);
INSERT INTO public.dataupload_sectionkeyword VALUES (652, 'वायु प्रदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 498);
INSERT INTO public.dataupload_sectionkeyword VALUES (653, 'जल प्रदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 498);
INSERT INTO public.dataupload_sectionkeyword VALUES (654, 'गैस अवशोषक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 502);
INSERT INTO public.dataupload_sectionkeyword VALUES (655, 'ऑक्सीकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 502);
INSERT INTO public.dataupload_sectionkeyword VALUES (656, 'जन चेतना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 502);
INSERT INTO public.dataupload_sectionkeyword VALUES (657, 'वैकल्पिक ईंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 502);
INSERT INTO public.dataupload_sectionkeyword VALUES (658, 'जीवनशैली', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 511);
INSERT INTO public.dataupload_sectionkeyword VALUES (659, 'पर्यावरण संरक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 511);
INSERT INTO public.dataupload_sectionkeyword VALUES (660, 'ईंधन के अवयव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 515);
INSERT INTO public.dataupload_sectionkeyword VALUES (661, 'पेट्रोलियम गैस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 517);
INSERT INTO public.dataupload_sectionkeyword VALUES (662, 'पेट्रोल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 517);
INSERT INTO public.dataupload_sectionkeyword VALUES (663, 'नेफ्था', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 517);
INSERT INTO public.dataupload_sectionkeyword VALUES (664, 'केरोसीन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 517);
INSERT INTO public.dataupload_sectionkeyword VALUES (665, 'डीज़ल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 517);
INSERT INTO public.dataupload_sectionkeyword VALUES (666, 'लुब्रिकेंट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 517);
INSERT INTO public.dataupload_sectionkeyword VALUES (667, 'पैराफीन मोम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 517);
INSERT INTO public.dataupload_sectionkeyword VALUES (668, 'डामर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 517);
INSERT INTO public.dataupload_sectionkeyword VALUES (669, 'दहन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 518);
INSERT INTO public.dataupload_sectionkeyword VALUES (670, 'ऊर्जा -संरक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 519);
INSERT INTO public.dataupload_sectionkeyword VALUES (671, 'सड़क सुरक्षा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 521);


--
-- Data for Name: dataupload_subsection; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.dataupload_subsection VALUES (14, 'संख्याओ का विस्तार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 110);
INSERT INTO public.dataupload_subsection VALUES (15, 'संख्याओ का विस्तार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 111);
INSERT INTO public.dataupload_subsection VALUES (16, 'संख्याओ का विस्तारित रूप व तुलना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 112);
INSERT INTO public.dataupload_subsection VALUES (17, 'समूह द्वारा जोड़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 116);
INSERT INTO public.dataupload_subsection VALUES (18, 'हासिल के साथ जोड़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 117);
INSERT INTO public.dataupload_subsection VALUES (19, 'एकाधिकेंन पूर्वेण का अर्थ चिह्न', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 123);
INSERT INTO public.dataupload_subsection VALUES (20, 'एकाधिकें पूर्वेण द्वारा योग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 123);
INSERT INTO public.dataupload_subsection VALUES (21, 'एकन्यूनेन पूर्वेण का अर्थ व चिन्ह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 124);
INSERT INTO public.dataupload_subsection VALUES (22, 'परममित्र अंक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 124);
INSERT INTO public.dataupload_subsection VALUES (23, 'एकन्यूनेन पूर्वेण द्वारा घटाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 124);
INSERT INTO public.dataupload_subsection VALUES (24, 'छायांकित भाग का भिन्न में निरूपण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 136);
INSERT INTO public.dataupload_subsection VALUES (25, 'भिन्न को पढ़ना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 136);
INSERT INTO public.dataupload_subsection VALUES (26, 'भिन्नो में तुलना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 136);
INSERT INTO public.dataupload_subsection VALUES (27, '1.2.1 योग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 237);
INSERT INTO public.dataupload_subsection VALUES (28, '1.2.2 घटाना(व्यवकलन)', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 237);
INSERT INTO public.dataupload_subsection VALUES (29, '1.2.3 गुणन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 237);
INSERT INTO public.dataupload_subsection VALUES (30, '1.2.4 भाग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 237);
INSERT INTO public.dataupload_subsection VALUES (31, '1.3.1 संवृत गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (32, '1.3.1 संवृत गुणधर्म [ (I) योग ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (33, '1.3.1 संवृत गुणधर्म [ (II) व्यवकलन ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (34, '1.3.1 संवृत गुणधर्म [ (III) गुणन ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (35, '1.3.1 संवृत गुणधर्म [ (IV) भाग ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (36, '1.3.2 क्रम विनिमेय गुणधर्म [ (I) योग ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (37, '1.3.2 क्रम विनिमेय गुणधर्म [ (II) व्यवकलन ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (38, '1.3.2 क्रम विनिमेय गुणधर्म [ (III) गुणन ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (39, '1.3.2 क्रम विनिमेय गुणधर्म [ (IV) भाग ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (40, '1.3.3 साहचर्य (सहचारिता) गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (41, '1.3.3 साहचर्य (सहचारिता) गुणधर्म [ (I) योग ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (42, '1.3.3 साहचर्य (सहचारिता) गुणधर्म [ (II) व्यवकलन ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (43, '1.3.3 साहचर्य (सहचारिता) गुणधर्म [ (III) गुणन ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (44, '1.3.3 साहचर्य (सहचारिता) गुणधर्म [ (IV) भाग ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (45, '1.3.4 शून्य की परिमेय संख्याओ के साथ संक्रियाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (46, '1.3.5 गुणात्मक तत्समक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (47, '1.3.6 योज्य प्रतिलोम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (48, '1.3.7 गुणात्मक प्रतिलोम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (49, '1.3.8 परिमेय संख्याओ के लिए गुणन की योग पर वितरकता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (50, '1.3.9 दो परिमेय संख्याओ के बीच की परिमेय संख्या ज्ञात करना (औसत द्वारा)', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 238);
INSERT INTO public.dataupload_subsection VALUES (51, '2.1.1 सम एवम् विषम संख्याओ की घन संख्या', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 239);
INSERT INTO public.dataupload_subsection VALUES (52, '2.1.2 घन संख्याओ के इकाई का अंक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 239);
INSERT INTO public.dataupload_subsection VALUES (53, '2.2.1 क्रमागत विषम संख्याओ को जोड़ना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 240);
INSERT INTO public.dataupload_subsection VALUES (54, '2.2.2 घन एवं उनके अभाज्य गुणनखंड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 240);
INSERT INTO public.dataupload_subsection VALUES (55, '2.3.1 किसी संख्या का घनमूल अभाज्य गुणनखंड विधी द्वारा ज्ञात करना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 241);
INSERT INTO public.dataupload_subsection VALUES (56, '2.3.2 किसी घन संख्या का घनमूल (अवलोकन विधि द्वारा)', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 241);
INSERT INTO public.dataupload_subsection VALUES (57, '3.4.1 वैज्ञानिक संकेतन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 245);
INSERT INTO public.dataupload_subsection VALUES (58, '3.4.2 बहुत बड़ी संख्याओं ओंर बहुत छोटी संख्याओं की तुलना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 245);
INSERT INTO public.dataupload_subsection VALUES (59, '4.3.1 अंकों को पलटना-दो अंको की संख्या', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 248);
INSERT INTO public.dataupload_subsection VALUES (60, '4.3.2 अंको का पलटना -तीन अंको की संख्या', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 248);
INSERT INTO public.dataupload_subsection VALUES (61, '5.1.1 गुणन संक्रिया (उर्ध्वतिर्यग्यभ्याम सूत्र )', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 253);
INSERT INTO public.dataupload_subsection VALUES (62, '5.1.2 सूत्र निखिलम(उपाधार) से गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 253);
INSERT INTO public.dataupload_subsection VALUES (63, '5.2.1 सूत्र निखिलम (आधार )', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 254);
INSERT INTO public.dataupload_subsection VALUES (64, '6.7.1 समलम्ब चतुर्भुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 263);
INSERT INTO public.dataupload_subsection VALUES (65, '6.7.2 पतंग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 263);
INSERT INTO public.dataupload_subsection VALUES (66, '6.7.3 समान्तर चतुर्भुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 263);
INSERT INTO public.dataupload_subsection VALUES (67, '6.7.4 समान्तर चतुर्भुज की विशिष्ट स्थितियां [ 1. आयत ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 263);
INSERT INTO public.dataupload_subsection VALUES (68, '6.7.4 समान्तर चतुर्भुज की विशिष्ट स्थितियां [ 2. वर्ग ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 263);
INSERT INTO public.dataupload_subsection VALUES (69, '6.7.5 सम चतुर्भुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 263);
INSERT INTO public.dataupload_subsection VALUES (70, '7.1.1 चतुर्भुज की रचना करना जब चार भुजाऐं और एक विकर्ण दिया हुआ हो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 264);
INSERT INTO public.dataupload_subsection VALUES (71, '7.1.2 चतुर्भुज की रचना करना, जब दो विकर्ण और तीन भुजाएँ दी हुई हों', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 264);
INSERT INTO public.dataupload_subsection VALUES (72, '7.1.3 चतुर्भुज की रचना करना जब चार भुजाएँ एवं एक कोण दिया हुआ हो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 264);
INSERT INTO public.dataupload_subsection VALUES (73, '7.1.4 चतुर्भुज की रचना करना जब जब तीन भुजाऐं और उनके बीच के दो कोण दिए हुए हो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 264);
INSERT INTO public.dataupload_subsection VALUES (74, '7.1.5 चतुर्भुज की रचना करना जब जब दो आसन्न भुजाएँ और तीन कोण दिए हों', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 264);
INSERT INTO public.dataupload_subsection VALUES (75, '8.2.1 त्रिभुजीय प्रिज्म की आकृति बनाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 266);
INSERT INTO public.dataupload_subsection VALUES (76, '8.5.1 घनाभ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 269);
INSERT INTO public.dataupload_subsection VALUES (77, '8.5.2 घन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 269);
INSERT INTO public.dataupload_subsection VALUES (78, '8.5.3 बेलन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 269);
INSERT INTO public.dataupload_subsection VALUES (79, '8.5.4 शंकु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 269);
INSERT INTO public.dataupload_subsection VALUES (80, '8.5.5 प्रिज्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 269);
INSERT INTO public.dataupload_subsection VALUES (81, '8.5.6 पिरामिड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 269);
INSERT INTO public.dataupload_subsection VALUES (82, '9.5.1 एक पदीय व्यंजक का एक पदीय व्यंजक से गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 274);
INSERT INTO public.dataupload_subsection VALUES (83, '9.5.2 द्विपदी या त्रिपदी को एक पड़ी से गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 274);
INSERT INTO public.dataupload_subsection VALUES (84, '9.5.3 द्विपदीय व्यंजक का द्विपदीय व्यंजक से गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 274);
INSERT INTO public.dataupload_subsection VALUES (85, '9.5.4 द्विपदी को त्रिपदी से गुणा करना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 274);
INSERT INTO public.dataupload_subsection VALUES (86, '9.6.1 मानक सर्वसमिका', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 275);
INSERT INTO public.dataupload_subsection VALUES (87, '9.6.2 सर्वसमिकाओं का उपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 275);
INSERT INTO public.dataupload_subsection VALUES (88, '10.2.1 गुणनखंडन की विधियाँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 277);
INSERT INTO public.dataupload_subsection VALUES (89, '10.3.1 (x+a)(x+b) के रूप के गुणनखंड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 278);
INSERT INTO public.dataupload_subsection VALUES (90, '10.4.1 एक पदी का एक अन्य एक पदी से विभाजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 279);
INSERT INTO public.dataupload_subsection VALUES (91, '10.4.2 एक बहुपद में एक पदीय व्यंजक से भाग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 279);
INSERT INTO public.dataupload_subsection VALUES (92, '10.4.3 बहुपद का बहुपद से विभाजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 279);
INSERT INTO public.dataupload_subsection VALUES (93, '14.5.1 अनियमित बहुभुजों का क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 297);
INSERT INTO public.dataupload_subsection VALUES (94, '15.2.1 घनाभ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 299);
INSERT INTO public.dataupload_subsection VALUES (95, '15.2.2 घन का सम्पूर्ण पृष्ठीय क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 299);
INSERT INTO public.dataupload_subsection VALUES (96, '15.4.1 घन व घनाभ का आयतन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 301);
INSERT INTO public.dataupload_subsection VALUES (97, '15.4.2 बेलन का आयतन (धारिता)', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 301);
INSERT INTO public.dataupload_subsection VALUES (98, '16.1 (i) चित्रालेख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 302);
INSERT INTO public.dataupload_subsection VALUES (99, '16.1 (ii) दंड आलेख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 302);
INSERT INTO public.dataupload_subsection VALUES (100, '16.1 (iii) दोहरे दंड आलेख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 302);
INSERT INTO public.dataupload_subsection VALUES (101, '16.2.1 बारंबारता बंटन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 303);
INSERT INTO public.dataupload_subsection VALUES (102, '16.2.2 आंकड़ों का वर्गीकरण (वर्ग अंतराल के रूप में)', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 303);
INSERT INTO public.dataupload_subsection VALUES (103, '16.3 आयत चित्र-आंकड़ों का आलेखीय निरूपण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 304);
INSERT INTO public.dataupload_subsection VALUES (104, '16.4.1 पाई चार्ट बनाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 305);
INSERT INTO public.dataupload_subsection VALUES (105, '16.5.1 संयोग से अभिप्राय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 306);
INSERT INTO public.dataupload_subsection VALUES (106, '16.5.2 पासा और सिक्का उछालने पर प्राप्त संभावनाओं की गणना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 306);
INSERT INTO public.dataupload_subsection VALUES (107, '16.5.3 सम संभावित परिणाम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 306);
INSERT INTO public.dataupload_subsection VALUES (108, '16.5.4 अनुकूल संभावनाओं की गणना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 306);
INSERT INTO public.dataupload_subsection VALUES (109, 'नानाजी -नानीजी , मामाजी - मामीजी, मौसीजी -मौसाजी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 308);
INSERT INTO public.dataupload_subsection VALUES (110, 'मेहमानों की आवाभगत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 308);
INSERT INTO public.dataupload_subsection VALUES (111, 'वंश वृक्ष बनाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 308);
INSERT INTO public.dataupload_subsection VALUES (112, 'छोटे व बड़े परिवार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 309);
INSERT INTO public.dataupload_subsection VALUES (113, 'महिलाओं की बाहरी एवं पुरुषों की घर के कार्य मे योगदान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 310);
INSERT INTO public.dataupload_subsection VALUES (114, 'परिवार मे निर्णय लेने की भागीदारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 311);
INSERT INTO public.dataupload_subsection VALUES (115, 'शैक्षिक ज्ञान व सह शैक्षिक ज्ञान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 313);
INSERT INTO public.dataupload_subsection VALUES (116, 'चरण स्पर्श करना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 314);
INSERT INTO public.dataupload_subsection VALUES (117, 'बालिकाओं को उच्च शिक्षा के लिए प्रोत्साहन करना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 315);
INSERT INTO public.dataupload_subsection VALUES (118, 'समानता को महत्व देना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 316);
INSERT INTO public.dataupload_subsection VALUES (119, 'कान की सामान्य जानकारी [ कान से जुडी समस्या ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 318);
INSERT INTO public.dataupload_subsection VALUES (120, 'आँख की सामान्य जानकारी [ आँख से जुडी समस्या ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 319);
INSERT INTO public.dataupload_subsection VALUES (121, 'आँख का महत्व', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 319);
INSERT INTO public.dataupload_subsection VALUES (122, 'नाक की सामान्य जानकारी [ नाक से जुडी समस्या ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 320);
INSERT INTO public.dataupload_subsection VALUES (123, 'त्वचा की सामान्य जानकारी [ त्वचा से जुडी समस्या ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 321);
INSERT INTO public.dataupload_subsection VALUES (124, 'अच्छा स्पर्श व बुरा स्पर्श [ बुरे स्पर्श के प्रभाव ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 321);
INSERT INTO public.dataupload_subsection VALUES (125, 'योजना बनाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 323);
INSERT INTO public.dataupload_subsection VALUES (126, 'खो खो खेल नियम के जानकारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 324);
INSERT INTO public.dataupload_subsection VALUES (127, 'प्राथमिक चिकित्सा पेटी की सामान्य जानकारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 325);
INSERT INTO public.dataupload_subsection VALUES (128, 'कबडडी के खेल खेल नियम की जानकारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 326);
INSERT INTO public.dataupload_subsection VALUES (129, 'खेल भावना के लिए खेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 327);
INSERT INTO public.dataupload_subsection VALUES (130, 'स्वास्थय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 327);
INSERT INTO public.dataupload_subsection VALUES (131, 'सहयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 327);
INSERT INTO public.dataupload_subsection VALUES (132, 'गुलाब का फूल [ उपयोगिता, रंग ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 328);
INSERT INTO public.dataupload_subsection VALUES (133, 'सूरजमुखी का फूल [ उपयोगिता, रंग ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 328);
INSERT INTO public.dataupload_subsection VALUES (134, 'कमल का फूल [ उपयोगिता, रंग ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 328);
INSERT INTO public.dataupload_subsection VALUES (135, 'शहद का बनना [ उपयोगिता ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 329);
INSERT INTO public.dataupload_subsection VALUES (136, 'खेजड़ी की जड़े', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 334);
INSERT INTO public.dataupload_subsection VALUES (137, 'बरगद की जड़े', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 334);
INSERT INTO public.dataupload_subsection VALUES (138, 'तने के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 335);
INSERT INTO public.dataupload_subsection VALUES (139, 'तने जो हम खाते हैं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 335);
INSERT INTO public.dataupload_subsection VALUES (140, 'जंतुओं के प्रकार [ पालतू जानवर और जंगली जानवर ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 341);
INSERT INTO public.dataupload_subsection VALUES (141, 'जंगली जानवरों के आवास [ जंगल ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 342);
INSERT INTO public.dataupload_subsection VALUES (142, 'जंगली जानवरों के व्यवहार [ अकेले तथा झुण्ड में रहने वाले जानवर ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 342);
INSERT INTO public.dataupload_subsection VALUES (143, 'अभ्यारण्य की सैर [ अभ्यारण्य क्या ? ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 343);
INSERT INTO public.dataupload_subsection VALUES (144, 'अभ्यारण्य [ अभ्यारण्य क्यों ? ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 343);
INSERT INTO public.dataupload_subsection VALUES (145, 'वनों का महत्व', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 344);
INSERT INTO public.dataupload_subsection VALUES (146, 'जानवरों का दर्द', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 344);
INSERT INTO public.dataupload_subsection VALUES (147, 'पानी का रंग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 345);
INSERT INTO public.dataupload_subsection VALUES (148, 'पानी का स्वाद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 345);
INSERT INTO public.dataupload_subsection VALUES (149, 'गायब हुआ पानी [ वाष्पीकरण ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 345);
INSERT INTO public.dataupload_subsection VALUES (150, 'प्रकट हुआ पानी [ संघनन ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 345);
INSERT INTO public.dataupload_subsection VALUES (151, 'पानी नहीं छलका [ पानी की सतह पर तनाव ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 345);
INSERT INTO public.dataupload_subsection VALUES (152, 'पानी की ताकत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 345);
INSERT INTO public.dataupload_subsection VALUES (153, 'पानी का बहना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 346);
INSERT INTO public.dataupload_subsection VALUES (154, 'पानी व्यर्थ न करें', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 346);
INSERT INTO public.dataupload_subsection VALUES (155, 'भूगर्भ से पानी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 346);
INSERT INTO public.dataupload_subsection VALUES (156, 'पानी साफ केसे रहे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 347);
INSERT INTO public.dataupload_subsection VALUES (157, 'नमामि गंगा कार्यक्रम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 348);
INSERT INTO public.dataupload_subsection VALUES (158, 'गोठ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 350);
INSERT INTO public.dataupload_subsection VALUES (159, 'गाल के लड्डू बनाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 355);
INSERT INTO public.dataupload_subsection VALUES (160, 'हुदहुद ,बया ,गोडावण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 356);
INSERT INTO public.dataupload_subsection VALUES (161, 'तैरने के लिए, टहनियों को पकड़ने के लिए, जमीन पर चलने के लिए, कड़ी सतह पर चढने के लिए', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 357);
INSERT INTO public.dataupload_subsection VALUES (162, 'मांस चीरने के लिए, फूलो का रस चूसने के लिए, कीचड़ से कीड़े निकलने के लिए, लकड़ी तोड़ने के लिए अनाज और बीज तोड़ने के लिए', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 358);
INSERT INTO public.dataupload_subsection VALUES (163, 'दांत बिना जीवन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 360);
INSERT INTO public.dataupload_subsection VALUES (164, 'भोजन का दाँतों पर प्रभाव [ चॉकलेट और दाँत ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 360);
INSERT INTO public.dataupload_subsection VALUES (165, 'दाँतों का स्वास्थ्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 360);
INSERT INTO public.dataupload_subsection VALUES (166, 'दांतों के नाम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 361);
INSERT INTO public.dataupload_subsection VALUES (167, 'दांतो की संख्या', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 361);
INSERT INTO public.dataupload_subsection VALUES (168, 'दांतो की संरचना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 361);
INSERT INTO public.dataupload_subsection VALUES (169, 'दांतो के कार्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 361);
INSERT INTO public.dataupload_subsection VALUES (170, 'जन्म के समय दाँत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 362);
INSERT INTO public.dataupload_subsection VALUES (171, 'शैशवास्था में दाँत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 362);
INSERT INTO public.dataupload_subsection VALUES (172, 'किशोरावस्था में दाँत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 362);
INSERT INTO public.dataupload_subsection VALUES (173, 'युवावस्था में दाँत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 362);
INSERT INTO public.dataupload_subsection VALUES (174, 'वृद्धावस्था में दाँत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 362);
INSERT INTO public.dataupload_subsection VALUES (175, 'स्वाद ग्रंथियां', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 364);
INSERT INTO public.dataupload_subsection VALUES (176, 'थ्रेशर, भण्डारण,', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 366);
INSERT INTO public.dataupload_subsection VALUES (177, 'अनाज मंडी, सब्जीमंडी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 366);
INSERT INTO public.dataupload_subsection VALUES (178, 'सब्जीमंडी [ देर तक ख़राब होने वाली सब्जियां ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 366);
INSERT INTO public.dataupload_subsection VALUES (179, 'बेचना/ खरीदना [ मिलने वाली सामग्री जो कृषि उपज है ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 366);
INSERT INTO public.dataupload_subsection VALUES (180, 'उचित मूल्य की दुकान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 370);
INSERT INTO public.dataupload_subsection VALUES (181, 'आयुर्वेद व चरक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 371);
INSERT INTO public.dataupload_subsection VALUES (182, 'चरक संहिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 371);
INSERT INTO public.dataupload_subsection VALUES (183, 'शल्य चिकित्सा की जानकारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 372);
INSERT INTO public.dataupload_subsection VALUES (184, 'सुश्रुत की जानकारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 372);
INSERT INTO public.dataupload_subsection VALUES (185, 'रानी दुर्गावती की जानकारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 373);
INSERT INTO public.dataupload_subsection VALUES (186, 'वीर सावरकर की जानकारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 374);
INSERT INTO public.dataupload_subsection VALUES (187, 'वीर सावरकर का संघर्ष व योगदान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 374);
INSERT INTO public.dataupload_subsection VALUES (188, 'सरदार वल्लभ भाई पटेल की जानकारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 375);
INSERT INTO public.dataupload_subsection VALUES (189, 'सरदार वल्लभ भाई पटेल का योगदान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 375);
INSERT INTO public.dataupload_subsection VALUES (190, 'राष्ट्रीय ध्वज [ राष्ट्रीय ध्वज का नाम ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (191, 'राष्ट्रीय ध्वज [ राष्ट्रीय ध्वज में रंग व उनका क्रम ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (192, 'राष्ट्रीय ध्वज [ राष्ट्रीय ध्वज में अशोक चक्र ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (193, 'राष्ट्रीय ध्वज [ राष्ट्रीय ध्वज का चित्र बनाना ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (194, 'राष्ट्रीय गीत व गान [ राष्ट्रीय गान व राष्ट्रीय गीत से परिचय ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (195, 'राष्ट्रीय गीत व गान [ राष्ट्रीय गान व राष्ट्रीय गीत के रचियता ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (196, 'राष्ट्रीय गीत व गान [ राष्ट्रीय गान व राष्ट्रीय गीत में अंतर ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (197, 'राष्ट्रीय चिन्ह [ राष्ट्रीय चिन्ह का नाम ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (198, 'राष्ट्रीय चिन्ह [ राष्ट्रीय चिन्ह कहा से लिया गया है ? ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (199, 'राष्ट्रीय चिन्ह [ राष्ट्रीय चिन्ह में कौन-कौन से पशु दिखाई देते हैं? ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (200, 'राष्ट्रीय चिन्ह [ अशोक चक्र की जानकारी ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (201, 'राष्ट्रीय चिन्ह [ राष्ट्रीय चिन्ह कहाँ-कहाँ लगा हुआ दिखता है ? ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (202, 'राष्ट्रीय पंचांग [ राष्ट्रीय पंचांग की सामान्य जानकारी ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (203, 'अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय पक्षी ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (204, 'अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय पुष्प ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (205, 'अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय वृक्ष ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (206, 'अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय नदी ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (207, 'अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय पशु ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (208, 'अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय फल ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (209, 'अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय खेल ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (210, 'अन्य राष्ट्रीय सम्मान, प्रतीक,व गौरव [ राष्ट्रीय मुद्रा ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 377);
INSERT INTO public.dataupload_subsection VALUES (211, 'लक्खी मेला भर्तृहरि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 379);
INSERT INTO public.dataupload_subsection VALUES (212, 'रामदेवरा मेला', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 379);
INSERT INTO public.dataupload_subsection VALUES (213, 'ख्वाजा का उर्स', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 379);
INSERT INTO public.dataupload_subsection VALUES (214, 'हाट मेले', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 380);
INSERT INTO public.dataupload_subsection VALUES (215, 'गुफाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 382);
INSERT INTO public.dataupload_subsection VALUES (216, 'कच्चा घर [ कच्ची बस्तियाँ ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 382);
INSERT INTO public.dataupload_subsection VALUES (217, 'पक्का घर [ शहर और बहुमंजिला इमारतें ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 382);
INSERT INTO public.dataupload_subsection VALUES (218, 'आवास विहीन लोगो के आश्रय स्थल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 382);
INSERT INTO public.dataupload_subsection VALUES (219, 'स्वच्छ भारत मिशन [ शौचलय का उपयोग ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 385);
INSERT INTO public.dataupload_subsection VALUES (220, 'गन्दगी के दुष्परिणाम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 386);
INSERT INTO public.dataupload_subsection VALUES (221, 'जैव अपघटनीय व अनापघटनीय कचरा [ प्लास्टिक का कम उपयोग ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 387);
INSERT INTO public.dataupload_subsection VALUES (222, 'चारों दिशाओं के नाम [ पूर्व दिशा का ज्ञान ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 388);
INSERT INTO public.dataupload_subsection VALUES (223, 'पूर्व दिशा के परिप्रेक्ष्य में अन्य तीन दिशाओं का ज्ञान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 388);
INSERT INTO public.dataupload_subsection VALUES (224, 'शरीर की विभिन्न अवस्थाओं के अनुरूप दिशाएं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 388);
INSERT INTO public.dataupload_subsection VALUES (225, 'नक़्शे में दिशा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 388);
INSERT INTO public.dataupload_subsection VALUES (226, 'नक़्शे में संकेत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 388);
INSERT INTO public.dataupload_subsection VALUES (227, 'नक़्शे में दूरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 388);
INSERT INTO public.dataupload_subsection VALUES (228, 'सूती वस्त्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 391);
INSERT INTO public.dataupload_subsection VALUES (229, 'ऊनी वस्त्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 391);
INSERT INTO public.dataupload_subsection VALUES (230, 'रेशमी वस्त्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 391);
INSERT INTO public.dataupload_subsection VALUES (231, 'खादी वस्त्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 391);
INSERT INTO public.dataupload_subsection VALUES (232, 'यात्रा की तैयारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 397);
INSERT INTO public.dataupload_subsection VALUES (233, 'जयपुर भ्रमण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 397);
INSERT INTO public.dataupload_subsection VALUES (234, 'जैसलमेर की सैर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 397);
INSERT INTO public.dataupload_subsection VALUES (235, 'जोधपुर यात्रा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 397);
INSERT INTO public.dataupload_subsection VALUES (236, 'उदयपुर दर्शन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 397);
INSERT INTO public.dataupload_subsection VALUES (237, 'फसल की परिभाषा [ फसल के प्रकार ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 399);
INSERT INTO public.dataupload_subsection VALUES (238, 'खेती के चरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 399);
INSERT INTO public.dataupload_subsection VALUES (239, 'मिट्टी तैयार करना [ कृषि के औज़ार, जुताई ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 399);
INSERT INTO public.dataupload_subsection VALUES (240, 'बुआई करना [ बीज बोने के परम्परागत एवं आधुनिक औज़ार ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 399);
INSERT INTO public.dataupload_subsection VALUES (241, 'खाद एवं उवर्रक [ खाद एवं उर्वरक में अंतर, जैविक खाद के लाभ ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 399);
INSERT INTO public.dataupload_subsection VALUES (242, 'सिंचाई करना [ सिंचाई की परिभाषा, लाभ , स्रोत, साधन ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 399);
INSERT INTO public.dataupload_subsection VALUES (243, 'फसल की सुरक्षा करना [ कृषि की समस्याएं, कुप्रभाव एवं बचाव के तरीके ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 399);
INSERT INTO public.dataupload_subsection VALUES (244, 'फसल काटना [ थ्रेसिंग ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 399);
INSERT INTO public.dataupload_subsection VALUES (245, 'अनाज का भंडारण करना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 399);
INSERT INTO public.dataupload_subsection VALUES (246, 'राजस्थान में प्रमुख फल एवं सब्जी उत्पादक क्षेत्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 400);
INSERT INTO public.dataupload_subsection VALUES (247, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 403);
INSERT INTO public.dataupload_subsection VALUES (248, 'भौतिक अवस्था , रंग , चमक , कठोरता , ध्वानिकता , घनत्व , गलनांक , चालकता , तन्यता ,', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 405);
INSERT INTO public.dataupload_subsection VALUES (249, 'भौतिक अवस्था , रंग , चमक , कठोरता , ध्वानिकता , घनत्व , गलनांक , चालकता , भंगुरता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 405);
INSERT INTO public.dataupload_subsection VALUES (250, 'वायु के साथ अभिक्रिया, जल के अभिक्रिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 406);
INSERT INTO public.dataupload_subsection VALUES (251, 'धातु के उपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 407);
INSERT INTO public.dataupload_subsection VALUES (252, 'अधातु के उपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 407);
INSERT INTO public.dataupload_subsection VALUES (253, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 410);
INSERT INTO public.dataupload_subsection VALUES (254, 'थर्मोप्लास्टिक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 414);
INSERT INTO public.dataupload_subsection VALUES (255, 'थर्मोसेटिंग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 414);
INSERT INTO public.dataupload_subsection VALUES (256, '4 आर सिद्धान्त', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 416);
INSERT INTO public.dataupload_subsection VALUES (257, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 417);
INSERT INTO public.dataupload_subsection VALUES (258, 'संयोजन अभिक्रिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 420);
INSERT INTO public.dataupload_subsection VALUES (259, 'वियोजन या अपघटनीय अभिक्रिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 420);
INSERT INTO public.dataupload_subsection VALUES (260, 'विस्थापन अभिक्रियाएं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 420);
INSERT INTO public.dataupload_subsection VALUES (261, 'ऑक्सीकरण अपचयन अभिक्रियाएं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 420);
INSERT INTO public.dataupload_subsection VALUES (262, 'उदासीनीकरण अभिक्रिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 420);
INSERT INTO public.dataupload_subsection VALUES (263, 'ऊष्माशोषी व ऊष्माक्षेपी अभिक्रियाएं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 420);
INSERT INTO public.dataupload_subsection VALUES (264, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 421);
INSERT INTO public.dataupload_subsection VALUES (265, 'जैव विविधता क्षरण के कारण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 422);
INSERT INTO public.dataupload_subsection VALUES (266, 'वन्य जीव अभ्यारण्य, राष्ट्रीय उद्यान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 422);
INSERT INTO public.dataupload_subsection VALUES (267, 'जैव विविधता के ऊष्ण स्थल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 422);
INSERT INTO public.dataupload_subsection VALUES (268, 'कांकरेज , मालवी , राठी , नागौरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 422);
INSERT INTO public.dataupload_subsection VALUES (269, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 423);
INSERT INTO public.dataupload_subsection VALUES (270, 'कायिक जनन [ कलम लगाना ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 424);
INSERT INTO public.dataupload_subsection VALUES (271, 'अलैंगिक जनन [ मुकुलन, विखण्डन , बीजाणु निर्माण ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 425);
INSERT INTO public.dataupload_subsection VALUES (272, 'लैंगिक जनन [ एकलिंगी पुष्प , द्विलिंगी ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 424);
INSERT INTO public.dataupload_subsection VALUES (273, 'अनिषेक जनन [ सरल फल, पुंज फल, संग्रहित फल ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 424);
INSERT INTO public.dataupload_subsection VALUES (274, 'स्वपरागण परपरागण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 424);
INSERT INTO public.dataupload_subsection VALUES (275, 'एकलिंगी पुष्प , द्विलिंगी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 424);
INSERT INTO public.dataupload_subsection VALUES (276, 'आनुवंशिकता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 424);
INSERT INTO public.dataupload_subsection VALUES (277, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 426);
INSERT INTO public.dataupload_subsection VALUES (278, 'रुधिर प्लाज्मा ,रुधिर कणिकाऐं [ लाल रुधिर कणिकाएँ, श्वेत रुधिर कणिकाएँ, रुधिर प्लेटलेट्स या थ्रोम्बोसाइट्स ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 427);
INSERT INTO public.dataupload_subsection VALUES (279, 'रुधिर वर्ग [ प्रतिजन , प्रतिरक्षी, रुधिर वर्ग का महत्त्व ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 427);
INSERT INTO public.dataupload_subsection VALUES (280, 'रक्तदान व रक्त बैंक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 427);
INSERT INTO public.dataupload_subsection VALUES (281, 'धमनी और शिराएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 427);
INSERT INTO public.dataupload_subsection VALUES (282, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 428);
INSERT INTO public.dataupload_subsection VALUES (283, 'संक्रामक एवं असंक्रामक रोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 429);
INSERT INTO public.dataupload_subsection VALUES (284, 'नारू, एड्स, कुष्ठ रोग, एड्स, कैंसर, हेपेटाइटिस,कारण एवं निवारण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 432);
INSERT INTO public.dataupload_subsection VALUES (285, 'हीमोफ़िलिया,खाद्य विषाक्तन,स्वाइन फ़्लू ,एनिमिया, डेंगू', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 432);
INSERT INTO public.dataupload_subsection VALUES (286, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 435);
INSERT INTO public.dataupload_subsection VALUES (287, 'कार्य [ कार्य का सूत्र , कार्य का मात्रक ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 437);
INSERT INTO public.dataupload_subsection VALUES (288, 'ऊर्जा [ ऊर्जा, ऊर्जा का मात्रक ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 438);
INSERT INTO public.dataupload_subsection VALUES (289, 'ऊर्जा का मात्रक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 439);
INSERT INTO public.dataupload_subsection VALUES (290, 'यांत्रिक ऊर्जा [ गतिज ऊर्जा, स्थितिज ऊर्जा, ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 440);
INSERT INTO public.dataupload_subsection VALUES (291, 'ऊर्जा के विभिन्न रूप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 440);
INSERT INTO public.dataupload_subsection VALUES (292, 'ऊर्जा का रूपांतरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 441);
INSERT INTO public.dataupload_subsection VALUES (293, 'ऊर्जा के विभिन्न स्त्रोत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 442);
INSERT INTO public.dataupload_subsection VALUES (294, 'परंपरागत ऊर्जा स्त्रोत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 442);
INSERT INTO public.dataupload_subsection VALUES (295, 'गैर परंपरागत ऊर्जा स्त्रोत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 442);
INSERT INTO public.dataupload_subsection VALUES (296, 'ऊर्जा की बचत ही ऊर्जा का संरक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 442);
INSERT INTO public.dataupload_subsection VALUES (297, 'ऊर्जा का संरक्षण के उपाय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 443);
INSERT INTO public.dataupload_subsection VALUES (298, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 444);
INSERT INTO public.dataupload_subsection VALUES (299, 'ध्वनि की उत्पत्ति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 446);
INSERT INTO public.dataupload_subsection VALUES (300, 'मानव में वाक ध्वनि का उत्पन्न होना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 447);
INSERT INTO public.dataupload_subsection VALUES (301, 'वायु में ध्वनि का संचरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 448);
INSERT INTO public.dataupload_subsection VALUES (302, 'ठोस में ध्वनि का संचरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 448);
INSERT INTO public.dataupload_subsection VALUES (303, 'द्रव में ध्वनि का संचरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 448);
INSERT INTO public.dataupload_subsection VALUES (304, 'आयाम, आवृति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 448);
INSERT INTO public.dataupload_subsection VALUES (305, 'कम्पन काल या आवर्तकाल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 448);
INSERT INTO public.dataupload_subsection VALUES (306, 'ध्वनि की प्रबलता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 449);
INSERT INTO public.dataupload_subsection VALUES (307, 'तारत्व', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 449);
INSERT INTO public.dataupload_subsection VALUES (308, 'श्रव्य, अपश्रव्य व पराश्रव्य ध्वनि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 450);
INSERT INTO public.dataupload_subsection VALUES (309, 'मानव कर्ण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 451);
INSERT INTO public.dataupload_subsection VALUES (310, 'ध्वनि प्रदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 452);
INSERT INTO public.dataupload_subsection VALUES (311, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 453);
INSERT INTO public.dataupload_subsection VALUES (312, 'विद्युत् धारा के ऊष्मीय प्रभाव पर आधारित विद्युत् उपकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 455);
INSERT INTO public.dataupload_subsection VALUES (313, 'लघुपथन [ लघुपथन के कारण, लघुपथन से हानि, लघुपरिपथ विच्छेदक ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 456);
INSERT INTO public.dataupload_subsection VALUES (314, 'विद्युत् चुम्बक के उपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 458);
INSERT INTO public.dataupload_subsection VALUES (315, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 463);
INSERT INTO public.dataupload_subsection VALUES (316, 'कृत्रिम उपग्रह प्रक्षेपण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 466);
INSERT INTO public.dataupload_subsection VALUES (317, 'भूस्थिर उपग्रह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 467);
INSERT INTO public.dataupload_subsection VALUES (318, 'ध्रुवीय उपग्रह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 467);
INSERT INTO public.dataupload_subsection VALUES (319, 'कृत्रिम उपग्रह के उपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 468);
INSERT INTO public.dataupload_subsection VALUES (320, 'भारत के प्रमुख कृत्रिम उपग्रह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 469);
INSERT INTO public.dataupload_subsection VALUES (321, 'भारतीय अंतरिक्ष अनुसंधान संगठन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 470);
INSERT INTO public.dataupload_subsection VALUES (322, 'डॉ. विक्रम अंबालाल साराभाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 471);
INSERT INTO public.dataupload_subsection VALUES (323, 'डॉ. ए,पी.जे. अब्दुल कलाम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 471);
INSERT INTO public.dataupload_subsection VALUES (324, 'महत्वपूर्ण बिंदु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 472);
INSERT INTO public.dataupload_subsection VALUES (325, 'रेडिओ, टेलीफोन, फैक्स, टेलीविज़न, इलेक्ट्रॉनिक मेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 474);
INSERT INTO public.dataupload_subsection VALUES (326, 'ई-कॉमर्स ,टेलीमेडिसिन,ब्रॉड -बैंड,सोशल मीडिया ,ई-मित्र ,', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 477);
INSERT INTO public.dataupload_subsection VALUES (327, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 480);
INSERT INTO public.dataupload_subsection VALUES (328, 'प्रकाश का अपवर्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 482);
INSERT INTO public.dataupload_subsection VALUES (329, 'अपवर्तन क्यों होता है', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 482);
INSERT INTO public.dataupload_subsection VALUES (330, 'अपवर्तन पर आधारित घटनाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 483);
INSERT INTO public.dataupload_subsection VALUES (331, 'लेंसों के प्रकार [ उत्तल लेंस, अभिसारी लेंस ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 484);
INSERT INTO public.dataupload_subsection VALUES (332, 'लेंसों के प्रकार [ अवतल लेंस, अपसारी लेंस ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 484);
INSERT INTO public.dataupload_subsection VALUES (333, 'लेंस से सम्बन्धित परिभाषाएँ [ मुख्य अक्ष, प्रकाश केन्द्र, फोकस बिन्दु, फोकस दूरी ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 484);
INSERT INTO public.dataupload_subsection VALUES (334, 'उत्तल लेंस से प्रतिबिम्ब निर्माण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 484);
INSERT INTO public.dataupload_subsection VALUES (335, 'अवतल लेंस से प्रतिबिम्ब निर्माण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 484);
INSERT INTO public.dataupload_subsection VALUES (336, 'लेंसों के उपयोग व प्रकाशीय उपकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 485);
INSERT INTO public.dataupload_subsection VALUES (337, 'मानव नेत्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 486);
INSERT INTO public.dataupload_subsection VALUES (338, 'प्रकाश का वर्ण विक्षेपण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 487);
INSERT INTO public.dataupload_subsection VALUES (339, 'वैज्ञानिक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 488);
INSERT INTO public.dataupload_subsection VALUES (340, 'महत्वपूर्ण बिंदु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 489);
INSERT INTO public.dataupload_subsection VALUES (341, 'तड़ित झंझावात से बचाव के उपाय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 494);
INSERT INTO public.dataupload_subsection VALUES (342, 'सरकारी एवं सामाजिक स्तर पर सुरक्षा उपाय व कार्य [ प्रभावित क्षेत्रों में सावधानियाँ ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 495);
INSERT INTO public.dataupload_subsection VALUES (343, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 497);
INSERT INTO public.dataupload_subsection VALUES (344, 'वायु प्रदूषण के कारण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 499);
INSERT INTO public.dataupload_subsection VALUES (345, 'वायु प्रदूषक एवं उनके दुष्प्रभाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 499);
INSERT INTO public.dataupload_subsection VALUES (346, 'अम्ल वर्षा के दुष्प्रभाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 500);
INSERT INTO public.dataupload_subsection VALUES (347, 'विश्व ऊष्णन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 501);
INSERT INTO public.dataupload_subsection VALUES (348, 'जल प्रदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 503);
INSERT INTO public.dataupload_subsection VALUES (349, 'जल प्रदूषण के कारण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 503);
INSERT INTO public.dataupload_subsection VALUES (350, 'जल प्रदूषण के प्रभाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 503);
INSERT INTO public.dataupload_subsection VALUES (351, 'जल प्रदूषण नियंत्रण के उपाय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 503);
INSERT INTO public.dataupload_subsection VALUES (352, 'जल प्रदूषण पर विशिष्ट अध्ययन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 503);
INSERT INTO public.dataupload_subsection VALUES (353, 'जल शुद्धिकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 503);
INSERT INTO public.dataupload_subsection VALUES (354, 'महत्वपूर्ण बिंदु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 504);
INSERT INTO public.dataupload_subsection VALUES (355, 'पर्यावरण का अर्थ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 505);
INSERT INTO public.dataupload_subsection VALUES (356, 'सामाजिक पर्यावरण /प्राकृतिक पर्यावरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 506);
INSERT INTO public.dataupload_subsection VALUES (357, 'प्राकृतिक पर्यावरण के घटक [ अजैविक घटक , जैविक घटक ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 507);
INSERT INTO public.dataupload_subsection VALUES (358, 'प्राकृतिक प्रदूषण के प्रकार [ भू-प्रदूषण / मृदा प्रदूषण ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 508);
INSERT INTO public.dataupload_subsection VALUES (359, 'पर्यावरण संरक्षण में राजस्थान की भूमिका [ १. खेजड़ली ग्राम का उदाहरण २. पिपलांत्री ग्राम ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 509);
INSERT INTO public.dataupload_subsection VALUES (360, 'हमारी जीवन शैली व पर्यावरण संरक्षण [ पर्यावरण मित्र/जीवन शैली के व्यावहारिक पक्ष /पर्यावरण संरक्षण हेतु संकल्प ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 509);
INSERT INTO public.dataupload_subsection VALUES (361, 'पर्यावरण रक्षा के लिए विभिन्न स्तर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 510);
INSERT INTO public.dataupload_subsection VALUES (362, 'महत्वपूर्ण बिंदु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 512);
INSERT INTO public.dataupload_subsection VALUES (363, 'कार्बन की उपस्थिति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 513);
INSERT INTO public.dataupload_subsection VALUES (364, 'हीरा और ग्रेफाइट मे अन्तर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 514);
INSERT INTO public.dataupload_subsection VALUES (365, 'जैव द्रव्यमान ,कच्चे तेल के कुंए ,कोयले की खान [ कोयला ,पेट्रोलियम ]', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 516);
INSERT INTO public.dataupload_subsection VALUES (366, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', true, 520);


--
-- Data for Name: dataupload_subsectionkeyword; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.dataupload_subsectionkeyword VALUES (20, '500 तक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 14);
INSERT INTO public.dataupload_subsectionkeyword VALUES (21, '999 तक संख्या', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 15);
INSERT INTO public.dataupload_subsectionkeyword VALUES (22, 'चार अंको की संख्या', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 16);
INSERT INTO public.dataupload_subsectionkeyword VALUES (23, 'जोड़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 17);
INSERT INTO public.dataupload_subsectionkeyword VALUES (24, 'योग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 17);
INSERT INTO public.dataupload_subsectionkeyword VALUES (25, 'समूहीकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 17);
INSERT INTO public.dataupload_subsectionkeyword VALUES (26, 'हासिल की जोड़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 18);
INSERT INTO public.dataupload_subsectionkeyword VALUES (27, 'एकाधिक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 19);
INSERT INTO public.dataupload_subsectionkeyword VALUES (28, 'एकाधिकेन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 19);
INSERT INTO public.dataupload_subsectionkeyword VALUES (29, 'एकाधिकेन योग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 20);
INSERT INTO public.dataupload_subsectionkeyword VALUES (30, 'एकन्यूनेंन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 21);
INSERT INTO public.dataupload_subsectionkeyword VALUES (31, 'परममित्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 22);
INSERT INTO public.dataupload_subsectionkeyword VALUES (32, 'एकन्यूनेंन घटाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 23);
INSERT INTO public.dataupload_subsectionkeyword VALUES (33, 'भिन्न', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 24);
INSERT INTO public.dataupload_subsectionkeyword VALUES (34, 'बंटवारा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 24);
INSERT INTO public.dataupload_subsectionkeyword VALUES (35, 'भाग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 24);
INSERT INTO public.dataupload_subsectionkeyword VALUES (36, 'अंश', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 25);
INSERT INTO public.dataupload_subsectionkeyword VALUES (37, 'हर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 25);
INSERT INTO public.dataupload_subsectionkeyword VALUES (38, 'भिन्नो में तुलना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 26);
INSERT INTO public.dataupload_subsectionkeyword VALUES (39, 'परिमेय संख्याओ का योग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 27);
INSERT INTO public.dataupload_subsectionkeyword VALUES (40, 'परिमेय संख्याओ का घटाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 28);
INSERT INTO public.dataupload_subsectionkeyword VALUES (41, 'परिमेय संख्याओ का गुणन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 29);
INSERT INTO public.dataupload_subsectionkeyword VALUES (42, 'परिमेय संख्याओ का भाग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 30);
INSERT INTO public.dataupload_subsectionkeyword VALUES (43, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 31);
INSERT INTO public.dataupload_subsectionkeyword VALUES (44, 'संवृत गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 31);
INSERT INTO public.dataupload_subsectionkeyword VALUES (45, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 32);
INSERT INTO public.dataupload_subsectionkeyword VALUES (46, 'योग गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 32);
INSERT INTO public.dataupload_subsectionkeyword VALUES (47, 'संवृत गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 32);
INSERT INTO public.dataupload_subsectionkeyword VALUES (48, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 33);
INSERT INTO public.dataupload_subsectionkeyword VALUES (49, 'व्यवकलन गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 33);
INSERT INTO public.dataupload_subsectionkeyword VALUES (50, 'संवृत गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 33);
INSERT INTO public.dataupload_subsectionkeyword VALUES (51, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 34);
INSERT INTO public.dataupload_subsectionkeyword VALUES (52, 'गुणन गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 34);
INSERT INTO public.dataupload_subsectionkeyword VALUES (53, 'संवृत गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 34);
INSERT INTO public.dataupload_subsectionkeyword VALUES (54, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 35);
INSERT INTO public.dataupload_subsectionkeyword VALUES (55, 'भाग गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 35);
INSERT INTO public.dataupload_subsectionkeyword VALUES (56, 'संवृत गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 35);
INSERT INTO public.dataupload_subsectionkeyword VALUES (57, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 36);
INSERT INTO public.dataupload_subsectionkeyword VALUES (58, 'योग गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 36);
INSERT INTO public.dataupload_subsectionkeyword VALUES (59, 'क्रम विनिमेय गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 36);
INSERT INTO public.dataupload_subsectionkeyword VALUES (60, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 37);
INSERT INTO public.dataupload_subsectionkeyword VALUES (61, 'व्यवकलन गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 37);
INSERT INTO public.dataupload_subsectionkeyword VALUES (62, 'क्रम विनिमेय गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 37);
INSERT INTO public.dataupload_subsectionkeyword VALUES (63, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 38);
INSERT INTO public.dataupload_subsectionkeyword VALUES (64, 'गुणन गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 38);
INSERT INTO public.dataupload_subsectionkeyword VALUES (65, 'क्रम विनिमेय गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 38);
INSERT INTO public.dataupload_subsectionkeyword VALUES (66, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 39);
INSERT INTO public.dataupload_subsectionkeyword VALUES (67, 'भाग गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 39);
INSERT INTO public.dataupload_subsectionkeyword VALUES (68, 'क्रम विनिमेय गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 39);
INSERT INTO public.dataupload_subsectionkeyword VALUES (69, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 40);
INSERT INTO public.dataupload_subsectionkeyword VALUES (70, 'साहचर्य (सहचारिता) गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 40);
INSERT INTO public.dataupload_subsectionkeyword VALUES (71, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 41);
INSERT INTO public.dataupload_subsectionkeyword VALUES (72, 'योग गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 41);
INSERT INTO public.dataupload_subsectionkeyword VALUES (73, 'साहचर्य (सहचारिता) गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 41);
INSERT INTO public.dataupload_subsectionkeyword VALUES (74, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 42);
INSERT INTO public.dataupload_subsectionkeyword VALUES (75, 'व्यवकलन गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 42);
INSERT INTO public.dataupload_subsectionkeyword VALUES (76, 'साहचर्य (सहचारिता) गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 42);
INSERT INTO public.dataupload_subsectionkeyword VALUES (77, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 43);
INSERT INTO public.dataupload_subsectionkeyword VALUES (78, 'गुणन गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 43);
INSERT INTO public.dataupload_subsectionkeyword VALUES (79, 'साहचर्य (सहचारिता) गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 43);
INSERT INTO public.dataupload_subsectionkeyword VALUES (80, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 44);
INSERT INTO public.dataupload_subsectionkeyword VALUES (81, 'भाग गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 44);
INSERT INTO public.dataupload_subsectionkeyword VALUES (82, 'साहचर्य (सहचारिता) गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 44);
INSERT INTO public.dataupload_subsectionkeyword VALUES (83, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 45);
INSERT INTO public.dataupload_subsectionkeyword VALUES (84, 'शून्य के साथ संक्रियाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 45);
INSERT INTO public.dataupload_subsectionkeyword VALUES (85, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 46);
INSERT INTO public.dataupload_subsectionkeyword VALUES (86, 'गुणात्मक तत्समक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 46);
INSERT INTO public.dataupload_subsectionkeyword VALUES (87, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 47);
INSERT INTO public.dataupload_subsectionkeyword VALUES (88, '1.3.6 योज्य प्रतिलोम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 47);
INSERT INTO public.dataupload_subsectionkeyword VALUES (89, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 48);
INSERT INTO public.dataupload_subsectionkeyword VALUES (90, '1.3.7 गुणात्मक प्रतिलोम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 48);
INSERT INTO public.dataupload_subsectionkeyword VALUES (91, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 49);
INSERT INTO public.dataupload_subsectionkeyword VALUES (92, 'गुणन की योग पर वितरकता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 49);
INSERT INTO public.dataupload_subsectionkeyword VALUES (93, 'परिमेय संख्याओं के गुणधर्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 50);
INSERT INTO public.dataupload_subsectionkeyword VALUES (94, 'औसत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 50);
INSERT INTO public.dataupload_subsectionkeyword VALUES (95, 'परिमेय संख्याओ के बीच', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 50);
INSERT INTO public.dataupload_subsectionkeyword VALUES (96, 'घन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 51);
INSERT INTO public.dataupload_subsectionkeyword VALUES (97, 'घनमूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 51);
INSERT INTO public.dataupload_subsectionkeyword VALUES (98, 'सम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 51);
INSERT INTO public.dataupload_subsectionkeyword VALUES (99, 'घन संख्या', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 51);
INSERT INTO public.dataupload_subsectionkeyword VALUES (100, 'विषम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 51);
INSERT INTO public.dataupload_subsectionkeyword VALUES (101, 'घन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 52);
INSERT INTO public.dataupload_subsectionkeyword VALUES (102, 'घनमूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 52);
INSERT INTO public.dataupload_subsectionkeyword VALUES (103, 'इकाई का अंक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 52);
INSERT INTO public.dataupload_subsectionkeyword VALUES (104, 'घन संख्या', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 52);
INSERT INTO public.dataupload_subsectionkeyword VALUES (105, 'घन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 53);
INSERT INTO public.dataupload_subsectionkeyword VALUES (106, 'घनमूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 53);
INSERT INTO public.dataupload_subsectionkeyword VALUES (107, 'क्रमागत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 53);
INSERT INTO public.dataupload_subsectionkeyword VALUES (108, 'जोड़ना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 53);
INSERT INTO public.dataupload_subsectionkeyword VALUES (109, 'विषम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 53);
INSERT INTO public.dataupload_subsectionkeyword VALUES (110, 'घन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 54);
INSERT INTO public.dataupload_subsectionkeyword VALUES (111, 'घनमूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 54);
INSERT INTO public.dataupload_subsectionkeyword VALUES (112, 'अभाज्य गुणनखंड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 54);
INSERT INTO public.dataupload_subsectionkeyword VALUES (113, 'घनमूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 55);
INSERT INTO public.dataupload_subsectionkeyword VALUES (114, 'अभाज्य गुणनखंड विधी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 55);
INSERT INTO public.dataupload_subsectionkeyword VALUES (115, 'घनमूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 56);
INSERT INTO public.dataupload_subsectionkeyword VALUES (116, 'अवलोकन विधि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 56);
INSERT INTO public.dataupload_subsectionkeyword VALUES (117, 'घात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 57);
INSERT INTO public.dataupload_subsectionkeyword VALUES (118, 'घातांक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 57);
INSERT INTO public.dataupload_subsectionkeyword VALUES (119, '3.4.1 वैज्ञानिक संकेतन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 57);
INSERT INTO public.dataupload_subsectionkeyword VALUES (120, 'घात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 58);
INSERT INTO public.dataupload_subsectionkeyword VALUES (121, 'घातांक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 58);
INSERT INTO public.dataupload_subsectionkeyword VALUES (122, '3.4.2 बहुत बड़ी संख्याओं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 58);
INSERT INTO public.dataupload_subsectionkeyword VALUES (123, 'बहुत छोटी संख्याओं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 58);
INSERT INTO public.dataupload_subsectionkeyword VALUES (124, 'तुलना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 58);
INSERT INTO public.dataupload_subsectionkeyword VALUES (125, 'दिमागी कसरत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 59);
INSERT INTO public.dataupload_subsectionkeyword VALUES (126, 'अंकों को पलटना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 59);
INSERT INTO public.dataupload_subsectionkeyword VALUES (127, 'दो अंको की संख्या', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 59);
INSERT INTO public.dataupload_subsectionkeyword VALUES (128, 'दिमागी कसरत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 60);
INSERT INTO public.dataupload_subsectionkeyword VALUES (129, 'अंको का पलटना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 60);
INSERT INTO public.dataupload_subsectionkeyword VALUES (130, 'तीन अंको की संख्या', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 60);
INSERT INTO public.dataupload_subsectionkeyword VALUES (131, 'वैदिक गणित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 61);
INSERT INTO public.dataupload_subsectionkeyword VALUES (132, 'गुणन संक्रिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 61);
INSERT INTO public.dataupload_subsectionkeyword VALUES (133, 'उर्ध्वतिर्यग्यभ्याम सूत्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 61);
INSERT INTO public.dataupload_subsectionkeyword VALUES (134, 'वैदिक गणित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 62);
INSERT INTO public.dataupload_subsectionkeyword VALUES (135, 'सूत्र निखिलम(उपाधार) से गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 62);
INSERT INTO public.dataupload_subsectionkeyword VALUES (136, 'वैदिक गणित', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 63);
INSERT INTO public.dataupload_subsectionkeyword VALUES (137, '5.2.1 सूत्र निखिलम (आधार )', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 63);
INSERT INTO public.dataupload_subsectionkeyword VALUES (138, 'बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 64);
INSERT INTO public.dataupload_subsectionkeyword VALUES (139, '6.7.1 समलम्ब चतुर्भुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 64);
INSERT INTO public.dataupload_subsectionkeyword VALUES (140, 'बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 65);
INSERT INTO public.dataupload_subsectionkeyword VALUES (141, '6.7.2 पतंग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 65);
INSERT INTO public.dataupload_subsectionkeyword VALUES (142, 'बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 66);
INSERT INTO public.dataupload_subsectionkeyword VALUES (143, '6.7.3 समान्तर चतुर्भुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 66);
INSERT INTO public.dataupload_subsectionkeyword VALUES (144, 'बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 67);
INSERT INTO public.dataupload_subsectionkeyword VALUES (145, '1. आयत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 67);
INSERT INTO public.dataupload_subsectionkeyword VALUES (146, 'बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 68);
INSERT INTO public.dataupload_subsectionkeyword VALUES (147, '2. वर्ग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 68);
INSERT INTO public.dataupload_subsectionkeyword VALUES (148, 'बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 69);
INSERT INTO public.dataupload_subsectionkeyword VALUES (149, '6.7.5 सम चतुर्भुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 69);
INSERT INTO public.dataupload_subsectionkeyword VALUES (150, 'चतुर्भुज की रचना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 70);
INSERT INTO public.dataupload_subsectionkeyword VALUES (151, 'चार भुजाऐं और एक विकर्ण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 70);
INSERT INTO public.dataupload_subsectionkeyword VALUES (152, 'चतुर्भुज की रचना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 71);
INSERT INTO public.dataupload_subsectionkeyword VALUES (153, 'जब दो विकर्ण और तीन भुजाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 71);
INSERT INTO public.dataupload_subsectionkeyword VALUES (154, 'चतुर्भुज की रचना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 72);
INSERT INTO public.dataupload_subsectionkeyword VALUES (155, 'चार भुजाएँ एवं एक कोण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 72);
INSERT INTO public.dataupload_subsectionkeyword VALUES (156, 'चतुर्भुज की रचना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 73);
INSERT INTO public.dataupload_subsectionkeyword VALUES (157, 'तीन भुजाऐं और उनके बीच के दो कोण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 73);
INSERT INTO public.dataupload_subsectionkeyword VALUES (158, 'चतुर्भुज की रचना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 74);
INSERT INTO public.dataupload_subsectionkeyword VALUES (159, 'दो आसन्न भुजाएँ और तीन कोण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 74);
INSERT INTO public.dataupload_subsectionkeyword VALUES (160, 'ठोस आकारों का चित्रण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 75);
INSERT INTO public.dataupload_subsectionkeyword VALUES (161, 'त्रिभुजीय प्रिज्म की आकृति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 75);
INSERT INTO public.dataupload_subsectionkeyword VALUES (162, 'त्रिभुजीय प्रिज्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 75);
INSERT INTO public.dataupload_subsectionkeyword VALUES (163, 'ठोस आकारों का चित्रण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 76);
INSERT INTO public.dataupload_subsectionkeyword VALUES (164, '8.5.1 घनाभ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 76);
INSERT INTO public.dataupload_subsectionkeyword VALUES (165, 'ठोस आकारों का चित्रण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 77);
INSERT INTO public.dataupload_subsectionkeyword VALUES (166, '8.5.2 घन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 77);
INSERT INTO public.dataupload_subsectionkeyword VALUES (167, 'ठोस आकारों का चित्रण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 78);
INSERT INTO public.dataupload_subsectionkeyword VALUES (168, 'बेलन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 78);
INSERT INTO public.dataupload_subsectionkeyword VALUES (169, 'ठोस आकारों का चित्रण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 79);
INSERT INTO public.dataupload_subsectionkeyword VALUES (170, '8.5.4 शंकु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 79);
INSERT INTO public.dataupload_subsectionkeyword VALUES (171, 'ठोस आकारों का चित्रण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 80);
INSERT INTO public.dataupload_subsectionkeyword VALUES (172, '8.5.5 प्रिज्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 80);
INSERT INTO public.dataupload_subsectionkeyword VALUES (173, 'ठोस आकारों का चित्रण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 81);
INSERT INTO public.dataupload_subsectionkeyword VALUES (174, '8.5.6 पिरामिड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 81);
INSERT INTO public.dataupload_subsectionkeyword VALUES (175, 'बीजीय व्यंजक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 82);
INSERT INTO public.dataupload_subsectionkeyword VALUES (176, 'एक पदीय व्यंजक का एक पदीय व्यंजक से गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 82);
INSERT INTO public.dataupload_subsectionkeyword VALUES (177, 'गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 82);
INSERT INTO public.dataupload_subsectionkeyword VALUES (178, 'एक पदीय व्यंजक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 82);
INSERT INTO public.dataupload_subsectionkeyword VALUES (179, 'बीजीय व्यंजक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 83);
INSERT INTO public.dataupload_subsectionkeyword VALUES (180, 'द्विपदी या त्रिपदी को एक पदी से गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 83);
INSERT INTO public.dataupload_subsectionkeyword VALUES (181, 'त्रिपदी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 83);
INSERT INTO public.dataupload_subsectionkeyword VALUES (182, 'द्विपदी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 83);
INSERT INTO public.dataupload_subsectionkeyword VALUES (183, 'गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 83);
INSERT INTO public.dataupload_subsectionkeyword VALUES (184, 'बीजीय व्यंजक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 84);
INSERT INTO public.dataupload_subsectionkeyword VALUES (185, 'द्विपदीय व्यंजक का द्विपदीय व्यंजक से गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 84);
INSERT INTO public.dataupload_subsectionkeyword VALUES (186, 'द्विपदीय व्यंजक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 84);
INSERT INTO public.dataupload_subsectionkeyword VALUES (187, 'बीजीय व्यंजक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 85);
INSERT INTO public.dataupload_subsectionkeyword VALUES (188, 'द्विपदी को त्रिपदी से गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 85);
INSERT INTO public.dataupload_subsectionkeyword VALUES (189, 'त्रिपदी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 85);
INSERT INTO public.dataupload_subsectionkeyword VALUES (190, 'द्विपदी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 85);
INSERT INTO public.dataupload_subsectionkeyword VALUES (191, 'गुणा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 85);
INSERT INTO public.dataupload_subsectionkeyword VALUES (192, 'बीजीय व्यंजक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 86);
INSERT INTO public.dataupload_subsectionkeyword VALUES (193, 'मानक सर्वसमिका', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 86);
INSERT INTO public.dataupload_subsectionkeyword VALUES (194, 'बीजीय व्यंजक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 87);
INSERT INTO public.dataupload_subsectionkeyword VALUES (195, '9.6.2 सर्वसमिकाओं का उपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 87);
INSERT INTO public.dataupload_subsectionkeyword VALUES (196, 'गुणनखंड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 88);
INSERT INTO public.dataupload_subsectionkeyword VALUES (197, '10.2.1.1 सार्व गुणनखंड विधि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 88);
INSERT INTO public.dataupload_subsectionkeyword VALUES (198, '10.2.1.2 समूहन द्वारा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 88);
INSERT INTO public.dataupload_subsectionkeyword VALUES (199, 'गुणनखंड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 89);
INSERT INTO public.dataupload_subsectionkeyword VALUES (200, '(x+a)(x+b)', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 89);
INSERT INTO public.dataupload_subsectionkeyword VALUES (201, 'गुणनखंड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 90);
INSERT INTO public.dataupload_subsectionkeyword VALUES (202, 'विभाजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 90);
INSERT INTO public.dataupload_subsectionkeyword VALUES (203, 'एक पदी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 90);
INSERT INTO public.dataupload_subsectionkeyword VALUES (204, 'गुणनखंड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 91);
INSERT INTO public.dataupload_subsectionkeyword VALUES (205, 'एक बहुपद में एक पदीय व्यंजक से भाग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 91);
INSERT INTO public.dataupload_subsectionkeyword VALUES (206, 'एक पदीय व्यंजक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 91);
INSERT INTO public.dataupload_subsectionkeyword VALUES (207, 'गुणनखंड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 92);
INSERT INTO public.dataupload_subsectionkeyword VALUES (208, 'विभाजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 92);
INSERT INTO public.dataupload_subsectionkeyword VALUES (209, 'बहुपद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 92);
INSERT INTO public.dataupload_subsectionkeyword VALUES (210, 'क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 93);
INSERT INTO public.dataupload_subsectionkeyword VALUES (211, 'अनियमित बहुभुज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 93);
INSERT INTO public.dataupload_subsectionkeyword VALUES (212, 'पृष्ठीय क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 94);
INSERT INTO public.dataupload_subsectionkeyword VALUES (213, '15.2.1 घनाभ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 94);
INSERT INTO public.dataupload_subsectionkeyword VALUES (214, 'पृष्ठीय क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 95);
INSERT INTO public.dataupload_subsectionkeyword VALUES (215, 'घन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 95);
INSERT INTO public.dataupload_subsectionkeyword VALUES (216, 'सम्पूर्ण पृष्ठीय क्षेत्रफल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 95);
INSERT INTO public.dataupload_subsectionkeyword VALUES (217, 'आयतन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 96);
INSERT INTO public.dataupload_subsectionkeyword VALUES (218, 'घन व घनाभ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 96);
INSERT INTO public.dataupload_subsectionkeyword VALUES (219, 'आयतन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 97);
INSERT INTO public.dataupload_subsectionkeyword VALUES (220, 'बेलन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 97);
INSERT INTO public.dataupload_subsectionkeyword VALUES (221, 'धारिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 97);
INSERT INTO public.dataupload_subsectionkeyword VALUES (222, 'आंकड़ों का प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 98);
INSERT INTO public.dataupload_subsectionkeyword VALUES (223, 'चित्रालेख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 98);
INSERT INTO public.dataupload_subsectionkeyword VALUES (224, 'आंकड़ों का प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 99);
INSERT INTO public.dataupload_subsectionkeyword VALUES (225, 'दंड आलेख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 99);
INSERT INTO public.dataupload_subsectionkeyword VALUES (226, 'आंकड़ों का प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 100);
INSERT INTO public.dataupload_subsectionkeyword VALUES (227, 'दोहरे दंड आलेख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 100);
INSERT INTO public.dataupload_subsectionkeyword VALUES (228, 'आंकड़ों का वर्गीकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 101);
INSERT INTO public.dataupload_subsectionkeyword VALUES (229, 'बारंबारता बंटन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 101);
INSERT INTO public.dataupload_subsectionkeyword VALUES (230, 'आंकड़ों का प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 102);
INSERT INTO public.dataupload_subsectionkeyword VALUES (231, 'आंकड़ों का वर्गीकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 102);
INSERT INTO public.dataupload_subsectionkeyword VALUES (232, 'वर्ग अंतराल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 102);
INSERT INTO public.dataupload_subsectionkeyword VALUES (233, 'आंकड़ों का प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 103);
INSERT INTO public.dataupload_subsectionkeyword VALUES (234, 'आलेखीय निरूपण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 103);
INSERT INTO public.dataupload_subsectionkeyword VALUES (235, 'आंकड़ों का प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 104);
INSERT INTO public.dataupload_subsectionkeyword VALUES (236, 'पाई चार्ट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 104);
INSERT INTO public.dataupload_subsectionkeyword VALUES (237, 'आंकड़ों का प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 105);
INSERT INTO public.dataupload_subsectionkeyword VALUES (238, 'संयोग से अभिप्राय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 105);
INSERT INTO public.dataupload_subsectionkeyword VALUES (239, 'आंकड़ों का प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 106);
INSERT INTO public.dataupload_subsectionkeyword VALUES (240, 'संभावनाओं की गणना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 106);
INSERT INTO public.dataupload_subsectionkeyword VALUES (241, 'पासा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 106);
INSERT INTO public.dataupload_subsectionkeyword VALUES (242, 'सिक्का', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 106);
INSERT INTO public.dataupload_subsectionkeyword VALUES (243, 'आंकड़ों का प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 107);
INSERT INTO public.dataupload_subsectionkeyword VALUES (244, 'सम संभावित परिणाम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 107);
INSERT INTO public.dataupload_subsectionkeyword VALUES (245, 'आंकड़ों का प्रबंधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 108);
INSERT INTO public.dataupload_subsectionkeyword VALUES (246, 'अनुकूल संभावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 108);
INSERT INTO public.dataupload_subsectionkeyword VALUES (247, 'नाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 109);
INSERT INTO public.dataupload_subsectionkeyword VALUES (248, 'नानी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 109);
INSERT INTO public.dataupload_subsectionkeyword VALUES (249, 'मामा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 109);
INSERT INTO public.dataupload_subsectionkeyword VALUES (250, 'मामी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 109);
INSERT INTO public.dataupload_subsectionkeyword VALUES (251, 'मौसा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 109);
INSERT INTO public.dataupload_subsectionkeyword VALUES (252, 'मौसी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 109);
INSERT INTO public.dataupload_subsectionkeyword VALUES (253, 'मेहमाननवाजी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 110);
INSERT INTO public.dataupload_subsectionkeyword VALUES (254, 'आवाभगत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 110);
INSERT INTO public.dataupload_subsectionkeyword VALUES (255, 'स्वागत-सत्कार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 110);
INSERT INTO public.dataupload_subsectionkeyword VALUES (256, 'वंश', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 111);
INSERT INTO public.dataupload_subsectionkeyword VALUES (257, 'वंश वृक्ष', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 111);
INSERT INTO public.dataupload_subsectionkeyword VALUES (258, 'वंश बेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 111);
INSERT INTO public.dataupload_subsectionkeyword VALUES (259, 'एकल परिवार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 112);
INSERT INTO public.dataupload_subsectionkeyword VALUES (260, 'संयुक्त परिवार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 112);
INSERT INTO public.dataupload_subsectionkeyword VALUES (261, 'महिला', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 113);
INSERT INTO public.dataupload_subsectionkeyword VALUES (262, 'पुरुष', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 113);
INSERT INTO public.dataupload_subsectionkeyword VALUES (263, 'कार्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 113);
INSERT INTO public.dataupload_subsectionkeyword VALUES (264, 'मुखिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 114);
INSERT INTO public.dataupload_subsectionkeyword VALUES (265, 'निर्णय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 114);
INSERT INTO public.dataupload_subsectionkeyword VALUES (266, 'पढ़ाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 115);
INSERT INTO public.dataupload_subsectionkeyword VALUES (267, 'लिखाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 115);
INSERT INTO public.dataupload_subsectionkeyword VALUES (268, 'आशीर्वाद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 116);
INSERT INTO public.dataupload_subsectionkeyword VALUES (269, 'सम्मान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 116);
INSERT INTO public.dataupload_subsectionkeyword VALUES (270, 'बुज़र्गों', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 116);
INSERT INTO public.dataupload_subsectionkeyword VALUES (271, 'बालिका', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 117);
INSERT INTO public.dataupload_subsectionkeyword VALUES (272, 'शिक्षा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 117);
INSERT INTO public.dataupload_subsectionkeyword VALUES (273, 'जाति भेद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 118);
INSERT INTO public.dataupload_subsectionkeyword VALUES (274, 'छुआछूत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 118);
INSERT INTO public.dataupload_subsectionkeyword VALUES (275, 'ऊंच नीच', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 118);
INSERT INTO public.dataupload_subsectionkeyword VALUES (276, 'लिंग भेद ना करना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 118);
INSERT INTO public.dataupload_subsectionkeyword VALUES (277, 'समानता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 118);
INSERT INTO public.dataupload_subsectionkeyword VALUES (278, 'सोच व मूल्यों मे परिवर्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 118);
INSERT INTO public.dataupload_subsectionkeyword VALUES (279, 'कान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 119);
INSERT INTO public.dataupload_subsectionkeyword VALUES (280, 'कान की सामान्य जानकारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 119);
INSERT INTO public.dataupload_subsectionkeyword VALUES (281, 'आँख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 120);
INSERT INTO public.dataupload_subsectionkeyword VALUES (282, 'आँख की सामान्य जानकारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 120);
INSERT INTO public.dataupload_subsectionkeyword VALUES (283, 'आँख', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 121);
INSERT INTO public.dataupload_subsectionkeyword VALUES (284, 'आँख का महत्व', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 121);
INSERT INTO public.dataupload_subsectionkeyword VALUES (285, 'सर्दी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 122);
INSERT INTO public.dataupload_subsectionkeyword VALUES (286, 'जुखाम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 122);
INSERT INTO public.dataupload_subsectionkeyword VALUES (287, 'नाक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 122);
INSERT INTO public.dataupload_subsectionkeyword VALUES (288, 'त्वचा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 123);
INSERT INTO public.dataupload_subsectionkeyword VALUES (289, 'त्वचा की सामान्य जानकारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 123);
INSERT INTO public.dataupload_subsectionkeyword VALUES (290, 'अच्छा स्पर्श', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 124);
INSERT INTO public.dataupload_subsectionkeyword VALUES (291, 'बुरा स्पर्श', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 124);
INSERT INTO public.dataupload_subsectionkeyword VALUES (292, 'खेल प्रतियोगिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 125);
INSERT INTO public.dataupload_subsectionkeyword VALUES (293, 'खेल नियम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 125);
INSERT INTO public.dataupload_subsectionkeyword VALUES (294, 'खेल मैदान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 125);
INSERT INTO public.dataupload_subsectionkeyword VALUES (295, 'खेल प्रतियोगिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 126);
INSERT INTO public.dataupload_subsectionkeyword VALUES (296, 'खेल नियम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 126);
INSERT INTO public.dataupload_subsectionkeyword VALUES (297, 'खो खो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 126);
INSERT INTO public.dataupload_subsectionkeyword VALUES (298, 'प्राथमिक चिकित्सा पेटी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 127);
INSERT INTO public.dataupload_subsectionkeyword VALUES (299, 'खेल प्रतियोगिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 128);
INSERT INTO public.dataupload_subsectionkeyword VALUES (300, 'खेल नियम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 128);
INSERT INTO public.dataupload_subsectionkeyword VALUES (301, 'कबडडी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 128);
INSERT INTO public.dataupload_subsectionkeyword VALUES (302, 'खेल प्रतियोगिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 129);
INSERT INTO public.dataupload_subsectionkeyword VALUES (303, 'खेल नियम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 129);
INSERT INTO public.dataupload_subsectionkeyword VALUES (304, 'खेल भावना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 129);
INSERT INTO public.dataupload_subsectionkeyword VALUES (305, 'खेल प्रतियोगिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 130);
INSERT INTO public.dataupload_subsectionkeyword VALUES (306, 'खेल नियम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 130);
INSERT INTO public.dataupload_subsectionkeyword VALUES (307, 'खेल प्रतियोगिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 131);
INSERT INTO public.dataupload_subsectionkeyword VALUES (308, 'खेल नियम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 131);
INSERT INTO public.dataupload_subsectionkeyword VALUES (309, 'गुलाब', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 132);
INSERT INTO public.dataupload_subsectionkeyword VALUES (310, 'फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 132);
INSERT INTO public.dataupload_subsectionkeyword VALUES (311, 'गुलाबी फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 132);
INSERT INTO public.dataupload_subsectionkeyword VALUES (312, 'स्थलीय फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 132);
INSERT INTO public.dataupload_subsectionkeyword VALUES (313, 'सूरजमुखी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 133);
INSERT INTO public.dataupload_subsectionkeyword VALUES (314, 'पीले फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 133);
INSERT INTO public.dataupload_subsectionkeyword VALUES (315, 'स्थलीय फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 133);
INSERT INTO public.dataupload_subsectionkeyword VALUES (316, 'कमल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 134);
INSERT INTO public.dataupload_subsectionkeyword VALUES (317, 'जलीय फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 134);
INSERT INTO public.dataupload_subsectionkeyword VALUES (318, 'राष्ट्रीय फूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 134);
INSERT INTO public.dataupload_subsectionkeyword VALUES (319, 'शहद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_subsectionkeyword VALUES (320, 'मधुमक्खी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 135);
INSERT INTO public.dataupload_subsectionkeyword VALUES (321, 'विभिन्न जड़ो के काम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 136);
INSERT INTO public.dataupload_subsectionkeyword VALUES (322, 'खेजड़ी की जड़े', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 136);
INSERT INTO public.dataupload_subsectionkeyword VALUES (323, 'विभिन्न जड़ो के काम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_subsectionkeyword VALUES (324, 'बरगद की जड़े', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 137);
INSERT INTO public.dataupload_subsectionkeyword VALUES (325, 'तने के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_subsectionkeyword VALUES (326, 'तना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 138);
INSERT INTO public.dataupload_subsectionkeyword VALUES (327, 'तने खाते हैं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 139);
INSERT INTO public.dataupload_subsectionkeyword VALUES (328, 'तना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 139);
INSERT INTO public.dataupload_subsectionkeyword VALUES (329, 'जंगल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_subsectionkeyword VALUES (330, 'जानवर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_subsectionkeyword VALUES (331, 'जीवन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_subsectionkeyword VALUES (332, 'जंतु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_subsectionkeyword VALUES (333, 'पालतू व जंगली जानवरों में अंतर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 140);
INSERT INTO public.dataupload_subsectionkeyword VALUES (334, 'जंगल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_subsectionkeyword VALUES (335, 'जानवर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_subsectionkeyword VALUES (336, 'जीवन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_subsectionkeyword VALUES (337, 'जंतु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_subsectionkeyword VALUES (338, 'जंगल व वहाँ रहने वाले जीव जंतु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_subsectionkeyword VALUES (339, 'जंगल और जानवरों में सम्बन्ध', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 141);
INSERT INTO public.dataupload_subsectionkeyword VALUES (340, 'जानवर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 142);
INSERT INTO public.dataupload_subsectionkeyword VALUES (341, 'झुण्ड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 142);
INSERT INTO public.dataupload_subsectionkeyword VALUES (342, 'जंगली जानवरों के व्यवहार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 142);
INSERT INTO public.dataupload_subsectionkeyword VALUES (343, 'अभ्यारण्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 143);
INSERT INTO public.dataupload_subsectionkeyword VALUES (344, 'जानवरों के संरक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 143);
INSERT INTO public.dataupload_subsectionkeyword VALUES (345, 'सरकारी जानकारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 143);
INSERT INTO public.dataupload_subsectionkeyword VALUES (346, 'संरक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_subsectionkeyword VALUES (347, 'अभ्यारण्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_subsectionkeyword VALUES (348, 'जंगल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 144);
INSERT INTO public.dataupload_subsectionkeyword VALUES (349, 'जीव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_subsectionkeyword VALUES (350, 'जंतु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_subsectionkeyword VALUES (351, 'अंतर्निर्भरता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 145);
INSERT INTO public.dataupload_subsectionkeyword VALUES (352, 'जानवर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 146);
INSERT INTO public.dataupload_subsectionkeyword VALUES (353, 'दया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 146);
INSERT INTO public.dataupload_subsectionkeyword VALUES (354, 'पानी के रंग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_subsectionkeyword VALUES (355, 'रंगहीन पानी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_subsectionkeyword VALUES (356, 'रंगीन पानी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 147);
INSERT INTO public.dataupload_subsectionkeyword VALUES (357, 'पानी का स्वाद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 148);
INSERT INTO public.dataupload_subsectionkeyword VALUES (358, 'शर्बत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 148);
INSERT INTO public.dataupload_subsectionkeyword VALUES (359, 'नीबूपानी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 148);
INSERT INTO public.dataupload_subsectionkeyword VALUES (360, 'वाष्पीकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_subsectionkeyword VALUES (361, 'गर्मी का असर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_subsectionkeyword VALUES (362, 'फैलवा का असर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_subsectionkeyword VALUES (363, 'कपड़ो का सूखना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_subsectionkeyword VALUES (364, 'वाष्पन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 149);
INSERT INTO public.dataupload_subsectionkeyword VALUES (365, 'संघनन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_subsectionkeyword VALUES (366, 'जल च्रक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 150);
INSERT INTO public.dataupload_subsectionkeyword VALUES (367, 'पानी की सतह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 151);
INSERT INTO public.dataupload_subsectionkeyword VALUES (368, 'पानी की ताकत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 152);
INSERT INTO public.dataupload_subsectionkeyword VALUES (369, 'पानी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_subsectionkeyword VALUES (370, 'पानी का उपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_subsectionkeyword VALUES (371, 'पानी का बहना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 153);
INSERT INTO public.dataupload_subsectionkeyword VALUES (372, 'पानी का मापन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_subsectionkeyword VALUES (373, 'पानी का महत्व', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 154);
INSERT INTO public.dataupload_subsectionkeyword VALUES (374, 'कुए', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 155);
INSERT INTO public.dataupload_subsectionkeyword VALUES (375, 'बोरवेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 155);
INSERT INTO public.dataupload_subsectionkeyword VALUES (376, 'भूगर्भ से पानी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 155);
INSERT INTO public.dataupload_subsectionkeyword VALUES (377, 'गंदापानी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_subsectionkeyword VALUES (378, 'नदी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_subsectionkeyword VALUES (379, 'पानी साफ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 156);
INSERT INTO public.dataupload_subsectionkeyword VALUES (380, 'पानी की सफाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_subsectionkeyword VALUES (381, 'नमामि गंगा कार्यक्रम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 157);
INSERT INTO public.dataupload_subsectionkeyword VALUES (382, 'सामूहिक भोज के कारण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_subsectionkeyword VALUES (383, 'सामूहिक भोज के उद्देश्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 158);
INSERT INTO public.dataupload_subsectionkeyword VALUES (384, 'गाल के लड्डू', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_subsectionkeyword VALUES (385, 'खाना बनाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 159);
INSERT INTO public.dataupload_subsectionkeyword VALUES (386, 'हुदहुद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_subsectionkeyword VALUES (387, 'बया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_subsectionkeyword VALUES (388, 'गोडावण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_subsectionkeyword VALUES (389, 'राजस्थान के पक्षि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 160);
INSERT INTO public.dataupload_subsectionkeyword VALUES (390, 'अलग अलग पंजे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_subsectionkeyword VALUES (391, 'कार्यों के अनुसार पंजे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_subsectionkeyword VALUES (392, 'तैरने के लिए', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_subsectionkeyword VALUES (393, 'टहनियों को पकड़ने के लिए', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_subsectionkeyword VALUES (394, 'जमीन पर चलने के लिए', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_subsectionkeyword VALUES (395, 'कड़ी सतह पर चढने के लिए', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 161);
INSERT INTO public.dataupload_subsectionkeyword VALUES (396, 'अलग अलग चोंच', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_subsectionkeyword VALUES (397, 'कार्यों के अनुसार चोंच', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_subsectionkeyword VALUES (398, 'मांस चीरने के लिए', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_subsectionkeyword VALUES (399, 'फूलो का रस चूसने के लिए', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_subsectionkeyword VALUES (400, 'कीचड़ से कीड़े निकलने के लिए', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_subsectionkeyword VALUES (401, 'लकड़ी तोड़ने के लिए अनाज और बीज तोड़ने के लिए', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 162);
INSERT INTO public.dataupload_subsectionkeyword VALUES (402, 'दाँत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_subsectionkeyword VALUES (403, 'दांत और जीवन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 163);
INSERT INTO public.dataupload_subsectionkeyword VALUES (404, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_subsectionkeyword VALUES (405, 'दांतो में कीड़ा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_subsectionkeyword VALUES (406, 'दांतो की सड़न', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 164);
INSERT INTO public.dataupload_subsectionkeyword VALUES (407, 'दाँतो की सफाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 165);
INSERT INTO public.dataupload_subsectionkeyword VALUES (408, 'दांतो में संक्रमण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 165);
INSERT INTO public.dataupload_subsectionkeyword VALUES (409, 'दांतो के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 166);
INSERT INTO public.dataupload_subsectionkeyword VALUES (410, 'कृतंक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 166);
INSERT INTO public.dataupload_subsectionkeyword VALUES (411, 'रदनक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 166);
INSERT INTO public.dataupload_subsectionkeyword VALUES (412, 'अग्र -चवर्णक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 166);
INSERT INTO public.dataupload_subsectionkeyword VALUES (413, 'चवर्णक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 166);
INSERT INTO public.dataupload_subsectionkeyword VALUES (414, 'दांतों के नाम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 166);
INSERT INTO public.dataupload_subsectionkeyword VALUES (415, 'दांतो के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 167);
INSERT INTO public.dataupload_subsectionkeyword VALUES (416, 'कृतंक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 167);
INSERT INTO public.dataupload_subsectionkeyword VALUES (417, 'रदनक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 167);
INSERT INTO public.dataupload_subsectionkeyword VALUES (418, 'अग्र -चवर्णक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 167);
INSERT INTO public.dataupload_subsectionkeyword VALUES (419, 'चवर्णक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 167);
INSERT INTO public.dataupload_subsectionkeyword VALUES (420, 'दांतो की संख्या', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 167);
INSERT INTO public.dataupload_subsectionkeyword VALUES (421, 'दांतो के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 168);
INSERT INTO public.dataupload_subsectionkeyword VALUES (422, 'कृतंक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 168);
INSERT INTO public.dataupload_subsectionkeyword VALUES (423, 'रदनक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 168);
INSERT INTO public.dataupload_subsectionkeyword VALUES (424, 'अग्र -चवर्णक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 168);
INSERT INTO public.dataupload_subsectionkeyword VALUES (425, 'चवर्णक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 168);
INSERT INTO public.dataupload_subsectionkeyword VALUES (426, 'दांतो की संरचना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 168);
INSERT INTO public.dataupload_subsectionkeyword VALUES (427, 'दांतो के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 169);
INSERT INTO public.dataupload_subsectionkeyword VALUES (428, 'कृतंक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 169);
INSERT INTO public.dataupload_subsectionkeyword VALUES (429, 'रदनक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 169);
INSERT INTO public.dataupload_subsectionkeyword VALUES (430, 'अग्र -चवर्णक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 169);
INSERT INTO public.dataupload_subsectionkeyword VALUES (431, 'चवर्णक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 169);
INSERT INTO public.dataupload_subsectionkeyword VALUES (432, 'दांतो के कार्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 169);
INSERT INTO public.dataupload_subsectionkeyword VALUES (433, 'शिशु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 170);
INSERT INTO public.dataupload_subsectionkeyword VALUES (434, 'नवजात में दाँत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 170);
INSERT INTO public.dataupload_subsectionkeyword VALUES (435, 'दूध के दाँत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 171);
INSERT INTO public.dataupload_subsectionkeyword VALUES (436, 'हमारे दाँत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 172);
INSERT INTO public.dataupload_subsectionkeyword VALUES (437, 'दाँत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 173);
INSERT INTO public.dataupload_subsectionkeyword VALUES (438, 'अक्कल दाढ़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 173);
INSERT INTO public.dataupload_subsectionkeyword VALUES (439, 'वृद्धावस्था और दाँत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 174);
INSERT INTO public.dataupload_subsectionkeyword VALUES (440, 'दांत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 174);
INSERT INTO public.dataupload_subsectionkeyword VALUES (441, 'दांतों का गिरना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 174);
INSERT INTO public.dataupload_subsectionkeyword VALUES (442, 'उम्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 174);
INSERT INTO public.dataupload_subsectionkeyword VALUES (443, 'बढाती उम्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 174);
INSERT INTO public.dataupload_subsectionkeyword VALUES (444, 'हमारे दांत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 174);
INSERT INTO public.dataupload_subsectionkeyword VALUES (445, 'स्वाद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 175);
INSERT INTO public.dataupload_subsectionkeyword VALUES (446, 'जीभ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 175);
INSERT INTO public.dataupload_subsectionkeyword VALUES (447, 'स्वाद ग्रंथियां', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 175);
INSERT INTO public.dataupload_subsectionkeyword VALUES (448, 'विब्भिन स्वाद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 175);
INSERT INTO public.dataupload_subsectionkeyword VALUES (449, 'खट्टा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 175);
INSERT INTO public.dataupload_subsectionkeyword VALUES (450, 'मीठा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 175);
INSERT INTO public.dataupload_subsectionkeyword VALUES (451, 'कड़वा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 175);
INSERT INTO public.dataupload_subsectionkeyword VALUES (452, 'थ्रेशर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 176);
INSERT INTO public.dataupload_subsectionkeyword VALUES (453, 'भण्डारण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 176);
INSERT INTO public.dataupload_subsectionkeyword VALUES (454, 'बेचना/ खरीदना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 176);
INSERT INTO public.dataupload_subsectionkeyword VALUES (455, 'अनाज मंडी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 177);
INSERT INTO public.dataupload_subsectionkeyword VALUES (456, 'सब्जीमंडी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 177);
INSERT INTO public.dataupload_subsectionkeyword VALUES (457, 'फसल के पकने पर किये जाने वाले काम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 177);
INSERT INTO public.dataupload_subsectionkeyword VALUES (458, 'सब्जीमंडी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 178);
INSERT INTO public.dataupload_subsectionkeyword VALUES (459, 'सब्जियों का रखरखाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 178);
INSERT INTO public.dataupload_subsectionkeyword VALUES (460, 'किराने की दूकान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 179);
INSERT INTO public.dataupload_subsectionkeyword VALUES (461, 'उत्पादों का क्रय विक्रय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 179);
INSERT INTO public.dataupload_subsectionkeyword VALUES (462, 'राशन की दुकान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 180);
INSERT INTO public.dataupload_subsectionkeyword VALUES (463, 'सार्वजनिक वितरण प्रणाली', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 180);
INSERT INTO public.dataupload_subsectionkeyword VALUES (464, 'आयुर्वेद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 181);
INSERT INTO public.dataupload_subsectionkeyword VALUES (465, 'जड़ी बूटी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 181);
INSERT INTO public.dataupload_subsectionkeyword VALUES (466, 'चरक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 181);
INSERT INTO public.dataupload_subsectionkeyword VALUES (467, 'आयुर्वेदिक उपचार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 181);
INSERT INTO public.dataupload_subsectionkeyword VALUES (468, 'चरक की पुस्तक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 182);
INSERT INTO public.dataupload_subsectionkeyword VALUES (469, 'चरक संहिता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 182);
INSERT INTO public.dataupload_subsectionkeyword VALUES (470, 'शल्य चिकित्सा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 183);
INSERT INTO public.dataupload_subsectionkeyword VALUES (471, 'चीर फाड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 183);
INSERT INTO public.dataupload_subsectionkeyword VALUES (472, 'सुश्रुत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 184);
INSERT INTO public.dataupload_subsectionkeyword VALUES (473, 'सुश्रुत का योगदान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 184);
INSERT INTO public.dataupload_subsectionkeyword VALUES (474, 'चिकित्सा में सुश्रुत का योगदान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 184);
INSERT INTO public.dataupload_subsectionkeyword VALUES (475, 'रानी दुर्गावती', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 185);
INSERT INTO public.dataupload_subsectionkeyword VALUES (476, 'वीरांगना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 185);
INSERT INTO public.dataupload_subsectionkeyword VALUES (477, 'गढ़ा राज्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 185);
INSERT INTO public.dataupload_subsectionkeyword VALUES (478, 'दलपति शाह की पत्नी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 185);
INSERT INTO public.dataupload_subsectionkeyword VALUES (479, 'वीर सावरकर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 186);
INSERT INTO public.dataupload_subsectionkeyword VALUES (480, 'अभिनव भारत के संस्थापक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 186);
INSERT INTO public.dataupload_subsectionkeyword VALUES (481, 'वीर सावरकर की पुस्तक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 186);
INSERT INTO public.dataupload_subsectionkeyword VALUES (482, 'वीर सावरकर का अंग्रेज़ों के साथ संघर्ष', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 187);
INSERT INTO public.dataupload_subsectionkeyword VALUES (483, 'वीर सावरकर का समाज में योगदान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 187);
INSERT INTO public.dataupload_subsectionkeyword VALUES (484, 'सरदार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 188);
INSERT INTO public.dataupload_subsectionkeyword VALUES (485, 'सरदार पटेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 188);
INSERT INTO public.dataupload_subsectionkeyword VALUES (486, 'वल्लभ भाई पटेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 188);
INSERT INTO public.dataupload_subsectionkeyword VALUES (487, 'लोह पुरुष', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 188);
INSERT INTO public.dataupload_subsectionkeyword VALUES (488, 'सरदार पटेल का योगदान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 189);
INSERT INTO public.dataupload_subsectionkeyword VALUES (489, 'भारत में रियासतों का एकीकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 189);
INSERT INTO public.dataupload_subsectionkeyword VALUES (490, 'बेगार प्रथा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 189);
INSERT INTO public.dataupload_subsectionkeyword VALUES (491, 'बारडोली किसान आंदोलन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 189);
INSERT INTO public.dataupload_subsectionkeyword VALUES (492, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 190);
INSERT INTO public.dataupload_subsectionkeyword VALUES (493, 'प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 190);
INSERT INTO public.dataupload_subsectionkeyword VALUES (494, 'राष्ट्रीय ध्वज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 190);
INSERT INTO public.dataupload_subsectionkeyword VALUES (495, 'ध्वज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 190);
INSERT INTO public.dataupload_subsectionkeyword VALUES (496, 'तिरंगा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 190);
INSERT INTO public.dataupload_subsectionkeyword VALUES (497, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 191);
INSERT INTO public.dataupload_subsectionkeyword VALUES (498, 'प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 191);
INSERT INTO public.dataupload_subsectionkeyword VALUES (499, 'राष्ट्रीय ध्वज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 191);
INSERT INTO public.dataupload_subsectionkeyword VALUES (500, 'ध्वज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 191);
INSERT INTO public.dataupload_subsectionkeyword VALUES (501, 'तिरंगा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 191);
INSERT INTO public.dataupload_subsectionkeyword VALUES (502, 'झंडे का रंग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 191);
INSERT INTO public.dataupload_subsectionkeyword VALUES (503, 'तीन रंग केसरिआ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 191);
INSERT INTO public.dataupload_subsectionkeyword VALUES (504, 'हरा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 191);
INSERT INTO public.dataupload_subsectionkeyword VALUES (505, 'सफ़ेद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 191);
INSERT INTO public.dataupload_subsectionkeyword VALUES (506, 'अशोक चक्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 191);
INSERT INTO public.dataupload_subsectionkeyword VALUES (507, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 192);
INSERT INTO public.dataupload_subsectionkeyword VALUES (508, 'प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 192);
INSERT INTO public.dataupload_subsectionkeyword VALUES (509, 'राष्ट्रीय ध्वज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 192);
INSERT INTO public.dataupload_subsectionkeyword VALUES (510, 'ध्वज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 192);
INSERT INTO public.dataupload_subsectionkeyword VALUES (511, 'तिरंगा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 192);
INSERT INTO public.dataupload_subsectionkeyword VALUES (512, 'झंडे का रंग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 192);
INSERT INTO public.dataupload_subsectionkeyword VALUES (513, 'तीन रंग केसरिआ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 192);
INSERT INTO public.dataupload_subsectionkeyword VALUES (514, 'हरा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 192);
INSERT INTO public.dataupload_subsectionkeyword VALUES (515, 'सफ़ेद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 192);
INSERT INTO public.dataupload_subsectionkeyword VALUES (516, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 193);
INSERT INTO public.dataupload_subsectionkeyword VALUES (517, 'प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 193);
INSERT INTO public.dataupload_subsectionkeyword VALUES (518, 'राष्ट्रीय ध्वज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 193);
INSERT INTO public.dataupload_subsectionkeyword VALUES (519, 'ध्वज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 193);
INSERT INTO public.dataupload_subsectionkeyword VALUES (520, 'तिरंगा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 193);
INSERT INTO public.dataupload_subsectionkeyword VALUES (521, 'झंडे का रंग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 193);
INSERT INTO public.dataupload_subsectionkeyword VALUES (522, 'तीन रंग केसरिआ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 193);
INSERT INTO public.dataupload_subsectionkeyword VALUES (523, 'हरा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 193);
INSERT INTO public.dataupload_subsectionkeyword VALUES (524, 'सफ़ेद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 193);
INSERT INTO public.dataupload_subsectionkeyword VALUES (525, 'अशोक चक्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 193);
INSERT INTO public.dataupload_subsectionkeyword VALUES (526, 'राष्ट्रीय गान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 194);
INSERT INTO public.dataupload_subsectionkeyword VALUES (527, 'राष्ट्रीय गीत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 194);
INSERT INTO public.dataupload_subsectionkeyword VALUES (528, 'राष्ट्रीय गान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 195);
INSERT INTO public.dataupload_subsectionkeyword VALUES (529, 'राष्ट्रीय गीत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 195);
INSERT INTO public.dataupload_subsectionkeyword VALUES (530, 'कवि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 195);
INSERT INTO public.dataupload_subsectionkeyword VALUES (531, 'अंतर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 196);
INSERT INTO public.dataupload_subsectionkeyword VALUES (532, 'राष्ट्रीय गान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 196);
INSERT INTO public.dataupload_subsectionkeyword VALUES (533, 'राष्ट्रीय गीत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 196);
INSERT INTO public.dataupload_subsectionkeyword VALUES (534, 'राष्ट्रीय गान व गीत में अंतर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 196);
INSERT INTO public.dataupload_subsectionkeyword VALUES (535, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 197);
INSERT INTO public.dataupload_subsectionkeyword VALUES (536, 'राष्ट्रीय चिन्ह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 197);
INSERT INTO public.dataupload_subsectionkeyword VALUES (537, 'अशोक चक्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 197);
INSERT INTO public.dataupload_subsectionkeyword VALUES (538, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 198);
INSERT INTO public.dataupload_subsectionkeyword VALUES (539, 'राष्ट्रीय चिन्ह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 198);
INSERT INTO public.dataupload_subsectionkeyword VALUES (540, 'अशोक चक्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 198);
INSERT INTO public.dataupload_subsectionkeyword VALUES (541, 'सारनाथ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 198);
INSERT INTO public.dataupload_subsectionkeyword VALUES (542, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 199);
INSERT INTO public.dataupload_subsectionkeyword VALUES (543, 'राष्ट्रीय चिन्ह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 199);
INSERT INTO public.dataupload_subsectionkeyword VALUES (544, 'अशोक चक्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 199);
INSERT INTO public.dataupload_subsectionkeyword VALUES (545, 'सारनाथ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 199);
INSERT INTO public.dataupload_subsectionkeyword VALUES (546, 'राष्ट्रीय चिन्ह में पशु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 199);
INSERT INTO public.dataupload_subsectionkeyword VALUES (547, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 200);
INSERT INTO public.dataupload_subsectionkeyword VALUES (548, 'राष्ट्रीय चिन्ह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 200);
INSERT INTO public.dataupload_subsectionkeyword VALUES (549, 'अशोक चक्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 200);
INSERT INTO public.dataupload_subsectionkeyword VALUES (550, 'सारनाथ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 200);
INSERT INTO public.dataupload_subsectionkeyword VALUES (551, 'राष्ट्रीय चिन्ह में पशु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 200);
INSERT INTO public.dataupload_subsectionkeyword VALUES (552, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 201);
INSERT INTO public.dataupload_subsectionkeyword VALUES (553, 'राष्ट्रीय चिन्ह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 201);
INSERT INTO public.dataupload_subsectionkeyword VALUES (554, 'अशोक चक्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 201);
INSERT INTO public.dataupload_subsectionkeyword VALUES (555, 'सारनाथ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 201);
INSERT INTO public.dataupload_subsectionkeyword VALUES (556, 'राष्ट्रीय चिन्ह में पशु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 201);
INSERT INTO public.dataupload_subsectionkeyword VALUES (557, 'भारतीय पंचांग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 202);
INSERT INTO public.dataupload_subsectionkeyword VALUES (558, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 202);
INSERT INTO public.dataupload_subsectionkeyword VALUES (559, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 203);
INSERT INTO public.dataupload_subsectionkeyword VALUES (560, 'पक्षी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 203);
INSERT INTO public.dataupload_subsectionkeyword VALUES (561, 'मोर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 203);
INSERT INTO public.dataupload_subsectionkeyword VALUES (562, 'राष्ट्रीय पक्षी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 203);
INSERT INTO public.dataupload_subsectionkeyword VALUES (563, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 204);
INSERT INTO public.dataupload_subsectionkeyword VALUES (564, 'कमल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 204);
INSERT INTO public.dataupload_subsectionkeyword VALUES (565, 'राष्ट्रीय पुष्प', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 204);
INSERT INTO public.dataupload_subsectionkeyword VALUES (566, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 205);
INSERT INTO public.dataupload_subsectionkeyword VALUES (567, 'बरगद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 205);
INSERT INTO public.dataupload_subsectionkeyword VALUES (568, 'राष्ट्रीय वृक्ष', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 205);
INSERT INTO public.dataupload_subsectionkeyword VALUES (569, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 206);
INSERT INTO public.dataupload_subsectionkeyword VALUES (570, 'राष्ट्रीय नदी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 206);
INSERT INTO public.dataupload_subsectionkeyword VALUES (571, 'गंगा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 206);
INSERT INTO public.dataupload_subsectionkeyword VALUES (572, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 207);
INSERT INTO public.dataupload_subsectionkeyword VALUES (573, 'राष्ट्रीय जंतु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 207);
INSERT INTO public.dataupload_subsectionkeyword VALUES (574, 'बाघ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 207);
INSERT INTO public.dataupload_subsectionkeyword VALUES (575, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 208);
INSERT INTO public.dataupload_subsectionkeyword VALUES (576, 'राष्ट्रीय फल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 208);
INSERT INTO public.dataupload_subsectionkeyword VALUES (577, 'आम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 208);
INSERT INTO public.dataupload_subsectionkeyword VALUES (578, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 209);
INSERT INTO public.dataupload_subsectionkeyword VALUES (579, 'राष्ट्रीय खेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 209);
INSERT INTO public.dataupload_subsectionkeyword VALUES (580, 'हॉकी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 209);
INSERT INTO public.dataupload_subsectionkeyword VALUES (581, 'राष्ट्रीय प्रतीक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 210);
INSERT INTO public.dataupload_subsectionkeyword VALUES (582, 'राष्ट्रीय मुद्रा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 210);
INSERT INTO public.dataupload_subsectionkeyword VALUES (583, 'रुपया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 210);
INSERT INTO public.dataupload_subsectionkeyword VALUES (584, 'राजस्थान के धार्मिक मेले', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 211);
INSERT INTO public.dataupload_subsectionkeyword VALUES (585, 'भर्तृहरि मेला', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 211);
INSERT INTO public.dataupload_subsectionkeyword VALUES (586, 'लक्खी मेला', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 211);
INSERT INTO public.dataupload_subsectionkeyword VALUES (587, 'राजस्थान के धार्मिक मेले', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 212);
INSERT INTO public.dataupload_subsectionkeyword VALUES (588, 'रामदेवरा मेला', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 212);
INSERT INTO public.dataupload_subsectionkeyword VALUES (589, 'राजस्थान के धार्मिक मेले', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 213);
INSERT INTO public.dataupload_subsectionkeyword VALUES (590, 'ख्वाजा का उर्स', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 213);
INSERT INTO public.dataupload_subsectionkeyword VALUES (591, 'राजस्थान के व्यापारिक मेले', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 214);
INSERT INTO public.dataupload_subsectionkeyword VALUES (592, 'हाट मेले', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 214);
INSERT INTO public.dataupload_subsectionkeyword VALUES (593, 'गुफा मानव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 215);
INSERT INTO public.dataupload_subsectionkeyword VALUES (594, 'प्राचीन मानव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 215);
INSERT INTO public.dataupload_subsectionkeyword VALUES (595, 'घुम्मकड़ जीवन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 215);
INSERT INTO public.dataupload_subsectionkeyword VALUES (596, 'कच्चा घर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 216);
INSERT INTO public.dataupload_subsectionkeyword VALUES (597, 'घरो के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 216);
INSERT INTO public.dataupload_subsectionkeyword VALUES (598, 'झोपड़ी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 216);
INSERT INTO public.dataupload_subsectionkeyword VALUES (599, 'शहर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 217);
INSERT INTO public.dataupload_subsectionkeyword VALUES (600, 'इमारतें', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 217);
INSERT INTO public.dataupload_subsectionkeyword VALUES (601, 'कॉलोनियां', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 217);
INSERT INTO public.dataupload_subsectionkeyword VALUES (602, 'आश्रय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 218);
INSERT INTO public.dataupload_subsectionkeyword VALUES (603, 'बेघर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 218);
INSERT INTO public.dataupload_subsectionkeyword VALUES (604, 'रैन -बसेरे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 218);
INSERT INTO public.dataupload_subsectionkeyword VALUES (605, 'स्वच्छ भारत मिशन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 219);
INSERT INTO public.dataupload_subsectionkeyword VALUES (606, 'स्वछता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 219);
INSERT INTO public.dataupload_subsectionkeyword VALUES (607, 'शौचालय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 219);
INSERT INTO public.dataupload_subsectionkeyword VALUES (608, 'स्वछता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 220);
INSERT INTO public.dataupload_subsectionkeyword VALUES (609, 'सफाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 220);
INSERT INTO public.dataupload_subsectionkeyword VALUES (610, 'हमारा गाँव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 220);
INSERT INTO public.dataupload_subsectionkeyword VALUES (611, 'कचरे का प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 221);
INSERT INTO public.dataupload_subsectionkeyword VALUES (612, 'कचरा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 221);
INSERT INTO public.dataupload_subsectionkeyword VALUES (613, 'कूड़ा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 221);
INSERT INTO public.dataupload_subsectionkeyword VALUES (614, 'प्लास्टिक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 221);
INSERT INTO public.dataupload_subsectionkeyword VALUES (615, 'जैव-अपघटन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 221);
INSERT INTO public.dataupload_subsectionkeyword VALUES (616, 'दिशा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 222);
INSERT INTO public.dataupload_subsectionkeyword VALUES (617, 'पूर्व', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 222);
INSERT INTO public.dataupload_subsectionkeyword VALUES (618, 'उगता सूरज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 222);
INSERT INTO public.dataupload_subsectionkeyword VALUES (619, 'सूर्योदय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 222);
INSERT INTO public.dataupload_subsectionkeyword VALUES (620, 'दिशाओं का ज्ञान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 222);
INSERT INTO public.dataupload_subsectionkeyword VALUES (621, 'दिशाएं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 223);
INSERT INTO public.dataupload_subsectionkeyword VALUES (622, 'चार दिशाएं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 223);
INSERT INTO public.dataupload_subsectionkeyword VALUES (623, 'पूर्व दिशा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 223);
INSERT INTO public.dataupload_subsectionkeyword VALUES (624, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 223);
INSERT INTO public.dataupload_subsectionkeyword VALUES (625, 'दिशा ज्ञान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 224);
INSERT INTO public.dataupload_subsectionkeyword VALUES (626, 'दिशाएं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 224);
INSERT INTO public.dataupload_subsectionkeyword VALUES (627, 'नक्शा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 225);
INSERT INTO public.dataupload_subsectionkeyword VALUES (628, 'नक़्शे में दिशाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 225);
INSERT INTO public.dataupload_subsectionkeyword VALUES (629, 'दिशा संकेत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 225);
INSERT INTO public.dataupload_subsectionkeyword VALUES (630, 'नक्शा पढ़ना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 226);
INSERT INTO public.dataupload_subsectionkeyword VALUES (631, 'नक्शा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 226);
INSERT INTO public.dataupload_subsectionkeyword VALUES (632, 'नक़्शे में निर्देश', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 226);
INSERT INTO public.dataupload_subsectionkeyword VALUES (633, 'निर्देश', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 226);
INSERT INTO public.dataupload_subsectionkeyword VALUES (634, 'नक़्शे में दूरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 227);
INSERT INTO public.dataupload_subsectionkeyword VALUES (635, 'नक्शा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 227);
INSERT INTO public.dataupload_subsectionkeyword VALUES (636, 'दूरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 227);
INSERT INTO public.dataupload_subsectionkeyword VALUES (637, 'दूरी बताना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 227);
INSERT INTO public.dataupload_subsectionkeyword VALUES (638, 'दो स्थानों मध्य दूरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 227);
INSERT INTO public.dataupload_subsectionkeyword VALUES (639, 'सूती वस्त्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 228);
INSERT INTO public.dataupload_subsectionkeyword VALUES (640, 'ऊनी वस्त्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 229);
INSERT INTO public.dataupload_subsectionkeyword VALUES (641, 'रेशमी वस्त्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 230);
INSERT INTO public.dataupload_subsectionkeyword VALUES (642, 'खादी वस्त्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 231);
INSERT INTO public.dataupload_subsectionkeyword VALUES (643, 'यात्रा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 232);
INSERT INTO public.dataupload_subsectionkeyword VALUES (644, 'तैयारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 232);
INSERT INTO public.dataupload_subsectionkeyword VALUES (645, 'यात्रा की तैयारी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 232);
INSERT INTO public.dataupload_subsectionkeyword VALUES (646, 'जयपुर के दर्शनीय स्थल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 233);
INSERT INTO public.dataupload_subsectionkeyword VALUES (647, 'हवामहल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 233);
INSERT INTO public.dataupload_subsectionkeyword VALUES (648, 'जलमहल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 233);
INSERT INTO public.dataupload_subsectionkeyword VALUES (649, 'जंतर-मंतर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 233);
INSERT INTO public.dataupload_subsectionkeyword VALUES (650, 'आमेर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 233);
INSERT INTO public.dataupload_subsectionkeyword VALUES (651, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 233);
INSERT INTO public.dataupload_subsectionkeyword VALUES (652, 'जैसलमेर के दर्शनीय स्थल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 234);
INSERT INTO public.dataupload_subsectionkeyword VALUES (653, 'सोनार किला', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 234);
INSERT INTO public.dataupload_subsectionkeyword VALUES (654, 'मरू -महोत्सव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 234);
INSERT INTO public.dataupload_subsectionkeyword VALUES (655, 'जोधपुर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 235);
INSERT INTO public.dataupload_subsectionkeyword VALUES (656, 'सूर्य-नगरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 235);
INSERT INTO public.dataupload_subsectionkeyword VALUES (657, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 235);
INSERT INTO public.dataupload_subsectionkeyword VALUES (658, 'झीलों की नगरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 236);
INSERT INTO public.dataupload_subsectionkeyword VALUES (659, 'हल्दीघाटी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 236);
INSERT INTO public.dataupload_subsectionkeyword VALUES (660, 'उदयपुर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 236);
INSERT INTO public.dataupload_subsectionkeyword VALUES (661, 'रबी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 237);
INSERT INTO public.dataupload_subsectionkeyword VALUES (662, 'खरीफ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 237);
INSERT INTO public.dataupload_subsectionkeyword VALUES (663, 'जायद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 237);
INSERT INTO public.dataupload_subsectionkeyword VALUES (664, 'कृषि क्रियाकलाप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 238);
INSERT INTO public.dataupload_subsectionkeyword VALUES (665, 'उत्पादन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 238);
INSERT INTO public.dataupload_subsectionkeyword VALUES (666, 'औज़ार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 239);
INSERT INTO public.dataupload_subsectionkeyword VALUES (667, 'पारंपरिक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 239);
INSERT INTO public.dataupload_subsectionkeyword VALUES (668, 'जुताई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 239);
INSERT INTO public.dataupload_subsectionkeyword VALUES (669, 'किस्म', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 240);
INSERT INTO public.dataupload_subsectionkeyword VALUES (670, 'हल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 240);
INSERT INTO public.dataupload_subsectionkeyword VALUES (671, 'कल्टीवेटर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 240);
INSERT INTO public.dataupload_subsectionkeyword VALUES (672, 'सीडड्रिल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 240);
INSERT INTO public.dataupload_subsectionkeyword VALUES (673, 'ह्यूमस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 241);
INSERT INTO public.dataupload_subsectionkeyword VALUES (674, 'उर्वरता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 241);
INSERT INTO public.dataupload_subsectionkeyword VALUES (675, 'वर्मी कम्पोस्ट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 241);
INSERT INTO public.dataupload_subsectionkeyword VALUES (676, 'यूरिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 241);
INSERT INTO public.dataupload_subsectionkeyword VALUES (677, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 241);
INSERT INTO public.dataupload_subsectionkeyword VALUES (678, 'बीज अंकुरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 242);
INSERT INTO public.dataupload_subsectionkeyword VALUES (679, 'वाष्पोत्सर्जन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 242);
INSERT INTO public.dataupload_subsectionkeyword VALUES (680, 'जल स्रोत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 242);
INSERT INTO public.dataupload_subsectionkeyword VALUES (681, 'खरपतवार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 243);
INSERT INTO public.dataupload_subsectionkeyword VALUES (682, 'प्राकृतिक प्रकोप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 243);
INSERT INTO public.dataupload_subsectionkeyword VALUES (683, 'निराई - गुड़ाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 243);
INSERT INTO public.dataupload_subsectionkeyword VALUES (684, 'थ्रेसिंग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 244);
INSERT INTO public.dataupload_subsectionkeyword VALUES (685, 'कंबाइन मशीन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 244);
INSERT INTO public.dataupload_subsectionkeyword VALUES (686, 'भंडारण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 245);
INSERT INTO public.dataupload_subsectionkeyword VALUES (687, 'भंडारगृह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 245);
INSERT INTO public.dataupload_subsectionkeyword VALUES (688, 'साइलो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 245);
INSERT INTO public.dataupload_subsectionkeyword VALUES (689, 'बाजरा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 246);
INSERT INTO public.dataupload_subsectionkeyword VALUES (690, 'सरसों', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 246);
INSERT INTO public.dataupload_subsectionkeyword VALUES (691, 'जीरा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 246);
INSERT INTO public.dataupload_subsectionkeyword VALUES (692, 'संतरा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 246);
INSERT INTO public.dataupload_subsectionkeyword VALUES (693, 'सौंफ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 246);
INSERT INTO public.dataupload_subsectionkeyword VALUES (694, 'रबी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 247);
INSERT INTO public.dataupload_subsectionkeyword VALUES (695, 'खरीफ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 247);
INSERT INTO public.dataupload_subsectionkeyword VALUES (696, 'जायद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 247);
INSERT INTO public.dataupload_subsectionkeyword VALUES (697, 'खरपतवार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 247);
INSERT INTO public.dataupload_subsectionkeyword VALUES (698, 'रंग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 248);
INSERT INTO public.dataupload_subsectionkeyword VALUES (699, 'चमक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 248);
INSERT INTO public.dataupload_subsectionkeyword VALUES (700, 'कठोरता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 248);
INSERT INTO public.dataupload_subsectionkeyword VALUES (701, 'ध्वानिकता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 248);
INSERT INTO public.dataupload_subsectionkeyword VALUES (702, 'घनत्व', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 248);
INSERT INTO public.dataupload_subsectionkeyword VALUES (703, 'गलनांक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 248);
INSERT INTO public.dataupload_subsectionkeyword VALUES (704, 'चालकता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 248);
INSERT INTO public.dataupload_subsectionkeyword VALUES (705, 'तन्यता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 248);
INSERT INTO public.dataupload_subsectionkeyword VALUES (706, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 248);
INSERT INTO public.dataupload_subsectionkeyword VALUES (707, 'भौतिक अवस्था', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 249);
INSERT INTO public.dataupload_subsectionkeyword VALUES (708, 'रंग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 249);
INSERT INTO public.dataupload_subsectionkeyword VALUES (709, 'चमक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 249);
INSERT INTO public.dataupload_subsectionkeyword VALUES (710, 'कठोरता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 249);
INSERT INTO public.dataupload_subsectionkeyword VALUES (711, 'ध्वानिकता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 249);
INSERT INTO public.dataupload_subsectionkeyword VALUES (712, 'घनत्व', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 249);
INSERT INTO public.dataupload_subsectionkeyword VALUES (713, 'गलनांक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 249);
INSERT INTO public.dataupload_subsectionkeyword VALUES (714, 'चालकता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 249);
INSERT INTO public.dataupload_subsectionkeyword VALUES (715, 'भंगुरता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 249);
INSERT INTO public.dataupload_subsectionkeyword VALUES (716, 'वायु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 250);
INSERT INTO public.dataupload_subsectionkeyword VALUES (717, 'ऑक्सीजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 250);
INSERT INTO public.dataupload_subsectionkeyword VALUES (718, 'मैग्नीशियम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 250);
INSERT INTO public.dataupload_subsectionkeyword VALUES (719, 'जल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 250);
INSERT INTO public.dataupload_subsectionkeyword VALUES (720, 'अम्ल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 250);
INSERT INTO public.dataupload_subsectionkeyword VALUES (721, 'हाइड्रोजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 250);
INSERT INTO public.dataupload_subsectionkeyword VALUES (722, 'सल्फर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 250);
INSERT INTO public.dataupload_subsectionkeyword VALUES (723, 'बर्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 251);
INSERT INTO public.dataupload_subsectionkeyword VALUES (724, 'धूप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 251);
INSERT INTO public.dataupload_subsectionkeyword VALUES (725, 'वर्षा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 251);
INSERT INTO public.dataupload_subsectionkeyword VALUES (726, 'रेडियो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 251);
INSERT INTO public.dataupload_subsectionkeyword VALUES (727, 'तार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 251);
INSERT INTO public.dataupload_subsectionkeyword VALUES (728, 'थर्मामीटर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 251);
INSERT INTO public.dataupload_subsectionkeyword VALUES (729, 'लवण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 251);
INSERT INTO public.dataupload_subsectionkeyword VALUES (730, 'गंधक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 252);
INSERT INTO public.dataupload_subsectionkeyword VALUES (731, 'फास्फोरस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 252);
INSERT INTO public.dataupload_subsectionkeyword VALUES (732, 'ग्रेफाइट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 252);
INSERT INTO public.dataupload_subsectionkeyword VALUES (733, 'दियासलाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 252);
INSERT INTO public.dataupload_subsectionkeyword VALUES (734, 'पटाखे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 252);
INSERT INTO public.dataupload_subsectionkeyword VALUES (735, 'इलेक्ट्रोड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 252);
INSERT INTO public.dataupload_subsectionkeyword VALUES (736, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 252);
INSERT INTO public.dataupload_subsectionkeyword VALUES (737, 'धातु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 253);
INSERT INTO public.dataupload_subsectionkeyword VALUES (738, 'अधातु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 253);
INSERT INTO public.dataupload_subsectionkeyword VALUES (739, 'अभिक्रिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 253);
INSERT INTO public.dataupload_subsectionkeyword VALUES (740, 'गुण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 253);
INSERT INTO public.dataupload_subsectionkeyword VALUES (741, 'पॉलीथीन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 254);
INSERT INTO public.dataupload_subsectionkeyword VALUES (742, 'पीवीसी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 254);
INSERT INTO public.dataupload_subsectionkeyword VALUES (743, 'पोलिस्टाइरीन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 254);
INSERT INTO public.dataupload_subsectionkeyword VALUES (744, 'बिजली के बटन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 255);
INSERT INTO public.dataupload_subsectionkeyword VALUES (745, 'बर्तनों के हत्थे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 255);
INSERT INTO public.dataupload_subsectionkeyword VALUES (746, 'गाड़ियों की बैटरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 255);
INSERT INTO public.dataupload_subsectionkeyword VALUES (747, 'बेकेलाइट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 255);
INSERT INTO public.dataupload_subsectionkeyword VALUES (748, 'जैव - अनिम्नीकरणीय पदार्थ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 256);
INSERT INTO public.dataupload_subsectionkeyword VALUES (749, 'जैव - निम्नीकरणीय पदार्थ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 256);
INSERT INTO public.dataupload_subsectionkeyword VALUES (750, '4 आर सिद्धान्त', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 256);
INSERT INTO public.dataupload_subsectionkeyword VALUES (751, 'संश्लेषित रेशे', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 257);
INSERT INTO public.dataupload_subsectionkeyword VALUES (752, 'प्लास्टिक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 257);
INSERT INTO public.dataupload_subsectionkeyword VALUES (753, 'बहुलक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 257);
INSERT INTO public.dataupload_subsectionkeyword VALUES (754, 'ताप सुनम्य प्लास्टिक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 257);
INSERT INTO public.dataupload_subsectionkeyword VALUES (755, 'ताप दृढ़ प्लास्टिक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 257);
INSERT INTO public.dataupload_subsectionkeyword VALUES (756, '4 आर सिद्धान्त', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 257);
INSERT INTO public.dataupload_subsectionkeyword VALUES (757, 'लोहा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 258);
INSERT INTO public.dataupload_subsectionkeyword VALUES (758, 'ऑक्सीजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 258);
INSERT INTO public.dataupload_subsectionkeyword VALUES (759, 'आयरन ऑक्साइड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 258);
INSERT INTO public.dataupload_subsectionkeyword VALUES (760, 'संयोजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 258);
INSERT INTO public.dataupload_subsectionkeyword VALUES (761, 'योगशील', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 258);
INSERT INTO public.dataupload_subsectionkeyword VALUES (762, 'योगात्मक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 258);
INSERT INTO public.dataupload_subsectionkeyword VALUES (763, 'कैल्शियम कार्बोनेट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 259);
INSERT INTO public.dataupload_subsectionkeyword VALUES (764, 'कैल्शियम ऑक्साइड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 259);
INSERT INTO public.dataupload_subsectionkeyword VALUES (765, 'कार्बन डाइ ऑक्साइड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 259);
INSERT INTO public.dataupload_subsectionkeyword VALUES (766, 'वियोजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 259);
INSERT INTO public.dataupload_subsectionkeyword VALUES (767, 'अपघटन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 259);
INSERT INTO public.dataupload_subsectionkeyword VALUES (768, 'लोहा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 260);
INSERT INTO public.dataupload_subsectionkeyword VALUES (769, 'कॉपर सल्फेट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 260);
INSERT INTO public.dataupload_subsectionkeyword VALUES (770, 'फेरस सल्फेट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 260);
INSERT INTO public.dataupload_subsectionkeyword VALUES (771, 'कॉपर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 260);
INSERT INTO public.dataupload_subsectionkeyword VALUES (772, 'विस्थापन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 260);
INSERT INTO public.dataupload_subsectionkeyword VALUES (773, 'प्रतिस्थापन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 260);
INSERT INTO public.dataupload_subsectionkeyword VALUES (774, 'कॉपर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 261);
INSERT INTO public.dataupload_subsectionkeyword VALUES (775, 'ऑक्सीजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 261);
INSERT INTO public.dataupload_subsectionkeyword VALUES (776, 'मीथेन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 261);
INSERT INTO public.dataupload_subsectionkeyword VALUES (777, 'कार्बन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 261);
INSERT INTO public.dataupload_subsectionkeyword VALUES (778, 'हाइड्रोजन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 261);
INSERT INTO public.dataupload_subsectionkeyword VALUES (779, 'रेडॉक्स', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 261);
INSERT INTO public.dataupload_subsectionkeyword VALUES (780, 'ऑक्सीकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 261);
INSERT INTO public.dataupload_subsectionkeyword VALUES (781, 'अपचयन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 261);
INSERT INTO public.dataupload_subsectionkeyword VALUES (782, 'अम्ल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 262);
INSERT INTO public.dataupload_subsectionkeyword VALUES (783, 'क्षारक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 262);
INSERT INTO public.dataupload_subsectionkeyword VALUES (784, 'लवण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 262);
INSERT INTO public.dataupload_subsectionkeyword VALUES (785, 'उदासीनीकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 262);
INSERT INTO public.dataupload_subsectionkeyword VALUES (786, 'ऊष्मा का अवशोषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 263);
INSERT INTO public.dataupload_subsectionkeyword VALUES (787, 'ऊष्मा का उत्सर्जन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 263);
INSERT INTO public.dataupload_subsectionkeyword VALUES (788, 'ऊष्माशोषी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 263);
INSERT INTO public.dataupload_subsectionkeyword VALUES (789, 'ऊष्माक्षेपी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 263);
INSERT INTO public.dataupload_subsectionkeyword VALUES (790, 'रासायनिक अभिक्रियाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 264);
INSERT INTO public.dataupload_subsectionkeyword VALUES (791, 'जैव विविधता का क्षरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 265);
INSERT INTO public.dataupload_subsectionkeyword VALUES (792, 'वनोन्मूलन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 265);
INSERT INTO public.dataupload_subsectionkeyword VALUES (793, 'जैव विविधता का संरक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 266);
INSERT INTO public.dataupload_subsectionkeyword VALUES (794, 'वन्य जीव अभ्यारण्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 266);
INSERT INTO public.dataupload_subsectionkeyword VALUES (795, 'राष्ट्रीय उद्यान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 266);
INSERT INTO public.dataupload_subsectionkeyword VALUES (796, 'जैव विविधता के ऊष्ण स्थल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 267);
INSERT INTO public.dataupload_subsectionkeyword VALUES (797, 'रेड डाटा पुस्तक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 267);
INSERT INTO public.dataupload_subsectionkeyword VALUES (798, 'कांकरेज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 268);
INSERT INTO public.dataupload_subsectionkeyword VALUES (799, 'मालवी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 268);
INSERT INTO public.dataupload_subsectionkeyword VALUES (800, 'राठी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 268);
INSERT INTO public.dataupload_subsectionkeyword VALUES (801, 'नागौरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 268);
INSERT INTO public.dataupload_subsectionkeyword VALUES (802, 'जैव विविधता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 269);
INSERT INTO public.dataupload_subsectionkeyword VALUES (803, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 269);
INSERT INTO public.dataupload_subsectionkeyword VALUES (804, 'जनन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 270);
INSERT INTO public.dataupload_subsectionkeyword VALUES (805, 'कायिक जनन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 270);
INSERT INTO public.dataupload_subsectionkeyword VALUES (806, 'ब्रायोफिलम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 270);
INSERT INTO public.dataupload_subsectionkeyword VALUES (807, 'आलू', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 270);
INSERT INTO public.dataupload_subsectionkeyword VALUES (808, 'मुकुलन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 271);
INSERT INTO public.dataupload_subsectionkeyword VALUES (809, 'यीस्ट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 271);
INSERT INTO public.dataupload_subsectionkeyword VALUES (810, 'ब्रेड में फफूँद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 271);
INSERT INTO public.dataupload_subsectionkeyword VALUES (811, 'शैवाल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 271);
INSERT INTO public.dataupload_subsectionkeyword VALUES (812, 'बीजाणु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 271);
INSERT INTO public.dataupload_subsectionkeyword VALUES (813, 'विखंडन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 271);
INSERT INTO public.dataupload_subsectionkeyword VALUES (814, 'पुष्प के भाग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 272);
INSERT INTO public.dataupload_subsectionkeyword VALUES (815, 'जनन अंग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 272);
INSERT INTO public.dataupload_subsectionkeyword VALUES (816, 'पुंकेसर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 272);
INSERT INTO public.dataupload_subsectionkeyword VALUES (817, 'स्त्रीकेसर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 272);
INSERT INTO public.dataupload_subsectionkeyword VALUES (818, 'एकलिंगी पुष्प', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 272);
INSERT INTO public.dataupload_subsectionkeyword VALUES (819, 'द्विलिंगी पुष्प', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 272);
INSERT INTO public.dataupload_subsectionkeyword VALUES (820, 'सरल फल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 273);
INSERT INTO public.dataupload_subsectionkeyword VALUES (821, 'पुंज फल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 273);
INSERT INTO public.dataupload_subsectionkeyword VALUES (822, 'संग्रहित फल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 273);
INSERT INTO public.dataupload_subsectionkeyword VALUES (823, 'वर्तिका', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 274);
INSERT INTO public.dataupload_subsectionkeyword VALUES (824, 'वर्तिकाग्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 274);
INSERT INTO public.dataupload_subsectionkeyword VALUES (825, 'परागकोष', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 274);
INSERT INTO public.dataupload_subsectionkeyword VALUES (826, 'पराग कण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 274);
INSERT INTO public.dataupload_subsectionkeyword VALUES (827, 'परागकणों का अंकुरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 274);
INSERT INTO public.dataupload_subsectionkeyword VALUES (828, 'स्वपरागण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 274);
INSERT INTO public.dataupload_subsectionkeyword VALUES (829, 'परपरागण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 274);
INSERT INTO public.dataupload_subsectionkeyword VALUES (830, 'द्विगुणित युग्मनज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 275);
INSERT INTO public.dataupload_subsectionkeyword VALUES (831, 'निषेचन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 275);
INSERT INTO public.dataupload_subsectionkeyword VALUES (832, 'विपरीत लक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 276);
INSERT INTO public.dataupload_subsectionkeyword VALUES (833, 'मेंडल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 276);
INSERT INTO public.dataupload_subsectionkeyword VALUES (834, 'मटर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 276);
INSERT INTO public.dataupload_subsectionkeyword VALUES (835, 'आनुवंशिकता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 276);
INSERT INTO public.dataupload_subsectionkeyword VALUES (836, 'पौधों में जनन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 277);
INSERT INTO public.dataupload_subsectionkeyword VALUES (837, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 277);
INSERT INTO public.dataupload_subsectionkeyword VALUES (838, 'प्लाज्मा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 278);
INSERT INTO public.dataupload_subsectionkeyword VALUES (839, 'लाल रुधिर कणिकाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 278);
INSERT INTO public.dataupload_subsectionkeyword VALUES (840, 'श्वेत रुधिर कणिकाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 278);
INSERT INTO public.dataupload_subsectionkeyword VALUES (841, 'रुधिर प्लेटलेट्स या थ्रोम्बोसाइट्स और कार्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 278);
INSERT INTO public.dataupload_subsectionkeyword VALUES (842, 'रुधिर वर्ग A', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 279);
INSERT INTO public.dataupload_subsectionkeyword VALUES (843, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 279);
INSERT INTO public.dataupload_subsectionkeyword VALUES (844, 'B', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 279);
INSERT INTO public.dataupload_subsectionkeyword VALUES (845, 'AB', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 279);
INSERT INTO public.dataupload_subsectionkeyword VALUES (846, 'O दाता रुधिर वर्ग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 279);
INSERT INTO public.dataupload_subsectionkeyword VALUES (847, 'ग्राही रुधिर वर्ग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 279);
INSERT INTO public.dataupload_subsectionkeyword VALUES (848, 'रक्तदान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 280);
INSERT INTO public.dataupload_subsectionkeyword VALUES (849, 'रक्त बैंक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 280);
INSERT INTO public.dataupload_subsectionkeyword VALUES (850, 'केशिकाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 281);
INSERT INTO public.dataupload_subsectionkeyword VALUES (851, 'नाड़ी स्पंदन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 281);
INSERT INTO public.dataupload_subsectionkeyword VALUES (852, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 282);
INSERT INTO public.dataupload_subsectionkeyword VALUES (853, 'संक्रामक रोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 283);
INSERT INTO public.dataupload_subsectionkeyword VALUES (854, 'असंक्रामक रोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 283);
INSERT INTO public.dataupload_subsectionkeyword VALUES (855, 'नारू', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 284);
INSERT INTO public.dataupload_subsectionkeyword VALUES (856, 'एड्स', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 284);
INSERT INTO public.dataupload_subsectionkeyword VALUES (857, 'कुष्ठ रोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 284);
INSERT INTO public.dataupload_subsectionkeyword VALUES (858, 'कैंसर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 284);
INSERT INTO public.dataupload_subsectionkeyword VALUES (859, 'हेपेटाइटिस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 284);
INSERT INTO public.dataupload_subsectionkeyword VALUES (860, 'हीमोफिलिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 284);
INSERT INTO public.dataupload_subsectionkeyword VALUES (861, 'खाद्य विषाक्तता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 284);
INSERT INTO public.dataupload_subsectionkeyword VALUES (862, 'स्वाइन फ्लू', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 284);
INSERT INTO public.dataupload_subsectionkeyword VALUES (863, 'एनीमिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 284);
INSERT INTO public.dataupload_subsectionkeyword VALUES (864, 'डेंगू रोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 284);
INSERT INTO public.dataupload_subsectionkeyword VALUES (865, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 284);
INSERT INTO public.dataupload_subsectionkeyword VALUES (866, 'हीमोफ़िलिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 285);
INSERT INTO public.dataupload_subsectionkeyword VALUES (867, 'खाद्य विषाक्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 285);
INSERT INTO public.dataupload_subsectionkeyword VALUES (868, 'स्वाइन फ़्लू', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 285);
INSERT INTO public.dataupload_subsectionkeyword VALUES (869, 'एनिमिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 285);
INSERT INTO public.dataupload_subsectionkeyword VALUES (870, 'डेंगू', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 285);
INSERT INTO public.dataupload_subsectionkeyword VALUES (871, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 286);
INSERT INTO public.dataupload_subsectionkeyword VALUES (872, 'कार्य', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 287);
INSERT INTO public.dataupload_subsectionkeyword VALUES (873, 'कार्य का मात्रक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 287);
INSERT INTO public.dataupload_subsectionkeyword VALUES (874, 'विस्थापन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 287);
INSERT INTO public.dataupload_subsectionkeyword VALUES (875, 'बल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 287);
INSERT INTO public.dataupload_subsectionkeyword VALUES (876, 'बल की दिशा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 287);
INSERT INTO public.dataupload_subsectionkeyword VALUES (877, 'जूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 287);
INSERT INTO public.dataupload_subsectionkeyword VALUES (878, 'ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_subsectionkeyword VALUES (879, 'ऊर्जा का मात्रक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_subsectionkeyword VALUES (880, 'क्षमता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_subsectionkeyword VALUES (881, 'वस्तु जिसने कार्य किया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_subsectionkeyword VALUES (882, 'वस्तु जिस पर कार्य किया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_subsectionkeyword VALUES (883, 'जूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 288);
INSERT INTO public.dataupload_subsectionkeyword VALUES (884, 'ऊर्जा का मात्रक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 289);
INSERT INTO public.dataupload_subsectionkeyword VALUES (885, 'जूल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 289);
INSERT INTO public.dataupload_subsectionkeyword VALUES (886, 'यांत्रिक ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 290);
INSERT INTO public.dataupload_subsectionkeyword VALUES (887, 'गतिज ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 290);
INSERT INTO public.dataupload_subsectionkeyword VALUES (888, 'स्थितिज ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 290);
INSERT INTO public.dataupload_subsectionkeyword VALUES (889, 'टरबाइन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 290);
INSERT INTO public.dataupload_subsectionkeyword VALUES (890, 'स्प्रिंग घड़ी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 290);
INSERT INTO public.dataupload_subsectionkeyword VALUES (891, 'गुलेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 290);
INSERT INTO public.dataupload_subsectionkeyword VALUES (892, 'तीर-कमान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 290);
INSERT INTO public.dataupload_subsectionkeyword VALUES (893, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 290);
INSERT INTO public.dataupload_subsectionkeyword VALUES (894, 'यांत्रिक ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_subsectionkeyword VALUES (895, 'गतिज ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_subsectionkeyword VALUES (896, 'स्थितिज ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_subsectionkeyword VALUES (897, 'ऊर्जा के विभिन्न रूप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_subsectionkeyword VALUES (898, 'ऊष्मा ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_subsectionkeyword VALUES (899, 'रासायनिक ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_subsectionkeyword VALUES (900, 'प्रकाश ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_subsectionkeyword VALUES (901, 'विधुत ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_subsectionkeyword VALUES (902, 'चुम्बकीय ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_subsectionkeyword VALUES (903, 'ध्वनि ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_subsectionkeyword VALUES (904, 'परमाणु ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_subsectionkeyword VALUES (905, 'नाभिकीय ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_subsectionkeyword VALUES (906, 'परमाणु भट्टी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_subsectionkeyword VALUES (907, 'विधुत पंखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_subsectionkeyword VALUES (908, 'विधुत मोटर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 291);
INSERT INTO public.dataupload_subsectionkeyword VALUES (909, 'यांत्रिक ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_subsectionkeyword VALUES (910, 'गतिज ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_subsectionkeyword VALUES (911, 'स्थितिज ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_subsectionkeyword VALUES (912, 'ऊष्मा ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_subsectionkeyword VALUES (913, 'विधुत ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_subsectionkeyword VALUES (914, 'विधुत पंखा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_subsectionkeyword VALUES (915, 'विधुत मोटर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_subsectionkeyword VALUES (916, 'विधुत घंटी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_subsectionkeyword VALUES (917, 'विधुत हीटर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_subsectionkeyword VALUES (918, 'विधुत बल्ब', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_subsectionkeyword VALUES (919, 'विधुत चुम्बक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_subsectionkeyword VALUES (920, 'बेट्री चार्जर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_subsectionkeyword VALUES (921, 'विधुत रेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 292);
INSERT INTO public.dataupload_subsectionkeyword VALUES (922, 'ऊर्जा के विभिन्न स्त्रोत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 293);
INSERT INTO public.dataupload_subsectionkeyword VALUES (923, 'परंपरागत ऊर्जा स्त्रोत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 294);
INSERT INTO public.dataupload_subsectionkeyword VALUES (924, 'जीवाश्म ईधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 294);
INSERT INTO public.dataupload_subsectionkeyword VALUES (925, 'काष्ठ ईधन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 294);
INSERT INTO public.dataupload_subsectionkeyword VALUES (926, 'पेट्रोल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 294);
INSERT INTO public.dataupload_subsectionkeyword VALUES (927, 'डीजल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 294);
INSERT INTO public.dataupload_subsectionkeyword VALUES (928, 'प्राकृतिक गैस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 294);
INSERT INTO public.dataupload_subsectionkeyword VALUES (929, 'कोयला', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 294);
INSERT INTO public.dataupload_subsectionkeyword VALUES (930, 'गैर परंपरागत ऊर्जा स्त्रोत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 295);
INSERT INTO public.dataupload_subsectionkeyword VALUES (931, 'वैकल्पिक स्त्रोत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 295);
INSERT INTO public.dataupload_subsectionkeyword VALUES (932, 'सौर ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 295);
INSERT INTO public.dataupload_subsectionkeyword VALUES (933, 'जल ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 295);
INSERT INTO public.dataupload_subsectionkeyword VALUES (934, 'पवन ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 295);
INSERT INTO public.dataupload_subsectionkeyword VALUES (935, 'भू-तापीय ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 295);
INSERT INTO public.dataupload_subsectionkeyword VALUES (936, 'जैव ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 295);
INSERT INTO public.dataupload_subsectionkeyword VALUES (937, 'महासागरीय ऊर्जा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 295);
INSERT INTO public.dataupload_subsectionkeyword VALUES (938, 'गोबर गैस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 295);
INSERT INTO public.dataupload_subsectionkeyword VALUES (939, 'ऊर्जा की बचत', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 296);
INSERT INTO public.dataupload_subsectionkeyword VALUES (940, 'ऊर्जा का संरक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 296);
INSERT INTO public.dataupload_subsectionkeyword VALUES (941, 'ऊर्जा का संरक्षण के उपाय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 297);
INSERT INTO public.dataupload_subsectionkeyword VALUES (942, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 298);
INSERT INTO public.dataupload_subsectionkeyword VALUES (943, 'ध्वनि की उत्पत्ति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 299);
INSERT INTO public.dataupload_subsectionkeyword VALUES (944, 'कम्पन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 299);
INSERT INTO public.dataupload_subsectionkeyword VALUES (945, 'मानव में वाक ध्वनि का उत्पन्न होना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 300);
INSERT INTO public.dataupload_subsectionkeyword VALUES (946, 'वाक् तंत्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 300);
INSERT INTO public.dataupload_subsectionkeyword VALUES (947, 'वाक् तंतु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 300);
INSERT INTO public.dataupload_subsectionkeyword VALUES (948, 'वायु में ध्वनि का संचरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 301);
INSERT INTO public.dataupload_subsectionkeyword VALUES (949, 'ठोस में ध्वनि का संचरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 302);
INSERT INTO public.dataupload_subsectionkeyword VALUES (950, 'द्रव में ध्वनि का संचरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 303);
INSERT INTO public.dataupload_subsectionkeyword VALUES (951, 'आयाम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 304);
INSERT INTO public.dataupload_subsectionkeyword VALUES (952, 'आवृति', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 304);
INSERT INTO public.dataupload_subsectionkeyword VALUES (953, 'हर्ट्ज', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 304);
INSERT INTO public.dataupload_subsectionkeyword VALUES (954, 'कम्पन काल या आवर्तकाल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 305);
INSERT INTO public.dataupload_subsectionkeyword VALUES (955, 'ध्वनि की प्रबलता', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 306);
INSERT INTO public.dataupload_subsectionkeyword VALUES (956, 'डेसीबल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 306);
INSERT INTO public.dataupload_subsectionkeyword VALUES (957, 'तारत्व', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 307);
INSERT INTO public.dataupload_subsectionkeyword VALUES (958, 'श्रव्य ध्वनि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 308);
INSERT INTO public.dataupload_subsectionkeyword VALUES (959, 'अपश्रव्य ध्वनि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 308);
INSERT INTO public.dataupload_subsectionkeyword VALUES (960, 'पराश्रव्य ध्वनि', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 308);
INSERT INTO public.dataupload_subsectionkeyword VALUES (961, 'इन्फ्रासोनिक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 308);
INSERT INTO public.dataupload_subsectionkeyword VALUES (962, 'अल्ट्रासोनिक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 308);
INSERT INTO public.dataupload_subsectionkeyword VALUES (963, 'मानव कर्ण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 309);
INSERT INTO public.dataupload_subsectionkeyword VALUES (964, 'श्रवण गुहिका', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 309);
INSERT INTO public.dataupload_subsectionkeyword VALUES (965, 'कर्ण पटह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 309);
INSERT INTO public.dataupload_subsectionkeyword VALUES (966, 'श्रवण तंत्रिका', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 309);
INSERT INTO public.dataupload_subsectionkeyword VALUES (967, 'ध्वनि प्रदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 310);
INSERT INTO public.dataupload_subsectionkeyword VALUES (968, 'ध्वनि प्रदूषण को सीमित रखने के उपाय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 310);
INSERT INTO public.dataupload_subsectionkeyword VALUES (969, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 311);
INSERT INTO public.dataupload_subsectionkeyword VALUES (970, 'निमज्जन छड़', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 312);
INSERT INTO public.dataupload_subsectionkeyword VALUES (971, 'विद्युत् टोस्टर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 312);
INSERT INTO public.dataupload_subsectionkeyword VALUES (972, 'अतिभारण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 313);
INSERT INTO public.dataupload_subsectionkeyword VALUES (973, 'एम.सी.बी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 313);
INSERT INTO public.dataupload_subsectionkeyword VALUES (974, 'डॉक्टर विद्युत् चुम्बक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 314);
INSERT INTO public.dataupload_subsectionkeyword VALUES (975, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 315);
INSERT INTO public.dataupload_subsectionkeyword VALUES (976, 'कृत्रिम उपग्रह प्रक्षेपण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 316);
INSERT INTO public.dataupload_subsectionkeyword VALUES (977, 'भूस्थिर उपग्रह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 317);
INSERT INTO public.dataupload_subsectionkeyword VALUES (978, 'संचार उपग्रह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 317);
INSERT INTO public.dataupload_subsectionkeyword VALUES (979, 'ध्रुवीय उपग्रह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 318);
INSERT INTO public.dataupload_subsectionkeyword VALUES (980, 'कृत्रिम उपग्रह के उपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 319);
INSERT INTO public.dataupload_subsectionkeyword VALUES (981, 'भारत के प्रमुख कृत्रिम उपग्रह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 320);
INSERT INTO public.dataupload_subsectionkeyword VALUES (982, 'भारतीय अंतरिक्ष अनुसंधान संगठन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 321);
INSERT INTO public.dataupload_subsectionkeyword VALUES (983, 'डॉ. विक्रम अंबालाल साराभाई', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 322);
INSERT INTO public.dataupload_subsectionkeyword VALUES (984, 'डॉ. ए', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 323);
INSERT INTO public.dataupload_subsectionkeyword VALUES (985, 'पी.जे. अब्दुल कलाम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 323);
INSERT INTO public.dataupload_subsectionkeyword VALUES (986, 'महत्वपूर्ण बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 324);
INSERT INTO public.dataupload_subsectionkeyword VALUES (987, 'रेडिओ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 325);
INSERT INTO public.dataupload_subsectionkeyword VALUES (988, 'टेलीफोन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 325);
INSERT INTO public.dataupload_subsectionkeyword VALUES (989, 'फैक्स', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 325);
INSERT INTO public.dataupload_subsectionkeyword VALUES (990, 'टेलीविज़न', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 325);
INSERT INTO public.dataupload_subsectionkeyword VALUES (991, 'इलेक्ट्रॉनिक मेल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 325);
INSERT INTO public.dataupload_subsectionkeyword VALUES (992, 'इ - कॉमर्स', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 326);
INSERT INTO public.dataupload_subsectionkeyword VALUES (993, 'टेलीमेडिसिन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 326);
INSERT INTO public.dataupload_subsectionkeyword VALUES (994, 'ब्रॉडबैंड', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 326);
INSERT INTO public.dataupload_subsectionkeyword VALUES (995, 'सोशल मीडिया', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 326);
INSERT INTO public.dataupload_subsectionkeyword VALUES (996, 'इ - मित्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 326);
INSERT INTO public.dataupload_subsectionkeyword VALUES (997, 'महत्वपूर्ण बिंदु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 327);
INSERT INTO public.dataupload_subsectionkeyword VALUES (998, 'कृत्रिम उपग्रह', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 327);
INSERT INTO public.dataupload_subsectionkeyword VALUES (999, 'उपयोग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 327);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1000, 'संगठन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 327);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1001, 'प्रकाश का अपवर्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 328);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1002, 'विरल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 328);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1003, 'सघन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 328);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1004, 'वेग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 328);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1005, 'अपवर्तन क्यों होता है', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 329);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1006, 'विरल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 329);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1007, 'सघन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 329);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1008, 'वेग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 329);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1009, 'अपवर्तन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 330);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1010, 'घटनाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 330);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1011, 'टिमटिमाना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 330);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1012, 'लेंसों के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 331);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1013, 'उत्तल लेंस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 331);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1014, 'अभिसारी लेंस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 331);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1015, 'लेंसों के प्रकार', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 332);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1016, 'अवतल लेंस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 332);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1017, 'अपसारी लेंस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 332);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1018, 'लेंस से सम्बन्धित परिभाषाएँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 333);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1019, 'मुख्य अक्ष', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 333);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1020, 'प्रकाश केन्द्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 333);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1021, 'फोकस बिन्दु', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 333);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1022, 'फोकस दूरी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 333);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1023, 'उत्तल लेंस से प्रतिबिम्ब निर्माण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 334);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1024, 'अवतल लेंस से प्रतिबिम्ब निर्माण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 335);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1025, 'लेंसों के उपयोग व प्रकाशीय उपकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 336);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1026, 'मानव नेत्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 337);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1027, 'प्रकाश का वर्ण विक्षेपण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 338);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1028, 'डॉ. सी. वी. रमन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 339);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1029, 'विरल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 340);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1030, 'सघन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 340);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1031, 'वेग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 340);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1032, 'पारदर्शी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 340);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1033, 'अपारदर्शी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 340);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1034, 'लेंस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 340);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1035, 'तड़ित झंझावात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 341);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1036, 'चक्रवात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 342);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1037, 'सुरक्षा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 342);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1038, 'सावधानियाँ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 342);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1039, 'वायुदाब', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 343);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1040, 'वायु वेग', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 343);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1041, 'जल थल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 343);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1042, 'तड़ित झंझावात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 343);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1043, 'टॉरनेडो', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 343);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1044, 'चक्रवात', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 343);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1045, 'ज्वालामुखी का फटना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 344);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1046, 'खनन कार्यं', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 344);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1047, 'धूम्रपान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 344);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1048, 'कीटनाशक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 344);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1049, 'प्राकृतिक आपदा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 344);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1050, 'गैस रिसाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 344);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1051, 'घातक प्रदूषक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 345);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1052, 'संदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 345);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1053, 'ऐतिहासिक धरोहर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 346);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1054, 'संक्षारण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 346);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1055, 'बंज़र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 346);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1056, 'विनाशकारी प्रभाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 346);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1057, 'विकिरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 347);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1058, 'अवशोषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 347);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1059, 'हिमनद', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 347);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1060, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 347);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1061, 'जल प्रदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 348);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1062, 'जल प्रदूषण के कारण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 349);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1063, 'जल प्रदूषण के प्रभाव', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 350);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1064, 'जल प्रदूषण नियंत्रण के उपाय', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 351);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1065, 'जल प्रदूषण पर विशिष्ट अध्ययन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 352);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1066, 'जल शुद्धिकरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 353);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1067, 'ज्वालामुखी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 354);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1068, 'धूम्रपान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 354);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1069, 'कीटनाशक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 354);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1070, 'विकिरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 354);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1071, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 354);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1072, 'पर्यावरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 355);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1073, 'पर्यावरण का अर्थ', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 355);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1074, 'सामाजिक पर्यावरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 356);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1075, 'प्राकृतिक पर्यावरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 356);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1076, 'प्राकृतिक पर्यावरण के घटक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 357);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1077, 'अजैविक घटक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 357);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1078, 'जैविक घटक', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 357);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1079, 'मृदा प्रदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 358);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1080, 'ध्वनि प्रदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 358);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1081, 'ताप प्रदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 358);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1082, 'अमृता देवी', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 359);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1083, 'खेजड़ली ग्राम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 359);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1084, 'पिपलांत्री ग्राम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 359);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1085, 'रक्षासूत्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 359);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1086, 'पर्यावरण दिवस', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 360);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1087, 'पर्यावरण मित्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 360);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1088, 'जनचेतना', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 360);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1089, 'पर्यावरण रक्षा के स्तर', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 361);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1090, 'पर्यावरण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 362);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1091, 'प्रदूषण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 362);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1092, 'पर्यावरण संरक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 362);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1093, 'पर्यावरण मित्र', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 362);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1094, 'भारतीय जीवनशैली', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 362);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1095, 'हीरा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 364);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1096, 'ग्रेफाइट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 364);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1097, 'क्रिस्टल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 364);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1098, 'अक्रिस्टल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 364);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1099, 'जैव द्रव्यमान', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 365);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1100, 'कच्चे तेल के कुंए', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 365);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1101, 'कोयले की खानकोयला', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 365);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1102, 'पेट्रोलियम', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 365);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1103, '', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 365);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1104, 'कार्बन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 366);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1105, 'कोयला', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 366);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1106, 'पेट्रोल', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 366);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1107, 'अपररूप', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 366);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1108, 'हीरा', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 366);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1109, 'ग्रेफाइट', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 366);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1110, 'दहन', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 366);
INSERT INTO public.dataupload_subsectionkeyword VALUES (1111, 'संरक्षण', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 366);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type VALUES (7, 'configuration', 'book');
INSERT INTO public.django_content_type VALUES (8, 'configuration', 'grade');
INSERT INTO public.django_content_type VALUES (9, 'configuration', 'medium');
INSERT INTO public.django_content_type VALUES (10, 'configuration', 'state');
INSERT INTO public.django_content_type VALUES (11, 'configuration', 'subject');
INSERT INTO public.django_content_type VALUES (12, 'hardspot', 'hardspot');
INSERT INTO public.django_content_type VALUES (13, 'hardspot', 'hardspotcontributors');
INSERT INTO public.django_content_type VALUES (14, 'content', 'content');
INSERT INTO public.django_content_type VALUES (15, 'content', 'contentcontributors');
INSERT INTO public.django_content_type VALUES (16, 'dataupload', 'chapter');
INSERT INTO public.django_content_type VALUES (17, 'dataupload', 'chapterkeyword');
INSERT INTO public.django_content_type VALUES (18, 'dataupload', 'section');
INSERT INTO public.django_content_type VALUES (19, 'dataupload', 'sectionkeyword');
INSERT INTO public.django_content_type VALUES (20, 'dataupload', 'subsection');
INSERT INTO public.django_content_type VALUES (21, 'dataupload', 'subsectionkeyword');
INSERT INTO public.django_content_type VALUES (22, 'user', 'roles');
INSERT INTO public.django_content_type VALUES (23, 'user', 'userdetails');


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations VALUES (1, 'contenttypes', '0001_initial', '2019-03-06 17:10:17.578483+05:30');
INSERT INTO public.django_migrations VALUES (2, 'auth', '0001_initial', '2019-03-06 17:10:18.65385+05:30');
INSERT INTO public.django_migrations VALUES (3, 'admin', '0001_initial', '2019-03-06 17:10:18.920525+05:30');
INSERT INTO public.django_migrations VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-03-06 17:10:18.947851+05:30');
INSERT INTO public.django_migrations VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2019-03-06 17:10:18.963678+05:30');
INSERT INTO public.django_migrations VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2019-03-06 17:10:19.007467+05:30');
INSERT INTO public.django_migrations VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2019-03-06 17:10:19.04128+05:30');
INSERT INTO public.django_migrations VALUES (8, 'auth', '0003_alter_user_email_max_length', '2019-03-06 17:10:19.08502+05:30');
INSERT INTO public.django_migrations VALUES (9, 'auth', '0004_alter_user_username_opts', '2019-03-06 17:10:19.109234+05:30');
INSERT INTO public.django_migrations VALUES (10, 'auth', '0005_alter_user_last_login_null', '2019-03-06 17:10:19.140642+05:30');
INSERT INTO public.django_migrations VALUES (11, 'auth', '0006_require_contenttypes_0002', '2019-03-06 17:10:19.151529+05:30');
INSERT INTO public.django_migrations VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2019-03-06 17:10:19.169182+05:30');
INSERT INTO public.django_migrations VALUES (13, 'auth', '0008_alter_user_username_max_length', '2019-03-06 17:10:19.251221+05:30');
INSERT INTO public.django_migrations VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2019-03-06 17:10:19.273483+05:30');
INSERT INTO public.django_migrations VALUES (15, 'configuration', '0001_initial', '2019-03-06 17:10:19.761935+05:30');
INSERT INTO public.django_migrations VALUES (16, 'dataupload', '0001_initial', '2019-03-06 17:10:20.472649+05:30');
INSERT INTO public.django_migrations VALUES (17, 'content', '0001_initial', '2019-03-06 17:10:21.793291+05:30');
INSERT INTO public.django_migrations VALUES (18, 'dataupload', '0002_auto_20190306_1138', '2019-03-06 17:10:21.903631+05:30');
INSERT INTO public.django_migrations VALUES (19, 'hardspot', '0001_initial', '2019-03-06 17:10:22.504929+05:30');
INSERT INTO public.django_migrations VALUES (20, 'sessions', '0001_initial', '2019-03-06 17:10:22.71344+05:30');
INSERT INTO public.django_migrations VALUES (21, 'user', '0001_initial', '2019-03-06 17:10:23.211579+05:30');
INSERT INTO public.django_migrations VALUES (22, 'content', '0002_auto_20190308_1054', '2019-03-08 16:24:23.036387+05:30');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: hardspot_hardspot; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.hardspot_hardspot VALUES (7, 'ड्रम,संदूक जैसी आकृतियों से परिचय', 'ड्रम,संदूक जैसी आकृतियों से अनभिज्ञता', 'विभिन्न आकृतिया जो ड्रम, संदूक जैसी हो को चित्रों के माध्यम से दिखाते हुयें समझाया जाएगा तथा कंटेंट के अंत में कुछ प्रश्नों को सम्मिलित किया जाएगा', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 48, 219, NULL);
INSERT INTO public.hardspot_hardspot VALUES (8, 'त्रिआयामी वस्तुओ की आकृति समझना', 'त्रिआयामी वस्तुओ की आकृतियों को समझाने में कठिनाई आने के कारण', 'त्रिआयामी वस्तुओ को चित्रों द्वारा प्रदर्शित कर समझाया जाएगा तथा कंटेंट के अंत में कुछ प्रश्नों को सम्मिलित किया जाएगा', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 47, 219, NULL);
INSERT INTO public.hardspot_hardspot VALUES (9, 'आकृतियों में किनारे पहचानना एवं गिनना', 'वस्तुओं में किनारे पहचानना एवं गिनना सिखाने में कठिनाई', 'विभिन्न वस्तुओं को चित्रों के माध्यम से दिखाते हुयें उनके किनारे एवं किनारों को समझाया जाएगा तथा कंटेंट के अंत में कुछ प्रश्नों को सम्मिलित किया जाएगा', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 52, 220, NULL);
INSERT INTO public.hardspot_hardspot VALUES (10, 'घुमावदार रेखाऐं और उनसे बनने वाले अंक एवं चित्र', 'घुमावदार रेखाओं के उपयोग से बनने वाले अंक एवं चित्र सिखाने के लिए आवश्यक हैं', 'घुमावदार रेखाओं के उपयोग से अंक एवं चित्र बना कर समझाया जाएगा तथा कंटेंट के अंत में कुछ प्रश्नों को सम्मिलित किया जाएगा', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 51, 221, NULL);
INSERT INTO public.hardspot_hardspot VALUES (11, 'वस्तुओं को आकार, आकृति एवं रंग के आधार पर वर्गीकृत करना ( अधिगम बिंदु )', 'वस्तुओं के आकार, आकृति एवं रंग की समझ विकसित करने में कठिनाई के कारण', 'विभिन्न प्रकार की वस्तुओं को चित्रों द्वारा दिखाते हुए आकार, आकृति एवं रंग मे अंतर व समानता को स्पस्ट किया जाएगा तथा कंटेंट के अंत में कुछ प्रश्नों को सम्मिलित किया जाएगा', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 50, 222, NULL);
INSERT INTO public.hardspot_hardspot VALUES (12, 'ऊपर-नीचे, आगे-पीछे, बीच में , कोने में आदि को समझना ( देखिए और बताइयें )', 'विषय वस्तु की अवस्थिति को समझाने के लिए आवश्कता हैं', 'एक चित्र में विभिन्न वस्तुओं को ऊपर-नीचे, आगे-पीछे, बीच में , कोने में दिखाते हुए उनकी अवस्थिति को समझाने का प्रयास अनेक चित्रों द्वारा तथा कंटेंट के अंत में कुछ प्रश्नों को सम्मिलित किया जाएगा', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 49, 223, NULL);
INSERT INTO public.hardspot_hardspot VALUES (13, 'संख्याएँ', 'एक से सौ तक की संख्याओं को समझने में कठिनाई', 'स्लाइड शो के माध्यम से अंको के साथ ध्वनि व् वस्तुओं की मात्राओं को दर्शाते हुए प्रश्नो को सम्मिलित किया जायेगा', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 48, 224, NULL);
INSERT INTO public.hardspot_hardspot VALUES (14, 'शून्य की समझ', '"कुछ नहीं" व 10, 20 ,30 आदि अंकों को समझने में कठिनाई', 'चित्रों के माध्यम से एवं क्रियात्मक कार्यों द्वारा शून्य की समझ विकसित की जाएगी और अंत में कुछ प्रश्नों को छात्रों से पुछा जायेगा', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 47, 224, NULL);
INSERT INTO public.hardspot_hardspot VALUES (15, 'वस्तुओं को गिनकर बोलना v लिखना', 'समूह में दी गयी वस्तुओं को गिनने व गिनकर बोलने में कठिनाई', 'बच्चों के समक्ष तीलियों एवं अन्य वस्तुओं के समूह बना कर अलग अलग कर गिनवाना एवं पुनः उनके समूह बनवाना | अंत में अभ्यास कार्य द्वारा समझ का आकलन करना |', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 52, 224, NULL);
INSERT INTO public.hardspot_hardspot VALUES (16, 'जोड़ घटाव के संदर्भ में मौखिक एवं लिखित सवाल (अभ्यास कार्य)', 'जोड़ने और घटाने में छात्रों को कठिनाई', 'दैनिक जीवन के उदाहरणों के माध्यम से और स्लाइड पर उपयोगी चित्रों के माध्यम से जोड़ने और घटाने के सवालों को समझाना', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 51, 225, NULL);
INSERT INTO public.hardspot_hardspot VALUES (17, 'गुना यानि बार - बार जोड़ना', 'एक ही अंक को बार - बार जोड़ते हुए गुणा करने में कठिनाई महसूस करना', 'मैथ टूल का उपयोग करते हुए स्लाइड पर गुणा को बार - बार जोड़ के माध्यम से समझाना एवं प्रश्नों का समावेश किया जाएगा', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 50, 226, NULL);
INSERT INTO public.hardspot_hardspot VALUES (30, 'Cube and Cube root (Introduction)', 'घन एवं घनमूल में अंतर नहीं कर पाना', 'slide और audio के द्वारा घन एवं घनमूल के सवाल हल कर सकेंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 42, 239, NULL);
INSERT INTO public.hardspot_hardspot VALUES (18, 'अभ्यास कार्य', 'प्रश्नों को हल करने में कठिनाई', 'डायरेक्ट इंटरेक्शन द्वारा प्रश्नों को हल करके ऑडियो द्वारा समझाया जाएगा', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 49, 227, NULL);
INSERT INTO public.hardspot_hardspot VALUES (19, 'इनका प्रयोग करके लिखियें ( मुद्रा सम्बन्धी सवाल )', 'मुद्रा की अवधारणा को समझनें में कठिनाई', 'दैनिक जीवन में मुद्रा [ सिक्के व् नोटों के] के बदले में वस्तुओं को खरीदना | चित्रों में एक, दो ,पांच के सिक्कों और दस, बीस, पचास और सौ के नोट दिखा कर सम्बंधित नोट की संख्या को बोलकर बताना', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 48, 228, NULL);
INSERT INTO public.hardspot_hardspot VALUES (20, 'असमान अमानक इकाई द्वारा लम्बाई का मापन', 'मापन की समझ मे कठिनाई', 'चित्रों व वीडियो के माध्यम से मापन की समझ विकसित करना और प्रश्नों के माध्यम से अभ्यास कार्य करवाना', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 47, 229, NULL);
INSERT INTO public.hardspot_hardspot VALUES (21, 'भार व आयतन के सम्बन्ध को समझना ( अधिगम बिंदु )', 'भार व आयतन के संबंध को समझने में कठिनाई', 'चित्रों व दैनिक जीवन के उदाहरणों के माध्यम से हल्के व भारी की समझ विकसित की जाएगी और कन्टेन्ट के अंत मे कुछ उपयोगी प्रश्नों को सम्मिलित करेंगे', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 52, 230, NULL);
INSERT INTO public.hardspot_hardspot VALUES (22, '( चित्र के निचे ) दिन,सप्ताह,महीनो में समय का बँटवारा', 'सप्ताह में दिनों की संख्या, महीने में दिनों की संख्या व साल में महीनों दिनों की संख्या का पता न होना', 'सप्ताह के दिनों के नाम व महीनों के नामों को स्लाइड पर रंगीन व सुन्दर लिख कर अभ्यास करवाना', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 51, 231, NULL);
INSERT INTO public.hardspot_hardspot VALUES (23, 'दैनिक जीवन में धारिता के सन्दर्भ ( अधिगम बिंदु )', 'धारिता या [धारण करने की क्षमता] को समझने में कठनाई', 'कन्टेन्ट के माध्यम से बच्चों को धारिता की विषयवस्तु को समझना साथ ही घर पर काम आने वाले बर्तनों जैसे गिलास, कटोरी, कप, मटकी, बाल्टी,जग आदि द्वारा भी "किसमे पानी कम और किसमे पानी ज्यादा" की अवधारणा को स्पष्ट करते हुए धारिता को समझायेंगे', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 50, 232, NULL);
INSERT INTO public.hardspot_hardspot VALUES (24, 'नामों में आए अक्षरों को गिनिए एवं लिखियें ( अधिगम बिंदु - आंकड़ों को व्यवस्थित कर सूचना निकाल पाना )', 'दो या दो से ज्यादा अक्षरों वाले नाम पढ़ने में कठिनाई', 'बंदनवार के रूप में अक्षरों को जमाकर अक्षरों को बच्चों से गिनवाना और साथ ही संख्या को सामने लिखने का अभ्यास कराना', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 49, 233, NULL);
INSERT INTO public.hardspot_hardspot VALUES (25, 'पैटर्न का खेल - बच्चों की कूद', 'पैटर्न में छूटी हुई/आगे आने वाली संख्याओं को पहचानने या ज्ञात करने में कठिनाई', 'खेल खेल में चित्रों व स्लाइड्स के द्वारा 2, 5, 10 के गुणज समझायेंगे साथ ही अभ्यास के माध्यम से चित्र पैटर्न के खाली स्थानों को भरने संबंधी कन्टेन्ट निर्माण किया जाएगा', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 48, 234, NULL);
INSERT INTO public.hardspot_hardspot VALUES (26, 'मन गणित', 'सारणी में स्तम्भ और आवर्त के अंकों को जोड़ने में कठिनाई। जोड़ व घटाने सम्बन्धी रिक्त स्थान( डॉट) को भरने में कठिनाई', 'कन्टेन्ट में सर्वप्रथम जोड़ संक्रिया को समझाते हुए स्तंभ व आवर्त की अवधारणा को स्पष्ट करेंगे तत्पश्चात सारणी में जोड़ना बताकर सम्बंधित रंग भरवाना ।', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 47, 235, NULL);
INSERT INTO public.hardspot_hardspot VALUES (27, 'Operations on Rational Numbers (Addition)', 'परिमेय संख्याओ की संक्रियाएँ करने में कठिनाई महसूस होना', 'slide और audio के द्वारा बच्चे जान पाएंगे कि परिमेय संख्याओं की संक्रियाएँ किस प्रकार करते हैं I', 'Both', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 45, NULL, 27);
INSERT INTO public.hardspot_hardspot VALUES (28, 'Characteristics of Rational numbers', 'संवृत गुणधर्म के बारे में जानकारी नहीं होने के कारण कठिनाई महसूस होना', 'slide, audio और प्रश्नोत्तर के द्वारा परिमेय संख्याओं के संवृत गुणधर्म बच्चे जान पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 44, NULL, 31);
INSERT INTO public.hardspot_hardspot VALUES (29, 'Associative Property', 'साहचर्य गुणधर्म के बारे में जानकारी नहीं होने के कारण कठिनाई महसूस होना', 'slide, audio और प्रश्नोत्तर के द्वारा परिमेय संख्याओं के साहचर्य गुणधर्म को बच्चे जान पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 43, NULL, 40);
INSERT INTO public.hardspot_hardspot VALUES (31, 'Cube root', 'घनमूल निकालने में कठिनाई महसूस होना', 'slide और audio के द्वारा घनमूल ज्ञात करने की अभाज्य गुणनखंड विधि को सीख सकेंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 41, 241, NULL);
INSERT INTO public.hardspot_hardspot VALUES (32, 'Power and Exponent (Introduction )', 'घात एवं घातांक में अंतर नहीं कर पाना तथा घातांक को हल करने में कठिनाई महसूस होना', 'slide और audio के द्वारा बच्चे घात एवं घातांक के बारे में समझ कर इनसे सम्बंधित सवाल हल कर सकेंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 46, 242, NULL);
INSERT INTO public.hardspot_hardspot VALUES (33, 'Expanded Form of Numbers', 'संख्याओ को व्यापक रूप में दाशमिक प्रणाली द्वारा हल करने में कठिनाई महसूस होना', 'slide और audio के द्वारा बच्चे संख्याओं के व्यापक रूप को समझ कर संख्याओ को दाशमिक प्रणाली में लिखना सीखेंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 45, 247, NULL);
INSERT INTO public.hardspot_hardspot VALUES (34, 'Rules of Divisibility ( in Algebraic Reference )', 'भाजकता के नियमों के अनुप्रयोग में कठिनाई महसूस होना', 'slide और audio के द्वारा बच्चे भाजकता के नियमों को आसानी से समझकर बीजगणित से सम्बंधित सवाल हल कर सकेंगे', 'Both', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 44, 249, NULL);
INSERT INTO public.hardspot_hardspot VALUES (35, 'Multiplication Operation ( Urdhwtirgbhyaam Formula )', 'उर्ध्वतिर्यग्भ्याम विधि द्वारा गुणन करने में कठिनाई महसूस होना', 'video के द्वारा वैदिक गणित में उर्ध्वतिर्यग्भ्याम विधि द्वारा गुणन संक्रिया को आसानी से समझ सकेंगे I', 'Both', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 43, NULL, 61);
INSERT INTO public.hardspot_hardspot VALUES (36, 'Multiplication By Nikhilam Formula ( Sub- Base)', 'निखिलम सूत्र को समझने में कठिनाई महसूस होना', 'video के द्वारा वैदिक गणित में निखिलम सूत्र (उपाधार) द्वारा गुणन संक्रिया को आसानी से समझ सकेंगे I', 'Both', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 42, NULL, 62);
INSERT INTO public.hardspot_hardspot VALUES (37, 'Dhwajank Method', 'ध्वजांक विधि को पूर्णरूप से नहीं समझ पाना', 'video के द्वारा वैदिक गणित में ध्वजांक विधि द्वारा भागफल संक्रिया को आसानी से समझ सकेंगे I', 'Both', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 41, 256, NULL);
INSERT INTO public.hardspot_hardspot VALUES (38, 'Diagonal of Polygon', 'बहुभुज में कई विकर्ण होने से विकर्णो को समझने में कठिनाई महसूस होना', 'slide और audio के द्वारा बहुभुज के विकर्णो के बारे में समझ पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 46, 258, NULL);
INSERT INTO public.hardspot_hardspot VALUES (39, 'Different Types of Quadrilateral', 'चतुर्भुज के गुणों को विस्तृत रूप से समझने में परेशानी होना', 'Images और audio के द्वारा विभिन्न प्रकार के चतुर्भुजों के गुणों को आसानी से समझ सकेंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 45, 262, NULL);
INSERT INTO public.hardspot_hardspot VALUES (40, 'To Construct a quadrilateral when four sides and One Diagonal are given', 'विकर्ण दिए होने पर चतुर्भुज की रचना करने में कठिनाई महसूस होना', 'video के द्वारा चतुर्भुज की चारों भुजाएँ एवं एक विकर्ण दिए होने पर चतुर्भुज की रचना करना सीख सकेंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 44, NULL, 70);
INSERT INTO public.hardspot_hardspot VALUES (41, 'To Construct a Quadrilateral when three sides and two angles are given', 'कोण दिए हुए होने की परिस्थिति में तथा तीन ही भुजाएँ दी होने से चतुर्भुज की रचना करने में कठिनाई महसूस होना', 'video के द्वारा तीन भुजाएं एवं उनके बीच के दो कोण दिए होने पर बच्चे चतुर्भुज की रचना करना सीख पाएंगे', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 43, NULL, 73);
INSERT INTO public.hardspot_hardspot VALUES (42, 'Prism', 'प्रिज्म की आकृति की जटिलता को समझने में कठिनाई महसूस होना', 'अलग - अलग images और audio के द्वारा प्रिज्म के बारे में आसानी से समझ पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 42, NULL, 75);
INSERT INTO public.hardspot_hardspot VALUES (43, 'Euler formula for Polyhedrons', 'आयलर सूत्र के आधार पर सवाल हल करने में कठिनाई महसूस होना', 'slide और audio के द्वारा बहुफलको के लिए आयलर सूत्र को समझ कर सवाल हल कर सकेंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 41, 268, NULL);
INSERT INTO public.hardspot_hardspot VALUES (44, 'Addition and Subtraction of Algebraic Expression', 'बीजीय व्यंजको की घातों की विविधता से योग एवं व्यवकलन में कठिनाई महसूस होना', 'slide और audio के द्वारा बीजीय व्यंजको के योग और व्यवकलन के सवालों को हल कर सकेंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 46, 273, NULL);
INSERT INTO public.hardspot_hardspot VALUES (45, 'Identities', 'सर्वसमिका में विद्यमान चर राशि के भिन्न भिन्न मान रखने पर समिका की जाँच में कठिनाई महसूस होना', 'slide और audio के द्वारा तीनो सर्वसमिकाओ को सरलतम रूप में एवं प्रश्नोत्तर द्वारा उनके उपयोग को समझ पाएंगे I', 'Both', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 45, 275, NULL);
INSERT INTO public.hardspot_hardspot VALUES (46, 'Method of Common Factors', 'गुणनखंड की भिन्न भिन्न विधियों की वजह से गुणनखंड करने में कठिनाई महसूस होना', 'slide और audio के द्वारा गुणनखंड की भिन्न भिन्न विधियों को प्रश्नोत्तर द्वारा भलीभांति समझ पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 44, 276, NULL);
INSERT INTO public.hardspot_hardspot VALUES (47, 'Factorization by using Identities', 'समिकाओ में विद्यमान विभिन्न घातों की वजह से गुणनखंड करने में कठिनाई महसूस होना', 'slide और audio के द्वारा किसी सर्वसमिका को गुणनखंड करने में किस प्रकार उपयोग में लाना है प्रश्नोत्तर द्वारा समझ पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 43, NULL, 89);
INSERT INTO public.hardspot_hardspot VALUES (48, 'Solution of word Problem', 'प्रश्नों के इबारती होने तथा विभिन्न विधियों एवं पहेलियों की वजह से प्रश्न हल करने में कठिनाई महसूस होना', 'slide और audio के द्वारा इबारती प्रश्नों को चर राशि के माध्यम से किस प्रकार हल करना प्रश्नोत्तर द्वारा समझ पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 42, 281, NULL);
INSERT INTO public.hardspot_hardspot VALUES (49, 'Coordinates', 'ग्राफ की पूर्ण जानकारी के अभाव एवं चतुर्थांशो में बिन्दुओ के स्थान निर्धारण में कठिनाई महसूस होना', 'slide और audio के द्वारा ग्राफ पेपर पर X और Y निर्देशांको का स्थान निर्धारण करना प्रश्नोत्तर द्वारा भलीभांति समझ पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 41, 282, NULL);
INSERT INTO public.hardspot_hardspot VALUES (50, 'Representation of some real relationship by the graph', 'लेखाचित्र हेतु ग्राफ पर बिन्दुओ का स्थान निर्धारण में कठिनाई महसूस होना', 'slide और audio के द्वारा ग्राफ पेपर पर बिन्दुओ का स्थान निर्धारण करना प्रश्नोत्तर द्वारा भलीभांति समझ पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 46, 285, NULL);
INSERT INTO public.hardspot_hardspot VALUES (51, 'Percentage', 'दो या दो से अधिक राशियों की तुलना के दौरान विभिन्न रूप में प्रदर्शित करने में कठिनाई महसूस होना', 'slide और audio के द्वारा दो या दो से अधिक राशियों की तुलना एवं अनुपातों के बारे में समझ पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 45, 287, NULL);
INSERT INTO public.hardspot_hardspot VALUES (52, 'Profit-Loss (Mark up price, Commission, Vat, Discount, Miscellaneous Expenses, Subsidy, Service tax etc.)', 'कमीशन, वैट, सेवाकर आदि की वजह से लाभ हानि के सवाल हल करने में कठिनाई महसूस होना', 'slide और audio के द्वारा अंकित मूल्य, कमीशन, वैट आदि की जानकारी द्वारा लाभ हानि से सम्बंधित प्रश्नों को आसानी से हल कर पाएंगे I', 'Both', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 44, 288, NULL);
INSERT INTO public.hardspot_hardspot VALUES (53, 'Compound Interest', 'चक्रवृद्धि ब्याज के सूत्र की जटिलता की वजह से प्रश्न हल करने में कठिनाई महसूस होना', 'slide और audio के द्वारा चक्रवृद्धि ब्याज की जटिलता को प्रश्नोत्तर द्वारा आसानी से हल कर सकेंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 43, 290, NULL);
INSERT INTO public.hardspot_hardspot VALUES (54, 'Trapezium', 'समलंब चतुर्भुज में सम्मुख भुजाओं का एक युग्म समानांतर होने से तथा अन्य भुजाए पृथक होने के कारण क्षेत्रफल निकालने में कठिनाई महसूस होना', 'slide और audio के द्वारा समलम्ब चतुर्भुज की सम्मुख भुजाओं के समान्तर युग्म सम्बंधित जानकारी साझा करने से क्षेत्रफल के सवालों को आसानी से हल कर सकेंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 42, 294, NULL);
INSERT INTO public.hardspot_hardspot VALUES (55, 'Area of a Polygon (Field book)', 'विभिन्न बहुभुजीय आकृतियों के क्षेत्रफल निकालने में कठिनाई महसूस होना', 'slide और audio के द्वारा बहुभुजो के शीर्षों को मिलाने पर प्राप्त होने वाली त्रिभुजाकार व चतुर्भुजाकार आकृतियों के क्षेत्रफलो के योग द्वारा बहुभुज का क्षेत्रफल आसानी से निकाल पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 41, NULL, 93);
INSERT INTO public.hardspot_hardspot VALUES (56, 'Surface Area of Cube and Cuboid', 'घन एवं घनाभ जैसी आकृतियों की पहचान करने और उनके पृष्ठीय क्षेत्रफल निकालने में कठिनाई महसूस होना', 'slide और audio के द्वारा घन एवं घनाभ जैसी आकृतियों के फलको की जानकारी साझा कर उनका पृष्ठीय क्षेत्रफल आसानी से निकाल पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 46, 299, NULL);
INSERT INTO public.hardspot_hardspot VALUES (73, 'Lotus', 'TO GIVE KNOWLEDGE ABOUT AQUATIC FLOWERS', 'Slide presentation should about aquatic flowers found in pond and lakes. The students would have konlledge about aquatic plants characters (big leaves on surface of water). The students should get knolledge about lotusflower its colour, uses in vagetable by its stems, importence in hindu relegious (Devi Saraswati the godess of education and knolledge), national flower status of lotus flower.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 38, NULL, 134);
INSERT INTO public.hardspot_hardspot VALUES (57, 'Surface Area of Cylinder', 'बेलन जैसी आकृतियों की पहचान करने और उनके पृष्ठीय क्षेत्रफल निकालने में कठिनाई महसूस होना', 'slide और audio के द्वारा टिन के डिब्बे, tubelight, गोल खम्भे आदि की जानकारी साझा कर बेलन के बारे में भलीभांति समझ पाएंगे तथा पृष्ठीय क्षेत्रफल के सवाल आसानी से हल कर पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 45, 300, NULL);
INSERT INTO public.hardspot_hardspot VALUES (58, 'Volume of Cylinder', 'बेलन के वृत्ताकार फलकों एवं लम्बाई की जटिलता की वजह से आयतन निकालने में कठिनाई महसूस होना', 'slide और audio के द्वारा बेलन के आधार और शीर्षों के सर्वांगसम और समानांतर होने सम्बन्धी जानकारी साझा कर बेलन के आयतन सम्बन्धी सवाल आसानी से हल कर पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 44, NULL, 97);
INSERT INTO public.hardspot_hardspot VALUES (59, 'Data handling (Introduction)', 'विभिन्न प्रकार से संग्रहित आँकड़ो के उपयोग में आने वाली कठिनाई एवं पृथक-पृथक आलेखों द्वारा आँकड़ो के निरूपण में कठिनाई महसूस होना', 'slide और audio के द्वारा विभिन्न तरीकों से संगृहित आँकड़ो के उपयोग द्वारा चित्रालेख एवं दंडालेख को आँकड़ो के निरूपण द्वारा आसानी से समझ पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 43, 302, NULL);
INSERT INTO public.hardspot_hardspot VALUES (60, 'Histogram-Graphical representation of data', 'आँकड़ो को वर्ग अंतराल के रूप में निरुपित करने तथा आयत चित्र निरूपण में दंड की लम्बाई एवं वर्ग अंतराल की बारंबारता दर्शाने में कठिनाई महसूस होना', 'slide और audio के द्वारा आँकड़ो को वर्ग अंतराल के रूप में निरुपित करके आयत चित्र बनाना आसानी से सीख पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 42, NULL, 103);
INSERT INTO public.hardspot_hardspot VALUES (61, 'pie chart', 'वृत्त आलेख के निरूपण के दौरान सम्पूर्ण वृत्त को आँकड़ो के हिसाब से कोणों के तहत त्रिज्या खंडो में विभाजित करने में कठिनाई महसूस होना', 'slide और audio के द्वारा आँकड़ो का वृत्तीय रूप में निरूपण वृत्त को त्रिज्या खंडो में कोणों के तहत विभाजित करने सम्बन्धी जानकारी साझा कर वृत्तालेख आसानी से बना पाएंगे I', 'Students', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 41, NULL, 104);
INSERT INTO public.hardspot_hardspot VALUES (62, 'in maternal house', 'STUDENTS FIND IT DIFFICULT TO LINK PREVIOUS LEARNINGS TO THE OBJECTIVE OF THIS CHAPTER', 'content will describe relataions of maternal including images of mother, father and other close relations and video wich show relations with questions', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 35, 308, NULL);
INSERT INTO public.hardspot_hardspot VALUES (63, 'Father in law''s home', 'STUDENTS FIND IT DIFFICULT BEACUSE IT IS NOT A COMMON WORD IN OUR SOCIETY', 'content will describe the relations of father with maternal and it will have interactive questions to check their understanding', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 34, NULL, 109);
INSERT INTO public.hardspot_hardspot VALUES (64, 'Types of Families', 'STUDENTS FIND IT DIFFICULT BEACUASE IT LIVES IN A PARTICULAR FAMILY SO IT DOESN''T KNOW DIFFERENCE OF FAMILY', 'content will have images of different types of families . content will show the works of members in family and it will have interactive questions to check their understanding', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 40, NULL, 112);
INSERT INTO public.hardspot_hardspot VALUES (65, 'will have to change with time', 'IT IS DIFFICULT TO CO-RELATE THE "CHANGE" WITH PREVIOUS KNOWLEDGE AND IT IS NOT CLEAR WHAT TO CHANGE ACCORDING TO TIME ?', 'content will highlight the gender equality , girls education and castism with help of images and it will help the students to understand the change according to time.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 39, NULL, 118);
INSERT INTO public.hardspot_hardspot VALUES (66, 'How can I know?', 'STUDENTS FIND IT DIFFICULT TO LINK PREVIOUS LEARNINGS TO THE OBJECTIVE OF THIS CHAPTER', 'content will describe the works of sensory organs with help of images and and it will have interactive questions to check their understanding', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 38, 317, NULL);
INSERT INTO public.hardspot_hardspot VALUES (67, 'do not like to touch', 'IT IS DIFFICULT TO KNOW ABOUT THE SENSE OF TOUCH', 'content will educate children to feel difference between good and bad touch and they will aware about it', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 37, NULL, 124);
INSERT INTO public.hardspot_hardspot VALUES (68, 'find and write/kho-kho game', 'STUDENTS DON''T HAVE COMPLETE KNOWLEDGE OF KHO- KHO GAME RULES', 'content will create interest in students to kho- kho by giving the uderstanding of game .it will have the images and audio of rules of game .', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 36, NULL, 126);
INSERT INTO public.hardspot_hardspot VALUES (69, 'find and write/first aid box', 'ENCOURAGE THE STUDENTS FOR USING FIRST AID BOX', 'content will have audio and images to show the uses and importance of first aid box.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 35, NULL, 127);
INSERT INTO public.hardspot_hardspot VALUES (70, 'Rules of kabaddi', 'STUDENTS DON''T HAVE COMPLETE KNOWLEDGE OF KABADDI GAME RULES', 'content will have audio and images to give lively knowledge of rules of kabbadi .', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 34, NULL, 128);
INSERT INTO public.hardspot_hardspot VALUES (71, 'sportsmen spirit', 'BUILD SPORTSMEN SPIRIT IN STUDENTS', 'content will have audio and images to feel the sportsmen spirit .', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 40, NULL, 129);
INSERT INTO public.hardspot_hardspot VALUES (72, 'Rose and sunflower', 'TO GIVE KNOWLEDGE ABOUT TERRESTRIAL FLOWERS', 'Slide presentation should about terrestrial flower found in field and gardens. The students should get knolledge about roseflower by which gulkand and perfumes produced and sunflower (its colour, dependency of direction upon sunlight), and sunflower oil produced by its seeds.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 39, 328, NULL);
INSERT INTO public.hardspot_hardspot VALUES (96, 'sardar vallabh bhai patel', 'LEARNER WILL KNOW ABOUT OUR FREEDOM FIGHTERS', 'content will have image and audio about sardar vallabh bhai patel. it will have questions to check the uderstanding.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 36, NULL, 188);
INSERT INTO public.hardspot_hardspot VALUES (74, 'Honey bee is good', 'TO GIVE LIVELY KNOWLEDGE OF HONEY BEE AND HONEY MAKING PROCESS', 'Slide presentation should about honey bee and honey making process by honey bee. Students would get knolledge about honey bee (its habitate which are hives on rock and trees), they would also know that honey bee is a social creature and its three form (Rani, drone and workers) live together in one hive and they have their work division. The presentation should show the honey making process (sucking of flower juice, and converted in honey by honey bee and transport into hive shells and making it thick by blowing wind by its wings).', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 37, NULL, 135);
INSERT INTO public.hardspot_hardspot VALUES (75, 'Function of root', 'STUDENTS WILL KNOW ABOUT FUNCTIONS OF ROOTS', 'content will have images of different types of roots in different plants with respective images.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 36, 334, NULL);
INSERT INTO public.hardspot_hardspot VALUES (76, 'Stems of trees and plants', 'STUDENTS WILL KNOW ABOUT STEMS AND THEIR IMPORTANCE', 'content will have images and audio about stems . it will give lively experience to students', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 35, NULL, 138);
INSERT INTO public.hardspot_hardspot VALUES (77, 'Trees our friends', 'STUDENTS ARE UNABLE TO UNDERSTAND THE IMPORTANCE OF TREES', 'there will be audio and text related to trees and will give lively experience to sudents about importance of trees.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 34, 336, NULL);
INSERT INTO public.hardspot_hardspot VALUES (78, 'Ear opens secrets', 'CAN LEARN TYPES OF EAR IN DIFFERENT ANIMALS', 'Slide presentation would show about different type of ears in different animals and creatures. The student would be able to know about classified the animals upon their ear sige (small and big), apearince (outside or inside) with images.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 40, 338, NULL);
INSERT INTO public.hardspot_hardspot VALUES (79, 'Find and write (classification of animals on the basis of ears', 'Classification of animals upon types of ears in different animals.', 'Slide presentation would show about different type of ears in different animals and creatures. The student would be able classified the animals upon presence of their ear and hair. The student would be able to understand that few animals have their ear outside and having hairs they are viviparas (animals directly reproduct same animals) whereas some have internal ears and no hairs they are oviparous (agg givinig creature).', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 39, 339, NULL);
INSERT INTO public.hardspot_hardspot VALUES (80, 'visit of sanctuary', 'conservation of wild animals and to give knowledge of inhabitants of animals', 'content will includes images of various animals and sanctuaries and audio . it will have questions .', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 38, NULL, 143);
INSERT INTO public.hardspot_hardspot VALUES (81, 'pain of animals', 'they can feel love and care for the animals', 'this content will includes audio , images and text describing pain of animals', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 37, NULL, 146);
INSERT INTO public.hardspot_hardspot VALUES (82, 'Water was disappeared', 'TO KNOW ABOUT VAPORIZATION', 'Slide Presentaion would be about vaporisation and its process. The vaporisation process happen in open environment for example drying process of wet clothes, vaporisation in open see for making cloude and a boiling water pot. The presentation would show the dependency of vaporisation upon temprature, area of the surface and humidity of environment.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 36, NULL, 149);
INSERT INTO public.hardspot_hardspot VALUES (83, 'Water re-appears', 'TO KNOW ABOUT CONDENSATION', 'Slide Presentaion would show reapearing of water by condensation process. Student would be able to know about how water appears outside of the bottel and a pot of boiling water covered by flip. Student would also know about how small and tiny drops appears on plants in a crop field. The slide presentation would be able to understand students that water vapor present in environment convert into water drops after exposing low temtprature that is condensation process.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 35, NULL, 150);
INSERT INTO public.hardspot_hardspot VALUES (84, 'water from the earth', 'LEARNER HAVE LIMITED KNOWLEDGE OF WATER RESOURCES', 'multiple slides with audio containing images and text to describe undergroud water resources.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 34, NULL, 155);
INSERT INTO public.hardspot_hardspot VALUES (85, 'filtration of water / namami gange plan', 'LEARNER WILL KNOW ABOUT FILTRATION OF WATER AND DIFFERENT NATIONAL PLANS OF CLEANING OF RIVERS', 'multiple slides with images of clean ganga movement (namami gange abhiyan ) .', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 40, NULL, 157);
INSERT INTO public.hardspot_hardspot VALUES (86, 'Eating at different occasions', 'LEARNER WILL KNOW ABOUT DIFFERENT FOODS IN VARIOUS OCCASIONS', 'content will have images of various types of food eaten in different occasions and also includes audio related to food.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 39, 351, NULL);
INSERT INTO public.hardspot_hardspot VALUES (87, 'Good food and bad food/food hygiene', 'LEANER WILL KNOW ABOUT FOOD HYGIENE', 'images , audio ,text will be included in slides related to food hygiene', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 38, 352, NULL);
INSERT INTO public.hardspot_hardspot VALUES (88, 'Findout and wirte/food according to season', 'STUDENTS WILL EXPERIENCE ABOUT SEASONABLE FOODS', 'images , audio ,text will be included in slides related to seasonable foods and their importance in our food.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 37, 354, NULL);
INSERT INTO public.hardspot_hardspot VALUES (89, 'Why different types of claws', 'STUDENTS WILL BE ABLE TO KNOW ABOUT CLAW', 'images of different claws and text about the works of claws in various birds', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 36, NULL, 161);
INSERT INTO public.hardspot_hardspot VALUES (90, 'Why different types of beaks', 'STUDENTS WILL BE ABLE TO KNOW ABOUT BEAK', 'images of different beaks and text about the works of beaks in various birds', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 35, NULL, 162);
INSERT INTO public.hardspot_hardspot VALUES (91, 'Want to eat chocolate', 'Students of forth class are unable to correlate their food habits with thier dental health.They find it difficult to percept the term bacteria as well.', 'Images and audio in the content clearify how specific kind of food can be harmful for dental health.They also get an idea about bacterial attack in an interesting way through images and audio. They understand why proper cleaning of teeth is important for dental health.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 34, NULL, 163);
INSERT INTO public.hardspot_hardspot VALUES (92, 'Types of teeth', 'Students of forth are not able to understand what is the need of diferent types of teeth in our mouth', 'Images and audio in the content clerify what is the need of different types of teeth in our mouth and how they are different. Content also clerify the correlation between age and teeth.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 40, 361, NULL);
INSERT INTO public.hardspot_hardspot VALUES (93, 'journey of crops', 'STUDENTS WILL KNOW ABOUT PROCESS OF GETTING CROPS FROM FIELD TO HOME', 'content clerify the journey how the food we eat travel from the fields to shop through images and audio', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 39, 365, NULL);
INSERT INTO public.hardspot_hardspot VALUES (94, 'Public Distribution System', 'STUDENTS WILL KNOW ABOUT PUBLIC DISTRIBUTION SYSTEM', 'content clerify the concept of fair price shop, how it works and what is the need of this system through images and audio.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 38, 369, NULL);
INSERT INTO public.hardspot_hardspot VALUES (95, 'veer sawarkar', 'LEARNER WILL KNOW ABOUT OUR FREEDOM FIGHTERS', 'content will have image and audio about veer sawarkar . it will have questions to check the uderstanding.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 37, NULL, 186);
INSERT INTO public.hardspot_hardspot VALUES (97, 'Our National Symbols', 'LEARNER WILL KNOW ABOUT OUR NATIONAL SYMBOLS AND THEIR IMPORTANCE', 'Content clerify about our national symbols and thier importance through images and audio. It also clerify the concept of National Symbols to students.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 35, 376, NULL);
INSERT INTO public.hardspot_hardspot VALUES (98, 'National Song and National Anthem', 'LEARNER WILL KNOW ABOUT OUR NATIONAL SYMBOLS AND THEIR IMPORTANCE', 'Content clerify about our national symbols and thier importance through images and audio. It also clerify the concept of National Symbols to students.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 34, NULL, 194);
INSERT INTO public.hardspot_hardspot VALUES (99, 'National Song and National Anthem', 'LEARNER WILL KNOW ABOUT OUR NATIONAL SYMBOLS AND THEIR IMPORTANCE', 'Content clerify about our national symbols and thier importance through images and audio. It also clerify the concept of National Symbols to students.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 34, NULL, 202);
INSERT INTO public.hardspot_hardspot VALUES (100, 'Fairs', 'LEARNER HAVE LIMITED KNOWLEDGE OF VARIOUS FAIRS', 'Content clerify the motive and importance of fairs in our society through images and audio.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 39, 378, NULL);
INSERT INTO public.hardspot_hardspot VALUES (101, 'Lukkhy Fair', 'LEARNER HAVE LIMITED KNOWLEDGE OF VARIOUS FAIRS', 'Slide Presentaion with images and audio related to fairs . including what type of experience one gets in lukkhy fair', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 38, NULL, 211);
INSERT INTO public.hardspot_hardspot VALUES (102, 'Trade Fair', 'LEARNER HAVE LIMITED KNOWLEDGE OF VARIOUS FAIRS', 'Slide Presentaion with images and audio related to fairs . including different between other fairs.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 37, NULL, 214);
INSERT INTO public.hardspot_hardspot VALUES (103, 'Different types of Houses', 'Its difficult to understand the types of houses and their benefits for forth class students', 'Different types of houses and materials used in them is described through images and audio.students get an idea why a "HOUSE" IS important to everyone.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 36, 382, NULL);
INSERT INTO public.hardspot_hardspot VALUES (104, 'Houses of Animals', 'It will help students to understand the need of house for everyone,even for the animals', 'Students get that a HOUSE is important for everyone,for the animals as well either they are natural or man made through images and audio.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 35, 383, NULL);
INSERT INTO public.hardspot_hardspot VALUES (105, 'Waste Disposal', 'Students get it difficult to understand the need of proper disposal of waste', 'Different types of domestic waste, its proposed proper disposal method and 3 Rs are described in the content through images and conversation based audios.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 34, 384, NULL);
INSERT INTO public.hardspot_hardspot VALUES (106, 'Reduce use of plastic', 'students get it difficult to understand why plastic that is used widely should not be used', 'Content emphasize how PLASTIC WASTE is hazardous to our own environment and use of plastic must be TABOO by a short story through images and audio. content give the altrenate of plastic also that is ECO FRIENDLY.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 40, NULL, 221);
INSERT INTO public.hardspot_hardspot VALUES (107, 'Four Directions', 'STUDENTS DON''T HAVE CLEAR IDEAS OF DIRECTIONS', 'Slide Presentaion with images and audio related to directions.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 39, NULL, 222);
INSERT INTO public.hardspot_hardspot VALUES (108, 'Directions and signs in maps', 'STUDENTS DON''T HAVE PROPER KNOWLEDGE ABOUT MAPS AND MAP DIRECTIONS', 'Slide Presentaion with images and audio related to directions .it will includes measurement and how will student make signs in maps .', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 38, NULL, 225);
INSERT INTO public.hardspot_hardspot VALUES (109, 'Silk Clothes', 'STUDENTS DON''T HAVE PROPER KNOWLEDGE ABOUT SILK CLOTHS', 'different images of cloths .images of silk cloths and audio about cloths .', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 37, NULL, 230);
INSERT INTO public.hardspot_hardspot VALUES (110, 'Different types of dresses', 'STUDENTS WILL KNOW ATTIRE OF DIFFERENT STATES', 'this content will includes audio , images and text describing different types of dresses . different types of dresses in different states is going to shown in this content .', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 36, 393, NULL);
INSERT INTO public.hardspot_hardspot VALUES (111, 'Means of transport', 'STUDENTS MAY HAVE DIFFICULTIES TO IDENTIFY OF VARIOUS TRANSPORT MEANS', 'The presentation will show the different way of travell. The presentation would also able to give knolledge about the different vehicle used for transpotation.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 35, 395, NULL);
INSERT INTO public.hardspot_hardspot VALUES (112, 'Jaipur tour', 'STUDENTS WILL KNOW ABOUT HISTORICAL PLACES OF JAIPUR', 'The presentation would show the historical background of Jaipur. Student would also know about different places of historical importance and relegious spots also of Jaipur.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 34, NULL, 233);
INSERT INTO public.hardspot_hardspot VALUES (113, 'INTRODUCTION OF AGRICULTURE MANAGEMENT-CROPS AND ITS TYPES', 'TO HELP STUDENTS IN REVISION OF PREVIOUS CHAPTERS AND LEARNINGS OFTHE OBJECTIVES OF THIS CHAPTER', 'VIDEO SHOWING HOW DIFFERENT TYPES OF CROPS ARE RELATED TO THE WEATHER AND SEASONS IN INDIA (STUDIED IN PREVIOUS CHAPTER - CLIMATE OF INDIA). SHOW CROPS AND ITS TYPES USING IMAGES WITH INTERACTIONS THAT HELP STUDENTS IDENTIFY DIFFERENT TYPES OF CROPS', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 33, NULL, 237);
INSERT INTO public.hardspot_hardspot VALUES (114, 'PROVIDING MANURE AND FERTILIZERS', 'STUDENTS OFTEN GET CONFUSED BETWEEN MANURE AND FERTILIZER', 'CONTENT MUST DEFINE AND DIFFERENTIATE BETWEEN MANURE AND FERTILIZER USING IMAGES AND REAL LIFE EXAMPLES. THE CONTENT MUST CONTAIN A VIDEO THAT SHOW HOW MANURE AND FERTILIZERS ARE MADE TO FURHTER CLARIFY UPON THE DIFFERENCES. IN ADDITION TO IT, THE CONTENT CAN DEPICT THE ADVANTAGES OF USING BIO- MANURE OVER FERTILIZER IMAGE EXAMPLES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 32, NULL, 241);
INSERT INTO public.hardspot_hardspot VALUES (115, 'IRRIGATION', 'TO HELP IN LEARNING OF IRRIGATION PROCESS FOR STUDENTS & TEACHERS TO UNDERSTAND AND TEACH RESPECTIVELY', 'DEFINING AND DEMONSTRATING THE FUNCTIONING OF DIFFERENT METHODS OF IRRIGATION THROUGH REAL LIFE VIDEO EXAMPLES WHICH CAN HELP THE STUDENTS TO VISUALIZE THE PROCESS.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 31, NULL, 242);
INSERT INTO public.hardspot_hardspot VALUES (116, 'PROTECTION OF CROPS', 'TO ADD REAL LIFE EXAMPLES HIGHLIGHTING THE NEED FOR CROP PROTECTION', 'CONTENT MUST HAVE A CASE STUDY OF A FARMER WHEREIN THE FARMER FACES VARIOUS PROBLEMS WITH RESPECT TO PESTS AND HOW VARIOUS METHODS OF CROP PROTECTION CAN HELP HIM OVERCOME THE PROBLEMS. CONDUCTING AN ACTIVITY IN CLASS WHEREIN STUDENTS WILL BE ASKED ABOUT THE BEST METHOD FOR CROP PROTECTION FOR A PARTICULAR TYPE OF PROBLEM /PEST.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 30, NULL, 243);
INSERT INTO public.hardspot_hardspot VALUES (117, 'PROFESSOR M.S.SWAMINATHAN', 'GIVE MORE INFORMATION WHICH IS GIVEN ON THE LIFE HISTORY OF PROFESSOR M.S.SWAMINATHAN', 'VIDEO SHOWING THE WORKS AND LIFE HISTORY OF PROF. M.S. SWAMINATHAN. THE AWARDS AND RECOGNITION RECEIVED BY HIM FOR WORKS. HOW HIS WORKS BENEFITTED THE PUBLIC AND HOW IT IS BEING USED TODAY', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 29, 402, NULL);
INSERT INTO public.hardspot_hardspot VALUES (118, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 28, NULL, 247);
INSERT INTO public.hardspot_hardspot VALUES (119, 'PHYSICAL PROPERTIES OF METALS AND NON-METALS', 'TO HELP STUDENTS IN UNDERSTANDING OF PHYSICAL PROPERTIES OF METALS WITH MORE EXAMPLES', 'SLIDE AND VIDEO SHOWING METALS AND NON METALS IN NATURE, AND PHYSICAL PROPERTIES OF METALS AND NON-METALS', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 27, NULL, 248);
INSERT INTO public.hardspot_hardspot VALUES (120, 'CHEMICAL PROPERTIES OF METALS AND NON-METALS', 'TO HELP STUDENTS IN UNDERSTANDING OF CHEMICAL PROPERTIES OF METALS WITH MORE EXAMPLES', 'SLIDE AND VIDEO SHOWING CHEMICAL PROPERTIES OF METALS AND NON-METALS ,REACTION WITH AIR,WATER& ACIDS', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 33, NULL, 249);
INSERT INTO public.hardspot_hardspot VALUES (121, 'WHAT HAVE YOU LEARNT + USES OF METALS, NON-METALS IN DAILY LIFE + NOBLE METALS + MIX METALS', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 32, NULL, 253);
INSERT INTO public.hardspot_hardspot VALUES (122, 'SYNTHETIC FIBRES', 'TO HELP THE STUDENTS UNDERSTAND AND KNOW MORE ABOUT SYNTHETIC FIBRES AND ITS TYPES OR TRAITS.', 'CONTENT MUST HIGHLIGHT THE DEFINITION, TYPES AND TRAITS OF SYNTHETIC FIBRES OR POLYMERS.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 31, 411, NULL);
INSERT INTO public.hardspot_hardspot VALUES (123, 'CLASSIFICATION OF PLASTICS', 'TO HELP STUDENT LEARN MORE ABOUT PLASTICS.', 'CONTENT MUST CLASSIFY AND DIFFERENTIATE BETWEEN THERMO-PLASTIC AND THERMO-SETTING PLASTIC AND ITS PROPERTIES USING IMAGES AND DAILY LIFE EXAMPLES. CONTENT MUST HIGHLIGHT THAT PLASTIC IS VERY HARMFUL FOR OUR ENVIRONMENT AND HOW TO PROTECT OUR ENVIRONMENT-4R PRINCIPLE', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 30, NULL, 254);
INSERT INTO public.hardspot_hardspot VALUES (124, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 29, NULL, 257);
INSERT INTO public.hardspot_hardspot VALUES (125, 'CHEMICAL REACTIONS', 'TO HELP STUDENT LEARN MORE ABOUT CHEMICAL REACTIONS.', 'SLIDES MUST HIGHLIGHT WHAT IS CHEMICAL REACTION, DEFINITION OF CHEMICAL REACTION. AND VIDEO / SLIDES SHOWING PROPERTIES OF CHEMICAL REACTIONS BY EXPERIMENTS.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 28, 418, NULL);
INSERT INTO public.hardspot_hardspot VALUES (126, 'REDOX REACTIONS', 'TO HELP STUDENT LEARN MORE ABOUT REDOX REACTION.', 'VIDEO / SLIDES MUST SHOWING OXIDATION REACTION AND REDUCTION REACTION BY EXPERIMENT. ALSO ABOUT ENDOTHERMIC AND EXOTHERMIC REACTION', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 27, NULL, 261);
INSERT INTO public.hardspot_hardspot VALUES (127, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER AND PRACTICE THROUGH SOLVING THE QUESTIONS', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 33, NULL, 264);
INSERT INTO public.hardspot_hardspot VALUES (128, 'ACTIVITY WORK', 'TO HELP STUDENT LEARN MORE ABOUT CHEMICAL REACTION.', 'VIDEO SHOWING EXPERIMENT GIVEN IN ACTIVITY', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 32, NULL, 264);
INSERT INTO public.hardspot_hardspot VALUES (129, 'INTRODUCTION OF BIODIVERSITY', 'TO HELP THE STUDENTS UNDERSTAND AND LEARN ABOUT THE ENDANGERED SPECIES AND THE REASONS FOR IT', 'VIDEO AND SLIDES SHOWING HABITATES EXTINCT,ENDANGERED AND SPECISAL AREA CREATOURS', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 31, 422, NULL);
INSERT INTO public.hardspot_hardspot VALUES (130, 'DEGRADETION OF BIODIVERSITY', 'HELP STUDENTS DEVELOP THE HABIT OF WILDLIFE PRESERVATION', 'SLIDES AND VIDEO SHOWING DEGRADETION OF BIODIVERSITY,DEFORESTATION, HUNTING OF ANIMALS AND BIRDS,', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 30, NULL, 265);
INSERT INTO public.hardspot_hardspot VALUES (131, 'PROTECTION OF BIODIVERSITY', 'DEVELOPMENT AND IMPLEMENTATION OF PROTECTION OF BIODIVERSITY', 'VIDEO SHOEING HOW TO PROTECT BIODIVERSITY,VARIOUS RESERVES, NATIONAL PARKS, PROTECTED FOREST AREAS, ZOOLOGICAL PARKS, BOTANICAL GARDENS AND ALSO ABOUT HOTSPOT OF BIODIVERSITY, ACCOMMODATION OF HIGHLY BIODIVERSITY AND SPECIALTY SPECIES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 29, NULL, 266);
INSERT INTO public.hardspot_hardspot VALUES (132, 'YEH BHI JANE', 'TO HELP STUDENT LEARN MORE ABOUT BIODIVERSITY', 'VIDEO SHOWING BIODIVERCITY OF COWS IN RAJASTHAN ,KANKREZ COW IMAGE,MALVI COW IMAGE AND FEATURE,RATHI COW IMAGE &FEATURE,NAGAURI COW IMAGE &FEATURE', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 28, NULL, 268);
INSERT INTO public.hardspot_hardspot VALUES (133, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 27, NULL, 269);
INSERT INTO public.hardspot_hardspot VALUES (134, 'REPRODUCTION IN PLANTS & TYPES OF REPRODUCTION', 'STUDENTS NEEDS TO LEARN HOW REPRODUCTION TAKES PLACE IN PLANTS', 'CONTENT MUST HIGHLIGHT WHAT IS REPRODUCTION? HOW DOSE IT TAKES PLACE IN VARIOUS ORGANISMS ?IT MUST HAVE VEDIOS SHOWING VARIOUS TYPES OF REPRODUCTION IN DIFFERENT( LOWER AND HIGHER) PLANTS FOR THEIR UNDERSTANDING.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 33, 424, NULL);
INSERT INTO public.hardspot_hardspot VALUES (135, 'POLLINATION IN FLOWERING PLANTS BY VARIOUS AGENTS & TYPES OF POLLINATION', 'GIVE MORE EXAMPLES AND PRACTICES ARE PROVIDED IN TEXT BOOK SO DIFFICULT TO UNDERSTAND & DIFFERENNTIATE SELF AND CROSS POLLINATION BY THE STUDENTS', 'VIDEO SLIDES MUST HAVE SUFFICIENT SUBJECT MATTER TO EXPLAIN AND VISUALIZE THE PROCESS OF SELF AND CROSS POLLINATION IN PLANTS ALSO SHOWING GERNIMATION OF POLLEN GRAINS ON STIGMA ,ITS GROWTH INSIDE THE STYLE AND HOW MALE GAMETS REACHES TO OVULE AND FERTILIZE THE EGG CELL & FORMATION OF SEEDS AND FRUIT', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 32, NULL, 274);
INSERT INTO public.hardspot_hardspot VALUES (136, 'HEREDITY', 'STUDENTS HAS NO PREVIOUS KNOWLEGDE WHY OFFSPRINGS ARE SIMILAR TO THEIR PARENTS? AND HOW CHARACTERS ARE BEING TRANSFERRED FROM ONE GENERATION TO ANOTHER?', 'SLIDES CAN VISUALISE THE EXPRESSION OF TRAITS IN PEA PLANT ,MEANING OF HEREDITY,FLOW OF GENETIC CHARACTERS BY MENDAL''S EXPERIMENTS & STATING MENDAL''S LAWS OF HEREDITY.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 31, NULL, 276);
INSERT INTO public.hardspot_hardspot VALUES (137, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 30, NULL, 277);
INSERT INTO public.hardspot_hardspot VALUES (138, 'INTRODUCTION OF BLOOD STRUCTURE', 'TO HELP THE STUDENTS TO KNOW ABOUT THE PHYSICAL & CHEMICAL COMPOSITION OF BLOOD', 'VIDEO & SLIDE SHOWING TO EXPLAIN BLOOD STRUCTURERBC,WBC,PLATLETS', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 29, 427, NULL);
INSERT INTO public.hardspot_hardspot VALUES (139, 'BLOOD GROUPS', 'STUDENTS CAN GET HELP TO UNDERSTAND DIFFERTENT BLOOD GROUPS', 'VIDEO ,AUDIO &SLIDES SHOWING BLOOD GROUPS GRP-A,GPR-B,GRP-AB,GRP-O', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 28, NULL, 279);
INSERT INTO public.hardspot_hardspot VALUES (140, 'BLOOD DONATION AND BLOOD BANK', 'IMPORTANCE OF BLOOD DONATION AND BLOOD BANKS', 'VIDEO AND SLIDES SHOWING PROCESS OF BLOOD TRANSFUSION IN HUMAN BEINGS AND BLOOD BANK"S INFORMATION & WHY BLOOD DONATION IS IMPORTANT', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 27, NULL, 280);
INSERT INTO public.hardspot_hardspot VALUES (141, 'HUMAN HEART AND BLOOD CIRCULATION', 'STUDENTS KNOW ABOUT HEART INTERNAL STRUCTURE AND UNDERSTEND HOW TO CIRCULATE BLOOD', 'VIDEO AND SLIDES SHOWING INTERNAL STRUCTURE AND FUNCTIONING OF HUMAN HEART, BLOOD CIRCULATION ,AND WHY OXYGENATED BLOOD DONOT MIX WITH DEOXYGENATED BLOOD', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 33, NULL, 281);
INSERT INTO public.hardspot_hardspot VALUES (142, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 32, NULL, 282);
INSERT INTO public.hardspot_hardspot VALUES (143, 'DISEASES & TYPES OF DISEASES (WITH CAUSE)', 'STUDENTS ARE RARELY KNOWN WHAT IS HEALTH AND HOW DEASESES CAN BE DEFINED AND CLASSIFIED', 'CONTENT MUST DEFINE DISEASE AND DIFFERENTIATE BETWEEN INFECTIOUS AND NON-INFECTIOUS DISEASE. USING IMAGES AND REAL LIFE EXAMPLES. THE CONTENT MUST CONTAIN SLIDES THAT SHOWS WHAT IS DISEASE AND TYPES OF DISEASE. CONCERNING IMAGES WITH EXAMPLES.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 31, NULL, 283);
INSERT INTO public.hardspot_hardspot VALUES (144, 'SPECIFIC DISEASE', 'THIS IS AN IMPORTANT DISEASE BUT IT IS DIFFICULT FOR STUDENTS & TEACHERS TO UNDERSTAND AND TEACH RESPECTIVELY', 'SLIDES SHOWING WHAT IS AIDS, CANCER, SWINE FLU, DENGUE , ITS CAUSES, SYMPTOMS, PREVENTION & TREATMENT', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 30, 430, NULL);
INSERT INTO public.hardspot_hardspot VALUES (145, 'VACCINATION', 'TO HELP THE STUDENTS UNDERSTAND AND LEARN ABOUT VACCINATION', 'SLIDES SHOWING WITH VIDEO WHAT IS VACCINE AND HOW DOES IT WORK? AND WHICH VACCINE IS APPROPRIATE FOR WHICH AGE', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 29, 433, NULL);
INSERT INTO public.hardspot_hardspot VALUES (146, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 28, NULL, 286);
INSERT INTO public.hardspot_hardspot VALUES (147, 'INTRODUCTION OF WORK', 'STUDENTS OFTEN DOSEN''T KNOW HOW WORK IS CONSIDERED AND DEFINED IN PHYSICS', 'VIDEO DESCRIBING WHAT IS WORK , HOW IS WORK DONE WITH DEFINATIONS, FORCE AND DISPLACEMENT OF FORCE, UNITS OF WORK AND VARIOUS DAY TO DAY LIFE EXAMPLES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 27, 436, NULL);
INSERT INTO public.hardspot_hardspot VALUES (148, 'INTRODUCTION OF ENERGY', 'STUDENTS OFTEN GET CONFUSED ON WHAT IS ENERGY, THE LAW OF CONSERVATION OF ENERGY, EXPLAINATION IN A PRACTICAL MANNER WILL HELP STUDENTS UNDERSTANDING THE CONCEPT THOROUGH', 'VIDEO SHOWING WHAT IS ENERGY , TYPES OF ENERGY AND LAW STATING ABOUT ENERGY WITH VARIOUS DAY TO DAY LIFE EXAMPLES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 33, NULL, 288);
INSERT INTO public.hardspot_hardspot VALUES (149, 'FORMS OF ENERGY', 'STUDENTS ARE UNABLE TO VISUALIZE THE VARIOUS FORMS ENERGY AND THE CONVERSION OF ONE FORM OF ENERGY TO OTHER', 'VIDEO SHOWING FORMS OF ENERGY , HOW ENERGY IS PRODUCED FROM DIFFERENT FROMS AND UTILIZED WITH DETAILED EXPLANATION WITH VARIOUS DAY TO DAY LIFE EXAMPLES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 32, NULL, 291);
INSERT INTO public.hardspot_hardspot VALUES (150, 'ENERGY TRANSFORMATION', 'STUDENTS ARE UNABLE TO VISUALIZE THE TRANSFORMATION OF ENERGY ONE FORM OF ENERGY TO OTHER', 'VIDEO SHOWING TRANSFORMATION OF ENERGY AND THE LAW OF CONSERVATION OF ENERGY WHICH STATES ENERGY TRANSFORMES FROM ONE FORM TO OTHER WITH DETAILED EXPLANATION WITH VARIOUS DAY TO DAY LIFE EXAMPLES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 31, NULL, 292);
INSERT INTO public.hardspot_hardspot VALUES (151, 'CONVENTIONAL SOURCES OF ENERGY', 'REAL LIFE EXAMPLES WITH PICTURES GIVE A PERFECT VISUALIZATION', 'VIDEO SHOWING CONVENTIONAL SOURCES OF ENERGY RELATING TO DAY TO DAY LIFE EXAMPLES TO UNDERSTAND BETTER', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 30, NULL, 294);
INSERT INTO public.hardspot_hardspot VALUES (152, 'NON-CONVENTIONAL SOURCES OF ENERGY', 'REAL LIFE EXAMPLES WITH PICTURES GIVE A PERFECT VISUALIZATION', 'VIDEO SHOWING NON-CONVENTIONAL SOURCES OF ENERGY RELATING TO DAY TO DAY LIFE EXAMPLES TO UNDERSTAND BETTER', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 29, NULL, 295);
INSERT INTO public.hardspot_hardspot VALUES (153, 'CONSERVATION OF ENERGY', 'TO HELP STUDENTS DEVELOP THE HABIT OF CONSERVATION OF ENERGY', 'VIDEO SHOWING CONSERVATION OF ENERGY AND ITS IMPORTANCE WILL HELP STUDENTS DEVELOP THE HABIT OF CONSERVATION OF ENERGY', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 28, NULL, 296);
INSERT INTO public.hardspot_hardspot VALUES (154, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 27, NULL, 298);
INSERT INTO public.hardspot_hardspot VALUES (155, 'INTRODUCTION OF SOUND', 'STUDENTS WILL GET A BETTER INSIGHT ON WHAT IS SOUND AND WHAT PROCUDES SOUND WITH REAL LIFE EXAMPLES', 'VIDEO SHOWING HOW SOUND IS PRODUCED WITH DAY TO DAY LIFE EXAMPLES TO UNDERSTAND THE CONCEPT IN PRACTICAL LIFE', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 33, 445, NULL);
INSERT INTO public.hardspot_hardspot VALUES (156, 'PROPAGATION OF SOUND', 'STUDENTS WILL GET A BETTER INSIGHT ON HOW SOUND PROPOGATES AND WHAT IS REQUIRED FOR THE PROPOGATION OF SOUND', 'VIDEO SHOWING PROPAGTION OF SOUND AND SOUND REQUIRES MEDIUM (SOLID, LIQUID AND GAS) TO PROPOGATE WITH DETAILED EXPLANATION WITH VARIOUS DAY TO DAY LIFE EXAMPLES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 32, 448, NULL);
INSERT INTO public.hardspot_hardspot VALUES (157, 'AMPLITUDE,FREQUENCY AND TIME PERIOD', 'STUDENTS ARE UNABLE TO VISUALIZE THE IMPORTANCE OF AMPLITUDE,FREQUENCY AND TIME PERIOD RATHER THAN JUST DEFINATION TO LEARN', 'VIDEO SHOWING AMPLITUDE,FREQUENCY AND TIME PERIOD THEIR IMPORTANCE AND USE WITH DETAILED EXPLANATION WITH VARIOUS EXAMPLES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 31, NULL, 304);
INSERT INTO public.hardspot_hardspot VALUES (158, 'STRENGTH AND PITCH', 'STUDENTS ARE UNABLE TO VISUALIZE THE IMPORTANCE OF STRENGTH AND PITCH RATHER THAN JUST DEFINATION TO LEARN', 'VIDEO SHOWING STRENGTH AND PITCH WITH DETAILED EXPLANATION WITH VARIOUS EXAMPLES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 30, NULL, 306);
INSERT INTO public.hardspot_hardspot VALUES (159, 'HUMAN EAR', 'STUDENTS WILL GET A BETTER INSIGHT ON HOW HUMAN EAR FUNCTIONS WITH DETAILED DIGRAMATIC VIEW OF A 3D EAR', 'VIDEO SHOWING HUMAN EAR WITH DETAILED DIGRAMATIC VIEW OF A 3D EAR AND COMPLETE FUNCTION AND A BIT ABOUT SOUND POLLUTION', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 29, NULL, 309);
INSERT INTO public.hardspot_hardspot VALUES (160, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 28, NULL, 311);
INSERT INTO public.hardspot_hardspot VALUES (161, 'THERMAL EFFECT OF ELECTRIC CURRENT', 'STUDENTS WILL GET A BETTER VISUALIZATON ON THERMAL EFFECT OF ELECTRIC CURRENT WITH REAL LIFE EXAMPLES', 'VIDEO/ SLIDE SHOWING HOW THERMAL EFFECT OF ELECTRIC CURRENT IS PASSED WITH VARIOUS EXAMPLES OF DAY TO DAY LIFE', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 27, NULL, 312);
INSERT INTO public.hardspot_hardspot VALUES (162, 'FUSE / SHORT CIRCUIT', 'STUDENTS WILL GET A BETTER VISUALIZATON ON FUSE / SHORT CIRCUIT WITH REAL LIFE EXAMPLES', 'VIDEO/ SLIDE SHOWING HOW FUSE / SHORT CIRCUIT FALLS, WHAT ARE THE REASONS, DISADVANTAGES AND CAUTIONS SHOULD BE TAKEN IN DAY TO DAY LIFE WITH VARIOUS EXAMPLES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 33, NULL, 313);
INSERT INTO public.hardspot_hardspot VALUES (163, 'MAGNETIC EFFECT OF ELECTRIC CURRENT', 'STUDENTS WILL GET A BETTER VISUALIZATON ON MAGNETIC EFFECT OF ELECTRIC CURRENT WITH REAL LIFE EXAMPLES', 'VIDEO/ SLIDE SHOWING HOW MAGNETIC EFFECT OF ELECTRIC CURRENT IS PASSED WITH VARIOUS EXAMPLES OF DAY TO DAY LIFE', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 32, 457, NULL);
INSERT INTO public.hardspot_hardspot VALUES (164, 'ELECTROMAGNET', 'STUDENTS WILL GET A BETTER VISUALIZATON ON ELECTROMAGNET AND ELECTRIC BELL WITH REAL LIFE EXAMPLES', 'VIDEO/ SLIDE SHOWING WORKING OF ELECTRO MAGNET AND ELECTRIC BELL WITH VARIOUS EXAMPLES OF DAY TO DAY LIFE', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 31, NULL, 314);
INSERT INTO public.hardspot_hardspot VALUES (165, 'CHEMICAL EFFECTS OF ELECTRIC CURRENT', 'STUDENTS WILL GET A BETTER VISUALIZATON ON CHEMICAL EFFECT OF ELECTRIC CURRENT WITH REAL LIFE EXAMPLES', 'VIDEO/ SLIDE SHOWING HOW CHEMICAL EFFECT OF ELECTRIC CURRENT IS PASSED WITH VARIOUS EXAMPLES OF DAY TO DAY LIFE', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 30, 461, NULL);
INSERT INTO public.hardspot_hardspot VALUES (166, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 29, NULL, 315);
INSERT INTO public.hardspot_hardspot VALUES (167, 'ARTIFICIAL SATELLITE', 'STUDENTS ARE UNABLE TO VISUALIZE WHAT ARE ARTIFICIAL SATELLITE AND ITS LAUNCHING INTO SPACE , TYPES AND ITS USES', 'VIDEOS AND SLIDES SHOWING WHAT ARE ARTIFICIAL SATELLITE AND ITS LAUNCHING INTO SPACE , ITS TYPES AND WHAT ARE ITS USES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 28, 465, NULL);
INSERT INTO public.hardspot_hardspot VALUES (168, 'MAIN ARTIFICIAL SATELLITES OF INDIA', 'TO HELP IN UNDERSTANDING ABOUT MAIN ARTIFICIAL SATELLITE OF INDIA AND COMPLETE DETAILD INFORMATION ABOUT ARYBHATT, IRS, INSAT, ETC....', 'SLIDES SHOWING MAIN ARTIFICIAL SATELLITE OF INDIA AND COMPLETE DETAILD INFORMATION ABOUT ARYBHATT, IRS, INSAT, ETC....', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 27, NULL, 320);
INSERT INTO public.hardspot_hardspot VALUES (169, 'INDIAN SPACE RESEARCH ORGANIZATION-ISRO', 'DETAILED EXPLAINATION WILL GIVE STUDENTS A INSIGHT ON OUR SPACE RESEARCH ORGANIZATION TO DEVELOP INTEREST', 'SLIDES SHOWING CONTRIBUTION OF ISRO IN INDIAN SPACE PROGRAMME', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 33, NULL, 321);
INSERT INTO public.hardspot_hardspot VALUES (170, 'DR. VIKRAM AMBALAL SARABHAI', 'TO HELP IN UNDERSTANDING ABOUT THE LIFE HISTORY OF DR. VIKRAM AMBALAL SARABHAI', 'VIDEO SHOWING THE WORKS AND LIFE HISTORY OF DR. VIKRAM AMBALAL SARABHAI. THE AWARDS AND RECOGNITION RECEIVED BY HIM FOR WORKS. HOW HIS WORKS BENEFITTED THE PUBLIC AND HOW IT IS BEING USED TODAY', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 32, NULL, 322);
INSERT INTO public.hardspot_hardspot VALUES (171, 'DR. A.P.J. ABUDL KALAM', 'TO HELP IN UNDERSTANDING ABOUT THE LIFE HISTORY OF DR. A.P.J. ABUDL KALAM', 'VIDEO SHOWING THE WORKS AND LIFE HISTORY OF DR. A.P.J. ABUDL KALAM. THE AWARDS AND RECOGNITION RECEIVED BY HIM FOR WORKS. HOW HIS WORKS BENEFITTED THE PUBLIC AND HOW IT IS BEING USED TODAY', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 31, NULL, 323);
INSERT INTO public.hardspot_hardspot VALUES (172, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 30, NULL, 324);
INSERT INTO public.hardspot_hardspot VALUES (173, 'INTRODUCTION OF INFORMATION TECHNOLOGY', 'INFORMING STUDENTS ABOUT NEW TECHNOLOGY', 'SLIDE SHOWING WHAT IS IT AND MODE OF COMMUNICATION,REDIO,TELEVISION,TELEPHONE,FAX', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 29, 473, NULL);
INSERT INTO public.hardspot_hardspot VALUES (174, 'ELECTRONIC MAIL OR E-MAIL', 'SHOWING AND TEACHING STUDENTS ABOUT E-MAIL PRACTICALLY', 'SLIDE SHOWNIG WHAT IS E-MAIL, E-MAIL ADDRESS, HOW TO CREAT E-MAIL ACCOUNT', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 28, NULL, 325);
INSERT INTO public.hardspot_hardspot VALUES (175, 'INTERNET + MAJOR SERVICES BASED ON INTERNET', 'SHOWING AND TEACHING STUDENTS ABOUT E-MAIL PRACTICALLY', 'SLIDE SHOWING MAJOR SERVICES,E-COMMERCE,TELEMEDISION,SOCIAL MEDIA,E-MITRA BASED ON INTERNET', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 27, NULL, 326);
INSERT INTO public.hardspot_hardspot VALUES (176, 'CYBER SECURITY', 'SPREADING AWARENESS ABOUT CYBER SECURITY', 'SLIDE SHOWING WHAT IS OR WHY CYBER SECURITY IS IMPORTANT', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 33, 479, NULL);
INSERT INTO public.hardspot_hardspot VALUES (177, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 32, NULL, 327);
INSERT INTO public.hardspot_hardspot VALUES (178, 'REFRACTION OF LIGHT', 'TO HELP IN UNDERSTANDING ABOUT VISUALIZE WHAT REFRACTION IS AND OFTEN CONFUSE IT WITH REFLECTION', 'VIDEO SHOWING REFRACTION OF LIGHT , THE LAW OF REFLECTION AND HOW REFRACTION IS DIFERENT FROM REFLECTION STUDIED IN CLASS 7TH AND ITS EXAMPLES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 31, NULL, 328);
INSERT INTO public.hardspot_hardspot VALUES (179, 'LENS', 'TO HELP IN UNDERSTANDING ABOUT THE TYPE OF LENSES AVAILABLE AND ITS PRACTICAL LIFE USE', 'SLIDES AND VIDEOS SHOWING TYPES OF LENS THEIR USE AND IMPORTANCE IN DAY TO DAY LIFE', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 30, NULL, 331);
INSERT INTO public.hardspot_hardspot VALUES (180, 'IMAGE FORMATION WITH CONVEX LENS', 'TO HELP IN UNDERSTANDING ABOUT THE IMAGE FORMATION AND OFTEN END UP LEARING THE FORMATION OF IMAGES OF VARIOUS TYPES OF LENSES', 'VIDEO SHOWING IMAGE FORMATION WITH CONVEX LENS AND LEARNING TECHNIQUES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 29, NULL, 334);
INSERT INTO public.hardspot_hardspot VALUES (181, 'USES OF LENS AND LIGHT DEVICES', 'PRACTICAL EXAMPLES NECESSARY', 'VIDEO SHOWING USES OF LENS AND LIGHT DEVICES WITH PRACTICAL EXAMPLES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 28, NULL, 336);
INSERT INTO public.hardspot_hardspot VALUES (182, 'HUMAN EYE', 'STUDENTS WILL GET A BETTER INSIGHT ON HOW HUMAN EYE FUNCTIONS WITH DETAILED DIGRAMATIC VIEW OF A 3D EYE WITH RESPECT TO LENSES', 'VIDEO SHOWING HUMAN EYE WITH DETAILED DIGRAMATIC VIEW OF A 3D EYE AND COMPLETE FUNCTION WITH RESPECT TO LENSES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 27, NULL, 337);
INSERT INTO public.hardspot_hardspot VALUES (183, 'DISPERSION OF LIGHT', 'PRACTICAL MAKES PARFECT', 'VIDEO SHOWING DISPERSION OF LIGHT , WHAT CAUSES IT AND THE PHENOMINON CAUSED BY THE DESPERSION OF LIGHT', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 33, NULL, 338);
INSERT INTO public.hardspot_hardspot VALUES (184, 'DR. C.V. RAMAN', 'TO HELP IN UNDERSTANDING ABOUT THE LIFE HISTORY OF DR. C.V. RAMAN', 'VIDEO SHOWING THE WORKS AND LIFE HISTORY OF DR. C.V. RAMAN. THE AWARDS AND RECOGNITION RECEIVED BY HIM FOR WORKS. HOW HIS WORKS BENEFITTED THE PUBLIC AND HOW IT IS BEING USED TODAY', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 32, NULL, 339);
INSERT INTO public.hardspot_hardspot VALUES (185, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 31, NULL, 340);
INSERT INTO public.hardspot_hardspot VALUES (186, 'INTRODUCTION OF NATURAL PHENOMENON "AIR","TO PROVIDE STUDENTS A BETTER INSIGHT OF THE NATURAL PHENOMENON OF AIR EXERTS PRESSURE.', 'VIDEO MUST SHOWING PHENOMENON OF AIR EXERT PRESSURE, EFFECT OF VELOCITY OF AIR ON AIR PRESSURE, NON UNIFORM HEATING OF LAND AND WATER', '1', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 31, 490, NULL);
INSERT INTO public.hardspot_hardspot VALUES (187, 'THUNDER STORM, CYCLONE & TORNADO', 'TO HELP STUDENT LEARN MORE ABOUT THUMDER STORM, CYCLONE & TORNADO.', 'VIDEO AND SLIDES SHOWING WHAT IS THUNDER STORM, CYCLONE & TORNADO AND SAFETY MEASURES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 29, NULL, 342);
INSERT INTO public.hardspot_hardspot VALUES (188, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 28, NULL, 343);
INSERT INTO public.hardspot_hardspot VALUES (189, 'AIR POLLUTION', 'STUDENTS WILL GET MORE INFORMATION ABOUT AIR POLLUTION.', 'VIDEO /SLIDES MUST SHOWING AIR POLLUTION', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 27, NULL, 344);
INSERT INTO public.hardspot_hardspot VALUES (190, 'ACID RAIN', 'TO HELP THE STUDENTS UNDERSTAND AND MORE IFORMATION ABOUT ACID RAIN.', 'VIDEO SHOWING ACID RAIN', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 33, NULL, 346);
INSERT INTO public.hardspot_hardspot VALUES (191, 'GREEN HOUSE EFFECT', 'TO HELP THE STUDENTS UNDERSTAND AND MORE IFORMATION ABOUT GREEN HOUSE EFFECT.', 'VIDEO SHOWING GREEN HOUSE EFFECT', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 32, NULL, 347);
INSERT INTO public.hardspot_hardspot VALUES (192, 'SPECIFIC STUDY ON WATER POLLUTION', 'DETAILED EXPLAINATION WILL GIVE STUDENTS A INSIGHT ABOUT WATER POLLUTION TO DEVELOP INTEREST', 'VIDEO SHOWING SPECIFIC STUDY ON WATER POLLUTION', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 31, NULL, 352);
INSERT INTO public.hardspot_hardspot VALUES (193, 'WATER PURIFICATION', 'TO HELP THE STUDENTS UNDERSTAND AND MORE IFORMATION ABOUT WATER PURIFICATION.', 'VIDEO SHOWING WATER PURIFICATION', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 30, NULL, 353);
INSERT INTO public.hardspot_hardspot VALUES (194, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 29, NULL, 354);
INSERT INTO public.hardspot_hardspot VALUES (195, 'ENVIRONMENT', 'TO HELP THE STUDENTS UNDERSTAND AND MORE IFORMATION ABOUT ENVIRONMENT.', 'SLIDES MUST HIGHLIGHT WHAT IS ENVIRONMENT AND ITS TYPES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 28, NULL, 355);
INSERT INTO public.hardspot_hardspot VALUES (196, 'ENVIRONMENT POLLUTION', 'TO HELP THE STUDENTS UNDERSTAND AND LEARN ABOUT ENVIRONMENT POLLUTION', 'SLIDES MUST HIGHLIGHT THE DEFINITION OF ENVIRONMENT POLLUTION AND ITS TYPES OR ADVERSE EFFECTS.', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 27, NULL, 357);
INSERT INTO public.hardspot_hardspot VALUES (197, 'ENVIRONMENT CONSERVATION', 'STUDENTS DO NOT HAVE ENOUGH INFORMATION ABOUT THIS', 'SLIDES MUST HIGHLIGHT THE RELATION WITH OUR LIFE STYLE AND ENVIRONMENT CONSERVATION', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 33, NULL, 360);
INSERT INTO public.hardspot_hardspot VALUES (198, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 32, NULL, 362);
INSERT INTO public.hardspot_hardspot VALUES (199, 'ALLOTROPS OF CARBON', 'STUDENTS DO NOT HAVE ENOUGH INFORMATION ABOUT THIS', 'VIDEO SHOWING  THE PROPERTY AND DIFFERENCE BETWEEN DIAMOND AND GRAPHITE', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 31, NULL, 364);
INSERT INTO public.hardspot_hardspot VALUES (200, 'PETROLEUM AND ITS REFINING', 'SHOWING THE STUDENTS THE PROCESS OF REFINING PETROLEUM', 'VIDEO AND SLIDES SHOWING PETROLEUM REFINING.PETROLEUM GAS, PETROL, NAPHTHA, KEROSENE, DESAL, LUBRICANT, PARAPHIN, ASPHALT', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 30, 517, NULL);
INSERT INTO public.hardspot_hardspot VALUES (201, 'ENERGY CONSERVATION', 'TEACHING STUDENTS AND HELPING THEM IMPLEMENT THE STEPS FOR ENERGY CONSERVATION', 'VIDEO AND SLIDES SHOWING HOW TO CONSERVE ENERGY', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 29, 519, NULL);
INSERT INTO public.hardspot_hardspot VALUES (202, 'WHAT HAVE YOU LEARNT', 'TO HELP THE STUDENTS REVISE THE ENTIRE CHAPTER', 'CONTENT MUST HIGHLIGHT THE IMPORTANT POINTS OF THE CHAPTER WHICH HELPS THE STUDENT TO REVISE. THE CONTENT MUST HAVE INTERACTIVE PRACTICE QUESTION SET TO CHECK FOR UNDERSTANDING', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 28, NULL, 366);
INSERT INTO public.hardspot_hardspot VALUES (203, 'ROAD SAFTY', 'TO HELP THE STUDENTS TO UNDERSTAND ROAD SAFETY RULES', 'VIDEO SHOWING IMPORTANT ROAD SAFTY RULES WITH DETAILED EXPLANATION WITH VARIOUS DAY TO DAY LIFE EXAMPLES', 'Teachers', true, 4, 'Testing', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', 10, NULL, 27, 521, NULL);
INSERT INTO public.hardspot_hardspot VALUES (207, 'भाषिक व्यंग्यो को समझने मे', 'इसमे व्यंग्यात्मक शैली का ज्यादा प्रयोग किया गया है', 'समान अर्थ वाली विषय वस्तु की आवश्यक्ता होगी', 'Both', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 105, 90, NULL, NULL);
INSERT INTO public.hardspot_hardspot VALUES (208, 'हिन्दी व्याकरण', 'नियमों की अधिकता के कारण कठिनाई होती है', 'सन्धि व समास के विभिन्न उदाहरणों का', 'Both', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 148, 91, NULL, NULL);
INSERT INTO public.hardspot_hardspot VALUES (209, 'चरित्र चित्रण को समझने में ,पत्रों की महत्ता को समझने में ,वास्तविक जीवन से सामंजस्य बिठाने में', 'भाषा एक भाषा होती है भाषाओं में उसके गूढ़ रहस्य को समझना जरूरी है', 'अलग अलग पात्र बनाकर उनसे संवाद का अभिनय का  विडियो', 'Students', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 149, 91, NULL, NULL);
INSERT INTO public.hardspot_hardspot VALUES (210, 'साहित्य के इतिहास की जानकारी आवश्यक है शब्दों का अर्थ समझने के लिए शब्दावली की जानकारी आवश्यक है', 'साहित्य के इतिहास में तात्कालिक परिस्थितियों का वर्णन किया है जो कवि को समझने के लिए आवश्यक है', 'हिन्दी साहित्य के इतिहास की जानकारी दी जाए क्योंकि किसी भी साहित्य को पढ़ाने के लिए साहित्य के इतिहास की जानकारी आवश्यक है', 'Both', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 122, 98, NULL, NULL);
INSERT INTO public.hardspot_hardspot VALUES (211, 'साहित्य के इतिहास की जानकारी आवश्यक है शब्दों का अर्थ समझने के लिए शब्दावली की जानकारी आवश्यक है', 'साहित्य के इतिहास में तात्कालिक परिस्थितियों का वर्णन किया है जो कवि को समझने के लिए आवश्यक है', 'हिन्दी साहित्य के इतिहास की जानकारी दी जाए क्योंकि किसी भी साहित्य को पढ़ाने के लिए साहित्य के इतिहास की जानकारी आवश्यक है', 'Both', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 122, 98, NULL, NULL);
INSERT INTO public.hardspot_hardspot VALUES (212, 'साहित्य के इतिहास की जानकारी आवश्यक है शब्दों का अर्थ समझने के लिए शब्दावली की जानकारी आवश्यक है', 'साहित्य के इतिहास में तात्कालिक परिस्थितियों का वर्णन किया है जो कवि को समझने के लिए आवश्यक है', 'हिन्दी साहित्य के इतिहास की जानकारी दी जाए क्योंकि किसी भी साहित्य को पढ़ाने के लिए साहित्य के इतिहास की जानकारी आवश्यक है', 'Both', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 122, 98, NULL, NULL);
INSERT INTO public.hardspot_hardspot VALUES (213, 'साहित्य के इतिहास की जानकारी आवश्यक है शब्दों का अर्थ समझने के लिए शब्दावली की जानकारी आवश्यक है', 'साहित्य के इतिहास में तात्कालिक परिस्थितियों का वर्णन किया है जो कवि को समझने के लिए आवश्यक है', 'हिन्दी साहित्य के इतिहास की जानकारी दी जाए क्योंकि किसी भी साहित्य को पढ़ाने के लिए साहित्य के इतिहास की जानकारी आवश्यक है', 'Both', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 122, 98, NULL, NULL);
INSERT INTO public.hardspot_hardspot VALUES (214, 'साहित्य के इतिहास की जानकारी आवश्यक है शब्दों का अर्थ समझने के लिए शब्दावली की जानकारी आवश्यक है', 'साहित्य के इतिहास में तात्कालिक परिस्थितियों का वर्णन किया है जो कवि को समझने के लिए आवश्यक है', 'हिन्दी साहित्य के इतिहास की जानकारी दी जाए क्योंकि किसी भी साहित्य को पढ़ाने के लिए साहित्य के इतिहास की जानकारी आवश्यक है', 'Both', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 122, 98, NULL, NULL);
INSERT INTO public.hardspot_hardspot VALUES (215, 'साहित्य के इतिहास की जानकारी आवश्यक है शब्दों का अर्थ समझने के लिए शब्दावली की जानकारी आवश्यक है', 'साहित्य के इतिहास में तात्कालिक परिस्थितियों का वर्णन किया है जो कवि को समझने के लिए आवश्यक है', 'हिन्दी साहित्य के इतिहास की जानकारी दी जाए क्योंकि किसी भी साहित्य को पढ़ाने के लिए साहित्य के इतिहास की जानकारी आवश्यक है', 'Both', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 122, 98, NULL, NULL);
INSERT INTO public.hardspot_hardspot VALUES (216, 'साहित्य के इतिहास की जानकारी आवश्यक है शब्दों का अर्थ समझने के लिए शब्दावली की जानकारी आवश्यक है', 'साहित्य के इतिहास में तात्कालिक परिस्थितियों का वर्णन किया है जो कवि को समझने के लिए आवश्यक है', 'हिन्दी साहित्य के इतिहास की जानकारी दी जाए क्योंकि किसी भी साहित्य को पढ़ाने के लिए साहित्य के इतिहास की जानकारी आवश्यक है', 'Both', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 122, 98, NULL, NULL);
INSERT INTO public.hardspot_hardspot VALUES (217, 'Ss- notmuch', 'Ss- notmuch', 'Ss- notmuch', 'Both', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 102, 92, NULL, NULL);
INSERT INTO public.hardspot_hardspot VALUES (218, 'Right speak and pronounces in english', 'Pronunciation is hard to a student.', 'Speaking with right pronouncation', 'Both', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 133, 93, NULL, NULL);
INSERT INTO public.hardspot_hardspot VALUES (219, 'ghghghhhhg', 'kjkkkkjjkkj kjnkukuhu kuiku kjjkjiuh', 'ijlilllllliiil inilj uhuiui', 'Both', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 94, 194, NULL);
INSERT INTO public.hardspot_hardspot VALUES (220, 'jhgh gyg gy uh h h gyghtc   yf  tftrdrddxccxvc fgcdx', 'gghtg gyg ygyg yg uigy  iuh iuh', 'yg uhuh', 'Teachers', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 105, 94, NULL, NULL);
INSERT INTO public.hardspot_hardspot VALUES (221, 'Steps of Vedic Mathematics', 'Steps are very complicated', 'Animated video', 'Students', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 87, 95, NULL, NULL);
INSERT INTO public.hardspot_hardspot VALUES (222, 'भ्रष्टाचार', 'नही है', 'भ्रष्टाचार को उजागर करने के लिए व इसके दुष्प्रभाव को बताने के लिए  लोक गीतों  जो की वहा की  लोकल  भाषा में  हो की रचना की जाये', 'Both', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, 106, 96, NULL, NULL);
INSERT INTO public.hardspot_hardspot VALUES (223, 'test', 'test', 'test', 'Both', false, NULL, NULL, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30', NULL, NULL, 97, 144, NULL);


--
-- Data for Name: hardspot_hardspotcontributors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.hardspot_hardspotcontributors VALUES (8, 'Anand kumar', 'Tiwary', 'anandtiwary021@gmail.com', '8084207920', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (9, 'Anand', 'Tiwary', 'anand@gmail.com', '8084207920', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (10, 'himanshu', 'suthar', 'himanshusuthar480322@gimal.com', '9166062042', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (11, 'himanshu', NULL, NULL, '9166062042', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (12, 'r', 'f', 'rakeshkumar.meena.2189@gmail.com', '9571367762', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (13, 'Sanjay kumar', 'Sharma', 'sharmasanjay01980@gmail.com', '9414861231', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (14, 'Sanjay kumar', 'Sharma', 'sharmasanjay01980@gmail.com', '9414861231', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (15, 'Pawan', 'Singhal', NULL, '9929482423', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (16, 'BABULAL', 'BUNKAR', 'gsss.devgudha@gmail.com', '9667599010', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (17, 'Kanhaiyalal', 'Joshi', NULL, '9413236341', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (18, 'Kanhaiya lal', 'Joshi', NULL, '9413236341', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (19, 'Rajesh', 'Jhajharia', 'rajeshbotanica@gmail.com', '9829139494', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (20, 'sunita bairwa', 'bairwa', 'bairwasunita07@gmail.com', '9660736996', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (21, 'RAKESH', 'MEENA', 'rakeshkumar.meena.2189@gmail.com', '9571367762', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (22, 'Rakesh', 'Songara', NULL, '7878431924', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (23, 'hajari rawat', NULL, 'rawathajarilal@gmail.com', '8104364121', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (24, 'jay', 'hopal', NULL, '7878168904', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (25, 'Prajna', 'Hegde', 'prajna@ekstep.org', '8884678249', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (26, 'Praveen', 'Singh', 'Yuvanrajput0824@gimal.com', '9664330180', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (27, 'रश्मि', 'गोगर', 'NULL', '9314065176', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (28, 'सुनील', 'कुमार', 'NULL', '9828139629', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (29, 'अशोक', 'गुप्ता', 'NULL', '9829497751', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (30, 'नूतन', 'कुमार', 'NULL', '9829020058', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (31, 'नरेन्द्र', 'कुमार', 'NULL', '9785985135', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (32, 'खगेन्द्र', 'कुमार', 'NULL', '8949243464', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (33, 'रविन्द्र', 'कुमार', 'NULL', '9462168815', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (34, 'हितेश', 'कुमार', 'NULL', '9467010380', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (35, 'अशोक', 'कुमार', 'NULL', '9784306648', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (36, 'मोहित', 'कुमार', 'NULL', '9351589413', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (37, 'देवदत्त', 'आर्य', 'NULL', '7597853958', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (38, 'सुरेश', 'शर्मा', 'NULL', '9461247647', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (39, 'रविन्द्र', 'कुमार', 'NULL', '9413031334', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (40, 'मेघा', 'माथुर', 'NULL', '9460367179', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (41, 'मदन', 'मोहन', 'NULL', '9462970695', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (42, 'बिंदु', 'अग्रवाल', 'NULL', '9461147045', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (43, 'सुनीता', 'बत्रा', 'NULL', '9928942232', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (44, 'इंद्रा', 'मेघवाल', 'NULL', '8058140403', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (45, 'मनमोहन', 'शर्मा', 'NULL', '7023766468', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (46, 'राजेश', 'शर्मा', 'NULL', '7424905919', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (47, 'प्रशांत', 'कुमार', 'NULL', '9694809649', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (48, 'निलेश', 'सिंह', 'NULL', '9782574037', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (49, 'विक्रम', 'मीणा', 'NULL', '9610675100', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (50, 'दीपक', 'गुप्ता', 'NULL', '9785385390', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (51, 'धर्म', 'सिंह', 'NULL', '9413376375', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (52, 'रामराज', 'बैरवा', 'NULL', '9461151115', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (53, 'deepshikha', 'kashyap', 'deepshikhakashyap2010@gmail.com', '9785712088', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (54, 'ramkishan', 'gothwal', 'rkgothwal1972@gmail.com', '9166060320', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (55, 'anjut', 'gehlot', 'gehlotanju1968@gmail.com', '9829099296', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (56, 'karmpal', 'yadav', 'billudabad@gmail.com', '9928989726', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (57, 'nidhi', 'ajay 25ya', 'mail.pachisia@gmail.com', '9461309244', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (58, 'rajesh', 'kumar', 'rajeshtaxak99@gmail.com', '9602372889', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (59, 'raj', 'pal', 'rpal78427@gmail.com', '9772738366', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (60, 'anju', 'gehlot', 'gehlotanju1968@gmail.com', '9829099296', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (61, 'Vikash', 'Choudhary', 'vikashmechu7@gmail.com', '9784186622', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (62, 'A', 'B', 'dsfe@gmail.com', '1111222211', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (63, 'A', 'B', 'dsfe@gmail.com', '9423454321', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (64, 'Mahesh', NULL, NULL, '9703411789', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (65, 'a', 'b', 'xyz@gmail.com', '9090909090', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (66, 'Harish', 'M R', 'harish.mr@mantralabsglobal.com', '9743233714', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (67, 'Nitesh', 'Kumawat', NULL, '9351166113', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (68, 'AMIT KUMAR SONI', NULL, 'amitsoni14nov@gmail.com', '9462337135', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (69, 'Rajasthan', NULL, NULL, '9848012345', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (70, 'Devendra', 'Kumawat', NULL, '7014700293', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (71, 'sandeep', 'verma', 'sandeepgsskp@gmail.com', '9462254136', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (72, 'ARUNB KUMAR', 'MEENA', 'arunchanda89@gmail.com', '9414765081', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (73, 'ARUN KUMAR', 'MEENA', 'arunchanda89@gmail.com', '9414765081', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (74, 'mukesh', 'khoda', 'musekhoda@gmail.com', '9785017172', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (75, 'laxmi narayan', 'bairwa', 'laxmikantvermaikv431@gmail.com', '8619655092', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (76, 'trgrfrtgtrg', 'rgrtfgrfr', NULL, '9414200155', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (77, 'Vinod', 'Yadav', NULL, '6376292969', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (78, 'Vinod', 'Yadav', NULL, '6376292969', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (79, 'Vinod', 'Yadav', NULL, '6376292969', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (80, 'Sunil', 'Jatawat', 'lnmiit', '9024047948', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (81, 'Sunil', 'Jatawat', NULL, '9024047948', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (82, 'Vala', 'Ram', 'valaramchoudhari96@gmail.com', '8890879645', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (83, 'Afeef', NULL, NULL, '7664059604', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (84, 'Ram', 'Das', 'jyotiamardas@gmail.com', '8822457429', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (85, 'Jitu', 'Das', 'jitutapandas@gmail.com', '7002891363', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (86, 'rahul', 'pindyar', 'rahulpindyar95@gamil com', '9024505996', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (87, 'Sujal', 'Sahu', 'sujals342@gmail.com', '7737469499', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (88, 'preeti sharma', NULL, 'preetisawasthi@gmail.com', '9001027484', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (89, 'ramawatar', 'yadav', 'yadavram.68@gmail.com', '9214536511', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (90, 'pradeepsingh', 'rathore', 'pradeeprathore12371@gmail.com', '9413454777', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (91, 'Shankar Lal', 'Sad', 'shankarlalswami320@gmail.vom', '9983435942', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (92, 'ss', 'ss', NULL, '8765432100', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (93, 'Ashok', 'Prajapat', 'ashokkumhar141990@gmail.com', '9828333328', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (94, 'sharma', 'kumar', NULL, '9602790699', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (95, 'Pranshu', NULL, 'pranshubharia@gmail.com', '9610654707', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (96, 'UMAR', 'BAIG', 'umarbaigbahter@gmail.com', '9772176231', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (97, 'test', 'test', 'dsfdas@fds.com', '9867898767', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30');
INSERT INTO public.hardspot_hardspotcontributors VALUES (98, 'Sanjay ', 'Kumar sharma', 'sharmasanjay01980@gmail.com', '9414861231', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.739167+05:30');


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_roles VALUES (1, 'admin', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30');
INSERT INTO public.user_roles VALUES (2, 'user', '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30');


--
-- Data for Name: user_userdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_userdetails VALUES (1, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 1, 1);
INSERT INTO public.user_userdetails VALUES (2, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 2, 1);
INSERT INTO public.user_userdetails VALUES (3, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 2, 1);
INSERT INTO public.user_userdetails VALUES (4, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 2, 1);
INSERT INTO public.user_userdetails VALUES (5, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 2, 1);
INSERT INTO public.user_userdetails VALUES (6, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 2, 1);
INSERT INTO public.user_userdetails VALUES (7, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 2, 1);
INSERT INTO public.user_userdetails VALUES (8, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 2, 1);
INSERT INTO public.user_userdetails VALUES (9, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 2, 1);
INSERT INTO public.user_userdetails VALUES (10, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 2, 1);
INSERT INTO public.user_userdetails VALUES (11, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 1, 1);
INSERT INTO public.user_userdetails VALUES (12, '2019-02-22 12:50:44.683792+05:30', '2019-02-22 12:50:44.683792+05:30', 2, 1);


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

