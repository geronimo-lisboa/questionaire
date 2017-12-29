--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.10
-- Dumped by pg_dump version 9.5.10

-- Started on 2017-12-28 22:15:00 -02

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2159 (class 1262 OID 16508)
-- Name: questionaire; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE questionaire WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE questionaire OWNER TO postgres;

\connect questionaire

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12401)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2162 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 16509)
-- Name: questao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE questao (
    id integer NOT NULL,
    corpo character varying NOT NULL
);


ALTER TABLE questao OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 16515)
-- Name: questao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE questao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE questao_id_seq OWNER TO postgres;

--
-- TOC entry 2163 (class 0 OID 0)
-- Dependencies: 183
-- Name: questao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE questao_id_seq OWNED BY questao.id;


--
-- TOC entry 182 (class 1259 OID 16512)
-- Name: resposta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE resposta (
    id integer NOT NULL,
    id_questao_origem integer NOT NULL,
    id_questao_destino integer,
    corpo character varying NOT NULL
);


ALTER TABLE resposta OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 16528)
-- Name: resposta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE resposta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE resposta_id_seq OWNER TO postgres;

--
-- TOC entry 2164 (class 0 OID 0)
-- Dependencies: 184
-- Name: resposta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE resposta_id_seq OWNED BY resposta.id;


--
-- TOC entry 2033 (class 2604 OID 16517)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY questao ALTER COLUMN id SET DEFAULT nextval('questao_id_seq'::regclass);


--
-- TOC entry 2034 (class 2604 OID 16530)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resposta ALTER COLUMN id SET DEFAULT nextval('resposta_id_seq'::regclass);


--
-- TOC entry 2038 (class 2606 OID 16535)
-- Name: pk_resposta; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resposta
    ADD CONSTRAINT pk_resposta PRIMARY KEY (id);


--
-- TOC entry 2036 (class 2606 OID 16525)
-- Name: questao_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY questao
    ADD CONSTRAINT questao_pk PRIMARY KEY (id);


--
-- TOC entry 2039 (class 2606 OID 16536)
-- Name: fk_questao_resposta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resposta
    ADD CONSTRAINT fk_questao_resposta FOREIGN KEY (id_questao_origem) REFERENCES questao(id);


--
-- TOC entry 2040 (class 2606 OID 16541)
-- Name: fk_resposta_questao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resposta
    ADD CONSTRAINT fk_resposta_questao FOREIGN KEY (id_questao_destino) REFERENCES questao(id);


--
-- TOC entry 2161 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-12-28 22:15:00 -02

--
-- PostgreSQL database dump complete
--

