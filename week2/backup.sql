--
-- PostgreSQL database dump
--

\restrict VCewriTw4exYcacGai6aUuk6kmKd0GSh33c0gmEkuzuqeGmsQAAQaEEb7aSyJfA

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: store; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA store;


ALTER SCHEMA store OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Customer; Type: TABLE; Schema: store; Owner: postgres
--

CREATE TABLE store."Customer" (
    "CustomerID" character(6) NOT NULL,
    "LastName" character varying,
    "FirstName" character varying,
    "Address" character varying,
    "City" character varying,
    "State" character varying,
    "Zip" character varying,
    "Phone" character varying
);


ALTER TABLE store."Customer" OWNER TO postgres;

--
-- Name: Order; Type: TABLE; Schema: store; Owner: postgres
--

CREATE TABLE store."Order" (
    "ProductID" character(6),
    "OrderID" character(6) NOT NULL,
    "CustomerID" character(6),
    "PurchaseDate" date,
    "Quantity" integer,
    "TotalCost" money
);


ALTER TABLE store."Order" OWNER TO postgres;

--
-- Name: Product; Type: TABLE; Schema: store; Owner: postgres
--

CREATE TABLE store."Product" (
    "ProductID" character(6) NOT NULL,
    "ProductName" character varying(40),
    "Model" character varying(10),
    "Manufacturer" character varying(40),
    "UnitPrice" money,
    "Inventory" integer
);


ALTER TABLE store."Product" OWNER TO postgres;

--
-- Data for Name: Customer; Type: TABLE DATA; Schema: store; Owner: postgres
--

COPY store."Customer" ("CustomerID", "LastName", "FirstName", "Address", "City", "State", "Zip", "Phone") FROM stdin;
BLU001	Blum	Jessica	229 State	Whiting	IN	46300	555-0921
BLU003	AAAA	Katie	342 Pine	Hammond	IN	46200	555-9242
BLU005	Bbbbbbbb	Rich	123 Main St.	Chicago	IL	60633	555-1234
WIL001	Williams	Frank	456 Oak St.	Hammond	IN	46102	\N
\.


--
-- Data for Name: Order; Type: TABLE DATA; Schema: store; Owner: postgres
--

COPY store."Order" ("ProductID", "OrderID", "CustomerID", "PurchaseDate", "Quantity", "TotalCost") FROM stdin;
LAP001	ODR001	BLU001	2012-08-21	1	$1.30
LAP002	ODR002	BLU003	2012-02-03	2	$2.00
LAP001	ORD003	WIL001	2012-06-06	1	$1.30
\.


--
-- Data for Name: Product; Type: TABLE DATA; Schema: store; Owner: postgres
--

COPY store."Product" ("ProductID", "ProductName", "Model", "Manufacturer", "UnitPrice", "Inventory") FROM stdin;
LAP001	Vaio CR31Z	CR	Sony Vaio	$1.30	5
LAP002	HP AZE	HP	\N	$1.00	18
LAP003	HP 34	HP	HP	$1,000.00	200
\.


--
-- Name: Customer Customer_pkey; Type: CONSTRAINT; Schema: store; Owner: postgres
--

ALTER TABLE ONLY store."Customer"
    ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("CustomerID");


--
-- Name: Order Order_pkey; Type: CONSTRAINT; Schema: store; Owner: postgres
--

ALTER TABLE ONLY store."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY ("OrderID");


--
-- Name: Product Product_pkey; Type: CONSTRAINT; Schema: store; Owner: postgres
--

ALTER TABLE ONLY store."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY ("ProductID");


--
-- PostgreSQL database dump complete
--

\unrestrict VCewriTw4exYcacGai6aUuk6kmKd0GSh33c0gmEkuzuqeGmsQAAQaEEb7aSyJfA

