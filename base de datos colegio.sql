toc.dat                                                                                             0000600 0004000 0002000 00000011416 14516320047 0014444 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       	            	    {            COLEGIO    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16397    COLEGIO    DATABASE        CREATE DATABASE "COLEGIO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "COLEGIO";
                postgres    false         �            1259    16398    ALUMNOS    TABLE     �   CREATE TABLE public."ALUMNOS" (
    "NOMBRE " character varying(50),
    "APELLIDO" character varying(50),
    "NMATRICULA" integer NOT NULL,
    "GRADO" character varying(50)
);
    DROP TABLE public."ALUMNOS";
       public         heap    postgres    false         �            1259    16442    AULAS    TABLE     S   CREATE TABLE public."AULAS" (
    "CODIGOPUERTA" character varying(20) NOT NULL
);
    DROP TABLE public."AULAS";
       public         heap    postgres    false         �            1259    16433    GRADOS     TABLE     T   CREATE TABLE public."GRADOS " (
    "CODIGOPUERTA" character varying(5) NOT NULL
);
    DROP TABLE public."GRADOS ";
       public         heap    postgres    false         �            1259    16426    MATERIAS    TABLE     t   CREATE TABLE public."MATERIAS" (
    "NOMBREMATERIA" character varying(50),
    "CODIGOMATERIA" integer NOT NULL
);
    DROP TABLE public."MATERIAS";
       public         heap    postgres    false         �            1259    16405 
   PROFESORES    TABLE     �   CREATE TABLE public."PROFESORES" (
    "NOMBRE" character varying(50),
    "APELLIDO" character varying(50),
    "CEDULA" integer NOT NULL,
    "MATERIA" character varying(50)
);
     DROP TABLE public."PROFESORES";
       public         heap    postgres    false         �          0    16398    ALUMNOS 
   TABLE DATA           Q   COPY public."ALUMNOS" ("NOMBRE ", "APELLIDO", "NMATRICULA", "GRADO") FROM stdin;
    public          postgres    false    215       4802.dat �          0    16442    AULAS 
   TABLE DATA           1   COPY public."AULAS" ("CODIGOPUERTA") FROM stdin;
    public          postgres    false    219       4806.dat �          0    16433    GRADOS  
   TABLE DATA           3   COPY public."GRADOS " ("CODIGOPUERTA") FROM stdin;
    public          postgres    false    218       4805.dat �          0    16426    MATERIAS 
   TABLE DATA           F   COPY public."MATERIAS" ("NOMBREMATERIA", "CODIGOMATERIA") FROM stdin;
    public          postgres    false    217       4804.dat �          0    16405 
   PROFESORES 
   TABLE DATA           Q   COPY public."PROFESORES" ("NOMBRE", "APELLIDO", "CEDULA", "MATERIA") FROM stdin;
    public          postgres    false    216       4803.dat *           2606    16404    ALUMNOS ALUMNOS_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."ALUMNOS"
    ADD CONSTRAINT "ALUMNOS_pkey" PRIMARY KEY ("NMATRICULA");
 B   ALTER TABLE ONLY public."ALUMNOS" DROP CONSTRAINT "ALUMNOS_pkey";
       public            postgres    false    215         2           2606    16446    AULAS AULAS_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."AULAS"
    ADD CONSTRAINT "AULAS_pkey" PRIMARY KEY ("CODIGOPUERTA");
 >   ALTER TABLE ONLY public."AULAS" DROP CONSTRAINT "AULAS_pkey";
       public            postgres    false    219         0           2606    16437    GRADOS  GRADOS _pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."GRADOS "
    ADD CONSTRAINT "GRADOS _pkey" PRIMARY KEY ("CODIGOPUERTA");
 B   ALTER TABLE ONLY public."GRADOS " DROP CONSTRAINT "GRADOS _pkey";
       public            postgres    false    218         .           2606    16432    MATERIAS MATERIAS_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."MATERIAS"
    ADD CONSTRAINT "MATERIAS_pkey" PRIMARY KEY ("CODIGOMATERIA");
 D   ALTER TABLE ONLY public."MATERIAS" DROP CONSTRAINT "MATERIAS_pkey";
       public            postgres    false    217         ,           2606    16409    PROFESORES PROFESORES_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."PROFESORES"
    ADD CONSTRAINT "PROFESORES_pkey" PRIMARY KEY ("CEDULA");
 H   ALTER TABLE ONLY public."PROFESORES" DROP CONSTRAINT "PROFESORES_pkey";
       public            postgres    false    216                                                                                                                                                                                                                                                          4802.dat                                                                                            0000600 0004000 0002000 00000000370 14516320047 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        MANUEL	ARIAS	43667	10A
JHON	NOLE	313242346	9A
MARCELA	GARCIA	214547	8A
LUISA	CORREA	464567	7A
YEISON	LOAIZA	34234565	6A
JHOANATAN	RIOS	788967	5A
SARA	COSTA	565766	4A
KELLY	BERNAL	32542345	3A
JUAN	VILLA	433125234	2A
ANDRES	RESTREPO	21342345	1A
\.


                                                                                                                                                                                                                                                                        4806.dat                                                                                            0000600 0004000 0002000 00000000044 14516320047 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        10A
9A
8A
7A
6A
5A
4A
3A
2A
1A
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            4805.dat                                                                                            0000600 0004000 0002000 00000000044 14516320047 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        10A
9A
8A
7A
6A
5A
4A
3A
2A
1A
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            4804.dat                                                                                            0000600 0004000 0002000 00000000202 14516320047 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        QUIMICA	10
ETICA Y VALORES	9
TRIGONOMETRIA	8
GEOMETRIA	7
SOCIALES	6
INGLES	5
MATEMATICAS	4
FILOSOFIA	3
ESPAÑOL	2
RELIGION	1
\.


                                                                                                                                                                                                                                                                                                                                                                                              4803.dat                                                                                            0000600 0004000 0002000 00000000517 14516320047 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        CARMENZA	MARIN	5645676	GEOMETRIA
ROBERTO	ALZATE	546567	SOCIALES
JORGE	HERRERA	436374567	INGLES
GUSTABO	CORREDOR	57568456	MATEMATICAS
MARIELA	CORREA	5647577	FILOSOFIA
LUCIA	ZAPATA	46546	ESPAÑOL
ALBA	GARCIA	235345	RELIGION
ALBERTO	BUSTAMANTE	4545756	QUIMICA
CARLOS	GOMEZ	3253246	ETICA Y VALORES
JAMES	MOSQUERA	546367	TRIGONOMETRIA
\.


                                                                                                                                                                                 restore.sql                                                                                         0000600 0004000 0002000 00000011150 14516320047 0015364 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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

DROP DATABASE "COLEGIO";
--
-- Name: COLEGIO; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "COLEGIO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE "COLEGIO" OWNER TO postgres;

\connect "COLEGIO"

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
-- Name: ALUMNOS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ALUMNOS" (
    "NOMBRE " character varying(50),
    "APELLIDO" character varying(50),
    "NMATRICULA" integer NOT NULL,
    "GRADO" character varying(50)
);


ALTER TABLE public."ALUMNOS" OWNER TO postgres;

--
-- Name: AULAS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AULAS" (
    "CODIGOPUERTA" character varying(20) NOT NULL
);


ALTER TABLE public."AULAS" OWNER TO postgres;

--
-- Name: GRADOS ; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."GRADOS " (
    "CODIGOPUERTA" character varying(5) NOT NULL
);


ALTER TABLE public."GRADOS " OWNER TO postgres;

--
-- Name: MATERIAS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MATERIAS" (
    "NOMBREMATERIA" character varying(50),
    "CODIGOMATERIA" integer NOT NULL
);


ALTER TABLE public."MATERIAS" OWNER TO postgres;

--
-- Name: PROFESORES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PROFESORES" (
    "NOMBRE" character varying(50),
    "APELLIDO" character varying(50),
    "CEDULA" integer NOT NULL,
    "MATERIA" character varying(50)
);


ALTER TABLE public."PROFESORES" OWNER TO postgres;

--
-- Data for Name: ALUMNOS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ALUMNOS" ("NOMBRE ", "APELLIDO", "NMATRICULA", "GRADO") FROM stdin;
\.
COPY public."ALUMNOS" ("NOMBRE ", "APELLIDO", "NMATRICULA", "GRADO") FROM '$$PATH$$/4802.dat';

--
-- Data for Name: AULAS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AULAS" ("CODIGOPUERTA") FROM stdin;
\.
COPY public."AULAS" ("CODIGOPUERTA") FROM '$$PATH$$/4806.dat';

--
-- Data for Name: GRADOS ; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."GRADOS " ("CODIGOPUERTA") FROM stdin;
\.
COPY public."GRADOS " ("CODIGOPUERTA") FROM '$$PATH$$/4805.dat';

--
-- Data for Name: MATERIAS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MATERIAS" ("NOMBREMATERIA", "CODIGOMATERIA") FROM stdin;
\.
COPY public."MATERIAS" ("NOMBREMATERIA", "CODIGOMATERIA") FROM '$$PATH$$/4804.dat';

--
-- Data for Name: PROFESORES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PROFESORES" ("NOMBRE", "APELLIDO", "CEDULA", "MATERIA") FROM stdin;
\.
COPY public."PROFESORES" ("NOMBRE", "APELLIDO", "CEDULA", "MATERIA") FROM '$$PATH$$/4803.dat';

--
-- Name: ALUMNOS ALUMNOS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ALUMNOS"
    ADD CONSTRAINT "ALUMNOS_pkey" PRIMARY KEY ("NMATRICULA");


--
-- Name: AULAS AULAS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AULAS"
    ADD CONSTRAINT "AULAS_pkey" PRIMARY KEY ("CODIGOPUERTA");


--
-- Name: GRADOS  GRADOS _pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GRADOS "
    ADD CONSTRAINT "GRADOS _pkey" PRIMARY KEY ("CODIGOPUERTA");


--
-- Name: MATERIAS MATERIAS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MATERIAS"
    ADD CONSTRAINT "MATERIAS_pkey" PRIMARY KEY ("CODIGOMATERIA");


--
-- Name: PROFESORES PROFESORES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PROFESORES"
    ADD CONSTRAINT "PROFESORES_pkey" PRIMARY KEY ("CEDULA");


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        