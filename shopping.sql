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
    last_login timestamp without time zone NOT NULL
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
    category_id_id integer NOT NULL,
    product_description character varying(100)
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
37	Can add brand	10	add_brand
38	Can change brand	10	change_brand
39	Can delete brand	10	delete_brand
40	Can view brand	10	view_brand
41	Can add product	11	add_product
42	Can change product	11	change_product
43	Can delete product	11	delete_product
44	Can view product	11	view_product
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
10	main	brand
11	main	product
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-09-10 16:22:04.019164+06:30
2	auth	0001_initial	2020-09-10 16:22:04.063064+06:30
3	admin	0001_initial	2020-09-10 16:22:04.143273+06:30
4	admin	0002_logentry_remove_auto_add	2020-09-10 16:22:04.19842+06:30
5	admin	0003_logentry_add_action_flag_choices	2020-09-10 16:22:04.210278+06:30
6	contenttypes	0002_remove_content_type_name	2020-09-10 16:22:04.239168+06:30
7	auth	0002_alter_permission_name_max_length	2020-09-10 16:22:04.247263+06:30
8	auth	0003_alter_user_email_max_length	2020-09-10 16:22:04.256745+06:30
9	auth	0004_alter_user_username_opts	2020-09-10 16:22:04.266797+06:30
10	auth	0005_alter_user_last_login_null	2020-09-10 16:22:04.275013+06:30
11	auth	0006_require_contenttypes_0002	2020-09-10 16:22:04.277297+06:30
12	auth	0007_alter_validators_add_error_messages	2020-09-10 16:22:04.286085+06:30
13	auth	0008_alter_user_username_max_length	2020-09-10 16:22:04.298197+06:30
14	auth	0009_alter_user_last_name_max_length	2020-09-10 16:22:04.306623+06:30
15	auth	0010_alter_group_name_max_length	2020-09-10 16:22:04.324385+06:30
16	auth	0011_update_proxy_permissions	2020-09-10 16:22:04.336345+06:30
17	auth	0012_alter_user_first_name_max_length	2020-09-10 16:22:04.344143+06:30
18	sessions	0001_initial	2020-09-10 16:22:04.354757+06:30
19	sites	0001_initial	2020-09-10 16:22:04.376532+06:30
20	sites	0002_alter_domain_unique	2020-09-10 16:22:04.397093+06:30
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
5	ach	Aye Chan	Han	\N	\N	\N	ach@gmail.com	pbkdf2_sha256$216000$zB4cCx4xaIX4$Ij6GvHQ+EA56wWDhMY5c1A6Pzhlg7QKu8SX5+AI6t2o=	2020-09-05 11:19:43.810027
28	shu	shu	naing	2020-09-09	Others	\N	shu@gmail.com	pbkdf2_sha256$216000$oM5m7zVegdWy$5DUdBMxIUGL2I3kb8Z9140M0ZTgTW5xXuM3wWc/Fon4=	2020-09-05 16:49:54.22182
\.


--
-- Data for Name: main_product; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.main_product (id, product_name, product_price, "product_featureImage", brand_id_id, category_id_id, product_description) FROM stdin;
10	iPhone XS	880.00	featureImage/MTFD2_AV1_GOLD_GEO_HK.jpeg	1	1	\N
8	Nokia 9 Pure	920.00	featureImage/nokia9pure.jpg	9	1	\N
7	Google Pixel 4a	590.00	featureImage/ggpixel4a.jpg	2	1	\N
9	LG v50 ThinQ	360.00	featureImage/lg50thinq.png	10	1	\N
6	Xiaomi Redmi K30 Pro	360.00	featureImage/Xiaomi_Redmi_K30_Pro.png	5	1	\N
5	Vivo V-19	512.00	featureImage/Vivo-V19-Pro.jpg	8	1	\N
4	OPPO Find X	468.00	featureImage/Oppo-Find-X-0.jpg	7	1	\N
3	Samsung Note 20 Ultra	890.00	featureImage/samsungNote20Ultra_vGCBWZD.jpg	6	1	\N
11	HUAWEI MatePad	677.00	featureImage/huawei.png	4	2	\N
12	HUAWEI MatePad T 8	874.00	featureImage/huawei1.png	4	2	\N
13	Samsung Tab 7	798.00	featureImage/STab7.jpg	6	2	\N
14	HUAWEI Mate D 15	999.00	featureImage/Huawei_MateBook_D_15__3_.jpg	4	3	\N
15	Lenovo ThinkPad	899.00	featureImage/levnovo.jpg	11	3	\N
16	Asus Zenbook	898.00	featureImage/asus.jpeg	12	3	\N
17	Heavy Cotton	20.00	featureImage/1.jpeg	13	9	\N
18	H&M 3-packs T shirts	32.00	featureImage/2.jpeg	13	9	\N
19	H&M Sweatpants	18.00	featureImage/3.jpeg	13	9	\N
20	H&M Backpack	60.00	featureImage/backpack.jpeg	13	10	\N
21	H&M week bag	54.00	featureImage/weekenbag.jpeg	13	10	\N
22	H&M large waist bag	33.00	featureImage/Largewaistbag.jpeg	13	10	\N
23	H&M Canvans	55.00	featureImage/Canvas.jpeg	13	11	\N
24	H&M Imitation	59.00	featureImage/Imitation.jpeg	13	11	\N
25	H&M Mesh	45.00	featureImage/Mesh.jpeg	13	11	\N
26	Gucci Scarves	220.00	featureImage/Scarves.jpg	14	12	\N
27	Gucci	120.00	featureImage/Socks.jpg	14	12	\N
28	Gucci Gloves	630.00	featureImage/Gloves1.jpg	14	12	\N
29	HERMES Belt	840.00	featureImage/Belts.jpg	15	13	\N
30	HERMES Addict sneaker	870.00	featureImage/boyshoes.jpg	15	13	\N
31	HERMES Ete Indien	800.00	featureImage/boyTshirt1.jpg	15	13	\N
32	HERMES Dynamoduffle Bag	580.00	featureImage/Dynamodufflebag.jpg	15	14	\N
33	HERMES Zip retourne cabine bag	370.00	featureImage/HerbagZipretournecabinetiltbag.jpg	15	14	\N
34	HERMES Bridleback	600.00	featureImage/HermesBridleback.jpg	15	14	\N
35	Dell G Series	999.00	featureImage/dellGSeries.jpg	16	4	\N
36	Acer Aspire GX	999.00	featureImage/AcerAspireGX.png	17	4	\N
37	Asus Desktop D7	999.00	featureImage/asusDesktopD7Tower.jpeg	12	4	\N
38	Sony Playstation 5	670.00	featureImage/playstation-5.jpg	18	5	\N
39	XBox Series X	560.00	featureImage/xboxX.jpg	19	5	\N
40	Sony Playstation 4	500.00	featureImage/PS4.jpg	18	5	\N
41	Sony Camera	400.00	featureImage/sonyCamera.jpg	18	6	\N
42	Nikon Camera	370.00	featureImage/nikonCamera.png	20	6	\N
43	Canon Camera	410.00	featureImage/canonCamera.jpg	21	6	\N
44	Google Security Camera	65.00	featureImage/googleSecurityCamera.jpg	2	7	\N
45	Xiaomi Mi	30.00	featureImage/miSecurityCamera.png	5	7	\N
46	Arlo Pro	40.00	featureImage/ArloPro3_.jpg	22	7	\N
47	Panasonic Camera Lumix DMC-FT30	70.00	featureImage/panasonic1.jpg	23	8	\N
48	Panasonic Camera Lumix DMC-LX-1000	68.00	featureImage/panasonic2.jpg	23	8	\N
49	Panasonic Camera Lumix Point & Shoot	50.00	featureImage/panasonic3.png	23	8	\N
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

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 138, true);


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

SELECT pg_catalog.setval('public.main_product_id_seq', 49, true);


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

