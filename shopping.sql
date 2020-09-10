--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Ubuntu 12.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.4 (Ubuntu 12.4-0ubuntu0.20.04.1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO myprojectuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO myprojectuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO myprojectuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO myprojectuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO myprojectuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO myprojectuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: myprojectuser
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


ALTER TABLE public.auth_user OWNER TO myprojectuser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO myprojectuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO myprojectuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO myprojectuser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO myprojectuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO myprojectuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: myprojectuser
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


ALTER TABLE public.django_admin_log OWNER TO myprojectuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO myprojectuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO myprojectuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO myprojectuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO myprojectuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO myprojectuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_redirect; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.django_redirect (
    id integer NOT NULL,
    site_id integer NOT NULL,
    old_path character varying(200) NOT NULL,
    new_path character varying(200) NOT NULL
);


ALTER TABLE public.django_redirect OWNER TO myprojectuser;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.django_redirect_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_redirect_id_seq OWNER TO myprojectuser;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.django_redirect_id_seq OWNED BY public.django_redirect.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO myprojectuser;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO myprojectuser;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO myprojectuser;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: main_brand; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.main_brand (
    id integer NOT NULL,
    brand_name character varying(30) NOT NULL
);


ALTER TABLE public.main_brand OWNER TO myprojectuser;

--
-- Name: main_brand_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.main_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_brand_id_seq OWNER TO myprojectuser;

--
-- Name: main_brand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.main_brand_id_seq OWNED BY public.main_brand.id;


--
-- Name: main_category; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.main_category (
    id integer NOT NULL,
    category_name character varying(80) NOT NULL,
    sub_category character varying(80) NOT NULL
);


ALTER TABLE public.main_category OWNER TO myprojectuser;

--
-- Name: main_category_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.main_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_category_id_seq OWNER TO myprojectuser;

--
-- Name: main_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.main_category_id_seq OWNED BY public.main_category.id;


--
-- Name: main_customer; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.main_customer (
    id integer NOT NULL,
    customer_username character varying(80) NOT NULL,
    customer_firstname character varying(20) NOT NULL,
    customer_lastname character varying(20) NOT NULL,
    customer_dob date,
    customer_gender character varying(9),
    customer_mobile bigint,
    customer_email character varying(254) NOT NULL,
    customer_password character varying(150) NOT NULL,
    customer_lastlogin timestamp without time zone NOT NULL
);


ALTER TABLE public.main_customer OWNER TO myprojectuser;

--
-- Name: main_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.main_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_customer_id_seq OWNER TO myprojectuser;

--
-- Name: main_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.main_customer_id_seq OWNED BY public.main_customer.id;


--
-- Name: main_product; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.main_product (
    id integer NOT NULL,
    product_name character varying(80) NOT NULL,
    product_price numeric(5,2) NOT NULL,
    "product_featureImage" character varying(100) NOT NULL,
    brand_id_id integer NOT NULL,
    category_id_id integer NOT NULL
);


ALTER TABLE public.main_product OWNER TO myprojectuser;

--
-- Name: main_product_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.main_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_product_id_seq OWNER TO myprojectuser;

--
-- Name: main_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.main_product_id_seq OWNED BY public.main_product.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_redirect id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_redirect ALTER COLUMN id SET DEFAULT nextval('public.django_redirect_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: main_brand id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.main_brand ALTER COLUMN id SET DEFAULT nextval('public.main_brand_id_seq'::regclass);


--
-- Name: main_category id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.main_category ALTER COLUMN id SET DEFAULT nextval('public.main_category_id_seq'::regclass);


--
-- Name: main_customer id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.main_customer ALTER COLUMN id SET DEFAULT nextval('public.main_customer_id_seq'::regclass);


--
-- Name: main_product id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.main_product ALTER COLUMN id SET DEFAULT nextval('public.main_product_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: myprojectuser
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
25	Can add site	7	add_site
26	Can change site	7	change_site
27	Can delete site	7	delete_site
28	Can view site	7	view_site
29	Can add customer	8	add_customer
30	Can change customer	8	change_customer
31	Can delete customer	8	delete_customer
32	Can view customer	8	view_customer
33	Can add category	9	add_category
34	Can change category	9	change_category
35	Can delete category	9	delete_category
36	Can view category	9	view_category
41	Can add brand	11	add_brand
42	Can change brand	11	change_brand
43	Can delete brand	11	delete_brand
44	Can view brand	11	view_brand
45	Can add product	12	add_product
46	Can change product	12	change_product
47	Can delete product	12	delete_product
48	Can view product	12	view_product

29	Can add category	8	add_category
30	Can change category	8	change_category
31	Can delete category	8	delete_category
32	Can view category	8	view_category
33	Can add customer	9	add_customer
34	Can change customer	9	change_customer
35	Can delete customer	9	delete_customer
36	Can view customer	9	view_customer

\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$FmAfHlhNVz49$0W2wWa3VXRSJ+8jTzc5dzCKbbbofJN/9hiv32rcxW+M=	2020-09-07 10:30:59.804383+06:30	t	admin			shunainghtet98@gmail.com	t	t	2020-09-03 15:32:09.563263+06:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
17	2020-09-05 14:06:22.896054+06:30	1	Brand object (1)	1	[{"added": {}}]	11	1
18	2020-09-05 14:14:57.275379+06:30	2	Brand object (2)	1	[{"added": {}}]	11	1
19	2020-09-05 14:15:12.654138+06:30	3	Brand object (3)	1	[{"added": {}}]	11	1
20	2020-09-05 14:15:28.093851+06:30	4	Brand object (4)	1	[{"added": {}}]	11	1
21	2020-09-05 14:15:40.916358+06:30	5	Brand object (5)	1	[{"added": {}}]	11	1
22	2020-09-05 14:16:10.742325+06:30	3	Brand object (3)	3		11	1
23	2020-09-07 10:40:26.109236+06:30	1	Product object (1)	1	[{"added": {}}]	12	1
24	2020-09-07 10:47:31.228286+06:30	2	Product object (2)	1	[{"added": {}}]	12	1
25	2020-09-07 10:56:14.797578+06:30	3	Product object (3)	1	[{"added": {}}]	12	1
26	2020-09-07 11:03:46.250469+06:30	4	Product object (4)	1	[{"added": {}}]	12	1
27	2020-09-07 16:56:11.498013+06:30	1	Product object (1)	2	[{"changed": {"fields": ["Product featureImage"]}}]	12	1
28	2020-09-07 16:56:18.861841+06:30	2	Product object (2)	2	[{"changed": {"fields": ["Product featureImage"]}}]	12	1
29	2020-09-07 16:56:27.904202+06:30	3	Product object (3)	2	[{"changed": {"fields": ["Product featureImage"]}}]	12	1
30	2020-09-07 16:56:34.841122+06:30	4	Product object (4)	2	[{"changed": {"fields": ["Product featureImage"]}}]	12	1
31	2020-09-07 17:24:55.189949+06:30	1	Product object (1)	2	[{"changed": {"fields": ["Product featureImage"]}}]	12	1
32	2020-09-07 17:25:09.340574+06:30	2	Product object (2)	2	[{"changed": {"fields": ["Product featureImage"]}}]	12	1
33	2020-09-07 17:25:27.931829+06:30	3	Product object (3)	2	[{"changed": {"fields": ["Product featureImage"]}}]	12	1
34	2020-09-07 17:26:11.738481+06:30	4	Product object (4)	2	[{"changed": {"fields": ["Product featureImage"]}}]	12	1
35	2020-09-07 17:26:16.071015+06:30	2	Product object (2)	2	[]	12	1
36	2020-09-07 17:26:19.265028+06:30	1	Product object (1)	2	[]	12	1
37	2020-09-07 17:28:39.444076+06:30	5	Product object (5)	1	[{"added": {}}]	12	1
38	2020-09-07 17:39:21.408596+06:30	5	Product object (5)	2	[{"changed": {"fields": ["Product featureImage"]}}]	12	1
39	2020-09-08 10:14:50.991999+06:30	5	Product object (5)	3		12	1
40	2020-09-08 10:14:56.25086+06:30	4	Product object (4)	3		12	1
41	2020-09-08 10:14:59.459833+06:30	3	Product object (3)	3		12	1
42	2020-09-08 10:15:04.222852+06:30	2	Product object (2)	3		12	1
43	2020-09-08 10:15:07.234681+06:30	1	Product object (1)	3		12	1
44	2020-09-08 10:18:43.185282+06:30	6	Product object (6)	1	[{"added": {}}]	12	1
45	2020-09-08 10:18:59.445069+06:30	2	Brand object (2)	2	[]	11	1
46	2020-09-08 10:19:10.511071+06:30	6	Brand object (6)	1	[{"added": {}}]	11	1
47	2020-09-08 10:21:49.900431+06:30	7	Product object (7)	1	[{"added": {}}]	12	1
48	2020-09-08 10:22:29.107724+06:30	8	Product object (8)	1	[{"added": {}}]	12	1
49	2020-09-08 10:53:17.030617+06:30	6	Product object (6)	3		12	1
50	2020-09-08 10:53:21.137007+06:30	7	Product object (7)	3		12	1
51	2020-09-08 10:53:23.850221+06:30	8	Product object (8)	3		12	1
52	2020-09-08 10:53:47.27156+06:30	9	Product object (9)	1	[{"added": {}}]	12	1
53	2020-09-08 10:54:30.115244+06:30	10	Product object (10)	1	[{"added": {}}]	12	1
54	2020-09-08 10:54:56.39277+06:30	11	Product object (11)	1	[{"added": {}}]	12	1
55	2020-09-08 10:55:21.709378+06:30	9	Product object (9)	2	[{"changed": {"fields": ["Product name", "Product price", "Product featureImage"]}}]	12	1
56	2020-09-08 11:17:48.099055+06:30	1	Product object (1)	1	[{"added": {}}]	12	1
57	2020-09-08 11:18:18.494185+06:30	2	Product object (2)	1	[{"added": {}}]	12	1
58	2020-09-08 11:18:43.287793+06:30	3	Product object (3)	1	[{"added": {}}]	12	1
59	2020-09-08 11:28:22.805208+06:30	7	Brand object (7)	1	[{"added": {}}]	11	1
60	2020-09-08 11:29:07.800705+06:30	4	Product object (4)	1	[{"added": {}}]	12	1
61	2020-09-08 11:29:16.630829+06:30	8	Brand object (8)	1	[{"added": {}}]	11	1
62	2020-09-08 11:30:14.462854+06:30	5	Product object (5)	1	[{"added": {}}]	12	1
63	2020-09-08 11:31:36.308994+06:30	6	Product object (6)	1	[{"added": {}}]	12	1
64	2020-09-08 11:36:22.082609+06:30	7	Product object (7)	1	[{"added": {}}]	12	1
65	2020-09-08 11:38:51.853445+06:30	9	Brand object (9)	1	[{"added": {}}]	11	1
66	2020-09-08 11:40:27.80839+06:30	8	Product object (8)	1	[{"added": {}}]	12	1
67	2020-09-08 11:42:26.097161+06:30	10	Brand object (10)	1	[{"added": {}}]	11	1
68	2020-09-08 11:44:08.471065+06:30	9	Product object (9)	1	[{"added": {}}]	12	1
69	2020-09-08 11:44:35.057447+06:30	7	Product object (7)	2	[{"changed": {"fields": ["Product featureImage"]}}]	12	1
70	2020-09-08 11:45:21.741004+06:30	7	Product object (7)	2	[{"changed": {"fields": ["Product featureImage"]}}]	12	1
71	2020-09-08 11:46:30.119931+06:30	8	Product object (8)	2	[{"changed": {"fields": ["Product featureImage"]}}]	12	1
72	2020-09-08 11:47:39.032869+06:30	7	Product object (7)	2	[{"changed": {"fields": ["Product featureImage"]}}]	12	1
73	2020-09-08 11:50:58.712558+06:30	7	Product object (7)	2	[{"changed": {"fields": ["Product featureImage"]}}]	12	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	sites	site

8	main	customer
9	main	category
11	main	brand
12	main	product

8	main	category
9	main	customer

\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;

1	contenttypes	0001_initial	2020-09-04 11:01:46.058836+06:30
2	auth	0001_initial	2020-09-04 11:01:46.115902+06:30
3	admin	0001_initial	2020-09-04 11:01:46.243787+06:30
4	admin	0002_logentry_remove_auto_add	2020-09-04 11:01:46.28525+06:30
5	admin	0003_logentry_add_action_flag_choices	2020-09-04 11:01:46.301304+06:30
6	contenttypes	0002_remove_content_type_name	2020-09-04 11:01:46.319337+06:30
7	auth	0002_alter_permission_name_max_length	2020-09-04 11:01:46.326832+06:30
8	auth	0003_alter_user_email_max_length	2020-09-04 11:01:46.334496+06:30
9	auth	0004_alter_user_username_opts	2020-09-04 11:01:46.34128+06:30
10	auth	0005_alter_user_last_login_null	2020-09-04 11:01:46.349334+06:30
11	auth	0006_require_contenttypes_0002	2020-09-04 11:01:46.35193+06:30
12	auth	0007_alter_validators_add_error_messages	2020-09-04 11:01:46.359031+06:30
13	auth	0008_alter_user_username_max_length	2020-09-04 11:01:46.372737+06:30
14	auth	0009_alter_user_last_name_max_length	2020-09-04 11:01:46.388984+06:30
15	auth	0010_alter_group_name_max_length	2020-09-04 11:01:46.398963+06:30
16	auth	0011_update_proxy_permissions	2020-09-04 11:01:46.406932+06:30
17	auth	0012_alter_user_first_name_max_length	2020-09-04 11:01:46.414634+06:30
18	sessions	0001_initial	2020-09-04 11:01:46.436172+06:30
19	sites	0001_initial	2020-09-04 11:01:46.467168+06:30
20	sites	0002_alter_domain_unique	2020-09-04 11:01:46.483114+06:30
21	main	0001_initial	2020-09-04 11:03:15.814753+06:30
22	main	0002_category	2020-09-05 11:13:25.271974+06:30
26	main	0003_brand	2020-09-05 14:01:15.296753+06:30
27	main	0004_product	2020-09-07 10:31:31.124988+06:30
28	main	0005_auto_20200907_1655	2020-09-07 16:55:24.82428+06:30
29	main	0006_auto_20200907_1740	2020-09-07 17:40:59.770733+06:30
30	main	0007_delete_product	2020-09-08 11:13:55.528269+06:30
31	main	0008_product	2020-09-08 11:14:38.281475+06:30
1	contenttypes	0001_initial	2020-09-07 10:50:15.915785+06:30
2	auth	0001_initial	2020-09-07 10:50:15.986585+06:30
3	admin	0001_initial	2020-09-07 10:50:16.097928+06:30
4	admin	0002_logentry_remove_auto_add	2020-09-07 10:50:16.12138+06:30
5	admin	0003_logentry_add_action_flag_choices	2020-09-07 10:50:16.135469+06:30
6	contenttypes	0002_remove_content_type_name	2020-09-07 10:50:16.154714+06:30
7	auth	0002_alter_permission_name_max_length	2020-09-07 10:50:16.162354+06:30
8	auth	0003_alter_user_email_max_length	2020-09-07 10:50:16.170176+06:30
9	auth	0004_alter_user_username_opts	2020-09-07 10:50:16.177392+06:30
10	auth	0005_alter_user_last_login_null	2020-09-07 10:50:16.184584+06:30
11	auth	0006_require_contenttypes_0002	2020-09-07 10:50:16.187385+06:30
12	auth	0007_alter_validators_add_error_messages	2020-09-07 10:50:16.194463+06:30
13	auth	0008_alter_user_username_max_length	2020-09-07 10:50:16.206129+06:30
14	auth	0009_alter_user_last_name_max_length	2020-09-07 10:50:16.214845+06:30
15	auth	0010_alter_group_name_max_length	2020-09-07 10:50:16.223744+06:30
16	auth	0011_update_proxy_permissions	2020-09-07 10:50:16.23057+06:30
17	auth	0012_alter_user_first_name_max_length	2020-09-07 10:50:16.238248+06:30
18	main	0001_initial	2020-09-07 10:50:16.254236+06:30
19	main	0002_auto_20200907_1048	2020-09-07 10:50:16.261295+06:30
20	sessions	0001_initial	2020-09-07 10:50:16.271724+06:30
21	sites	0001_initial	2020-09-07 10:50:16.285879+06:30
22	sites	0002_alter_domain_unique	2020-09-07 10:50:16.299703+06:30
\.


--
-- Data for Name: django_redirect; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.django_redirect (id, site_id, old_path, new_path) FROM stdin;
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
6eymo6zeblq8wtk1jv5e85z425y1jicf	.eJxVjDsOwjAQBe_iGlmsf2Qp6TlDtF6vcQDZUpxUiLtDpBTQvpl5LzXSupRx7TKPU1JnBerwu0Xih9QNpDvVW9Pc6jJPUW-K3mnX15bkedndv4NCvXxr9GZAITGDc8I-g4D1SBgoWDhxBuaMBhNSdsa6QBGCOLJA3h0lsXp_AN9KOAc:1kDlrG:ajg3K_xPyylqmWYGRB5jDStqOsfiudBNPjahZkpsEv0	2020-09-17 16:18:42.13648+06:30
hlv4j521bzg3qdvkc58yv72875kkkk3g	.eJxVjDsOwjAQBe_iGlmsf2Qp6TlDtF6vcQDZUpxUiLtDpBTQvpl5LzXSupRx7TKPU1JnBerwu0Xih9QNpDvVW9Pc6jJPUW-K3mnX15bkedndv4NCvXxr9GZAITGDc8I-g4D1SBgoWDhxBuaMBhNSdsa6QBGCOLJA3h0lsXp_AN9KOAc:1kESkA:iL72B7V5BnEIpxmhaZcUklXj6CznFJoD4Pvs_ZPxQII	2020-09-19 14:06:14.341041+06:30
2q0y1dwhg0dzsrcxjinozz3k3k6orev2	.eJxVjDsOgzAQBe-ydWRl_QtLmT5nQMt6HcgHSxiqKHdPkGho38y8D8hal_LWGVrbnKDjdRm6tercjQlaQDhsPctTpw2kB0_3YqRMyzz2ZlPMTqu5laSv6-4eDgauw7-mYBtSVtt4rxIyKrpATJGjw4tkFMlkKRFnb52P3GNUzw45-LMmge8PDKQ8jQ:1kF8Kx:u26INjOZMjkBpxyaCyLIkAHoUuPIoIzsxP8Cn4m4_5o	2020-09-21 10:30:59.806522+06:30
m73z0urldtuwk8hyh9gc46tsbwlm8535	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kF9Ls:ZgIERMVI6K35bwICVMqwUoaPCsW_JQa5KB_2E6BaHhg	2020-09-07 11:51:00.164634+06:30
04xld6iah6al73hw8rf5vnnkiryt3e92	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFBJ2:CcEK3g9g2fKrI1b6ATS7hzRpSNltq94Qnr5COsxd0BQ	2020-09-07 13:56:12.10625+06:30
jwr33h5sfdqfn1524cbitt246qox2z6x	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFBmi:wYNmh3VkfGOzOXCQQvsKu68GtJskrh71ar7rE-hDHx8	2020-09-07 14:26:52.850855+06:30
isbrkr9uq3jemrf4rcpwli4zv7b00ngo	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFC3A:V9J6X4pbJ7fsJem0yj56p-w-a8yJRS4xh4GoJW3qgEg	2020-09-07 14:43:52.103762+06:30
aunrt8tt2xky51aseh6pwvaxh733p4s2	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFCbi:hLM8zpPJN-ZgnGSa-a4ggyRMRB3Hc6KQrFoYVXep4Qc	2020-09-07 15:19:34.831669+06:30
1d3cl2l9fgvjjrwmhcujs319ag079w05	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFCqp:41OHyIdT-e3Ao03t5zToqi9Pb4tl7viVrYiBTcQqcvM	2020-09-07 15:35:11.629654+06:30
t111w8e3kx1ee6ueokp897qnsohjns39	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFDEE:IuMAb_D0vu4Yi5txoZgceH8zsQIn5HNDklNXvObQtmo	2020-09-07 15:59:22.763698+06:30
5cz41j5hdyzgtib1ymv3qpzo5mv7x8dt	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFDVF:OtCd_2DTqrIwsAH-6ENw-9L4SOFF0OAVx0mBhzcajHY	2020-09-07 16:16:57.181358+06:30
igoqp9a0edlklf1q9bz9zljox3ypoeqz	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFDn2:E6e3ejXf4LyOHFWm57JslGpJg7hAAMQVsiPT-UeVwRI	2020-09-07 16:35:20.239085+06:30
ykn6yu4rh7nx6fn8khqidoiirkzb87p1	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFE3y:WqkrWF4BxekhOBno3dix8cgOEAGIoKdGal2Q45Q1DO4	2020-09-07 16:52:50.078553+06:30
zjycgppgeu10ecbkyw0rs3qy2h86dyo2	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFEix:NZxOFtpZDlUik8BZWGbzfTnbDSY4PqK2Otx8SfY9wes	2020-09-07 17:35:11.92306+06:30
mj8irc6fqo5dijtd6wcff30o9z3rzzj9	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFEzD:6mhZa3vY47OQzRa0vaLQBRT_zJ4ID7IcH93pjSnoTQM	2020-09-07 17:51:59.300414+06:30
o7qwvi6eqxmrfk4d23h0tklwvv4aro7f	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFUJv:d-Q6rx1APufEiXu6YheBkqLUNjJW_QVl77JvHVCMr1s	2020-09-08 10:14:23.758868+06:30
ob6lpcu2errbd6ev3vehkxsh36alhlnm	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFUhJ:vzd5P8H1PcmugEJfQS2d9s7UE4svFtdT1NLPOKBNc0Y	2020-09-08 10:38:33.671553+06:30
lqd6j46vbyv6t9hcsf9edztdpu9pmrkf	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFVNJ:9j-u8RokZ8MlJz4Yea3bfjm6-nF9QQ4EA8wgQXeV4Jk	2020-09-08 11:21:57.511258+06:30
g4xunbhgw1azm32kpjtlalrphvx7gxeo	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFVdi:AHHG-JflfJR4pur5ZzWZuL3BHia1JQKmf5JY8gDK8sQ	2020-09-08 11:38:54.770865+06:30
r9sj4ztxbtpwi5x49jyrfnu6uvpah5jf	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFW6M:8_gecO_L6qy4aE-3iFSRCv1itg3ll_SmpQgM_ahhYK0	2020-09-08 12:08:30.841904+06:30
0wsldfuuell6toz8yjtrpazr9werz75u	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFXML:xsR2n_skRSKeq-jB5zBq5dkJcgOYq3AAJrgWb6YJc3I	2020-09-08 13:29:05.905505+06:30
7l4eshmjo68npdt7dsu8994movoxxhqx	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFXci:JCqQpT-UNEHa8OvCBolk7Jrq66bVuqGkn_ePlK8rmNc	2020-09-08 13:46:00.806679+06:30
9i6k9x49d7o5nygyqadblqxvl8gosmsw	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFXt0:mv5Sl46R8ajUSmHWrbu4L4QnsKtsIdWjdsDTieTvEZY	2020-09-08 14:02:50.696304+06:30
jcjdjihc255yglt73wxws5l30p4umj9a	eyJfc2Vzc2lvbl9leHBpcnkiOjkwMCwiY3VzdG9tZXIiOjF9:1kFY8L:XLabD9hCs9KHU6oa65DHBHs6dTURlnPE1p-lFAZYU2E	2020-09-08 14:18:41.674936+06:30
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: main_brand; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.main_brand (id, brand_name) FROM stdin;
1	Apple
4	Huawei
5	Mi
2	Google
6	Samsung
7	OPPO
8	Vivo
9	Nokia
10	LG
\.


--
-- Data for Name: main_category; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.main_category (id, category_name, sub_category) FROM stdin;
1	Electronic Devices	Mobiles
2	Electronic Devices	Tablets
3	Electronic Devices	Laptops
4	Electronic Devices	Desktops
5	Electronic Devices	Gaming Consoles
6	Electronic Devices	Action/Video Cameras
7	Electronic Devices	Security Cameras
8	Electronic Devices	Digital Cameras
9	Men's Fashion	Clothing
10	Men's Fashion	Men's Bags
11	Men's Fashion	Shoes
12	Men's Fashion	Accessories
13	Men's Fashion	Boy's Fashion
14	Men's Fashion	Travel & Luggage
\.


--
-- Data for Name: main_customer; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.main_customer (id, customer_username, customer_firstname, customer_lastname, customer_email, customer_password, customer_lastlogin) FROM stdin;
5	ach	Aye Chan	Han	ach@gmail.com	pbkdf2_sha256$216000$zB4cCx4xaIX4$Ij6GvHQ+EA56wWDhMY5c1A6Pzhlg7QKu8SX5+AI6t2o=	2020-09-05 11:19:43.810027
28	shu	shu	naing	shu@gmail.com	pbkdf2_sha256$216000$oM5m7zVegdWy$5DUdBMxIUGL2I3kb8Z9140M0ZTgTW5xXuM3wWc/Fon4=	2020-09-05 16:49:54.22182
COPY public.main_customer (id, customer_username, customer_firstname, customer_lastname, customer_dob, customer_gender, customer_mobile, customer_email, customer_password, customer_lastlogin) FROM stdin;
1	ach	Aye Chan	Han	1999-04-11	Male	\N	ach@gmail.com	pbkdf2_sha256$216000$JOii6VTZ4mww$PT4X+FuV6zgnN7Xnbgs+dCvpexzIj+WQviL5uP3gog0=	2020-09-08 14:03:41.67226
\.


--
-- Data for Name: main_product; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.main_product (id, product_name, product_price, "product_featureImage", brand_id_id, category_id_id) FROM stdin;
1	iPhone XS	799.00	featureImage/MTFD2_AV1_GOLD_GEO_HK.jpeg	1	1
2	HUAWEI P40 Pro	999.00	featureImage/huawei_p40_pro_8gb_256gb.jpg	4	1
3	Samsung Note 20 Ultra	890.00	featureImage/samsungNote20Ultra.jpg	6	1
4	OPPO Find X	468.00	featureImage/Oppo-Find-X-0.jpg	7	1
5	Vivo V-19	512.00	featureImage/Vivo-V19-Pro.jpg	8	1
6	Xiaomi Redmi K30 Pro	360.00	featureImage/Xiaomi_Redmi_K30_Pro.png	5	1
9	LG v50 ThinQ	360.00	featureImage/lg50thinq.png	10	1
8	Nokia 9 Pure	920.00	featureImage/nokia9.jpeg	9	1
7	Google Pixel 4a	590.00	featureImage/Google-Pixel-4a-XL-render-leak-featured.jpg	2	1
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 73, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- Name: django_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.django_redirect_id_seq', 1, false);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: main_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.main_brand_id_seq', 10, true);


--
-- Name: main_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.main_category_id_seq', 14, true);


--
-- Name: main_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.main_customer_id_seq', 28, true);
SELECT pg_catalog.setval('public.main_customer_id_seq', 1, true);


--
-- Name: main_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.main_product_id_seq', 9, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_redirect django_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_redirect
    ADD CONSTRAINT django_redirect_pkey PRIMARY KEY (id);


--
-- Name: django_redirect django_redirect_site_id_old_path_ac5dd16b_uniq; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_redirect
    ADD CONSTRAINT django_redirect_site_id_old_path_ac5dd16b_uniq UNIQUE (site_id, old_path);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: main_brand main_brand_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.main_brand
    ADD CONSTRAINT main_brand_pkey PRIMARY KEY (id);


--
-- Name: main_category main_category_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.main_category
    ADD CONSTRAINT main_category_pkey PRIMARY KEY (id);


--
-- Name: main_customer main_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.main_customer
    ADD CONSTRAINT main_customer_pkey PRIMARY KEY (id);


--
-- Name: main_product main_product_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.main_product
    ADD CONSTRAINT main_product_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_redirect_old_path_c6cc94d3; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX django_redirect_old_path_c6cc94d3 ON public.django_redirect USING btree (old_path);


--
-- Name: django_redirect_old_path_c6cc94d3_like; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX django_redirect_old_path_c6cc94d3_like ON public.django_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: django_redirect_site_id_c3e37341; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX django_redirect_site_id_c3e37341 ON public.django_redirect USING btree (site_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: main_product_brand_id_id_c56d84e2; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX main_product_brand_id_id_c56d84e2 ON public.main_product USING btree (brand_id_id);


--
-- Name: main_product_category_id_id_3e26f32a; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX main_product_category_id_id_3e26f32a ON public.main_product USING btree (category_id_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_redirect django_redirect_site_id_c3e37341_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_redirect
    ADD CONSTRAINT django_redirect_site_id_c3e37341_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_product main_product_brand_id_id_c56d84e2_fk_main_brand_id; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.main_product
    ADD CONSTRAINT main_product_brand_id_id_c56d84e2_fk_main_brand_id FOREIGN KEY (brand_id_id) REFERENCES public.main_brand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_product main_product_category_id_id_3e26f32a_fk_main_category_id; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.main_product
    ADD CONSTRAINT main_product_category_id_id_3e26f32a_fk_main_category_id FOREIGN KEY (category_id_id) REFERENCES public.main_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--