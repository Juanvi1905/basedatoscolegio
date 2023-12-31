toc.dat                                                                                             0000600 0004000 0002000 00000011255 14516324332 0014446 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   "    .            	    {            COLEGIO    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16397    COLEGIO    DATABASE        CREATE DATABASE "COLEGIO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "COLEGIO";
                postgres    false         �            1259    16398    alumnos    TABLE     �   CREATE TABLE public.alumnos (
    "NOMBRE " character varying(50),
    "APELLIDO" character varying(50),
    "NMATRICULA" integer NOT NULL,
    "GRADO" character varying(50),
    aula character varying
);
    DROP TABLE public.alumnos;
       public         heap    postgres    false         �            1259    16442    aulas    TABLE     [   CREATE TABLE public.aulas (
    codigo character varying(20) NOT NULL,
    piso integer
);
    DROP TABLE public.aulas;
       public         heap    postgres    false         �            1259    16454    materias    TABLE     h   CREATE TABLE public.materias (
    codigomateria integer NOT NULL,
    materia character varying(50)
);
    DROP TABLE public.materias;
       public         heap    postgres    false         �            1259    16405 
   profesores    TABLE     �   CREATE TABLE public.profesores (
    "NOMBRE" character varying(50),
    "APELLIDO" character varying(50),
    "CEDULA" integer NOT NULL,
    materia integer
);
    DROP TABLE public.profesores;
       public         heap    postgres    false         �          0    16398    alumnos 
   TABLE DATA           U   COPY public.alumnos ("NOMBRE ", "APELLIDO", "NMATRICULA", "GRADO", aula) FROM stdin;
    public          postgres    false    215       4798.dat �          0    16442    aulas 
   TABLE DATA           -   COPY public.aulas (codigo, piso) FROM stdin;
    public          postgres    false    217       4800.dat �          0    16454    materias 
   TABLE DATA           :   COPY public.materias (codigomateria, materia) FROM stdin;
    public          postgres    false    218       4801.dat �          0    16405 
   profesores 
   TABLE DATA           M   COPY public.profesores ("NOMBRE", "APELLIDO", "CEDULA", materia) FROM stdin;
    public          postgres    false    216       4799.dat &           2606    16404    alumnos ALUMNOS_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT "ALUMNOS_pkey" PRIMARY KEY ("NMATRICULA");
 @   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT "ALUMNOS_pkey";
       public            postgres    false    215         *           2606    16446    aulas AULAS_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.aulas
    ADD CONSTRAINT "AULAS_pkey" PRIMARY KEY (codigo);
 <   ALTER TABLE ONLY public.aulas DROP CONSTRAINT "AULAS_pkey";
       public            postgres    false    217         (           2606    16409    profesores PROFESORES_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT "PROFESORES_pkey" PRIMARY KEY ("CEDULA");
 F   ALTER TABLE ONLY public.profesores DROP CONSTRAINT "PROFESORES_pkey";
       public            postgres    false    216         ,           2606    16458    materias materias_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (codigomateria);
 @   ALTER TABLE ONLY public.materias DROP CONSTRAINT materias_pkey;
       public            postgres    false    218         -           2606    16449    alumnos aula    FK CONSTRAINT     v   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT aula FOREIGN KEY (aula) REFERENCES public.aulas(codigo) NOT VALID;
 6   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT aula;
       public          postgres    false    217    4650    215         .           2606    16459    profesores materias    FK CONSTRAINT     �   ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT materias FOREIGN KEY (materia) REFERENCES public.materias(codigomateria) NOT VALID;
 =   ALTER TABLE ONLY public.profesores DROP CONSTRAINT materias;
       public          postgres    false    218    4652    216                                                                                                                                                                                                                                                                                                                                                           4798.dat                                                                                            0000600 0004000 0002000 00000000427 14516324332 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        JHON	NOLE	313242346	9A	\N
LUISA	CORREA	464567	7A	\N
YEISON	LOAIZA	34234565	6A	\N
JHOANATAN	RIOS	788967	5A	\N
SARA	COSTA	565766	4A	\N
KELLY	BERNAL	32542345	3A	\N
JUAN	VILLA	433125234	2A	\N
ANDRES	RESTREPO	21342345	1A	\N
MANUEL	ARIAS	43667	10A	10A
MARCELA	GARCIA	214547	8A	1A
\.


                                                                                                                                                                                                                                         4800.dat                                                                                            0000600 0004000 0002000 00000000100 14516324332 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        9A	\N
8A	\N
7A	\N
6A	\N
5A	\N
4A	\N
3A	\N
2A	\N
10A	1
1A	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                4801.dat                                                                                            0000600 0004000 0002000 00000000200 14516324332 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        10	deporte
9	etica y valores
8	religion
7	calculo
6	trigonometria
5	fisica
4	quimica 
3	sociales
2	español
1	matematicas 
\.


                                                                                                                                                                                                                                                                                                                                                                                                4799.dat                                                                                            0000600 0004000 0002000 00000000401 14516324332 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        CARMENZA	MARIN	5645676	\N
JORGE	HERRERA	436374567	\N
GUSTABO	CORREDOR	57568456	\N
MARIELA	CORREA	5647577	\N
ALBERTO	BUSTAMANTE	4545756	\N
CARLOS	GOMEZ	3253246	\N
LUCIA	ZAPATA	46546	1
ALBA	GARCIA	235345	2
JAMES	MOSQUERA	546367	3
ROBERTO	ALZATE	546567	4
\.


                                                                                                                                                                                                                                                               restore.sql                                                                                         0000600 0004000 0002000 00000010614 14516324332 0015371 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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
-- Name: alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumnos (
    "NOMBRE " character varying(50),
    "APELLIDO" character varying(50),
    "NMATRICULA" integer NOT NULL,
    "GRADO" character varying(50),
    aula character varying
);


ALTER TABLE public.alumnos OWNER TO postgres;

--
-- Name: aulas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aulas (
    codigo character varying(20) NOT NULL,
    piso integer
);


ALTER TABLE public.aulas OWNER TO postgres;

--
-- Name: materias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materias (
    codigomateria integer NOT NULL,
    materia character varying(50)
);


ALTER TABLE public.materias OWNER TO postgres;

--
-- Name: profesores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesores (
    "NOMBRE" character varying(50),
    "APELLIDO" character varying(50),
    "CEDULA" integer NOT NULL,
    materia integer
);


ALTER TABLE public.profesores OWNER TO postgres;

--
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumnos ("NOMBRE ", "APELLIDO", "NMATRICULA", "GRADO", aula) FROM stdin;
\.
COPY public.alumnos ("NOMBRE ", "APELLIDO", "NMATRICULA", "GRADO", aula) FROM '$$PATH$$/4798.dat';

--
-- Data for Name: aulas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aulas (codigo, piso) FROM stdin;
\.
COPY public.aulas (codigo, piso) FROM '$$PATH$$/4800.dat';

--
-- Data for Name: materias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.materias (codigomateria, materia) FROM stdin;
\.
COPY public.materias (codigomateria, materia) FROM '$$PATH$$/4801.dat';

--
-- Data for Name: profesores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesores ("NOMBRE", "APELLIDO", "CEDULA", materia) FROM stdin;
\.
COPY public.profesores ("NOMBRE", "APELLIDO", "CEDULA", materia) FROM '$$PATH$$/4799.dat';

--
-- Name: alumnos ALUMNOS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT "ALUMNOS_pkey" PRIMARY KEY ("NMATRICULA");


--
-- Name: aulas AULAS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aulas
    ADD CONSTRAINT "AULAS_pkey" PRIMARY KEY (codigo);


--
-- Name: profesores PROFESORES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT "PROFESORES_pkey" PRIMARY KEY ("CEDULA");


--
-- Name: materias materias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (codigomateria);


--
-- Name: alumnos aula; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT aula FOREIGN KEY (aula) REFERENCES public.aulas(codigo) NOT VALID;


--
-- Name: profesores materias; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT materias FOREIGN KEY (materia) REFERENCES public.materias(codigomateria) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    