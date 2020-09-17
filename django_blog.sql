--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO xinyuwen;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO xinyuwen;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO xinyuwen;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO xinyuwen;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO xinyuwen;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO xinyuwen;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO xinyuwen;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO xinyuwen;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO xinyuwen;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO xinyuwen;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO xinyuwen;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO xinyuwen;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: xinyuwen
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


ALTER TABLE public.django_admin_log OWNER TO xinyuwen;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO xinyuwen;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO xinyuwen;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO xinyuwen;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO xinyuwen;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO xinyuwen;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO xinyuwen;

--
-- Name: posts_comment; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.posts_comment (
    id integer NOT NULL,
    username character varying(120) NOT NULL,
    email character varying(254),
    body text NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    active boolean NOT NULL,
    posts_id integer NOT NULL
);


ALTER TABLE public.posts_comment OWNER TO xinyuwen;

--
-- Name: posts_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.posts_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_comment_id_seq OWNER TO xinyuwen;

--
-- Name: posts_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.posts_comment_id_seq OWNED BY public.posts_comment.id;


--
-- Name: posts_post; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.posts_post (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    slug character varying(250) NOT NULL,
    body text NOT NULL,
    publish timestamp with time zone NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    status character varying(10) NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.posts_post OWNER TO xinyuwen;

--
-- Name: posts_post_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.posts_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_post_id_seq OWNER TO xinyuwen;

--
-- Name: posts_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.posts_post_id_seq OWNED BY public.posts_post.id;


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO xinyuwen;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO xinyuwen;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO xinyuwen;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO xinyuwen;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: posts_comment id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.posts_comment ALTER COLUMN id SET DEFAULT nextval('public.posts_comment_id_seq'::regclass);


--
-- Name: posts_post id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.posts_post ALTER COLUMN id SET DEFAULT nextval('public.posts_post_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: xinyuwen
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
25	Can add post	7	add_post
26	Can change post	7	change_post
27	Can delete post	7	delete_post
28	Can view post	7	view_post
29	Can add comment	8	add_comment
30	Can change comment	8	change_comment
31	Can delete comment	8	delete_comment
32	Can view comment	8	view_comment
33	Can add tag	9	add_tag
34	Can change tag	9	change_tag
35	Can delete tag	9	delete_tag
36	Can view tag	9	view_tag
37	Can add tagged item	10	add_taggeditem
38	Can change tagged item	10	change_taggeditem
39	Can delete tagged item	10	delete_taggeditem
40	Can view tagged item	10	view_taggeditem
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$huKHcO3zeuiD$ZNup+sNx2Iak+Jf34ouFwsODa0p47jF+5WL1oxrPp3I=	2020-09-16 12:47:28.346845-07	t	xinyuwen				t	t	2020-09-16 03:10:51.749338-07
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-09-16 03:11:56.780519-07	1	The First Post	1	[{"added": {}}]	7	1
2	2020-09-16 03:23:01.034035-07	2	Forrest Gump	1	[{"added": {}}]	7	1
3	2020-09-16 03:25:42.978579-07	3	House of Cards	1	[{"added": {}}]	7	1
4	2020-09-16 03:27:30.390454-07	4	World of Warcraft	1	[{"added": {}}]	7	1
5	2020-09-16 03:29:04.827472-07	3	series	3		9	1
6	2020-09-16 03:29:22.27794-07	4	Shows	2	[{"changed": {"fields": ["Name", "Slug"]}}]	9	1
7	2020-09-16 12:49:33.311959-07	5	The Shawshank Redemption	1	[{"added": {}}]	7	1
8	2020-09-16 12:51:25.869264-07	6	The Lord of the Rings	1	[{"added": {}}]	7	1
9	2020-09-16 12:52:57.453836-07	7	Game of Thrones	1	[{"added": {}}]	7	1
10	2020-09-16 12:54:01.348741-07	1	The First Post	2	[{"changed": {"fields": ["Tags"]}}]	7	1
11	2020-09-16 12:56:23.803649-07	8	Hypertext Transfer Protocol	1	[{"added": {}}]	7	1
12	2020-09-16 12:58:36.127358-07	9	Secure Shell	1	[{"added": {}}]	7	1
13	2020-09-16 12:59:54.763129-07	10	Gone with the Wind	1	[{"added": {}}]	7	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	posts	post
8	posts	comment
9	taggit	tag
10	taggit	taggeditem
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-09-15 22:23:44.359261-07
2	auth	0001_initial	2020-09-15 22:23:44.446476-07
3	admin	0001_initial	2020-09-15 22:23:44.534477-07
4	admin	0002_logentry_remove_auto_add	2020-09-15 22:23:44.557073-07
5	admin	0003_logentry_add_action_flag_choices	2020-09-15 22:23:44.572245-07
6	contenttypes	0002_remove_content_type_name	2020-09-15 22:23:44.606245-07
7	auth	0002_alter_permission_name_max_length	2020-09-15 22:23:44.617035-07
8	auth	0003_alter_user_email_max_length	2020-09-15 22:23:44.637427-07
9	auth	0004_alter_user_username_opts	2020-09-15 22:23:44.654968-07
10	auth	0005_alter_user_last_login_null	2020-09-15 22:23:44.675024-07
11	auth	0006_require_contenttypes_0002	2020-09-15 22:23:44.67994-07
12	auth	0007_alter_validators_add_error_messages	2020-09-15 22:23:44.691316-07
13	auth	0008_alter_user_username_max_length	2020-09-15 22:23:44.717206-07
14	auth	0009_alter_user_last_name_max_length	2020-09-15 22:23:44.733938-07
15	auth	0010_alter_group_name_max_length	2020-09-15 22:23:44.75845-07
16	auth	0011_update_proxy_permissions	2020-09-15 22:23:44.790499-07
17	auth	0012_alter_user_first_name_max_length	2020-09-15 22:23:44.810447-07
18	taggit	0001_initial	2020-09-15 22:23:44.843793-07
19	taggit	0002_auto_20150616_2121	2020-09-15 22:23:44.868917-07
20	taggit	0003_taggeditem_add_unique_index	2020-09-15 22:23:44.878369-07
21	posts	0001_initial	2020-09-15 22:23:44.928366-07
22	posts	0002_auto_20200509_1839	2020-09-15 22:23:44.958822-07
23	posts	0003_auto_20200906_0451	2020-09-15 22:23:44.981478-07
24	sessions	0001_initial	2020-09-15 22:23:44.990662-07
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
kyvarwl5xtr6ata96wusudajre6y34ua	.eJxVjEEOwiAQRe_C2pDS0s7g0r1nIAwzSNVAUtqV8e7apAvd_vfefykftjX7rcniZ1ZnZdTpd6MQH1J2wPdQblXHWtZlJr0r-qBNXyvL83K4fwc5tPytCbnvUCbECFHYCIWhI5vMgMiYDBA4Jy6AIKfoRksOptg7BBiNWFTvD_meOAw:1kIUP7:ZjKK_1lEk9E8hKw1ZY_2-pSDub3ZzxjR4EOmNe_WFyE	2020-09-30 03:11:09.678972-07
j49pgljodzs3q2xn2zzuo8nr7k0qjlg3	.eJxVjEEOwiAQRe_C2pDS0s7g0r1nIAwzSNVAUtqV8e7apAvd_vfefykftjX7rcniZ1ZnZdTpd6MQH1J2wPdQblXHWtZlJr0r-qBNXyvL83K4fwc5tPytCbnvUCbECFHYCIWhI5vMgMiYDBA4Jy6AIKfoRksOptg7BBiNWFTvD_meOAw:1kIdOq:PrIvnlzc7fCSlLHMDaSHw0q8IcOAC3EOnL54acx9h-M	2020-09-30 12:47:28.41363-07
\.


--
-- Data for Name: posts_comment; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.posts_comment (id, username, email, body, created, updated, active, posts_id) FROM stdin;
1	Xinyu	\N	Test comment	2020-09-16 03:15:40.768803-07	2020-09-16 03:15:40.768824-07	t	1
2	Xinyu	\N	https://en.wikipedia.org/wiki/World_of_Warcraft	2020-09-16 03:30:18.630541-07	2020-09-16 03:30:18.630572-07	t	4
3	Xinyu	\N	https://en.wikipedia.org/wiki/House_of_Cards_(American_TV_series)	2020-09-16 03:30:41.918459-07	2020-09-16 03:30:41.918483-07	t	3
4	Xinyu	\N	https://en.wikipedia.org/wiki/Forrest_Gump	2020-09-16 03:31:04.934107-07	2020-09-16 03:31:04.93413-07	t	2
5	Xinyu	\N	https://en.wikipedia.org/wiki/The_Lord_of_the_Rings_(film_series)	2020-09-16 13:02:19.313783-07	2020-09-16 13:02:19.313815-07	t	6
6	Xinyu	\N	https://en.wikipedia.org/wiki/The_Shawshank_Redemption	2020-09-16 13:03:03.096074-07	2020-09-16 13:03:03.096098-07	t	5
7	Xinyu	\N	https://en.wikipedia.org/wiki/Gone_with_the_Wind_(film)	2020-09-16 13:04:18.71756-07	2020-09-16 13:04:18.717581-07	t	10
8	Xinyu	\N	https://en.wikipedia.org/wiki/Game_of_Thrones	2020-09-16 13:04:46.176055-07	2020-09-16 13:04:46.176079-07	t	7
9	Xinyu	\N	https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol	2020-09-16 13:05:11.985809-07	2020-09-16 13:05:11.985851-07	t	8
10	Xinyu	\N	https://en.wikipedia.org/wiki/Ssh_(Secure_Shell)	2020-09-16 13:05:31.727805-07	2020-09-16 13:05:31.727841-07	t	9
\.


--
-- Data for Name: posts_post; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.posts_post (id, title, slug, body, publish, created, updated, status, author_id) FROM stdin;
2	Forrest Gump	forrest-gump	Forrest Gump is a 1994 American comedy-drama film directed by Robert Zemeckis and written by Eric Roth. It is based on the 1986 novel of the same name by Winston Groom and stars Tom Hanks, Robin Wright, Gary Sinise, Mykelti Williamson and Sally Field. The story depicts several decades in the life of Forrest Gump (Hanks), a slow-witted but kind-hearted man from Alabama who witnesses and unwittingly influences several defining historical events in the 20th century United States. The film differs substantially from the novel.\r\n\r\nPrincipal photography took place in late 1993, mainly in Georgia, North Carolina and South Carolina. Extensive visual effects were used to incorporate Hanks into archived footage and to develop other scenes. The soundtrack features songs reflecting the different periods seen in the film.\r\n\r\nForrest Gump was released in the United States on July 6, 1994 and received favorable reviews for Zemeckis' directing, Sinise and Hanks' performances, the visual effects, the music and the screenplay. The film was an enormous success at the box office; it became the top-grossing film in America released that year and earned over US$677 million worldwide during its theatrical run, making it the second highest-grossing film of 1994, behind The Lion King. The soundtrack sold over 12 million copies. Forrest Gump won the Academy Awards for Best Picture, Best Director, Best Actor for Hanks, Best Adapted Screenplay, Best Visual Effects, and Best Film Editing. It received many award nominations, including Golden Globes, British Academy Film Awards and Screen Actors Guild Awards.\r\n\r\nVarying interpretations have been made of the protagonist and the film's political symbolism. In 2011, the Library of Congress selected the film for preservation in the United States National Film Registry as being "culturally, historically, or aesthetically significant".	2020-09-16 03:21:14-07	2020-09-16 03:23:01.009865-07	2020-09-16 03:23:01.009903-07	published	1
3	House of Cards	house-cards	House of Cards is an American political thriller web television series created by Beau Willimon. It is an adaptation of the 1990 BBC miniseries of the same name and based on the 1989 novel of the same name by Michael Dobbs. The first 13-episode season was released on February 1, 2013, on the streaming service Netflix.\r\n\r\nHouse of Cards is set in Washington, D.C. and is the story of Congressman Frank Underwood (Kevin Spacey), a Democrat from South Carolina's 5th congressional district and House Majority Whip, and his equally ambitious wife Claire Underwood (Robin Wright). Frank is passed over for appointment as Secretary of State, so he initiates an elaborate plan to attain power, aided by Claire. The series deals with themes of ruthless pragmatism, manipulation, betrayal, and power.\r\n\r\nHouse of Cards received positive reviews and several award nominations, including 33 Primetime Emmy Award nominations, including for Outstanding Drama Series, Outstanding Lead Actor for Spacey, and Outstanding Lead Actress for Wright. It is the first original online-only web television series to receive major Emmy nominations. The show also earned eight Golden Globe Award nominations, with Wright winning for Best Actress – Television Series Drama in 2014 and Spacey winning for Best Actor – Television Series Drama in 2015.\r\n\r\nIn 2017, following sexual misconduct allegations against Spacey, Netflix announced that Spacey would be removed from the show. The sixth and final season was produced and released in 2018 without Spacey's involvement; in the narrative, his character Frank Underwood was killed off between seasons.	2020-09-16 03:23:06-07	2020-09-16 03:25:42.958844-07	2020-09-16 03:25:42.958866-07	published	1
4	World of Warcraft	world-warcraft	World of Warcraft (WoW) is a massively multiplayer online role-playing game (MMORPG) released in 2004 by Blizzard Entertainment. It is the fourth released game set in the Warcraft fantasy universe. World of Warcraft takes place within the Warcraft world of Azeroth, approximately four years after the events at the conclusion of Blizzard's previous Warcraft release, Warcraft III: The Frozen Throne. The game was announced in 2001, and was released for the 10th anniversary of the Warcraft franchise on November 23, 2004. Since launch, World of Warcraft has had eight major expansion packs produced for it: The Burning Crusade, Wrath of the Lich King, Cataclysm, Mists of Pandaria, Warlords of Draenor, Legion, Battle for Azeroth, and Shadowlands.\r\n\r\nWorld of Warcraft was the world's most popular MMORPG by player count of nearly 10 million in 2009. The game had a total of over a hundred million registered accounts by 2014. By 2017, the game had grossed over $9.23 billion in revenue, making it one of the highest-grossing video game franchises of all time. At BlizzCon 2017, a vanilla version of the game titled World of Warcraft Classic was announced, which planned to provide a way to experience the base game before any of its expansions launched. It was released in August 2019.	2020-09-16 03:25:46-07	2020-09-16 03:27:30.374557-07	2020-09-16 03:27:30.374579-07	published	1
5	The Shawshank Redemption	shawshank-redemption	The Shawshank Redemption is a 1994 American drama film written and directed by Frank Darabont, based on the 1982 Stephen King novella Rita Hayworth and Shawshank Redemption. It tells the story of banker Andy Dufresne (Tim Robbins), who is sentenced to life in Shawshank State Penitentiary for the murders of his wife and her lover, despite his claims of innocence. Over the following two decades, he befriends a fellow prisoner, contraband smuggler Ellis "Red" Redding (Morgan Freeman), and becomes instrumental in a money-laundering operation led by the prison warden Samuel Norton (Bob Gunton). William Sadler, Clancy Brown, Gil Bellows, and James Whitmore appear in supporting roles.\r\n\r\nDarabont purchased the film rights to King's story in 1987, but development did not begin until five years later, when he wrote the script over an eight-week period. Two weeks after submitting his script to Castle Rock Entertainment, Darabont secured a $25 million budget to produce The Shawshank Redemption, which started pre-production in January 1993. While the film is set in Maine, principal photography took place from June to August 1993 almost entirely in Mansfield, Ohio, with the Ohio State Reformatory serving as the eponymous penitentiary. The project attracted many stars of the time for the role of Andy, including Tom Hanks, Tom Cruise, and Kevin Costner. Thomas Newman provided the film's score.\r\n\r\nWhile The Shawshank Redemption received positive reviews on its release, particularly for its story and the performances of Robbins and Freeman, it was a box-office disappointment, earning only $16 million during its initial theatrical run. Many reasons were cited for its failure at the time, including competition from films such as Pulp Fiction and Forrest Gump, to the general unpopularity of prison films, lack of female characters, and even the title, which was considered to be confusing for audiences. It went on to receive multiple award nominations, including seven Academy Award nominations, and a theatrical re-release that, combined with international takings, increased the film's box-office gross to $58.3 million.\r\n\r\nOver 320,000 VHS copies were shipped throughout the United States, and on the strength of its award nominations and word of mouth, it became one of the top rented films of 1995. The broadcast rights were acquired following the purchase of Castle Rock by Turner Broadcasting System, and it was shown regularly on the TNT network starting in 1997, further increasing its popularity. It is now considered by many to be one of the greatest films of the 1990s. Decades after its release, the film was still broadcast regularly, and is popular in several countries, with audience members and celebrities citing it as a source of inspiration, and naming the film as a favorite in various surveys. In 2015, the United States Library of Congress selected the film for preservation in the National Film Registry, finding it "culturally, historically, or aesthetically significant".	2020-09-16 12:47:36-07	2020-09-16 12:49:33.292374-07	2020-09-16 12:49:33.292391-07	published	1
6	The Lord of the Rings	lord-rings	The Lord of the Rings is a film series of three epic fantasy adventure films directed by Peter Jackson, based on the novel written by J. R. R. Tolkien. The films are subtitled The Fellowship of the Ring (2001), The Two Towers (2002) and The Return of the King (2003). Produced and distributed by New Line Cinema with the co-production of WingNut Films, it is an international venture between New Zealand and the United States. The films feature an ensemble cast including Elijah Wood, Ian McKellen, Liv Tyler, Viggo Mortensen, Sean Astin, Cate Blanchett, John Rhys-Davies, Christopher Lee, Billy Boyd, Dominic Monaghan, Orlando Bloom, Hugo Weaving, Andy Serkis and Sean Bean.\r\n\r\nSet in the fictional world of Middle-earth, the films follow the hobbit Frodo Baggins as he and the Fellowship embark on a quest to destroy the One Ring, to ensure the destruction of its maker, the Dark Lord Sauron. The Fellowship eventually splits up and Frodo continues the quest with his loyal companion Sam and the treacherous Gollum. Meanwhile, Aragorn, heir in exile to the throne of Gondor, along with Legolas, Gimli, Boromir, Merry, Pippin and the wizard Gandalf, unite to rally the Free Peoples of Middle-earth in the War of the Ring in order to aid Frodo by distracting Sauron's attention.\r\n\r\nThe three films were shot simultaneously and entirely in Jackson's native New Zealand from 11 October 1999 until 22 December 2000, with pick-up shots done from 2001 to 2004. It was one of the biggest and most ambitious film projects ever undertaken, with a budget of $281 million. The first film in the series premiered at the Odeon Leicester Square in London on 10 December 2001; the second film premiered at the Ziegfeld Theatre in New York City on 5 December 2002; the third film premiered at the Embassy Theatre in Wellington on 1 December 2003. An extended edition of each film was released on home video a year after its theatrical release.\r\n\r\nThe Lord of the Rings is widely regarded as one of the greatest and most influential film series ever made. It was a major financial success and is among the highest-grossing film series of all time with $2.981 billion in worldwide receipts. Each film was critically acclaimed and heavily awarded, the series winning 17 out of its 30 Academy Award nominations.	2020-09-16 12:49:56-07	2020-09-16 12:51:25.85928-07	2020-09-16 12:51:25.859299-07	published	1
1	The First Post	first-post	Hello, World!	2020-09-16 03:11:27-07	2020-09-16 03:11:56.758026-07	2020-09-16 12:54:01.328519-07	published	1
7	Game of Thrones	game-thrones	Game of Thrones is an American fantasy drama television series created by David Benioff and D. B. Weiss for HBO. It is an adaptation of A Song of Ice and Fire, George R. R. Martin's series of fantasy novels, the first of which is A Game of Thrones (1996). The show was both produced and filmed in Belfast and elsewhere in the United Kingdom. Filming locations also included Canada, Croatia, Iceland, Malta, Morocco, and Spain. The series premiered on HBO in the United States on April 17, 2011, and concluded on May 19, 2019, with 73 episodes broadcast over eight seasons.\r\n\r\nSet on the fictional continents of Westeros and Essos, Game of Thrones has a large ensemble cast and follows several story arcs. One arc is about the Iron Throne of the Seven Kingdoms of Westeros and follows a web of alliances and conflicts among the noble dynasties, either vying to claim the throne or fighting for independence from it. Another focuses on the last descendant of the realm's deposed ruling dynasty, who has been exiled to Essos and is plotting a return to the throne. A third story arc follows the Night's Watch, a brotherhood defending the realm against the fierce peoples and legendary creatures of the North.\r\n\r\nGame of Thrones attracted a record viewership on HBO and has a broad, active, and international fan base. Critics praised the series for its acting, complex characters, story, scope, and production values, although its frequent use of nudity and violence (including sexual violence) was criticized. The final season, especially its last two episodes, received significant criticism for its condensed story and creative decisions, with many considering it a disappointing conclusion. The series received 58 Primetime Emmy Awards, the most by a drama series, including Outstanding Drama Series in 2015, 2016, 2018, and 2019. Its other awards and nominations include three Hugo Awards for Best Dramatic Presentation, a Peabody Award, and five nominations for the Golden Globe Award for Best Television Series – Drama. Many critics and publications have named the show as one of the best television series of all time.	2020-09-16 12:52:21-07	2020-09-16 12:52:57.425001-07	2020-09-16 12:52:57.425018-07	published	1
8	Hypertext Transfer Protocol	hypertext-transfer-protocol	The Hypertext Transfer Protocol (HTTP) is an application layer protocol for distributed, collaborative, hypermedia information systems. HTTP is the foundation of data communication for the World Wide Web, where hypertext documents include hyperlinks to other resources that the user can easily access, for example by a mouse click or by tapping the screen in a web browser.\r\n\r\nDevelopment of HTTP was initiated by Tim Berners-Lee at CERN in 1989. Development of early HTTP Requests for Comments (RFCs) was a coordinated effort by the Internet Engineering Task Force (IETF) and the World Wide Web Consortium (W3C), with work later moving to the IETF.\r\n\r\nHTTP/1.1 was first documented in RFC 2068 in 1997. That specification was obsoleted by RFC 2616 in 1999, which was likewise replaced by the RFC 7230 family of RFCs in 2014.\r\n\r\nHTTP/2 is a more efficient expression of HTTP's semantics "on the wire", and was published in 2015; it is now supported by virtually all web browsers and major web servers over Transport Layer Security (TLS) using an Application-Layer Protocol Negotiation (ALPN) extension where TLS 1.2 or newer is required.\r\n\r\nHTTP/3 is the proposed successor to HTTP/2, which is already in use on the web, using UDP instead of TCP for the underlying transport protocol. Like HTTP/2, it does not obsolete previous major versions of the protocol. Support for HTTP/3 was added to Cloudflare and Google Chrome in September 2019, and can be enabled in the stable versions of Chrome and Firefox.	2020-09-16 12:54:04-07	2020-09-16 12:56:23.790209-07	2020-09-16 12:56:23.790233-07	published	1
9	Secure Shell	secure-shell	Secure Shell (SSH) is a cryptographic network protocol for operating network services securely over an unsecured network. Typical applications include remote command-line, login, and remote command execution, but any network service can be secured with SSH.\r\n\r\nSSH provides a secure channel over an unsecured network by using a client–server architecture, connecting an SSH client application with an SSH server. The protocol specification distinguishes between two major versions, referred to as SSH-1 and SSH-2. The standard TCP port for SSH is 22. SSH is generally used to access Unix-like operating systems, but it can also be used on Microsoft Windows. Windows 10 uses OpenSSH as its default SSH client and SSH server.\r\n\r\nDespite popular misconception, SSH is not an implementation of Telnet with cryptography provided by the Secure Sockets Layer (SSL).\r\n\r\nSSH was designed as a replacement for Telnet and for unsecured remote shell protocols such as the Berkeley rsh and the related rlogin and rexec protocols. Those protocols send information, notably passwords, in plaintext, rendering them susceptible to interception and disclosure using packet analysis. The encryption used by SSH is intended to provide confidentiality and integrity of data over an unsecured network, such as the Internet, although files leaked by Edward Snowden indicate that the National Security Agency can sometimes decrypt SSH, allowing them to read, modify and selectively suppress the contents of SSH sessions.\r\n\r\nSSH can also be run using SCTP rather than TCP as the connection oriented transport layer protocol.\r\n\r\nThe IANA has assigned TCP port 22, UDP port 22 and SCTP port 22 for this protocol.	2020-09-16 12:57:32-07	2020-09-16 12:58:36.117648-07	2020-09-16 12:58:36.11767-07	published	1
10	Gone with the Wind	gone-wind	Gone with the Wind is a 1939 American epic historical romance film adapted from the 1936 novel by Margaret Mitchell. The film was produced by David O. Selznick of Selznick International Pictures and directed by Victor Fleming. Set in the American South against the backdrop of the American Civil War and the Reconstruction era, the film tells the story of Scarlett O'Hara, the strong-willed daughter of a Georgia plantation owner. It follows her romantic pursuit of Ashley Wilkes, who is married to his cousin, Melanie Hamilton, and her subsequent marriage to Rhett Butler. The leading roles are played by Vivien Leigh (Scarlett), Clark Gable (Rhett), Leslie Howard (Ashley), and Olivia de Havilland (Melanie).\r\n\r\nProduction was difficult from the start. Filming was delayed for two years because of Selznick's determination to secure Gable for the role of Rhett Butler, and the "search for Scarlett" led to 1,400 women being interviewed for the part. The original screenplay was written by Sidney Howard and underwent many revisions by several writers in an attempt to get it down to a suitable length. The original director, George Cukor, was fired shortly after filming began and was replaced by Fleming, who in turn was briefly replaced by Sam Wood while Fleming took some time off due to exhaustion.\r\n\r\nThe film received positive reviews upon its release in December 1939, although some reviewers found it to be too long. The casting was widely praised, and many reviewers found Leigh especially suited to her role as Scarlett. At the 12th Academy Awards, it received ten Academy Awards (eight competitive, two honorary) from thirteen nominations, including wins for Best Picture, Best Director (Fleming), Best Adapted Screenplay (posthumously awarded to Sidney Howard), Best Actress (Leigh), and Best Supporting Actress (Hattie McDaniel, becoming the first African American to win an Academy Award). It set records for the total number of wins and nominations at the time.\r\n\r\nGone with the Wind was immensely popular when first released. It became the highest-earning film made up to that point, and held the record for over a quarter of a century. When adjusted for monetary inflation, it is still the highest-grossing film in history. It was re-released periodically throughout the 20th century and became ingrained in popular culture. Although the film has been criticized as historical revisionism glorifying slavery, it has been credited with triggering changes in the way in which African Americans are depicted cinematically. The film is regarded as one of the greatest films of all time; it has placed in the top ten of the American Film Institute's list of the top 100 American films since the list's inception in 1998. In 1989, the United States Library of Congress selected it for preservation in the National Film Registry.	2020-09-16 12:59:29-07	2020-09-16 12:59:54.749491-07	2020-09-16 12:59:54.749512-07	published	1
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1	Dev	dev
2	Movies	movies
5	Games	games
4	Shows	shows
6	Test	test
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
1	1	7	1
2	2	7	2
4	3	7	4
5	4	7	5
6	5	7	2
7	6	7	2
8	7	7	4
9	1	7	6
10	8	7	1
11	9	7	1
12	10	7	2
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 13, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);


--
-- Name: posts_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.posts_comment_id_seq', 10, true);


--
-- Name: posts_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.posts_post_id_seq', 10, true);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 6, true);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 12, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: posts_comment posts_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.posts_comment
    ADD CONSTRAINT posts_comment_pkey PRIMARY KEY (id);


--
-- Name: posts_post posts_post_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: posts_comment_posts_id_89d33674; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX posts_comment_posts_id_89d33674 ON public.posts_comment USING btree (posts_id);


--
-- Name: posts_post_author_id_fe5487bf; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX posts_post_author_id_fe5487bf ON public.posts_post USING btree (author_id);


--
-- Name: posts_post_slug_6e9097e5; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX posts_post_slug_6e9097e5 ON public.posts_post USING btree (slug);


--
-- Name: posts_post_slug_6e9097e5_like; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX posts_post_slug_6e9097e5_like ON public.posts_post USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_comment posts_comment_posts_id_89d33674_fk_posts_post_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.posts_comment
    ADD CONSTRAINT posts_comment_posts_id_89d33674_fk_posts_post_id FOREIGN KEY (posts_id) REFERENCES public.posts_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_post posts_post_author_id_fe5487bf_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_author_id_fe5487bf_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

