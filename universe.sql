--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: container; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.container (
    container_id integer NOT NULL,
    name character varying(30) NOT NULL,
    item_id integer
);


ALTER TABLE public.container OWNER TO freecodecamp;

--
-- Name: container_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.container_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.container_id_seq OWNER TO freecodecamp;

--
-- Name: container_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.container_id_seq OWNED BY public.container.container_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth numeric(4,1),
    age integer,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth numeric(4,1),
    age integer,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth numeric(4,1),
    age integer,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth numeric(4,1),
    age integer,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: container container_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.container ALTER COLUMN container_id SET DEFAULT nextval('public.container_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: container; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.container VALUES (1, 'Hola', NULL);
INSERT INTO public.container VALUES (2, 'Que', NULL);
INSERT INTO public.container VALUES (3, 'Hace', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Es una galaxia cercana', 150.0, 7, NULL);
INSERT INTO public.galaxy VALUES (2, 'Nebulosa cangrejo', 'La mas antigua', 13.0, 90, NULL);
INSERT INTO public.galaxy VALUES (3, 'Mario', 'Referencia a un juego', 17.0, 1, NULL);
INSERT INTO public.galaxy VALUES (4, 'Luigi', 'Otra referencia', 17.0, 2, NULL);
INSERT INTO public.galaxy VALUES (5, 'Arp', 'Una encontrada', 20.0, 5, NULL);
INSERT INTO public.galaxy VALUES (6, 'BL Lacertae', 'No se nada kaskjas', 12.0, 34, NULL);
INSERT INTO public.galaxy VALUES (7, 'Andromeda VI', 'Tiene mismo nombre', 20.0, 99, NULL);
INSERT INTO public.galaxy VALUES (8, 'Andromeda VII', 'Es otra mas tarde', 24.0, 10, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lunita', 'de tierra', 2.0, 2, NULL, 2);
INSERT INTO public.moon VALUES (2, 'De mercurio', 'no se', 2.0, 2, NULL, 2);
INSERT INTO public.moon VALUES (3, 'De venus', 'no se', 2.0, 3, NULL, 3);
INSERT INTO public.moon VALUES (4, 'Yue', 'la de avatar', 3.0, 3, NULL, 3);
INSERT INTO public.moon VALUES (6, 'Marciana', 'Tiene 2', 23.0, 53, NULL, 3);
INSERT INTO public.moon VALUES (8, 'jupiter 1', 'Es la uno', 23.0, 231, NULL, 3);
INSERT INTO public.moon VALUES (9, 'Jupiter 2', 'segunda', 23.0, 232, NULL, 7);
INSERT INTO public.moon VALUES (10, 'Jupiter3', 'tercer', 232.0, 232, NULL, 7);
INSERT INTO public.moon VALUES (11, 'Jaska', 'as', 23.0, 12, NULL, 2);
INSERT INTO public.moon VALUES (12, 'Sus', 'Amogus', 45.0, 21, NULL, 12);
INSERT INTO public.moon VALUES (13, 'al', 'as', 232.0, 23, NULL, 13);
INSERT INTO public.moon VALUES (14, 'Jupiter 5', 'quinta', 23.0, 23, NULL, 7);
INSERT INTO public.moon VALUES (15, 'Ocho', 'octava', 23.0, 64, NULL, 9);
INSERT INTO public.moon VALUES (16, 'No se', 'Tantas lunas', 239.0, 99, NULL, 14);
INSERT INTO public.moon VALUES (17, 'ASASA', 'ASD', 20.0, 25, NULL, 10);
INSERT INTO public.moon VALUES (18, 'Yugopotamiamoon', 'es la de yugopotamia', 231.0, 90, NULL, 9);
INSERT INTO public.moon VALUES (19, 'Nanek1', 'luna de namek', 45.0, 45, NULL, 6);
INSERT INTO public.moon VALUES (20, 'Yuesas', 'la gemela yue', 2.0, 2, NULL, 3);
INSERT INTO public.moon VALUES (21, 'Sumadre', 'nose', 123.0, 123, NULL, 5);
INSERT INTO public.moon VALUES (22, 'Persona', 'El 3 es el mejor', 23.0, 12, NULL, 12);
INSERT INTO public.moon VALUES (23, 'SMT', 'Shin megami tensei', 1.0, 1, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercurio', 'Sweet Dreams', 2.0, 3, NULL, 5);
INSERT INTO public.planet VALUES (3, 'Venus', 'Segundo mas cercano', 2.0, 2, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Tierra', 'donde estamos', 2.0, 2, NULL, 2);
INSERT INTO public.planet VALUES (6, 'Marte', 'Me convierto en marciano', 2.0, 2, NULL, 2);
INSERT INTO public.planet VALUES (7, 'Neptuno', 'Como el dios', 2.0, 2, NULL, 2);
INSERT INTO public.planet VALUES (8, 'Jupiter', 'Zeus', 2.0, 2, NULL, 2);
INSERT INTO public.planet VALUES (9, 'Uranuss', 'No sea confianzudo', 2.0, 2, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Pluton', 'Ya no es aklssa', 2.0, 2, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Yugopotamia', 'Es donde vive el mark', 3.0, 76, NULL, 3);
INSERT INTO public.planet VALUES (12, 'Namek', 'Donde goku se roba enanos verdes', 5.0, 21, NULL, 4);
INSERT INTO public.planet VALUES (13, 'Contratierra', 'pues no se', 2.0, 65, NULL, 6);
INSERT INTO public.planet VALUES (14, 'Yucatan', 'Nadie les entiende', 2.0, 2, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 'Es la del sistema solar', 8.0, 13, NULL, 1);
INSERT INTO public.star VALUES (3, 'Gigant red', 'Es una estrella que se acabo su masa', 15.0, 2, NULL, 2);
INSERT INTO public.star VALUES (4, 'Enana roja', 'Es igual pero mas chiquite', 12.0, 3, NULL, 4);
INSERT INTO public.star VALUES (5, 'Supernova', 'Exploto', 122.0, 23, NULL, 3);
INSERT INTO public.star VALUES (6, 'Hoyo negro', 'Colapso', 12.0, 3, NULL, 5);
INSERT INTO public.star VALUES (7, 'constelacion', 'muchas juntas', 1.0, 2, NULL, 2);


--
-- Name: container_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.container_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 8, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 23, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: container container_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.container
    ADD CONSTRAINT container_id_key UNIQUE (container_id);


--
-- Name: container container_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.container
    ADD CONSTRAINT container_pkey PRIMARY KEY (container_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

