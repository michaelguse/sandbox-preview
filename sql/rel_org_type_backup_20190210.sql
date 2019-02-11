--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.11
-- Dumped by pg_dump version 10.5

-- Started on 2019-02-10 21:56:32 CST

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
-- TOC entry 186 (class 1259 OID 3540657)
-- Name: rel_org_type; Type: TABLE; Schema: public; Owner: cdqcitxuijvguz
--

CREATE TABLE public.rel_org_type (
    id integer DEFAULT nextval('public.rel_org_type_id_seq'::regclass) NOT NULL,
    internal_rel_name numeric(3,0) NOT NULL,
    external_rel_name character varying(10) NOT NULL,
    org_id character varying(5) NOT NULL,
    org_type character varying(15) NOT NULL,
    org_region character varying NOT NULL
);


ALTER TABLE public.rel_org_type OWNER TO cdqcitxuijvguz;

--
-- TOC entry 3009 (class 0 OID 3540657)
-- Dependencies: 186
-- Data for Name: rel_org_type; Type: TABLE DATA; Schema: public; Owner: cdqcitxuijvguz
--

COPY public.rel_org_type (id, internal_rel_name, external_rel_name, org_id, org_type, org_region) FROM stdin;
1	218	Spring '19	CS1	Non-Preview	Americas
6	218	Spring '19	CS6	Non-Preview	Asia
8	218	Spring '19	CS8	Non-Preview	Americas
10	218	Spring '19	CS10	Non-Preview	Americas
16	218	Spring '19	CS16	Non-Preview	Americas
18	218	Spring '19	CS18	Non-Preview	Americas
22	218	Spring '19	CS22	Non-Preview	Americas
24	218	Spring '19	CS24	Non-Preview	Americas
32	218	Spring '19	CS33	Non-Preview	Americas
33	218	Spring '19	CS40	Non-Preview	Americas
36	218	Spring '19	CS43	Non-Preview	Americas
40	218	Spring '19	CS50	Non-Preview	Americas
42	218	Spring '19	CS52	Non-Preview	Americas
46	218	Spring '19	CS58	Non-Preview	Asia
48	218	Spring '19	CS60	Non-Preview	Americas
50	218	Spring '19	CS62	Non-Preview	Americas
52	218	Spring '19	CS64	Non-Preview	Americas
53	218	Spring '19	CS65	Non-Preview	Americas
54	218	Spring '19	CS66	Non-Preview	Americas
56	218	Spring '19	CS68	Non-Preview	Americas
58	218	Spring '19	CS70	Non-Preview	Americas
66	218	Spring '19	CS82	Non-Preview	Europe
70	218	Spring '19	CS86	Non-Preview	Europe
73	218	Spring '19	CS89	Non-Preview	Europe
74	218	Spring '19	CS90	Non-Preview	Americas
76	218	Spring '19	CS92	Non-Preview	Americas
179	218	Spring '19	CS73	Non-Preview	Asia
183	218	Spring '19	CS103	Non-Preview	Europe
2	218	Spring '19	CS2	Preview	Americas
3	218	Spring '19	CS3	Preview	Americas
4	218	Spring '19	CS4	Preview	Americas
5	218	Spring '19	CS5	Preview	Asia
7	218	Spring '19	CS7	Preview	Americas
9	218	Spring '19	CS9	Preview	Americas
11	218	Spring '19	CS11	Preview	Americas
12	218	Spring '19	CS12	Preview	Americas
13	218	Spring '19	CS13	Preview	Americas
14	218	Spring '19	CS14	Preview	Americas
15	218	Spring '19	CS15	Preview	Americas
17	218	Spring '19	CS17	Preview	Americas
19	218	Spring '19	CS19	Preview	Americas
20	218	Spring '19	CS20	Preview	Americas
21	218	Spring '19	CS21	Preview	Americas
23	218	Spring '19	CS23	Preview	Americas
25	218	Spring '19	CS25	Preview	Americas
26	218	Spring '19	CS26	Preview	Americas
27	218	Spring '19	CS27	Preview	Americas
28	218	Spring '19	CS28	Preview	Americas
29	218	Spring '19	CS30	Preview	Americas
30	218	Spring '19	CS31	Preview	Asia
180	218	Spring '19	CS74	Preview	Asia
181	218	Spring '19	CS75	Preview	Asia
182	218	Spring '19	CS76	Preview	Asia
184	218	Spring '19	CS104	Preview	Europe
185	218	Spring '19	CS137	Preview	Asia
186	218	Spring '19	CS138	Preview	Americas
31	218	Spring '19	CS32	Preview	Americas
34	218	Spring '19	CS41	Preview	Americas
35	218	Spring '19	CS42	Preview	Americas
37	218	Spring '19	CS44	Preview	Americas
38	218	Spring '19	CS45	Preview	Americas
39	218	Spring '19	CS47	Preview	Americas
41	218	Spring '19	CS51	Preview	Americas
43	218	Spring '19	CS53	Preview	Americas
44	218	Spring '19	CS54	Preview	Americas
45	218	Spring '19	CS57	Preview	Asia
47	218	Spring '19	CS59	Preview	Americas
49	218	Spring '19	CS61	Preview	Americas
51	218	Spring '19	CS63	Preview	Americas
55	218	Spring '19	CS67	Preview	Americas
57	218	Spring '19	CS69	Preview	Americas
59	218	Spring '19	CS71	Preview	Americas
60	218	Spring '19	CS72	Preview	Asia
61	218	Spring '19	CS77	Preview	Americas
62	218	Spring '19	CS78	Preview	Americas
63	218	Spring '19	CS79	Preview	Americas
64	218	Spring '19	CS80	Preview	Europe
65	218	Spring '19	CS81	Preview	Europe
67	218	Spring '19	CS83	Preview	Europe
68	218	Spring '19	CS84	Preview	Europe
69	218	Spring '19	CS85	Preview	Europe
71	218	Spring '19	CS87	Preview	Europe
72	218	Spring '19	CS88	Preview	Europe
75	218	Spring '19	CS91	Preview	Americas
78	218	Spring '19	CS94	Non-Preview	Americas
82	218	Spring '19	CS98	Non-Preview	Americas
84	218	Spring '19	CS115	Non-Preview	Asia
171	218	Spring '19	CS100	Non-Preview	Europe
172	218	Spring '19	CS101	Non-Preview	Europe
173	218	Spring '19	CS102	Non-Preview	Europe
77	218	Spring '19	CS93	Preview	Americas
79	218	Spring '19	CS95	Preview	Americas
80	218	Spring '19	CS96	Preview	Americas
81	218	Spring '19	CS97	Preview	Americas
83	218	Spring '19	CS99	Preview	Americas
85	218	Spring '19	CS116	Preview	Asia
174	218	Spring '19	CS105	Preview	Europe
175	218	Spring '19	CS106	Preview	Europe
176	218	Spring '19	CS107	Preview	Europe
177	218	Spring '19	CS108	Preview	Europe
178	218	Spring '19	CS109	Preview	Europe
\.


--
-- TOC entry 2891 (class 2606 OID 3540665)
-- Name: rel_org_type rel_org_type_pkey; Type: CONSTRAINT; Schema: public; Owner: cdqcitxuijvguz
--

ALTER TABLE ONLY public.rel_org_type
    ADD CONSTRAINT rel_org_type_pkey PRIMARY KEY (id);


-- Completed on 2019-02-10 21:56:36 CST

--
-- PostgreSQL database dump complete
--

