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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    galaxy_types integer,
    age_in_millions_of_years integer,
    has_black_hole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_description (
    galaxy_description_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(20),
    description text
);


ALTER TABLE public.galaxy_description OWNER TO freecodecamp;

--
-- Name: galaxy_description_galaxy_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_description_galaxy_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_description_galaxy_description_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_description_galaxy_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_description_galaxy_description_id_seq OWNED BY public.galaxy_description.galaxy_description_id;


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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    distance_from_earth numeric(10,2),
    planet_id integer,
    is_tidal_locked boolean
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    planet_types integer,
    spherical boolean,
    star_id integer
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    distance_from_earth numeric(10,2),
    galaxy_id integer,
    has_planetary_system boolean
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
-- Name: galaxy_description galaxy_description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_description ALTER COLUMN galaxy_description_id SET DEFAULT nextval('public.galaxy_description_galaxy_description_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES ('Andromeda', 1, 2, 10000, NULL);
INSERT INTO public.galaxy VALUES ('Whirlpool', 2, 3, 7000, NULL);
INSERT INTO public.galaxy VALUES ('Sombrero', 3, 4, 8000, NULL);
INSERT INTO public.galaxy VALUES ('Centaurus A', 4, 5, 12000, NULL);
INSERT INTO public.galaxy VALUES ('Triangulum', 5, 1, 9000, NULL);
INSERT INTO public.galaxy VALUES ('Messier 87', 6, 2, 13000, NULL);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 7, 3, 10000, NULL);
INSERT INTO public.galaxy VALUES ('Small Magellanic Cloud', 8, 1, 8000, NULL);
INSERT INTO public.galaxy VALUES ('NGC 1300', 9, 4, 5000, NULL);
INSERT INTO public.galaxy VALUES ('NGC 253', 10, 1, 9000, NULL);


--
-- Data for Name: galaxy_description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_description VALUES (1, 1, 'Andromeda', 'The nearest large galaxy to the Milky Way');
INSERT INTO public.galaxy_description VALUES (2, 2, 'Whirlpool', 'A grand design spiral galaxy');
INSERT INTO public.galaxy_description VALUES (3, 3, 'Sombrero', 'A peculiar lenticular galaxy');
INSERT INTO public.galaxy_description VALUES (4, 4, 'Centaurus A', 'A giant elliptical radio galaxy');
INSERT INTO public.galaxy_description VALUES (5, 3, 'Triangulum', 'A small triangular spiral galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Europa', 1, 670900.00, 1, NULL);
INSERT INTO public.moon VALUES ('Titan', 2, 1221870.00, 1, NULL);
INSERT INTO public.moon VALUES ('Callisto', 3, 1882700.00, 1, NULL);
INSERT INTO public.moon VALUES ('Ganymede', 4, 1070400.00, 1, NULL);
INSERT INTO public.moon VALUES ('Io', 5, 421700.00, 1, NULL);
INSERT INTO public.moon VALUES ('Phobos', 12, 9376.00, 6, NULL);
INSERT INTO public.moon VALUES ('Deimos', 13, 23463.00, 6, NULL);
INSERT INTO public.moon VALUES ('Ganymede-1', 14, 6287.00, 7, NULL);
INSERT INTO public.moon VALUES ('Titan-1', 15, 12206.00, 7, NULL);
INSERT INTO public.moon VALUES ('Europa-1', 16, 6711.00, 8, NULL);
INSERT INTO public.moon VALUES ('Io-1', 17, 4218.00, 9, NULL);
INSERT INTO public.moon VALUES ('Callisto-1', 18, 188270.00, 9, NULL);
INSERT INTO public.moon VALUES ('Enceladus-1', 19, 238000.00, 10, NULL);
INSERT INTO public.moon VALUES ('Tethys', 31, 1221830.00, 11, NULL);
INSERT INTO public.moon VALUES ('Mimas', 32, 185520.00, 11, NULL);
INSERT INTO public.moon VALUES ('Dione', 33, 377400.00, 11, NULL);
INSERT INTO public.moon VALUES ('Rhea', 34, 527040.00, 10, NULL);
INSERT INTO public.moon VALUES ('Iapetus', 35, 356000.00, 10, NULL);
INSERT INTO public.moon VALUES ('Ariel', 36, 436300.00, 9, NULL);
INSERT INTO public.moon VALUES ('Umbriel', 37, 583520.00, 9, NULL);
INSERT INTO public.moon VALUES ('Miranda', 38, 129000.00, 9, NULL);
INSERT INTO public.moon VALUES ('Charon', 39, 19500.00, 8, NULL);
INSERT INTO public.moon VALUES ('Nereid', 40, 1170000.00, 7, NULL);
INSERT INTO public.moon VALUES ('Proteus', 41, 117647.00, 7, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Kepler-452b', 1, false, 2, true, 1);
INSERT INTO public.planet VALUES ('Proxima Centauri b', 2, false, 1, true, 3);
INSERT INTO public.planet VALUES ('Gliese 581 c', 3, false, 3, true, 1);
INSERT INTO public.planet VALUES ('HD 85512 b', 4, false, 2, true, 1);
INSERT INTO public.planet VALUES ('Wolf 1061 c', 5, false, 1, true, 1);
INSERT INTO public.planet VALUES ('Mars', 6, false, 2, true, 6);
INSERT INTO public.planet VALUES ('Gliese 581g', 7, false, 1, true, 7);
INSERT INTO public.planet VALUES ('Kepler-186f', 8, false, 2, true, 8);
INSERT INTO public.planet VALUES ('HD 209458 b', 9, false, 3, true, 9);
INSERT INTO public.planet VALUES ('HD 189733 b', 10, false, 1, true, 10);
INSERT INTO public.planet VALUES ('NGC 1300 I-1', 11, false, 2, true, 13);
INSERT INTO public.planet VALUES ('NGC 1300 I-2', 12, true, 1, true, 13);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sirius', 1, 8.60, 1, NULL);
INSERT INTO public.star VALUES ('Canopus', 2, 310.00, 1, NULL);
INSERT INTO public.star VALUES ('Alpha Centauri A', 3, 4.37, 1, NULL);
INSERT INTO public.star VALUES ('Arcturus', 4, 36.70, 1, NULL);
INSERT INTO public.star VALUES ('Vega', 5, 25.00, 1, NULL);
INSERT INTO public.star VALUES ('Proxima Centauri', 6, 4.24, 1, NULL);
INSERT INTO public.star VALUES ('Altair', 7, 16.70, 1, NULL);
INSERT INTO public.star VALUES ('Betelgeuse', 8, 642.50, 1, NULL);
INSERT INTO public.star VALUES ('Rigel', 9, 860.00, 1, NULL);
INSERT INTO public.star VALUES ('Antares', 10, 550.00, 1, NULL);
INSERT INTO public.star VALUES ('Sculptor I', 11, 2300000.00, 5, NULL);
INSERT INTO public.star VALUES ('Sculptor II', 12, 2200000.00, 5, NULL);
INSERT INTO public.star VALUES ('NGC 1300 I', 13, 7000000.00, 6, NULL);
INSERT INTO public.star VALUES ('NGC 1300 II', 14, 6800000.00, 6, NULL);


--
-- Name: galaxy_description_galaxy_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_description_galaxy_description_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 41, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


--
-- Name: galaxy_description galaxy_description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_description
    ADD CONSTRAINT galaxy_description_pkey PRIMARY KEY (galaxy_description_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy_description unique_galaxy_description_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_description
    ADD CONSTRAINT unique_galaxy_description_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: galaxy_description galaxy_description_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_description
    ADD CONSTRAINT galaxy_description_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

