--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2024-03-07 00:03:58

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
-- TOC entry 216 (class 1259 OID 26301)
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    clientid integer NOT NULL,
    firstname character varying(50),
    middlename character varying(50),
    lastname character varying(50),
    phonenumber character varying(20),
    email character varying(100)
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 26300)
-- Name: clients_clientid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clients_clientid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clients_clientid_seq OWNER TO postgres;

--
-- TOC entry 4882 (class 0 OID 0)
-- Dependencies: 215
-- Name: clients_clientid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clients_clientid_seq OWNED BY public.clients.clientid;


--
-- TOC entry 220 (class 1259 OID 26318)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    employeeid integer NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    "MiddleName" character varying(100),
    "Position" character varying(100),
    email character varying(100),
    phonenumber character varying(20)
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 26317)
-- Name: employee_employeeid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_employeeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_employeeid_seq OWNER TO postgres;

--
-- TOC entry 4883 (class 0 OID 0)
-- Dependencies: 219
-- Name: employee_employeeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_employeeid_seq OWNED BY public.employee.employeeid;


--
-- TOC entry 222 (class 1259 OID 26339)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    orderid integer NOT NULL,
    name character varying(100),
    datestart date,
    "clientId" integer
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 26338)
-- Name: orders_orderid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_orderid_seq OWNER TO postgres;

--
-- TOC entry 4884 (class 0 OID 0)
-- Dependencies: 221
-- Name: orders_orderid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_orderid_seq OWNED BY public.orders.orderid;


--
-- TOC entry 218 (class 1259 OID 26309)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    productid integer NOT NULL,
    name character varying(100),
    description text,
    price numeric(10,2)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 26308)
-- Name: products_productid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_productid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_productid_seq OWNER TO postgres;

--
-- TOC entry 4885 (class 0 OID 0)
-- Dependencies: 217
-- Name: products_productid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_productid_seq OWNED BY public.products.productid;


--
-- TOC entry 224 (class 1259 OID 26351)
-- Name: report; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.report (
    reportid integer NOT NULL,
    totalorders integer,
    totalclients integer
);


ALTER TABLE public.report OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 26350)
-- Name: report_reportid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.report_reportid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.report_reportid_seq OWNER TO postgres;

--
-- TOC entry 4886 (class 0 OID 0)
-- Dependencies: 223
-- Name: report_reportid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.report_reportid_seq OWNED BY public.report.reportid;


--
-- TOC entry 4708 (class 2604 OID 26304)
-- Name: clients clientid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients ALTER COLUMN clientid SET DEFAULT nextval('public.clients_clientid_seq'::regclass);


--
-- TOC entry 4710 (class 2604 OID 26321)
-- Name: employee employeeid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN employeeid SET DEFAULT nextval('public.employee_employeeid_seq'::regclass);


--
-- TOC entry 4711 (class 2604 OID 26342)
-- Name: orders orderid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN orderid SET DEFAULT nextval('public.orders_orderid_seq'::regclass);


--
-- TOC entry 4709 (class 2604 OID 26312)
-- Name: products productid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN productid SET DEFAULT nextval('public.products_productid_seq'::regclass);


--
-- TOC entry 4712 (class 2604 OID 26354)
-- Name: report reportid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report ALTER COLUMN reportid SET DEFAULT nextval('public.report_reportid_seq'::regclass);


--
-- TOC entry 4868 (class 0 OID 26301)
-- Dependencies: 216
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clients (clientid, firstname, middlename, lastname, phonenumber, email) VALUES (1, 'Сергей', 'Иванович', 'Иванов', '+1234567890', 'ivan@example.com');
INSERT INTO public.clients (clientid, firstname, middlename, lastname, phonenumber, email) VALUES (2, 'Петр', 'Петрович', 'Петров', '+0987654321', 'petr@example.com');


--
-- TOC entry 4872 (class 0 OID 26318)
-- Dependencies: 220
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employee (employeeid, firstname, lastname, "MiddleName", "Position", email, phonenumber) VALUES (1, 'Sergey', 'Nosov', 'Alexsandrovich', 'Administrator', 'Sergey.nosov@example.com', '7963125636');


--
-- TOC entry 4874 (class 0 OID 26339)
-- Dependencies: 222
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders (orderid, name, datestart, "clientId") VALUES (1, 'Дрель', '2024-03-01', 1);
INSERT INTO public.orders (orderid, name, datestart, "clientId") VALUES (3, 'Топор', '2024-03-03', 1);
INSERT INTO public.orders (orderid, name, datestart, "clientId") VALUES (2, 'Отвертка', '2024-03-02', 2);
INSERT INTO public.orders (orderid, name, datestart, "clientId") VALUES (4, 'Гвозди', '2024-03-03', NULL);


--
-- TOC entry 4870 (class 0 OID 26309)
-- Dependencies: 218
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products (productid, name, description, price) VALUES (1, 'Дрель', 'Прочный материал, идеально подходит для использования на стройке.', 99.99);
INSERT INTO public.products (productid, name, description, price) VALUES (2, 'Отбойный молоток', 'Легкий и удобный, идеально подходит для домашнего использования.', 149.99);
INSERT INTO public.products (productid, name, description, price) VALUES (3, 'Шуруповерт', 'Современный дизайн, отлично подойдет для современных интерьеров.', 79.99);


--
-- TOC entry 4876 (class 0 OID 26351)
-- Dependencies: 224
-- Data for Name: report; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.report (reportid, totalorders, totalclients) VALUES (1, 150, 70);
INSERT INTO public.report (reportid, totalorders, totalclients) VALUES (3, 120, 60);


--
-- TOC entry 4887 (class 0 OID 0)
-- Dependencies: 215
-- Name: clients_clientid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clients_clientid_seq', 3, true);


--
-- TOC entry 4888 (class 0 OID 0)
-- Dependencies: 219
-- Name: employee_employeeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_employeeid_seq', 1, true);


--
-- TOC entry 4889 (class 0 OID 0)
-- Dependencies: 221
-- Name: orders_orderid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_orderid_seq', 4, true);


--
-- TOC entry 4890 (class 0 OID 0)
-- Dependencies: 217
-- Name: products_productid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_productid_seq', 3, true);


--
-- TOC entry 4891 (class 0 OID 0)
-- Dependencies: 223
-- Name: report_reportid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.report_reportid_seq', 3, true);


--
-- TOC entry 4714 (class 2606 OID 26306)
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (clientid);


--
-- TOC entry 4718 (class 2606 OID 26323)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employeeid);


--
-- TOC entry 4720 (class 2606 OID 26344)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orderid);


--
-- TOC entry 4716 (class 2606 OID 26316)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (productid);


--
-- TOC entry 4722 (class 2606 OID 26356)
-- Name: report report_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_pkey PRIMARY KEY (reportid);


--
-- TOC entry 4723 (class 2606 OID 26345)
-- Name: orders orders_clientId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "orders_clientId_fkey" FOREIGN KEY ("clientId") REFERENCES public.clients(clientid) NOT VALID;


-- Completed on 2024-03-07 00:03:58

--
-- PostgreSQL database dump complete
--

