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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_water boolean
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
    planet_id integer,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_water boolean
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    object_id integer,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_water boolean
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
    galaxy_id integer,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_water boolean
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 500000, 1000000, 10.1, 'Dark Matter, Stars', true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 600000, 1100000, 13.5, 'Stars, Gas', true);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 250000, 500000, 12.7, 'Stars, Dust', false);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 300000, 600000, 2.7, 'Gas, Dust', true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 350000, 700000, 8.0, 'Stars, Gas, Dust', true);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 400000, 900000, 12.3, 'Stars, Dark Matter', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Luna', 38000, 21900, 4.5, 'Rock, Dust', false);
INSERT INTO public.moon VALUES (2, 1, 'Phobos', 5500, 5723, 4.6, 'Rock, Iron', false);
INSERT INTO public.moon VALUES (3, 2, 'Deimos', 7000, 1200, 4.6, 'Rock, Ice', false);
INSERT INTO public.moon VALUES (4, 2, 'Charon', 8000, 1500, 4.0, 'Ice, Rock', true);
INSERT INTO public.moon VALUES (5, 3, 'Titan', 80000, 70000, 4.5, 'Ice, Methane', true);
INSERT INTO public.moon VALUES (6, 3, 'Europa', 31000, 22000, 4.3, 'Ice, Rock', true);
INSERT INTO public.moon VALUES (7, 4, 'Ganymede', 52600, 52600, 4.6, 'Rock, Ice', true);
INSERT INTO public.moon VALUES (8, 4, 'Callisto', 48000, 48000, 4.7, 'Rock, Ice', false);
INSERT INTO public.moon VALUES (9, 5, 'Io', 41600, 37000, 4.5, 'Sulfur, Rock', false);
INSERT INTO public.moon VALUES (10, 5, 'Enceladus', 5043, 1300, 3.8, 'Ice, Rock', true);
INSERT INTO public.moon VALUES (11, 6, 'Oberon', 45000, 33000, 4.2, 'Rock, Ice', false);
INSERT INTO public.moon VALUES (12, 6, 'Triton', 35000, 18000, 4.4, 'Ice, Rock', true);
INSERT INTO public.moon VALUES (13, 7, 'Hyperion', 3200, 500, 4.5, 'Porous Rock', false);
INSERT INTO public.moon VALUES (14, 7, 'Mimas', 2500, 380, 4.5, 'Ice, Rock', false);
INSERT INTO public.moon VALUES (15, 8, 'Miranda', 5000, 660, 4.4, 'Ice, Rock', false);
INSERT INTO public.moon VALUES (16, 8, 'Rhea', 7340, 1500, 4.6, 'Ice, Rock', true);
INSERT INTO public.moon VALUES (17, 9, 'Iapetus', 4500, 1400, 4.5, 'Rock, Ice', false);
INSERT INTO public.moon VALUES (18, 9, 'Dione', 3480, 1000, 4.2, 'Rock, Ice', true);
INSERT INTO public.moon VALUES (19, 10, 'Tethys', 2000, 800, 4.5, 'Ice, Rock', true);
INSERT INTO public.moon VALUES (20, 10, 'Umbriel', 2400, 900, 4.4, 'Rock, Ice', false);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 1, 'Galactic Center', 'The rotational center of the galaxy, home to a supermassive black hole.');
INSERT INTO public.more_info VALUES (2, 2, 'Nebula', 'A cloud of gas and dust, often a site of star formation.');
INSERT INTO public.more_info VALUES (3, 3, 'Supernova Remnant', 'The remains of a massive star after it exploded in a supernova.');
INSERT INTO public.more_info VALUES (4, 4, 'Exoplanet', 'A planet that orbits a star outside our solar system.');
INSERT INTO public.more_info VALUES (5, 5, 'Asteroid Belt', 'A region filled with rocky bodies orbiting a star.');
INSERT INTO public.more_info VALUES (6, 6, 'Quasar', 'A very luminous object powered by a supermassive black hole at the center of a galaxy.');
INSERT INTO public.more_info VALUES (7, 7, 'Pulsar', 'A highly magnetized rotating neutron star emitting beams of electromagnetic radiation.');
INSERT INTO public.more_info VALUES (8, 8, 'Dark Matter', 'A form of matter that does not emit light and is detected through its gravitational effects.');
INSERT INTO public.more_info VALUES (9, 9, 'Wormhole', 'A hypothetical tunnel through space-time connecting distant regions of the universe.');
INSERT INTO public.more_info VALUES (10, 10, 'Space Station', 'A structure orbiting a planet, used for research and habitation.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Terra', 510000, 1083000, 4.5, 'Rock, Water', true);
INSERT INTO public.planet VALUES (2, 1, 'Mars', 144800, 163100, 4.6, 'Rock, Iron', false);
INSERT INTO public.planet VALUES (3, 2, 'Vulcan', 60000, 80000, 5.1, 'Rock, Metals', false);
INSERT INTO public.planet VALUES (4, 2, 'Asgard', 70000, 95000, 5.5, 'Gas, Ice', true);
INSERT INTO public.planet VALUES (5, 3, 'Krypton', 120000, 200000, 6.2, 'Rock, Crystals', false);
INSERT INTO public.planet VALUES (6, 3, 'Gallifrey', 100000, 150000, 5.0, 'Rock, Time Crystal', true);
INSERT INTO public.planet VALUES (7, 4, 'Pandora', 82000, 90000, 3.2, 'Rock, Bioluminescent Flora', true);
INSERT INTO public.planet VALUES (8, 4, 'LV-426', 150000, 190000, 4.0, 'Rock, Dust', false);
INSERT INTO public.planet VALUES (9, 5, 'Xandar', 300000, 450000, 2.9, 'Rock, Metal', true);
INSERT INTO public.planet VALUES (10, 5, 'Naboo', 320000, 430000, 3.5, 'Water, Rock', true);
INSERT INTO public.planet VALUES (11, 6, 'Endor', 120000, 140000, 2.6, 'Forest, Rock', true);
INSERT INTO public.planet VALUES (12, 6, 'Tatooine', 85000, 95000, 5.4, 'Desert, Rock', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sirius', 10000, 20000, 2.1, 'Hydrogen, Helium', false);
INSERT INTO public.star VALUES (2, 2, 'Betelgeuse', 15000, 25000, 8.5, 'Hydrogen, Helium', false);
INSERT INTO public.star VALUES (3, 3, 'Rigel', 12000, 24000, 7.8, 'Hydrogen, Helium, Carbon', false);
INSERT INTO public.star VALUES (4, 4, 'Proxima Centauri', 5000, 10000, 4.9, 'Hydrogen, Helium', true);
INSERT INTO public.star VALUES (5, 5, 'Vega', 11000, 22000, 3.2, 'Hydrogen, Helium, Metals', false);
INSERT INTO public.star VALUES (6, 6, 'Altair', 9000, 18000, 2.8, 'Hydrogen, Helium, Metals', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 10, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


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

