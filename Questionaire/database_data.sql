--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.10
-- Dumped by pg_dump version 9.5.10

-- Started on 2017-12-28 22:23:17 -02

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2155 (class 0 OID 16509)
-- Dependencies: 181
-- Data for Name: questao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY questao (id, corpo) FROM stdin;
1	Sobre o que você quer responder?
2	qual foi a 1a grande horda nomade?
3	Muito bem! e quem os destruiu?
4	Muito bem! Os Tang destruiram primeiro o Gokturk oriental depois o ocidental
5	A Russia nem existia nessa época...
6	Embora seja a mais famosa não é a primeira
\.


--
-- TOC entry 2163 (class 0 OID 0)
-- Dependencies: 183
-- Name: questao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('questao_id_seq', 6, true);


--
-- TOC entry 2156 (class 0 OID 16512)
-- Dependencies: 182
-- Data for Name: resposta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY resposta (id, id_questao_origem, id_questao_destino, corpo) FROM stdin;
1	1	2	hordas nomades
2	2	3	khanganato gokturk
3	3	4	China Tang
4	4	1	Voltar para o começo
5	4	\N	Terminar
6	3	5	Russia
7	5	1	Voltar para o começo
8	5	\N	Terminar
9	2	6	Sultanato Seljuk
10	6	1	Voltar para o começo
\.


--
-- TOC entry 2164 (class 0 OID 0)
-- Dependencies: 184
-- Name: resposta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('resposta_id_seq', 10, true);


-- Completed on 2017-12-28 22:23:17 -02

--
-- PostgreSQL database dump complete
--

