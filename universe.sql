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
-- Name: cheeseburger; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cheeseburger (
    cheeseburger_id integer NOT NULL,
    name character varying(30),
    vegan boolean NOT NULL
);


ALTER TABLE public.cheeseburger OWNER TO freecodecamp;

--
-- Name: cheeseburger_cheeseburger_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cheeseburger_cheeseburger_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cheeseburger_cheeseburger_id_seq OWNER TO freecodecamp;

--
-- Name: cheeseburger_cheeseburger_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cheeseburger_cheeseburger_id_seq OWNED BY public.cheeseburger.cheeseburger_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_million_years numeric(7,1),
    discovery_year integer
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean NOT NULL,
    discovery_year integer
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
    name character varying(30),
    star_id integer NOT NULL,
    has_life boolean,
    description text,
    planet_from_sun integer
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
    galaxy_id integer NOT NULL,
    star_type character varying(30),
    discovery_year integer
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
-- Name: cheeseburger cheeseburger_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cheeseburger ALTER COLUMN cheeseburger_id SET DEFAULT nextval('public.cheeseburger_cheeseburger_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: cheeseburger; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cheeseburger VALUES (1, 'Destroyer', false);
INSERT INTO public.cheeseburger VALUES (2, 'Astro', false);
INSERT INTO public.cheeseburger VALUES (3, 'Boring', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 23370, 13600.0, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000, 10000.0, NULL);
INSERT INTO public.galaxy VALUES (3, 'Messier 81', 11600, 10000.0, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 236000, 5300.0, NULL);
INSERT INTO public.galaxy VALUES (5, 'Messier 108', 100000, 13420.0, NULL);
INSERT INTO public.galaxy VALUES (6, 'Messier 76', 1528, 100933.0, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4, false, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 3, false, 1877);
INSERT INTO public.moon VALUES (3, 'Deimos', 3, false, 1877);
INSERT INTO public.moon VALUES (4, 'Lo', 5, false, 1610);
INSERT INTO public.moon VALUES (5, 'Europa', 5, false, 1610);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, false, 1610);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, false, 1610);
INSERT INTO public.moon VALUES (8, 'Amalthea', 5, false, 1892);
INSERT INTO public.moon VALUES (9, 'Himalia', 5, false, 1904);
INSERT INTO public.moon VALUES (10, 'Elara', 5, false, 1905);
INSERT INTO public.moon VALUES (11, 'Pasiphae', 5, false, 1908);
INSERT INTO public.moon VALUES (12, 'Sinope', 5, false, 1914);
INSERT INTO public.moon VALUES (13, 'Lysithea', 5, false, 1938);
INSERT INTO public.moon VALUES (14, 'Carme', 5, false, 1938);
INSERT INTO public.moon VALUES (15, 'Ananke', 5, false, 1951);
INSERT INTO public.moon VALUES (16, 'Mimas', 6, false, 1789);
INSERT INTO public.moon VALUES (17, 'Enceladus', 6, false, 1789);
INSERT INTO public.moon VALUES (18, 'Tethys', 6, false, 1684);
INSERT INTO public.moon VALUES (19, 'Dione', 6, false, 1684);
INSERT INTO public.moon VALUES (20, 'Rhea', 6, false, 1672);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, false, 'A fun planet for being vaporized on', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 1, false, 'Experience a slightly slower death than on Mercury', 2);
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, 'Planet with the slowest death. Experience dying here for up to 100 years!', 3);
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, 'has cool rovers', 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, false, 'The Big Star on Campus', 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, false, 'She gassy, but she got a ring on her anyways', 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, false, 'Uranus might be dark, but it aint no black hole', 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, false, 'I got nothing for this one. Super boring planet. Real cold', 8);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri B', 7, false, 'Member of closest solar system to our own', NULL);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri D', 7, false, 'Also a member of Proxima Centauri', NULL);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri C', 7, false, 'Membership in Proxima Centauri is disputed', NULL);
INSERT INTO public.planet VALUES (12, 'Lalande B', 8, false, 'Member of second closest solar system to the sun', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (5, 'Messier1', 4, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Big Boy WP', 4, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 1, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Lalande 21185', 1, NULL, NULL);
INSERT INTO public.star VALUES (1, 'Sun', 1, 'yellow dwarf', NULL);
INSERT INTO public.star VALUES (3, 'Alpha Andromedae', 2, 'binary', NULL);
INSERT INTO public.star VALUES (4, 'SN 1993J', 3, 'supernova', NULL);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 1, 'red dwarf', 1664);


--
-- Name: cheeseburger_cheeseburger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cheeseburger_cheeseburger_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: cheeseburger cheeseburger_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cheeseburger
    ADD CONSTRAINT cheeseburger_name_key UNIQUE (name);


--
-- Name: cheeseburger cheeseburger_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cheeseburger
    ADD CONSTRAINT cheeseburger_pkey PRIMARY KEY (cheeseburger_id);


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
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) MATCH FULL;


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) MATCH FULL;


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id) MATCH FULL;


--
-- PostgreSQL database dump complete
--


