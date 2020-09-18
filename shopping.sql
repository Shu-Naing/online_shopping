--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Ubuntu 12.4-0ubuntu0.20.04.1)
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
    password character varying(150) NOT NULL,
    last_login timestamp with time zone NOT NULL
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
    product_price numeric(10,2) NOT NULL,
    "product_featureImage" character varying(100) NOT NULL,
    product_description character varying(100),
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
29	Can add brand	8	add_brand
30	Can change brand	8	change_brand
31	Can delete brand	8	delete_brand
32	Can view brand	8	view_brand
33	Can add category	9	add_category
34	Can change category	9	change_category
35	Can delete category	9	delete_category
36	Can view category	9	view_category
37	Can add customer	10	add_customer
38	Can change customer	10	change_customer
39	Can delete customer	10	delete_customer
40	Can view customer	10	view_customer
41	Can add product	11	add_product
42	Can change product	11	change_product
43	Can delete product	11	delete_product
44	Can view product	11	view_product
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$FmAfHlhNVz49$0W2wWa3VXRSJ+8jTzc5dzCKbbbofJN/9hiv32rcxW+M=	2020-09-18 14:17:57.898924+06:30	t	admin			shunainghtet98@gmail.com	t	t	2020-09-03 15:32:09.563263+06:30
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
139	2020-09-18 11:27:22.436354+06:30	50	Product object (50)	1	[{"added": {}}]	11	1
140	2020-09-18 11:29:20.730521+06:30	50	Product object (50)	3		11	1
141	2020-09-18 11:29:33.462987+06:30	51	Product object (51)	1	[{"added": {}}]	11	1
142	2020-09-18 11:35:48.094064+06:30	51	Product object (51)	3		11	1
143	2020-09-18 11:35:57.06747+06:30	52	Product object (52)	1	[{"added": {}}]	11	1
144	2020-09-18 11:47:11.338674+06:30	52	Product object (52)	3		11	1
145	2020-09-18 11:47:56.783417+06:30	53	Product object (53)	1	[{"added": {}}]	11	1
146	2020-09-18 11:51:20.016215+06:30	53	Product object (53)	3		11	1
147	2020-09-18 11:51:30.085043+06:30	54	Product object (54)	1	[{"added": {}}]	11	1
148	2020-09-18 11:54:22.714519+06:30	55	Product object (55)	1	[{"added": {}}]	11	1
149	2020-09-18 12:05:51.687616+06:30	55	Product object (55)	3		11	1
150	2020-09-18 12:05:51.697217+06:30	54	Product object (54)	3		11	1
151	2020-09-18 12:06:00.476369+06:30	56	Product object (56)	1	[{"added": {}}]	11	1
152	2020-09-18 12:10:03.521309+06:30	56	Product object (56)	3		11	1
153	2020-09-18 12:10:45.447854+06:30	57	Product object (57)	1	[{"added": {}}]	11	1
154	2020-09-18 13:31:17.492793+06:30	57	Product object (57)	2	[{"changed": {"fields": ["Images"]}}]	11	1
155	2020-09-18 13:32:42.610888+06:30	57	Product object (57)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
156	2020-09-18 14:12:25.152342+06:30	57	Product object (57)	3		11	1
157	2020-09-18 14:18:47.299658+06:30	36	Product object (36)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
158	2020-09-18 14:20:29.729198+06:30	46	Product object (46)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
159	2020-09-18 14:20:40.646748+06:30	37	Product object (37)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
160	2020-09-18 14:20:54.587682+06:30	16	Product object (16)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
161	2020-09-18 14:21:11.394835+06:30	43	Product object (43)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
162	2020-09-18 14:21:23.666869+06:30	35	Product object (35)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
163	2020-09-18 14:21:43.160267+06:30	7	Product object (7)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
164	2020-09-18 14:21:53.499916+06:30	44	Product object (44)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
165	2020-09-18 14:22:11.142883+06:30	27	Product object (27)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
166	2020-09-18 14:22:17.919391+06:30	28	Product object (28)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
167	2020-09-18 14:22:49.778804+06:30	26	Product object (26)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
168	2020-09-18 14:23:03.85673+06:30	17	Product object (17)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
169	2020-09-18 14:23:21.177056+06:30	30	Product object (30)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
170	2020-09-18 14:23:39.041244+06:30	29	Product object (29)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
171	2020-09-18 14:23:51.566441+06:30	34	Product object (34)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
172	2020-09-18 14:24:04.275008+06:30	32	Product object (32)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
173	2020-09-18 14:24:15.248801+06:30	31	Product object (31)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
174	2020-09-18 14:24:29.162666+06:30	33	Product object (33)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
175	2020-09-18 14:24:36.258815+06:30	18	Product object (18)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
176	2020-09-18 14:24:48.552838+06:30	20	Product object (20)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
177	2020-09-18 14:24:58.645204+06:30	23	Product object (23)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
178	2020-09-18 14:25:09.045338+06:30	24	Product object (24)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
179	2020-09-18 14:25:22.303486+06:30	22	Product object (22)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
180	2020-09-18 14:25:35.176792+06:30	25	Product object (25)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
181	2020-09-18 14:25:43.586845+06:30	19	Product object (19)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
182	2020-09-18 14:25:52.044696+06:30	21	Product object (21)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
183	2020-09-18 14:26:11.100604+06:30	14	Product object (14)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
184	2020-09-18 14:26:24.051695+06:30	11	Product object (11)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
185	2020-09-18 14:26:39.788089+06:30	12	Product object (12)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
186	2020-09-18 14:26:55.941312+06:30	10	Product object (10)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
187	2020-09-18 14:27:18.092891+06:30	15	Product object (15)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
188	2020-09-18 14:27:38.440102+06:30	9	Product object (9)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
189	2020-09-18 14:27:48.525239+06:30	42	Product object (42)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
190	2020-09-18 14:27:58.684453+06:30	8	Product object (8)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
191	2020-09-18 14:28:09.717774+06:30	4	Product object (4)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
192	2020-09-18 14:28:18.838361+06:30	47	Product object (47)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
193	2020-09-18 14:28:27.534437+06:30	48	Product object (48)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
194	2020-09-18 14:28:33.536972+06:30	49	Product object (49)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
195	2020-09-18 14:28:47.022364+06:30	3	Product object (3)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
196	2020-09-18 14:28:58.198554+06:30	13	Product object (13)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
197	2020-09-18 14:29:07.407686+06:30	41	Product object (41)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
198	2020-09-18 14:29:16.327236+06:30	40	Product object (40)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
199	2020-09-18 14:29:23.88296+06:30	38	Product object (38)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
200	2020-09-18 14:29:31.659393+06:30	5	Product object (5)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
201	2020-09-18 14:29:41.284878+06:30	39	Product object (39)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
202	2020-09-18 14:30:06.592522+06:30	45	Product object (45)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
203	2020-09-18 14:30:14.040299+06:30	6	Product object (6)	2	[{"changed": {"fields": ["Product featureImage"]}}]	11	1
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
8	main	brand
9	main	category
10	main	customer
11	main	product
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-09-10 16:32:09.227164+06:30
2	auth	0001_initial	2020-09-10 16:32:09.294947+06:30
3	admin	0001_initial	2020-09-10 16:32:09.41332+06:30
4	admin	0002_logentry_remove_auto_add	2020-09-10 16:32:09.447639+06:30
5	admin	0003_logentry_add_action_flag_choices	2020-09-10 16:32:09.466925+06:30
6	contenttypes	0002_remove_content_type_name	2020-09-10 16:32:09.491217+06:30
7	auth	0002_alter_permission_name_max_length	2020-09-10 16:32:09.49953+06:30
8	auth	0003_alter_user_email_max_length	2020-09-10 16:32:09.507599+06:30
9	auth	0004_alter_user_username_opts	2020-09-10 16:32:09.515924+06:30
10	auth	0005_alter_user_last_login_null	2020-09-10 16:32:09.524511+06:30
11	auth	0006_require_contenttypes_0002	2020-09-10 16:32:09.527172+06:30
12	auth	0007_alter_validators_add_error_messages	2020-09-10 16:32:09.534581+06:30
13	auth	0008_alter_user_username_max_length	2020-09-10 16:32:09.546002+06:30
14	auth	0009_alter_user_last_name_max_length	2020-09-10 16:32:09.553479+06:30
15	auth	0010_alter_group_name_max_length	2020-09-10 16:32:09.56183+06:30
16	auth	0011_update_proxy_permissions	2020-09-10 16:32:09.56894+06:30
17	auth	0012_alter_user_first_name_max_length	2020-09-10 16:32:09.576694+06:30
18	main	0001_initial	2020-09-10 16:32:09.604794+06:30
19	sessions	0001_initial	2020-09-10 16:32:09.624466+06:30
20	sites	0001_initial	2020-09-10 16:32:09.646376+06:30
21	sites	0002_alter_domain_unique	2020-09-10 16:32:09.663756+06:30
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
k4rmlyz1bsy24znojfe4vdt29d896v9g	.eJwVykEKwjAQBdCrlL8OEkFBcwG37kVCiIMMTDMxmUBL6d3Vt34bcmqG8NiQRzedqSGUIeJQm75GtljSTAi4qb6FpjsvJNMpweEzUjG2FeHoYGpJYm2cf_l89Qe_Px1ip95ZS6SlcvvPi_f7F2RwKAs:1kI3nb:K7GqKnGc8uoLqnBzPdauxVLtITC8U8yjUm5rV4yxM3o	2020-09-15 12:46:39.580297+06:30
r74i7dk2vlxt6f6xasci4s95pjhp8gti	.eJyFzLEKwjAUBdBfKXcOEp1CVhdHwUWQEkJ8YCDNi8mLWEr_XfsDuh_OguCrwN4WhN6EJ6qwuaekUCrfexCX_USwOJF_zcORRThD4dl9ligz7F5BWHxypcbwlQe906v6-8XzgzMN18vPzJhtGxVco9YiZ0fvEusmjdbrB_w7QbM:1kI50r:xlvmO7mZ6JNsbBR87L1uBAo-WYfVtk4zXKKM1UglYAg	2020-09-15 14:04:25.758538+06:30
9npm7fl50qb3wssdbnxs9qrgkn33vmdp	.eJxVjDsOwjAQBe_iGlmsf2Qp6TlDtF6vcQDZUpxUiLtDpBTQvpl5LzXSupRx7TKPU1JnBerwu0Xih9QNpDvVW9Pc6jJPUW-K3mnX15bkedndv4NCvXxr9GZAITGDc8I-g4D1SBgoWDhxBuaMBhNSdsa6QBGCOLJA3h0lsXp_AN9KOAc:1kJB7d:NBlyuxhpGYM47iqP-VigiclUXYNGq9OeQC6GE05O2eo	2020-10-02 14:17:57.902061+06:30
bgegztw7gdcz1fzvuqwd8e06zn6lpfdz	.eJwVysEKAiEQBuBXif8sYTfxKRa6BBEiNrAD7ozpCMWy7159529Hyd0Q7zvKHKYbdUSZtTq0rs9ZLEneCBG8rCp0ul3h8JpZjO2DeHEwtVxT61x-LQR_9sfDIQ0ag1USvRv3_wzeH1924yYH:1kI6CF:TDPkEUq-4J5N0OauFF23ON4CF-n10P7EknN8ckGMxPc	2020-09-15 15:20:15.045487+06:30
gbz1f5dlb7qw58zvxd646pq548nr2631	.eJyFzEEKwjAQBdCrlL8OEkVBs3Why-5FQoiDBNJMTCbSUnp37QV0_3gzvCsCc5vhWxUeqMCkFqNCLvxoXmxyA8HgSu49dWcW4QSFV3NJgkwwWwVhcdHmEvxX7vRGL-rvd2F-Rur6MFLs9u5neTit513BVqo1cLI05lBWedR6-QCP30O3:1kI6ye:MNygRdk9XdUkag5VQKeBHKH1671k4wTjnYLhqtaEY4g	2020-09-15 16:10:16.248314+06:30
f3fj6wkrpwwf5aea8ungm9fwlsugukfb	.eJyNzTELwjAUBOC_Et7gFCSFFkpHoeBSELsIIiHGhwbTpCYvqJT-dzMWHHS84_huAq0CQXOcQKdIfsAAjUvWchiDvyRN0qkBoQGzu3mH7NADh0dSjgy9c13kSJ6UlWMwOg_rWqzFzJceVPDFbdt91_Zsg5Z-geV_4KpjT8Q7O6vrD7EqM3jiICPGaLyT-BpNyNOiFoIvfqr5A7dBXk0:1kGgkR:VU5IRrKkziizop3iQwNTg0VkH42iyIJrA6U1gxswtX8	2020-09-11 17:57:43.068925+06:30
g8t363wl41e4c0ljsotn33376vq9368w	.eJyFzLEKwjAUBdBfKXcOEp1MVgXdHYuEEN8QSJP48iKW0n-3_oDuh7MgeBbYcUHoTcpEDJt7SgqVy6MHcdlPBIsr-dc8nIpIyVB4dp8lygy7V5AiPrnKMWzyoHd6VX-_M6U0XIYbcaT2MzTGbONdwTVqLZbs6F0jf-VR6_UDAO5DAw:1kINzl:FDfVt30nABqUrQDOnyc_oollvus_xn_iosL2_ihC_4s	2020-09-16 10:20:33.555361+06:30
4p8mx4qlnjvrkx8vgusv7hn27t9y03im	.eJyFzEEKwyAQAMCvyJ6lWEih9QO9BnosQRa7FMG4VleIhPy9yQfa-zAreCwC9rmCb1V4pgI2tRg15MKv5sUlnAks3JnfkdQYFopqQNDwaZgkSAd71iAsGF0uwe_4cjMns-m_54NTV2PEXgUlcFLD79Yc7aTBVap1946WHMohr8ZsX0-cRgs:1kIOzS:PEQ7mGv3qNw579lu98mj5LAxMsYkVuEshNwVpG8PyzU	2020-09-16 11:24:18.847825+06:30
fagnkohskh6ik3wthg2d050d6k8y1ebw	.eJwVysEKAiEQBuBXif8sYTfxKRa6BBEiNrAD7ozpCMWy7159529Hyd0Q7zvKHKYbdUSZtTq0rs9ZLEneCBG8rCp0ul3h8JpZjO2DeHEwtVxT61x-LQR_9sfDIQ0ag1USvRv3_wzeH1924yYH:1kGzKN:jdn2emaYxn66iv6zb3KMrWdA6JEhNU-CFN7UHNtWPt4	2020-09-12 13:48:03.390164+06:30
gcfq9wl4drnimys7ru2am9l9yjckzzgw	.eJwVykEKwjAQBdCrlL8OEkFBcwG37kVCiIMMTDMxmUBL6d3Vt34bcmqG8NiQRzedqSGUIeJQm75GtljSTAi4qb6FpjsvJNMpweEzUjG2FeHoYGpJYm2cf_l89Qe_Px1ip95ZS6SlcvvPi_f7F2RwKAs:1kGzps:rXT7MVqncY4UHliVyYa-98ReQoYRyCyWNKyH-RzerYQ	2020-09-12 14:20:36.205722+06:30
ufhnyjl93w1rpsjasxej16qe2mgrnkv0	.eJwVysEKAiEQBuBXif8sYTfxKRa6BBEiNrAD7ozpCMWy7159529Hyd0Q7zvKHKYbdUSZtTq0rs9ZLEneCBG8rCp0ul3h8JpZjO2DeHEwtVxT61x-LQR_9sfDIQ0ag1USvRv3_wzeH1924yYH:1kH0QW:xaQS63fbQ4QoFmf-TfLJcbI5MEysYPvV9m3Al8g-3oI	2020-09-12 14:58:28.812416+06:30
wawef6954ld1ztmroft1fingursy1rfh	.eJx9jcFqwzAQRH8l7FkYy5Zdy8eeWwi0h0IpYr1a12oSyZXk0hLy77Uhl1xynXnz5gyEMUP_fgZaUg4njtA3AuYY7ELZeDwx9OD2U_C8e3sBAd8L-uzyH_RSQA4Zj2aOjlas68qivIj7qif24SfsXifnD3u094Var8IPASZxSi54w7-zixvZlaW4_TG45MksiaNxdj2ScJMNSAf2W2G_0H-GgoLP0Q3FhhTXNhXPwfLx8creCCZM07rWTdVpRq46pZiaUbKsG426xbaWDzRKolFX2mocVVWrFgfZssJaYqNKtgSXf-one4w:1kIQ21:e8wmxzV0yCjLOqOUN4lgGEwyiO2GqSa7K0HWhA23fS4	2020-09-16 12:31:01.246643+06:30
9nhaybeixs57u88qk1in8bn31z9gqwnd	eyJjYXJ0IjpbXSwiX3Nlc3Npb25fZXhwaXJ5IjoxODAwfQ:1kH1wj:JwTQL54uvwbzXrSEefSXZKd4SCiBQE2pGOwBvumPBfE	2020-09-12 16:35:49.85798+06:30
xgtebxiltddqh98z9ov9ved9y8wsyvte	.eJyFzMEKAiEUQNFfkbeWsE2T7lxEtQjaREGEiPMWgqOmTyiG-ffsB2p_75nB2UKg7jO4VilNWEDFFgKHXNLYHJloJwQFh4u-7o7sZAnPdgQOz2YjeXqDWnOgRDaYXLzr7WYYVmLhf0ntsDBdsy_I9refpJSykw8OpmKtPkWDr_59y60QyweTd0N7:1kHgpo:kjLxLPXH9y4xg9Yx10L0qddHkVbfEXIOVxnV2YmOzHE	2020-09-14 12:15:24.042293+06:30
3r7ocaz6qkfl1t1q71wfpxipxbvfrukf	eyJjYXJ0IjpbXSwiX3Nlc3Npb25fZXhwaXJ5IjoxODAwfQ:1kH2j0:91HyQMdAFAZXYLI1Bc0eb5IqusiATMvzPFMxS74-m6c	2020-09-12 17:25:42.813898+06:30
l8zr5b9w18o403mh8f3lnxoudf5e9h3q	.eJyNzkEKwjAQQNGrhFkHiWDVdCco6kIoiLgQCUMMEkiTmkygpfTutheo7j-P34PGSFA-etA5UahNhNJn5zg0MbyyJuWxNlDC6ba7H87sgmTYni0L4PDJ6MlSB-WSAwVCp5po9VhLKRdi4D_RYwhvZ1hlW-PYCmfNQoq_zGvwHascdomQbPBsfnW9mdgnB5VMSmOvTNvYOJVbIYYvR4thyQ:1kHiwP:Wn-5qyMe5PYJ1Ex1i0kc-lv7EFOyNp9_1PygMUlGHRc	2020-09-14 14:30:21.424653+06:30
9bpoz46wxr79k7oa8z3msfzwguivkx56	.eJyFzUEKwyAQQNGrhFlLsYu24ikC2RRKkMEKFcyM1REqIXdvcoF2_3l_BY9FwD5W8K0KL6GApZaSglz42bw4wiWAhYmpD2PCXgUlMg0XUPBuSBKlgz0rEBZMLpfo9_560ye9qb9sHF9MYbhPPzVjDm1W4Gqodb-78MmxHKXRevsC17REEA:1kHjPx:Ga1mDtOIhh8-PaROxdu5qhiwbWH7RSf7JemnmfrOgSo	2020-09-14 15:00:53.383759+06:30
5lg95fug38pq9si334xeb2ooj9m4ajgh	.eJyFzEEKwyAQAMCvhD1LsYe24isCuRRKkMUKFcyu1RUqIX9v8oH2PswKHouAfazgWxVeQgFLLSUFufCzeXGESwALcXwxheE-gYJ3Q5IoHexZgbBgcrlEvzNj9Elv6u82MfVhTNiroESm4fKzvd6Odlbgaqh19y58ciyHNFpvX7PSRBA:1kHjtc:EplngpHU4ZRCB85QYhKYhLCIFmR4oNiUZUvwB2mKUH8	2020-09-14 15:31:32.462843+06:30
od8le8ik03wvuymg5sn04ubu1x0wsrug	.eJyFzUEKwyAQQNGrhFlLsYu24ikC2RRKkMEKFcyM1REqIXdvcoF2_3l_BY9FwD5W8K0KL6GApZaSglz42bw4wiWAhYmpD2PCXgUlMg0XUPBuSBKlgz0rEBZMLpfo9_560ye9qb9sHF9MYbhPPzVjDm1W4Gqodb-78MmxHKXRevsC17REEA:1kHkNG:TIw7vDsCD249rA3L7baKay1yJgYe56J5_LN1-a-KI1I	2020-09-14 16:02:10.846858+06:30
327u27yf9h9xizt6nlg20yl92tkcnamj	.eJyNzEEKAiEUANCryF9LOEGQ7qKJqUWriBYRIvYXgqOm32gY5u7VBWr2jzeCNZlAXUewtVDsMYMK1XsOKcd7taSD6REU7NE8B7aNRDEAh0c1gRwNoBoOFMl4nbKzH7kUCzHx_995c9kd2NEQspY1q5-nlHJW2qL3rGMnzA7LjPHGQRcsxcWg8ZVc_sq1ENMbhc9euA:1kHl7G:hwc2EAhW8R7aQ2S1tNC39q6DaD2qoIKHybeXl0K9K5U	2020-09-14 16:49:42.082781+06:30
jpk9h5mj49u9nrq9ted5ratygpq76f5v	.eJyFzMEKAiEQANBfkTlLuEGQ3qKC7dAxOkTIYB4E1zEdo2XZf2_7gbo_3gQOC4O5TeBaZRp8AZNajBJyoUdzbBMOHgz0Hl-j2BMzJZDwbJg48Aimk8DEGG0uwS1yrVZqlv-_y-56PIkzshcH0W1-nlrrJb1LsNXXGihZ_86hfOVWqfkDgxZC5A:1kI1qB:D2cy8tKT8KaslyVBmE66eJIXG6x3C2nYBlP6lkw8auE	2020-09-15 10:41:11.194417+06:30
0940brzwmiizoieocm2pa72h2a3r6kmi	.eJyFzLEKwjAUBdBfKXcOEhcbsjkIOggFEQWR8EgDBtokJi-glP679Qd0P5wJljJD3ybYWjiOLkOHOgwCKce-WjaBRgcN3z1icM31BIFnpcCe39BrAY5Mg0nZ24UpJVdyFn-3_Xl72R2aI7HrqP9Zbtp2Ke8CprhSfAzGvZLPX6mknD9n60Hg:1kI2Jg:qxr2dEQIkHlcuVtR8QudvCQnKEeh2CHIVYAZmmqZg3o	2020-09-15 11:11:40.440631+06:30
avbda5mslvkv1k4oqr5b5x6yt8mreyy7	.eJyFzEEKAiEYBtCryLeWcBaBugsKahEEEQURIiYkODrpLxTD3L3pArV_vBHOFoK-jnCtUu59gU4tRo6h5HtzZJLtPTTC4ZGTZ5cjOJ7NJgr0hu44KJONZijBzUxKsRAT_7ttT6vzZsf2ljxbs275M1VKzemNw1Rfa8jJ-NcQyldKIaYPuPtBvA:1kI2nt:k3Z6-YAemu42uHhdWNJyZulyI3F7OT1ut2aMrIKg8q0	2020-09-15 11:42:53.999522+06:30
9lduoj37hoht22xki1t9ixilp9kx0bxc	.eJyFzMEKAiEQANBfkTlLGBS43jp17VyEmA0huY45I2ws--9tP1D3x5shhibgLjPEzkIjNnCl56yhNrr3KL6EEcHBkeiRUZ3ShFntAmh49VAkyRvcVoOQhOxrS3HF-8FszKL_ngfurM5YbkTPn6Ed7BpeNXhG5kTF41RT-0przPIBqGlD_g:1kIRDP:xgzr2Lwt7ia6ACh5pYFNWehdU3MzxgqHzPf7b_6cO_g	2020-09-16 13:46:51.812507+06:30
b3gjfngfwsq2bq59puhrahv3qqutos65	.eJyFzLEKwjAQgOFXCTc4BYmgohld7CK4i4QjHhJMczG5QKX03W1fQId_-_lG8FgE7G0E36pwTwVsajFqyIUfzYtL2BNYODM_I6lrGCiqLYKGd8MkQT5gNxqEBaPLJfh53h3N2kz6r9mtLuqE_pXnfoL7xbtrcJVqDZwcDTmUZTwYM30BOUhDEg:1kIRiN:vBeOP3mTSgHvP2xLIHYnLdERB_1dXKD3vA9AnEVXHNM	2020-09-16 14:18:51.712571+06:30
m1urttode5edznp60vrsd6r679xrr7y0	.eJyFzEEKwjAQBdCrlL8OEkVBs3Why-5FQoiDBNJMTCbSUnp37QV0_3gzvCsCc5vhWxUeqMCkFqNCLvxoXmxyA8HgwvyM1PVhpNjtHRRezSUJMsFsFYTFRZtL8F98OOmNXtTf80ruPXVnFuH0M9yt313BVqo1cLI05lBWeNR6-QBl70O3:1kISCJ:_-qXaJYTQxAcanmOvtKWxoZZ01JWgK2J1vBUZILxhGo	2020-09-16 14:49:47.78556+06:30
qxwkv9quxr9vg6w7ozhs6kmleke7g8fk	.eJyFzMEKAiEQgOFXkTlL2KEQrx26BnsJIkRsKMF1bByhWPbdsxeo68_Pt0AMLOAuC8TehGZkcKXnrKEy3XoUX8KM4CCdHlRQnSfQ8OyhSJI3uK0GIQnZV05xbNaajVn1X-1IdM-oJoydB6QOI3P4Se93Q75q8A1bS1Q8vmri72iNWT-Qo0Vm:1kITR7:Pi5L0SCYoanbNgoSXlaPvWBXS4QFd7dCLp63bsWNtlE	2020-09-16 16:09:09.430798+06:30
pbvy437b53pddwr1yg1qarxmd8711loh	.eJwVysEKAiEQBuBXif8sYTfxKRa6BBEiNrAD7ozpCMWy7159529Hyd0Q7zvKHKYbdUSZtTq0rs9ZLEneCBG8rCp0ul3h8JpZjO2DeHEwtVxT61x-LQR_9sfDIQ0ag1USvRv3_wzeH1924yYH:1kIUDa:KNnC4HYec28iQ9UF2Wsn4bMy3DeM6LoDZqFQOtZJbQQ	2020-09-16 16:59:14.065983+06:30
9yzyl0wwfsjo4umyvtvqq5tjc3sww3ht	.eJwVysEKAiEQBuBXif8sYTfxKRa6BBEiNrAD7ozpCMWy7159529Hyd0Q7zvKHKYbdUSZtTq0rs9ZLEneCBG8rCp0ul3h8JpZjO2DeHEwtVxT61x-LQR_9sfDIQ0ag1USvRv3_wzeH1924yYH:1kIUq6:oNgPFwh4ccjKyd9jCn8sC3vPPNE1oN636NWuXRd09cU	2020-09-16 17:39:02.715204+06:30
c9hni759w3e1pt0ggpbv2qdwtayq0kjl	.eJx9zTELwjAQhuG_Um4-JA5Ckq2Tq-BSKBJCPDBgk3i5gFL6342bU_f3e74VgmcBO68QWpW8EIM9IRTO9xbEJb8QWIiXR040TFdAeDWfJMoH7BFBsvinKxxDz7RWB7XhPjUG4mGsJTIN52nXM8Z074bgKtUac3L07rtfqZXC_5vtC8EQQ2s:1kIlDh:XF73jFbDaG68_6kM_9_wV9nSmOHHLvETyEa5c0WJ5Z4	2020-09-17 11:08:29.011151+06:30
jp1w1zyan282kzrp975v0iwjl2ejvcji	.eJx9zcEKAiEUheFXkbuW0CgY3c1qti2DCBG7hOCo6RUmhnn3bFct2v_nOys4Wwj0ZQXXKqUZC-gjh1zSrTky0c4IGqaU7gHZyS8Y2MECh0ezkTw9Qe85UCIbTC7e9VjKQezExv-Lo8PCxpp9QTadv0D5AyqlunflYCrW6lM0uPTduxyE4J832wuTZ0Wc:1kIoKI:gOgzMRNHAhlKsoBS8aIBpSaRv4xU4mCA9QRYW7XKjSc	2020-09-17 14:27:30.563597+06:30
n6mz2adkw2123r735jm1wvarms8tmhhg	.eJx9zb0KwjAUhuFbKd98kFh_kKwujoKLIBJCDBiwOTE5EUvpvVuc1MH95XkHOJsF-jTA1SLc-Qy9IqTMl-rERNt5aIT9laNvjgcQ7tVGCdJDLwjCYm8m5eCmrF0v1UyN9N_aefvomy2LcPzi2h_ujZ0JpvhSAkfjnynkKZxvlKLPx_gCUKRDKQ:1kIpFN:E9tNQChuAHnwq3Lm7ismDa_qcqwyaFzPf9-cOwbfB7w	2020-09-17 15:26:29.763951+06:30
gvbcfyhu69r28jrajtrplbawhxfp64kx	.eJyFzUEKwjAQQNGrlFkHSQW15gwuCroQREJIBxq0MzGZiFJ6d7N0pfvP-zN4lwTMZQZfsvCECcxGQUw8FC-W3IRgIPQjEzbnIyh4FEcS5A1mrUBY3N3GFHzN2t1Wr_SiflsHJH5ycxoD3Xo3_BH3XRWvCmzGnAOTxVcMqaZtp7X6Hi0fosFEsQ:1kIppE:RC3L_PlnizFeCjGnZjFKzsnCcTsXO51mTN-j2NG-CWg	2020-09-17 16:03:32.130614+06:30
8jot1fo55anas6thg29x87jxz1255qeb	.eJyFzbEKwjAURuFXKf98kVRUSkal4OKio0gI8Q6BNonJrVhK3926Oel--M4EZ7NAXye4oUjsOUNvCSnH--DEBNszNI5sn2N1iCIxgPAYbBAvI_SaIFFsZ1L2bik3aqVm-oO151N7qfbcyU-r3jUf7UYwhUvxMRh-JZ-XtG6Uou_J_Abl7kNo:1kIqRw:W9ueNvrqO8uc6Mf4fj0pV858oLrZQEhKu2E_Cz12jH0	2020-09-17 16:43:32.027206+06:30
as7sx6mp6cedt241hgl1jamxg9c3egx0	.eJx9zbEKwjAQgOFXCTcHiWChyQu4OHRwEwkhPTSY5trkIpXSd7duTt1_vn8B7zKDuS3ga2EaMINpJIyZ-urZJjcgGDgTPSKKLswYxcmBhKm6xIE_YI4SmNhFO-bgt7jR6qBWuQ9eMNGbxPUZ0qtz_S7Yar2Bdwm2YCmBksV5DPlXtkrJ_8_6BdSWRlY:1kJ7cc:JczOy3A2NX5ORgojZZ3S0KWFZ6tnyBwaFpgLejJcc6A	2020-09-18 11:03:42.642841+06:30
q2e85c9isqj8nxusn6vcjsq8aepzopm6	.eJxVjs1OhDAUhV_FdE0IhYKUpW7c-ATGNJfbi3RkWmxvjZPJvLslmYVuz_nOz1UYyLyanCgaZ8UkpKj-ajPgJ_nDsCfwH6HG4Dm6uT6Q-u6m-jVY2p7u7L-CFdJa0rpvR01A7agUYb9Ikl2vQQ8wdPIRF4m46FZbDYtqOzXALAdS0EnoVUMWSylCZDG9XQXmxOFMUUw-b1sl9hhsRjYezlSmXgi-Lw_PgTn4EvvK4NnxRUyyEhwYNrNHh4Vsm7q5vZe3iVJywRv62V08wLFpbr_n-15p:1kJ8m1:H_0yGn7c7kAxh1bUW1C8vvPBJRgoqWIF6iRKxBqxDKY	2020-09-18 12:17:29.376938+06:30
hach3c030nigsrhnl53xoq9e43iys5vk	.eJxVjktLxDAUhf-K3HUJTZt2mi7dC4IbQSTc3tza6ExS8wBlmP9uBmYxbs_5zuMMBkveTEkcjbMwg4TmXluQvthfDfuJ_iMICj5Ht4grIm5uEk_B8vHxxv4r2DBtNa2HbtKM3E1KMQ2rZNkPGvWIYy8PtEqiVXfaalxV16sRFzmywl7ioFq2VEsJY4b57QxUUg4njjAPDewx2ELZeDxx3XHPW_D88PpSA98FfXb5F-augRwyHs0eHVVMHsZWtJf3-jRxSi54wz-7ixWVU9s29xOXP-3yYDs:1kJAZa:-0cmWlZRT-UKyKrieZ6J7yRfszcsHLa74qFomfqRW68	2020-09-18 14:12:46.615529+06:30
ddyfy58qeii8b76dcwhs77t53kxxn9aw	.eJx9zUEKwjAQheGrhFkHSaoFyQXcFlwWCUMMEkgzMZlCS-ndjTt14f5_39vAYWEw4wZurkyTL2B6CbnQfXZsE04eDFyIHtGLISw-ihOChOeMiQOvYDoJTIzR5hJci7U-q4Pa5X_xSmkVQ8S1MnKgJPov9PiDdkq_0ZsEW32tbWD9kkNpabtT8vNrfwEhLUeu:1kImNJ:EDr9t740WxKYi5lFKPTPGc5GHcE1_lYLjPCk0HGJ9zc	2020-09-17 12:22:29.47478+06:30
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
11	Lenovo
12	Asus
13	H&M
14	GUCCI
15	HERMES
16	Dell
17	Acer
18	Sony
19	Microsoft XBox
20	Nikon
21	Canon
22	Arlo
23	Panasonic
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
13	Men's Fashion	Boy's Fashion
14	Men's Fashion	Travel & Luggage
12	Men's Fashion	Accessories
\.


--
-- Data for Name: main_customer; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.main_customer (id, customer_username, customer_firstname, customer_lastname, customer_dob, customer_gender, customer_mobile, customer_email, password, last_login) FROM stdin;
28	shu	shu	naing	2020-09-09	Others	\N	shu@gmail.com	pbkdf2_sha256$216000$oM5m7zVegdWy$5DUdBMxIUGL2I3kb8Z9140M0ZTgTW5xXuM3wWc/Fon4=	2020-09-05 16:49:54.22182+06:30
5	ach	Aye Chan	Han	\N	\N	\N	ach@gmail.com	pbkdf2_sha256$216000$zB4cCx4xaIX4$Ij6GvHQ+EA56wWDhMY5c1A6Pzhlg7QKu8SX5+AI6t2o=	2020-09-18 13:42:44.543156+06:30
\.


--
-- Data for Name: main_product; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.main_product (id, product_name, product_price, "product_featureImage", product_description, brand_id_id, category_id_id) FROM stdin;
14	HUAWEI Mate D 15	999.00	images/Huawei_MateBook_D_15__3_.jpg	\N	4	3
11	HUAWEI MatePad	677.00	images/huawei.png	\N	4	2
36	Acer Aspire GX	999.00	images/AcerAspireGX.png	\N	17	4
46	Arlo Pro	40.00	images/ArloPro3_.jpg	\N	22	7
37	Asus Desktop D7	999.00	images/asusDesktopD7Tower.jpeg	\N	12	4
16	Asus Zenbook	898.00	images/asus.jpeg	\N	12	3
43	Canon Camera	410.00	images/canonCamera.jpg	\N	21	6
35	Dell G Series	999.00	images/dellGSeries.jpg	\N	16	4
7	Google Pixel 4a	590.00	images/googlepixel4a.jpg	\N	2	1
44	Google Security Camera	65.00	images/googleSecurityCamera.jpg	\N	2	7
27	Gucci	120.00	images/Socks.jpg	\N	14	12
28	Gucci Gloves	630.00	images/Gloves1.jpg	\N	14	12
26	Gucci Scarves	220.00	images/Scarves.jpg	\N	14	12
17	Heavy Cotton	20.00	images/1.jpeg	\N	13	9
30	HERMES Addict sneaker	870.00	images/boyshoes.jpg	\N	15	13
29	HERMES Belt	840.00	images/Belts.jpg	\N	15	13
34	HERMES Bridleback	600.00	images/HermesBridleback.jpg	\N	15	14
32	HERMES Dynamoduffle Bag	580.00	images/Dynamodufflebag.jpg	\N	15	14
31	HERMES Ete Indien	800.00	images/boyTshirt1.jpg	\N	15	13
33	HERMES Zip retourne cabine bag	370.00	images/HerbagZipretournecabinetiltbag.jpg	\N	15	14
18	H&M 3-packs T shirts	32.00	images/2.jpeg	\N	13	9
20	H&M Backpack	60.00	images/backpack.jpeg	\N	13	10
23	H&M Canvans	55.00	images/Canvas.jpeg	\N	13	11
24	H&M Imitation	59.00	images/Imitation.jpeg	\N	13	11
22	H&M large waist bag	33.00	images/Largewaistbag.jpeg	\N	13	10
25	H&M Mesh	45.00	images/Mesh.jpeg	\N	13	11
19	H&M Sweatpants	18.00	images/3.jpeg	\N	13	9
21	H&M week bag	54.00	images/weekenbag.jpeg	\N	13	10
12	HUAWEI MatePad T 8	874.00	images/huawei1.png	\N	4	2
10	iPhone XS	880.00	images/MTFD2_AV1_GOLD_GEO_HK.jpeg	\N	1	1
15	Lenovo ThinkPad	899.00	images/levnovo.jpg	\N	11	3
9	LG v50 ThinQ	360.00	images/lg50thinq.png	\N	10	1
42	Nikon Camera	370.00	images/nikonCamera.png	\N	20	6
8	Nokia 9 Pure	920.00	images/nokia9pure.jpg	\N	9	1
4	OPPO Find X	468.00	images/Oppo-Find-X-0.jpg	\N	7	1
47	Panasonic Camera Lumix DMC-FT30	70.00	images/panasonic1.jpg	\N	23	8
48	Panasonic Camera Lumix DMC-LX-1000	68.00	images/panasonic2.jpg	\N	23	8
49	Panasonic Camera Lumix Point & Shoot	50.00	images/panasonic3.png	\N	23	8
3	Samsung Note 20 Ultra	890.00	images/samsungNote20Ultra.jpg	\N	6	1
13	Samsung Tab 7	798.00	images/STab7.jpg	\N	6	2
41	Sony Camera	400.00	images/sonyCamera.jpg	\N	18	6
40	Sony Playstation 4	500.00	images/PS4.jpg	\N	18	5
38	Sony Playstation 5	670.00	images/playstation-5.jpg	\N	18	5
5	Vivo V-19	512.00	images/Vivo-V19-Pro.jpg	\N	8	1
39	XBox Series X	560.00	images/xboxX.jpg	\N	19	5
45	Xiaomi Mi	30.00	images/miSecurityCamera.png	\N	5	7
6	Xiaomi Redmi K30 Pro	360.00	images/Xiaomi_Redmi_K30_Pro.png	\N	5	1
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

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 203, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 32, true);


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

SELECT pg_catalog.setval('public.main_brand_id_seq', 23, true);


--
-- Name: main_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.main_category_id_seq', 14, true);


--
-- Name: main_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.main_customer_id_seq', 28, true);


--
-- Name: main_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.main_product_id_seq', 57, true);


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

