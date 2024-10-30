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
    description text,
    age_in_millions_of_years numeric(10,2),
    galaxy_types_id integer NOT NULL
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    description text,
    planet_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    has_life boolean,
    distance_from_star integer,
    star_id integer NOT NULL
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
    distance_from_earth integer,
    galaxy_id integer NOT NULL,
    description text
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'A spiral galaxy that contains our Solar System.', 13600.00, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest spiral galaxy to the Milky Way.', 10000.00, 1);
INSERT INTO public.galaxy VALUES (3, 'Sombrero Galaxy', 'A spiral galaxy known for its bright central bulge.', 13000.00, 1);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'An irregular galaxy that orbits the Milky Way.', 13600.00, 3);
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 'A giant elliptical galaxy in the Virgo Cluster.', 13000.00, 2);
INSERT INTO public.galaxy VALUES (6, 'Triangulum Galaxy', 'A member of the Local Group and the third-largest galaxy after the Milky Way and Andromeda.', 13000.00, 1);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (2, 'Elliptical', NULL);
INSERT INTO public.galaxy_types VALUES (3, 'Irregular', NULL);
INSERT INTO public.galaxy_types VALUES (1, 'Spiral', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, 'The only natural satellite of Earth.', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 'One of the two moons of Mars, irregular in shape.', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 'The smaller and outer moon of Mars, irregularly shaped.', 4);
INSERT INTO public.moon VALUES (4, 'Io', true, 'The innermost moon of Jupiter, known for its volcanic activity.', 5);
INSERT INTO public.moon VALUES (5, 'Europa', true, 'A large moon of Jupiter with a smooth, icy surface.', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 'The largest moon in the solar system, orbits Jupiter.', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', true, 'A heavily cratered moon of Jupiter.', 5);
INSERT INTO public.moon VALUES (8, 'Titan', true, 'The largest moon of Saturn, known for its thick atmosphere.', 6);
INSERT INTO public.moon VALUES (9, 'Rhea', true, 'A moon of Saturn with a heavily cratered surface.', 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', true, 'A two-toned moon of Saturn with a distinctive ridge.', 6);
INSERT INTO public.moon VALUES (11, 'Enceladus', true, 'A moon of Saturn known for its icy surface and geysers.', 6);
INSERT INTO public.moon VALUES (12, 'Triton', true, 'The largest moon of Neptune, with retrograde orbit.', 7);
INSERT INTO public.moon VALUES (13, 'Oberon', true, 'The outermost major moon of Uranus.', 8);
INSERT INTO public.moon VALUES (14, 'Titania', true, 'The largest moon of Uranus.', 8);
INSERT INTO public.moon VALUES (15, 'Miranda', true, 'A small moon of Uranus, known for its varied surface features.', 8);
INSERT INTO public.moon VALUES (16, 'Charon', true, 'The largest moon of Pluto.', 9);
INSERT INTO public.moon VALUES (17, 'Proxima b Moon 1', false, 'A hypothetical moon orbiting Proxima Centauri b.', 7);
INSERT INTO public.moon VALUES (18, 'Alpha Centauri Bb Moon', false, 'A moon orbiting Alpha Centauri Bb.', 8);
INSERT INTO public.moon VALUES (19, 'Sirius b Moon', false, 'A hypothetical moon orbiting the planet Sirius b.', 9);
INSERT INTO public.moon VALUES (20, 'Sombrero I Moon', false, 'A hypothetical moon orbiting Sombrero I.', 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 1, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 2, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 5, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 10, 1);
INSERT INTO public.planet VALUES (7, 'Proxima Centauri b', false, 0, 2);
INSERT INTO public.planet VALUES (8, 'Alpha Centauri Bb', false, 0, 2);
INSERT INTO public.planet VALUES (9, 'Sirius b', false, 1, 3);
INSERT INTO public.planet VALUES (10, 'Sirius c', false, 3, 3);
INSERT INTO public.planet VALUES (11, 'Andromeda I', false, 5, 4);
INSERT INTO public.planet VALUES (12, 'Sombrero I', false, 6, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 1, NULL);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 4, 1, NULL);
INSERT INTO public.star VALUES (3, 'Sirius', 8, 1, NULL);
INSERT INTO public.star VALUES (4, 'S Andromedae', 2537000, 2, NULL);
INSERT INTO public.star VALUES (5, 'Sombrero A', 32000000, 3, NULL);
INSERT INTO public.star VALUES (6, 'M87 A', 53000000, 5, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 3, true);


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
-- Name: galaxy_types galaxy_types_galaxy_type_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_type_id_key UNIQUE (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


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

