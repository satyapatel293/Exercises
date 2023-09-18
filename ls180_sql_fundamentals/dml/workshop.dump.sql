--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Homebrew)
-- Dumped by pg_dump version 15.4 (Homebrew)

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
-- Name: devices; Type: TABLE; Schema: public; Owner: satyapatel
--

CREATE TABLE public.devices (
    id integer NOT NULL,
    name text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.devices OWNER TO satyapatel;

--
-- Name: devices_id_seq; Type: SEQUENCE; Schema: public; Owner: satyapatel
--

CREATE SEQUENCE public.devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.devices_id_seq OWNER TO satyapatel;

--
-- Name: devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: satyapatel
--

ALTER SEQUENCE public.devices_id_seq OWNED BY public.devices.id;


--
-- Name: parts; Type: TABLE; Schema: public; Owner: satyapatel
--

CREATE TABLE public.parts (
    id integer NOT NULL,
    part_number integer NOT NULL,
    device_id integer
);


ALTER TABLE public.parts OWNER TO satyapatel;

--
-- Name: parts_id_seq; Type: SEQUENCE; Schema: public; Owner: satyapatel
--

CREATE SEQUENCE public.parts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parts_id_seq OWNER TO satyapatel;

--
-- Name: parts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: satyapatel
--

ALTER SEQUENCE public.parts_id_seq OWNED BY public.parts.id;


--
-- Name: devices id; Type: DEFAULT; Schema: public; Owner: satyapatel
--

ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq'::regclass);


--
-- Name: parts id; Type: DEFAULT; Schema: public; Owner: satyapatel
--

ALTER TABLE ONLY public.parts ALTER COLUMN id SET DEFAULT nextval('public.parts_id_seq'::regclass);


--
-- Data for Name: devices; Type: TABLE DATA; Schema: public; Owner: satyapatel
--

INSERT INTO public.devices VALUES (1, 'Accelerometer', '2023-09-13 18:27:20.824027');
INSERT INTO public.devices VALUES (2, 'Gyroscope', '2023-09-13 18:27:20.824027');
INSERT INTO public.devices VALUES (3, 'Magnetometer', '2023-09-16 14:30:50.343826');


--
-- Data for Name: parts; Type: TABLE DATA; Schema: public; Owner: satyapatel
--

INSERT INTO public.parts VALUES (12, 12, 1);
INSERT INTO public.parts VALUES (13, 14, 1);
INSERT INTO public.parts VALUES (14, 16, 1);
INSERT INTO public.parts VALUES (15, 31, 2);
INSERT INTO public.parts VALUES (16, 33, 2);
INSERT INTO public.parts VALUES (17, 35, 2);
INSERT INTO public.parts VALUES (18, 37, 2);
INSERT INTO public.parts VALUES (19, 39, 2);
INSERT INTO public.parts VALUES (20, 50, NULL);
INSERT INTO public.parts VALUES (21, 54, NULL);
INSERT INTO public.parts VALUES (22, 58, NULL);
INSERT INTO public.parts VALUES (23, 42, 3);


--
-- Name: devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: satyapatel
--

SELECT pg_catalog.setval('public.devices_id_seq', 3, true);


--
-- Name: parts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: satyapatel
--

SELECT pg_catalog.setval('public.parts_id_seq', 23, true);


--
-- Name: devices devices_pkey; Type: CONSTRAINT; Schema: public; Owner: satyapatel
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);


--
-- Name: parts parts_part_number_key; Type: CONSTRAINT; Schema: public; Owner: satyapatel
--

ALTER TABLE ONLY public.parts
    ADD CONSTRAINT parts_part_number_key UNIQUE (part_number);


--
-- Name: parts parts_pkey; Type: CONSTRAINT; Schema: public; Owner: satyapatel
--

ALTER TABLE ONLY public.parts
    ADD CONSTRAINT parts_pkey PRIMARY KEY (id);


--
-- Name: parts parts_device_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: satyapatel
--

ALTER TABLE ONLY public.parts
    ADD CONSTRAINT parts_device_id_fkey FOREIGN KEY (device_id) REFERENCES public.devices(id);


--
-- PostgreSQL database dump complete
--

