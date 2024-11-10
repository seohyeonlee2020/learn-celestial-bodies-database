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
    galaxy_types character varying(30) NOT NULL,
    contains_earth boolean NOT NULL,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    distance_from_earth integer,
    planet_id integer,
    rev_period numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_types character varying(30),
    solar_system character varying(30),
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_moon_count; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_moon_count (
    name character varying(30) NOT NULL,
    moon_count bigint,
    planet_moon_count_id integer NOT NULL
);


ALTER TABLE public.planet_moon_count OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_stage character varying(30) NOT NULL,
    mean_temp_k integer,
    contains_earth boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'barred spiral', true, 'Galaxy that includes the solar system. Name comes from appearance');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'barred spiral', false, 'Nearest major galaxy to the Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 'magellanic spiral', false, 'satellite galaxy of the milky way, dwarf galaxy, part of the local group');
INSERT INTO public.galaxy VALUES (4, 'Small Magellanic Cloud', 'magellanic spiral', false, 'forms pair with Large Magellanic Cloud, possibly its former satellite');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'unclear', false, 'unusually bright center and interesting dust band');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'spiral', false, 'observable by binoculars, first galaxy to be classified as a spiral galaxy');
INSERT INTO public.galaxy VALUES (0, 'imaginary universe', 'imaginary', false, 'placeholder for data points from imaginary places');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'earthmoon', false, NULL, 1, 28);
INSERT INTO public.moon VALUES (2, 'Titan', false, 1270, 2, 16);
INSERT INTO public.moon VALUES (3, 'Io', false, 628, 3, 1.8);
INSERT INTO public.moon VALUES (4, 'Europa', false, 628, 3, 3.5);
INSERT INTO public.moon VALUES (5, 'Ganymede', false, 628, 3, 7);
INSERT INTO public.moon VALUES (6, 'Callisto', false, 628, 3, 16.7);
INSERT INTO public.moon VALUES (8, 'Phobos', false, 55, 4, 0.3);
INSERT INTO public.moon VALUES (9, 'Deimos', false, 56, 4, 1.3);
INSERT INTO public.moon VALUES (10, 'Charon', false, 5914, 5, 6.4);
INSERT INTO public.moon VALUES (11, 'Triton', false, 354, 6, 5.9);
INSERT INTO public.moon VALUES (12, 'Miranda', false, 129, 7, 1.4);
INSERT INTO public.moon VALUES (13, 'Ariel', false, 190, 7, 2.5);
INSERT INTO public.moon VALUES (14, 'Umbriel', false, 266, 7, 4.1);
INSERT INTO public.moon VALUES (15, 'Titania', false, 435, 7, 8.7);
INSERT INTO public.moon VALUES (16, 'Oberon', false, 583, 7, 13.5);
INSERT INTO public.moon VALUES (17, 'Enceladus', false, 1300, 2, 1.37);
INSERT INTO public.moon VALUES (18, 'Mimas', false, 185, 2, 0.9);
INSERT INTO public.moon VALUES (19, 'Rhea', false, 527, 2, 4.5);
INSERT INTO public.moon VALUES (20, 'Hyperion', false, 2, 2, 21);
INSERT INTO public.moon VALUES (7, 'Luna', false, 384, 11, 28);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('terrestrial planets', 'true', 1, 'earth', 1);
INSERT INTO public.planet VALUES ('terrestrial planets', 'true', 1, 'mars', 2);
INSERT INTO public.planet VALUES ('terrestrial planets', 'true', 1, 'venus', 3);
INSERT INTO public.planet VALUES ('terrestrial planets', 'true', 1, 'mercury', 4);
INSERT INTO public.planet VALUES ('gas giants', 'true', 1, 'jupiter', 5);
INSERT INTO public.planet VALUES ('gas giants', 'true', 1, 'saturn', 6);
INSERT INTO public.planet VALUES ('ice giants', 'true', 1, 'uranus', 7);
INSERT INTO public.planet VALUES ('ice giants', 'true', 1, 'neptune', 8);
INSERT INTO public.planet VALUES ('dwarf planets', 'true', 1, 'pluto', 9);
INSERT INTO public.planet VALUES ('exoplanet, terrestrial?', 'false', 2, 'proxima centauri b', 10);
INSERT INTO public.planet VALUES ('uninhabitable exoplanet', 'false', 2, 'proxima centauri c', 11);
INSERT INTO public.planet VALUES ('imaginary', 'false', 7, 'kalgash', 12);


--
-- Data for Name: planet_moon_count; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_moon_count VALUES ('jupiter', 1, 5);
INSERT INTO public.planet_moon_count VALUES ('mercury', 2, 4);
INSERT INTO public.planet_moon_count VALUES ('proxima centauri b', 0, 10);
INSERT INTO public.planet_moon_count VALUES ('saturn', 1, 6);
INSERT INTO public.planet_moon_count VALUES ('mars', 5, 2);
INSERT INTO public.planet_moon_count VALUES ('uranus', 5, 7);
INSERT INTO public.planet_moon_count VALUES ('earth', 2, 1);
INSERT INTO public.planet_moon_count VALUES ('neptune', 0, 8);
INSERT INTO public.planet_moon_count VALUES ('proxima centauri c', 0, 11);
INSERT INTO public.planet_moon_count VALUES ('pluto', 0, 9);
INSERT INTO public.planet_moon_count VALUES ('venus', 4, 3);
INSERT INTO public.planet_moon_count VALUES ('kalgash', 0, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 'main sequence', 5778, true, 1);
INSERT INTO public.star VALUES (3, 'polaris Aa', 'debated', 6015, false, 1);
INSERT INTO public.star VALUES (4, 'Mirach', 'asymptotic giant branch', 3802, false, 2);
INSERT INTO public.star VALUES (2, 'proxima centauri', 'red dwarf', 3000, false, 1);
INSERT INTO public.star VALUES (5, 'deneb', 'blue supergiant', 8525, false, 1);
INSERT INTO public.star VALUES (6, 'denebola', 'main sequence', 8262, false, 1);
INSERT INTO public.star VALUES (7, 'onos', 'imaginary', NULL, false, 0);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet_moon_count planet_moon_count_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_moon_count
    ADD CONSTRAINT planet_moon_count_pkey PRIMARY KEY (planet_moon_count_id);


--
-- Name: planet_moon_count planet_moon_count_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_moon_count
    ADD CONSTRAINT planet_moon_count_planet_name_key UNIQUE (name);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

