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
    name character varying(60) NOT NULL,
    description text NOT NULL,
    diameter integer,
    age numeric(4,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: glaxy_glaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.glaxy_glaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.glaxy_glaxy_id_seq OWNER TO freecodecamp;

--
-- Name: glaxy_glaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.glaxy_glaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    description text,
    name character varying(60),
    diameter integer,
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
    is_spherical boolean,
    name character varying(60),
    age numeric(4,1),
    star_id integer NOT NULL,
    description text NOT NULL
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(60),
    description text NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    description text,
    diameter integer,
    is_spherical boolean,
    galaxy_id integer NOT NULL,
    name character varying(60)
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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.glaxy_glaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy that contains our Solar System.', 105700, 13.6);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest major galaxy to the Milky Way.', 220000, 10.0);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A member of the Local Group and the third-largest galaxy in it.', 60000, 12.0);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'A spiral galaxy in the constellation Virgo.', 50000, 9.2);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'A classic spiral galaxy located in the constellation Canes Venatici.', 76000, 8.0);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'A satellite galaxy of the Milky Way.', 14000, 13.4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth''s natural satellite', 'Moon', 3474, 1);
INSERT INTO public.moon VALUES (2, 'Small irregular Martian moon', 'Phobos', 22, 2);
INSERT INTO public.moon VALUES (3, 'Outer, smaller Martian moon', 'Deimos', 12, 2);
INSERT INTO public.moon VALUES (4, 'Ice-rock moon of Proxima b', 'Proxima Ice I', 1800, 3);
INSERT INTO public.moon VALUES (5, 'Captured asteroid moon of Proxima b', 'Proxima Rock', 400, 3);
INSERT INTO public.moon VALUES (6, 'Main moon of Andromeda Prime I', 'Andromeda Luna', 3200, 4);
INSERT INTO public.moon VALUES (7, 'Faint second moon of Andromeda Prime I', 'Andromeda Dust', 900, 4);
INSERT INTO public.moon VALUES (8, 'Largest moon of Triangulum Terra', 'Triangulum I', 3100, 5);
INSERT INTO public.moon VALUES (9, 'Dark-side moon of Triangulum Terra', 'Triangulum Shadow', 800, 5);
INSERT INTO public.moon VALUES (10, 'Icy moon orbiting Triangulum Ice', 'Triangulum Frost', 2400, 6);
INSERT INTO public.moon VALUES (11, 'Main moon of Sombrero Alpha', 'Sombrero Major', 2900, 7);
INSERT INTO public.moon VALUES (12, 'Tiny irregular moon of Sombrero Alpha', 'Sombrero Minor', 700, 7);
INSERT INTO public.moon VALUES (13, 'Dust-ring moon of Sombrero Dust', 'Dusty Ring', 500, 8);
INSERT INTO public.moon VALUES (14, 'Tiny moon of Sombrero Dust', 'Sombrero Dot', 150, 8);
INSERT INTO public.moon VALUES (15, 'Stormy gas-giant moon', 'Whirlpool Storm', 4500, 9);
INSERT INTO public.moon VALUES (16, 'Second moon of Whirlpool Core I', 'Whirlpool Haze', 1800, 9);
INSERT INTO public.moon VALUES (17, 'Water-rich moon of Whirlpool Eden', 'Whirlpool Aqua', 3600, 10);
INSERT INTO public.moon VALUES (18, 'Rocky moon of Whirlpool Eden', 'Whirlpool Rock', 1400, 10);
INSERT INTO public.moon VALUES (19, 'Volcanic moon of LMC Rocky', 'LMC Lava', 2700, 11);
INSERT INTO public.moon VALUES (20, 'Cold distant moon of LMC Dwarf', 'LMC Icecap', 600, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, true, 'Earth', 4.5, 1, 'The third planet from the Sun, known for supporting life.');
INSERT INTO public.planet VALUES (2, true, 'Mars', 4.6, 1, 'The red planet, with the largest volcano in the Solar System.');
INSERT INTO public.planet VALUES (3, true, 'Proxima b', 5.0, 2, 'An exoplanet orbiting a star in the Andromeda Galaxy.');
INSERT INTO public.planet VALUES (4, true, 'Andromeda Prime I', 3.2, 2, 'A rocky planet in the Andromeda system.');
INSERT INTO public.planet VALUES (5, true, 'Triangulum Terra', 4.1, 3, 'A habitable zone planet in the Triangulum Galaxy.');
INSERT INTO public.planet VALUES (6, true, 'Triangulum Ice', 3.7, 3, 'An icy exoplanet far from its host star.');
INSERT INTO public.planet VALUES (7, true, 'Sombrero Alpha', 5.5, 4, 'The first detected planet in the Sombrero system.');
INSERT INTO public.planet VALUES (8, true, 'Sombrero Dust', 2.9, 4, 'A small, dusty terrestrial planet in orbit.');
INSERT INTO public.planet VALUES (9, true, 'Whirlpool Core I', 4.3, 5, 'Gas giant orbiting close to the Whirlpool star.');
INSERT INTO public.planet VALUES (10, true, 'Whirlpool Eden', 4.6, 5, 'A potentially habitable exoplanet with liquid water.');
INSERT INTO public.planet VALUES (11, true, 'LMC Rocky', 5.1, 6, 'Rocky planet in the Large Magellanic Cloud.');
INSERT INTO public.planet VALUES (12, true, 'LMC Dwarf', 2.8, 6, 'A dwarf planet-like body in a distant orbit.');


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial', 'Rocky planets composed primarily of silicate rocks or metals.');
INSERT INTO public.planet_types VALUES (2, 'Gas Giant', 'Massive planets composed mainly of hydrogen and helium, with thick atmospheres.');
INSERT INTO public.planet_types VALUES (3, 'Ice Giant', 'Giant planets rich in volatile substances like water, ammonia, and methane.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'A yellow dwarf star at the center of the Solar System.', 1391000, true, 1, 'Sun');
INSERT INTO public.star VALUES (2, 'A massive blue-white star in the Andromeda Galaxy.', 1250000, true, 2, 'Andromeda Alpha');
INSERT INTO public.star VALUES (3, 'Brightest star in the Triangulum Galaxy.', 800000, true, 3, 'Triangulum Prime');
INSERT INTO public.star VALUES (4, 'A bright star near the nucleus of the Sombrero Galaxy.', 950000, true, 4, 'Sombrero Core');
INSERT INTO public.star VALUES (5, 'A prominent star in the Whirlpool Galaxy.', 1100000, true, 5, 'Whirlpool Light');
INSERT INTO public.star VALUES (6, 'A dense, compact star in the Large Magellanic Cloud.', 300000, true, 6, 'Magellanic Torch');


--
-- Name: glaxy_glaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.glaxy_glaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 3, true);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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

