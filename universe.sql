--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    galaxy_discoverer character varying(45),
    galaxy_type_id integer NOT NULL,
    galaxy_radius_al numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(40) NOT NULL,
    descrip text NOT NULL
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    moon_diameter integer NOT NULL,
    moon_solitarie boolean NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    planet_life boolean NOT NULL,
    planet_diameter integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_color character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    star_temp integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'via lactea', 'missing in action', 2, 5285);
INSERT INTO public.galaxy VALUES (2, 'gran nube de magallanes', 'Abd Al-Rahman Al Sufi', 4, 35000);
INSERT INTO public.galaxy VALUES (3, 'eliptica m32', 'Guillaume Le Gentil', 1, 3250);
INSERT INTO public.galaxy VALUES (4, 'andromeda', 'Azophi', 2, 110000);
INSERT INTO public.galaxy VALUES (5, 'del triangulo', 'Giovanni Hodierna', 2, 25000);
INSERT INTO public.galaxy VALUES (6, 'enana de pegaso', 'Alber Wilson', 4, 1000);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'elipticas', 'Galaxia con forma de elipse. Pueden ser nombradas desde E0 hasta E7, donde el número significa lo ovalada que es la galaxia; así, E0 sería una forma de esfera y E7 de plato o disco. También se puede decir que el número indica su excentricidad multiplicada por 10.

Su apariencia muestra escasa estructura y, típicamente, tienen relativamente poca materia interestelar. En consecuencia, estas galaxias también tienen un escaso número de cúmulos abiertos, y la tasa de formación de estrellas es baja. Por el contrario, estas galaxias están dominadas por estrellas viejas, de larga evolución, que orbitan en torno al núcleo en direcciones aleatorias. En este sentido, tienen cierto parecido a los cúmulos globulares.

Las galaxias más grandes son gigantes elípticas. Se cree que la mayoría de las galaxias elípticas son el resultado de la colisión y fusión de galaxias. Estas pueden alcanzar tamaños enormes y con frecuencia se las encuentra en conglomerados mayores de galaxias, cerca del núcleo');
INSERT INTO public.galaxy_type VALUES (2, 'espirales', 'Las galaxias espirales son discos rotantes de estrellas y materia interestelar, con una protuberancia central compuesta principalmente por estrellas más viejas. A partir de esta protuberancia se extienden unos brazos en forma espiral, de brillo variable. Hay dos tipos normales y barradas.

Galaxia de forma espiral con brazos de formación estelar. Las letras minúsculas indican cuán sueltos se encuentran los brazos, siendo "a" los brazos más apretados y "c" los más dispersos.
Galaxias espirales barradas (SBa-c): Galaxia espiral con una banda central de estrellas. Las letras minúsculas tienen la misma interpretación que las galaxias espirales.
Galaxias Espirales Intermedias (SABa-c): Una galaxia que, de acuerdo a su forma, se clasifica entre una galaxia espiral barrada y una galaxia espiral sin barra.');
INSERT INTO public.galaxy_type VALUES (3, 'lenticulares', 'Las galaxias espirales son discos rotantes de estrellas y materia interestelar, con una protuberancia central compuesta principalmente por estrellas más viejas. A partir de esta protuberancia se extienden unos brazos en forma espiral, de brillo variable. Hay dos tipos normales y barradas.

Galaxia de forma espiral con brazos de formación estelar. Las letras minúsculas indican cuán sueltos se encuentran los brazos, siendo "a" los brazos más apretados y "c" los más dispersos.
Galaxias espirales barradas (SBa-c): Galaxia espiral con una banda central de estrellas. Las letras minúsculas tienen la misma interpretación que las galaxias espirales.
Galaxias Espirales Intermedias (SABa-c): Una galaxia que, de acuerdo a su forma, se clasifica entre una galaxia espiral barrada y una galaxia espiral sin barra.');
INSERT INTO public.galaxy_type VALUES (4, 'irregulares', 'Una galaxia irregular es una galaxia que no encaja en ninguna clasificación de galaxias de la secuencia de Hubble. Son galaxias sin forma espiral ni elíptica.

Hay dos tipos de galaxias irregulares. Una galaxia Irr-I (Irr I) es una galaxia irregular que muestra alguna estructura pero no lo suficiente para encuadrarla claramente en la clasificación de la secuencia de Hubble. Una galaxia Irr-II (Irr II) es una galaxia irregular que no muestra ninguna estructura que pueda encuadrarla en la secuencia de Hubble.

Las galaxias enanas irregulares suelen etiquetarse como dI. Algunas galaxias irregulares son pequeñas galaxias espirales distorsionadas por la gravedad de un vecino mucho mayor.

Del total de galaxias observadas hasta la fecha solo un 4.7 % de las galaxias brillantes reciben el nombre de galaxia irregular.');
INSERT INTO public.galaxy_type VALUES (5, 'activas', 'Las galaxias activas son galaxias que liberan grandes cantidades de energía y/o materia al medio interestelar mediante procesos que no están relacionados con los procesos estelares ordinarios. Aproximadamente un 10 % de las galaxias pueden clasificarse como galaxias activas.

La mayor parte de la energía emitida por las galaxias activas proviene de una pequeña y brillante región del núcleo de la galaxia, y en muchos casos se observan líneas espectrales de emisión anchas y/o estrechas, que evidencian la existencia de grandes masas de gas girando alrededor del centro de la galaxia.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, 3476, true);
INSERT INTO public.moon VALUES (2, 'Deimos', 4, 8, false);
INSERT INTO public.moon VALUES (3, 'Phobos', 4, 560, false);
INSERT INTO public.moon VALUES (4, 'Adrastea', 5, 416, false);
INSERT INTO public.moon VALUES (5, 'Callisto', 5, 4800, false);
INSERT INTO public.moon VALUES (6, 'Carme', 5, 30, false);
INSERT INTO public.moon VALUES (7, 'Chaldene', 5, 4, false);
INSERT INTO public.moon VALUES (8, 'Carpo', 5, 3, false);
INSERT INTO public.moon VALUES (9, 'Dione', 6, 1120, false);
INSERT INTO public.moon VALUES (10, 'Enceladus', 6, 498, false);
INSERT INTO public.moon VALUES (11, 'Iapetus', 6, 1436, false);
INSERT INTO public.moon VALUES (12, 'Mimas', 6, 398, false);
INSERT INTO public.moon VALUES (13, 'Rhea', 6, 1528, false);
INSERT INTO public.moon VALUES (14, 'Tehys', 6, 1060, false);
INSERT INTO public.moon VALUES (15, 'Ariel', 7, 1160, false);
INSERT INTO public.moon VALUES (16, 'Belinda', 7, 66, false);
INSERT INTO public.moon VALUES (17, 'Bianca', 7, 42, false);
INSERT INTO public.moon VALUES (18, 'Despina', 8, 160, false);
INSERT INTO public.moon VALUES (19, 'Galatea', 8, 140, false);
INSERT INTO public.moon VALUES (20, 'Larissa', 8, 140, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 4, false, 4878);
INSERT INTO public.planet VALUES (2, 'Venus', 4, false, 12100);
INSERT INTO public.planet VALUES (3, 'Tierra', 4, true, 12756);
INSERT INTO public.planet VALUES (4, 'Marte', 4, false, 6787);
INSERT INTO public.planet VALUES (5, 'Júpiter', 4, false, 142984);
INSERT INTO public.planet VALUES (6, 'Saturno', 4, false, 120536);
INSERT INTO public.planet VALUES (7, 'Urano', 4, false, 51108);
INSERT INTO public.planet VALUES (8, 'Neptuno', 4, false, 49538);
INSERT INTO public.planet VALUES (9, 'GLIESE 581', 7, false, 416030);
INSERT INTO public.planet VALUES (10, 'Gliese 581 e', 7, false, 403510);
INSERT INTO public.planet VALUES (11, 'Gliese 581 d', 7, false, 14016);
INSERT INTO public.planet VALUES (12, 'Gliese 581 b', 7, false, 19113);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuse', 'Rojo naranja', 1, 2000);
INSERT INTO public.star VALUES (2, 'Antares', 'Anaranjado', 1, 3000);
INSERT INTO public.star VALUES (3, 'Arturo', 'Anaranjado amarillento', 1, 4700);
INSERT INTO public.star VALUES (4, 'Sol', 'Amarillo', 1, 6000);
INSERT INTO public.star VALUES (5, 'Canopus', 'Blanco amarillento', 1, 7500);
INSERT INTO public.star VALUES (6, 'Sirio', 'Blanco', 1, 11500);
INSERT INTO public.star VALUES (7, 'gliese 581', 'roja', 1, 3480);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: galaxy_type galaxy_type_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_galaxy_type_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


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
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

