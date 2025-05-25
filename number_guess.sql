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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id character varying(25) NOT NULL,
    username character varying(22) NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: username; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.username (
    id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer
);


ALTER TABLE public.username OWNER TO freecodecamp;

--
-- Name: username_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.username_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.username_id_seq OWNER TO freecodecamp;

--
-- Name: username_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.username_id_seq OWNED BY public.username.id;


--
-- Name: username id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.username ALTER COLUMN id SET DEFAULT nextval('public.username_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES ('user_17481793355631', 'user_1748179335563', 518);
INSERT INTO public.games VALUES ('user_17481793355632', 'user_1748179335563', 223);
INSERT INTO public.games VALUES ('user_17481793355621', 'user_1748179335562', 607);
INSERT INTO public.games VALUES ('user_17481793355622', 'user_1748179335562', 560);
INSERT INTO public.games VALUES ('user_17481793355633', 'user_1748179335563', 398);
INSERT INTO public.games VALUES ('user_17481793355634', 'user_1748179335563', 650);
INSERT INTO public.games VALUES ('user_17481793355635', 'user_1748179335563', 758);
INSERT INTO public.games VALUES ('user_17481794063841', 'user_1748179406384', 885);
INSERT INTO public.games VALUES ('user_17481794063842', 'user_1748179406384', 495);
INSERT INTO public.games VALUES ('user_17481794063831', 'user_1748179406383', 489);
INSERT INTO public.games VALUES ('user_17481794063832', 'user_1748179406383', 959);
INSERT INTO public.games VALUES ('user_17481794063843', 'user_1748179406384', 491);
INSERT INTO public.games VALUES ('user_17481794063844', 'user_1748179406384', 855);
INSERT INTO public.games VALUES ('user_17481794063845', 'user_1748179406384', 757);
INSERT INTO public.games VALUES ('user_17481795727791', 'user_1748179572779', 363);
INSERT INTO public.games VALUES ('user_17481795727792', 'user_1748179572779', 58);
INSERT INTO public.games VALUES ('user_17481795727781', 'user_1748179572778', 946);
INSERT INTO public.games VALUES ('user_17481795727782', 'user_1748179572778', 537);
INSERT INTO public.games VALUES ('user_17481795727793', 'user_1748179572779', 351);
INSERT INTO public.games VALUES ('user_17481795727794', 'user_1748179572779', 662);
INSERT INTO public.games VALUES ('user_17481795727795', 'user_1748179572779', 972);
INSERT INTO public.games VALUES ('user_17481796465861', 'user_1748179646586', 314);
INSERT INTO public.games VALUES ('user_17481796465862', 'user_1748179646586', 427);
INSERT INTO public.games VALUES ('user_17481796465851', 'user_1748179646585', 984);
INSERT INTO public.games VALUES ('user_17481796465852', 'user_1748179646585', 941);
INSERT INTO public.games VALUES ('user_17481796465863', 'user_1748179646586', 754);
INSERT INTO public.games VALUES ('user_17481796465864', 'user_1748179646586', 708);
INSERT INTO public.games VALUES ('user_17481796465865', 'user_1748179646586', 182);
INSERT INTO public.games VALUES ('user_17481797003301', 'user_1748179700330', 939);
INSERT INTO public.games VALUES ('user_17481797003302', 'user_1748179700330', 912);
INSERT INTO public.games VALUES ('user_17481797003291', 'user_1748179700329', 152);
INSERT INTO public.games VALUES ('user_17481797003292', 'user_1748179700329', 968);
INSERT INTO public.games VALUES ('user_17481797003303', 'user_1748179700330', 737);
INSERT INTO public.games VALUES ('user_17481797003304', 'user_1748179700330', 640);
INSERT INTO public.games VALUES ('user_17481797003305', 'user_1748179700330', 531);
INSERT INTO public.games VALUES ('user_17481797295501', 'user_1748179729550', 61);
INSERT INTO public.games VALUES ('user_17481797295502', 'user_1748179729550', 507);
INSERT INTO public.games VALUES ('user_17481797295491', 'user_1748179729549', 349);
INSERT INTO public.games VALUES ('user_17481797295492', 'user_1748179729549', 371);
INSERT INTO public.games VALUES ('user_17481797295503', 'user_1748179729550', 398);
INSERT INTO public.games VALUES ('user_17481797295504', 'user_1748179729550', 431);
INSERT INTO public.games VALUES ('user_17481797295505', 'user_1748179729550', 984);
INSERT INTO public.games VALUES ('user_17481798442681', 'user_1748179844268', 683);
INSERT INTO public.games VALUES ('user_17481798442682', 'user_1748179844268', 860);
INSERT INTO public.games VALUES ('user_17481798442671', 'user_1748179844267', 707);
INSERT INTO public.games VALUES ('user_17481798442672', 'user_1748179844267', 985);
INSERT INTO public.games VALUES ('user_17481798442683', 'user_1748179844268', 825);
INSERT INTO public.games VALUES ('user_17481798442684', 'user_1748179844268', 562);
INSERT INTO public.games VALUES ('user_17481798442685', 'user_1748179844268', 905);
INSERT INTO public.games VALUES ('user_17481798742101', 'user_1748179874210', 864);
INSERT INTO public.games VALUES ('user_17481798742102', 'user_1748179874210', 84);
INSERT INTO public.games VALUES ('user_17481798742091', 'user_1748179874209', 116);
INSERT INTO public.games VALUES ('user_17481798742092', 'user_1748179874209', 239);
INSERT INTO public.games VALUES ('user_17481798742103', 'user_1748179874210', 127);
INSERT INTO public.games VALUES ('user_17481798742104', 'user_1748179874210', 179);
INSERT INTO public.games VALUES ('user_17481798742105', 'user_1748179874210', 925);
INSERT INTO public.games VALUES ('user_17481799008831', 'user_1748179900883', 538);
INSERT INTO public.games VALUES ('user_17481799008832', 'user_1748179900883', 610);
INSERT INTO public.games VALUES ('user_17481799008821', 'user_1748179900882', 623);
INSERT INTO public.games VALUES ('user_17481799008822', 'user_1748179900882', 620);
INSERT INTO public.games VALUES ('user_17481799008833', 'user_1748179900883', 633);
INSERT INTO public.games VALUES ('user_17481799008834', 'user_1748179900883', 856);
INSERT INTO public.games VALUES ('user_17481799008835', 'user_1748179900883', 359);
INSERT INTO public.games VALUES ('Joe1', 'Joe', 1);
INSERT INTO public.games VALUES ('user_17481799661581', 'user_1748179966158', 71);
INSERT INTO public.games VALUES ('user_17481799661571', 'user_1748179966157', 94);
INSERT INTO public.games VALUES ('user_17481799661572', 'user_1748179966157', 684);
INSERT INTO public.games VALUES ('user_17481799661582', 'user_1748179966158', 9);
INSERT INTO public.games VALUES ('user_17481799661583', 'user_1748179966158', 534);
INSERT INTO public.games VALUES ('user_17481799661584', 'user_1748179966158', 8);
INSERT INTO public.games VALUES ('user_17481800964061', 'user_1748180096406', 938);
INSERT INTO public.games VALUES ('user_17481800964062', 'user_1748180096406', 369);
INSERT INTO public.games VALUES ('user_17481800964051', 'user_1748180096405', 723);
INSERT INTO public.games VALUES ('user_17481800964052', 'user_1748180096405', 732);
INSERT INTO public.games VALUES ('user_17481800964063', 'user_1748180096406', 949);
INSERT INTO public.games VALUES ('user_17481800964064', 'user_1748180096406', 580);
INSERT INTO public.games VALUES ('user_17481800964065', 'user_1748180096406', 835);
INSERT INTO public.games VALUES ('user_17481801277721', 'user_1748180127772', 584);
INSERT INTO public.games VALUES ('user_17481801277722', 'user_1748180127772', 416);
INSERT INTO public.games VALUES ('user_17481801277711', 'user_1748180127771', 724);
INSERT INTO public.games VALUES ('user_17481801277712', 'user_1748180127771', 869);
INSERT INTO public.games VALUES ('user_17481801277723', 'user_1748180127772', 710);
INSERT INTO public.games VALUES ('user_17481801277724', 'user_1748180127772', 983);
INSERT INTO public.games VALUES ('user_17481801277725', 'user_1748180127772', 294);
INSERT INTO public.games VALUES ('user_17481801917321', 'user_1748180191732', 617);
INSERT INTO public.games VALUES ('user_17481801917322', 'user_1748180191732', 777);
INSERT INTO public.games VALUES ('user_17481801917311', 'user_1748180191731', 209);
INSERT INTO public.games VALUES ('user_17481801917312', 'user_1748180191731', 941);
INSERT INTO public.games VALUES ('user_17481801917323', 'user_1748180191732', 310);
INSERT INTO public.games VALUES ('user_17481801917324', 'user_1748180191732', 995);
INSERT INTO public.games VALUES ('user_17481801917325', 'user_1748180191732', 734);
INSERT INTO public.games VALUES ('Joe2', 'Joe', 12);
INSERT INTO public.games VALUES ('Joe3', 'Joe', 1);
INSERT INTO public.games VALUES ('user_17481806435261', 'user_1748180643526', 793);
INSERT INTO public.games VALUES ('user_17481806435262', 'user_1748180643526', 531);
INSERT INTO public.games VALUES ('user_17481806435251', 'user_1748180643525', 8);
INSERT INTO public.games VALUES ('user_17481806435252', 'user_1748180643525', 295);
INSERT INTO public.games VALUES ('user_17481806435263', 'user_1748180643526', 876);
INSERT INTO public.games VALUES ('user_17481806435264', 'user_1748180643526', 700);
INSERT INTO public.games VALUES ('user_17481806435265', 'user_1748180643526', 917);
INSERT INTO public.games VALUES ('user_17481806931831', 'user_1748180693183', 828);
INSERT INTO public.games VALUES ('user_17481806931832', 'user_1748180693183', 888);
INSERT INTO public.games VALUES ('user_17481806931821', 'user_1748180693182', 449);
INSERT INTO public.games VALUES ('user_17481806931822', 'user_1748180693182', 865);
INSERT INTO public.games VALUES ('user_17481806931833', 'user_1748180693183', 625);
INSERT INTO public.games VALUES ('user_17481806931834', 'user_1748180693183', 217);
INSERT INTO public.games VALUES ('user_17481806931835', 'user_1748180693183', 749);


--
-- Data for Name: username; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.username VALUES (9, 'user_1748179335562', 2);
INSERT INTO public.username VALUES (8, 'user_1748179335563', 5);
INSERT INTO public.username VALUES (32, 'user_1748180127771', 2);
INSERT INTO public.username VALUES (11, 'user_1748179406383', 2);
INSERT INTO public.username VALUES (10, 'user_1748179406384', 5);
INSERT INTO public.username VALUES (31, 'user_1748180127772', 5);
INSERT INTO public.username VALUES (13, 'user_1748179572778', 2);
INSERT INTO public.username VALUES (12, 'user_1748179572779', 5);
INSERT INTO public.username VALUES (15, 'user_1748179646585', 2);
INSERT INTO public.username VALUES (34, 'user_1748180191731', 2);
INSERT INTO public.username VALUES (14, 'user_1748179646586', 5);
INSERT INTO public.username VALUES (17, 'user_1748179700329', 2);
INSERT INTO public.username VALUES (33, 'user_1748180191732', 5);
INSERT INTO public.username VALUES (16, 'user_1748179700330', 5);
INSERT INTO public.username VALUES (26, 'Joe', 3);
INSERT INTO public.username VALUES (19, 'user_1748179729549', 2);
INSERT INTO public.username VALUES (18, 'user_1748179729550', 5);
INSERT INTO public.username VALUES (21, 'user_1748179844267', 2);
INSERT INTO public.username VALUES (36, 'user_1748180643525', 2);
INSERT INTO public.username VALUES (20, 'user_1748179844268', 5);
INSERT INTO public.username VALUES (23, 'user_1748179874209', 2);
INSERT INTO public.username VALUES (35, 'user_1748180643526', 5);
INSERT INTO public.username VALUES (22, 'user_1748179874210', 5);
INSERT INTO public.username VALUES (25, 'user_1748179900882', 2);
INSERT INTO public.username VALUES (38, 'user_1748180693182', 2);
INSERT INTO public.username VALUES (24, 'user_1748179900883', 5);
INSERT INTO public.username VALUES (28, 'user_1748179966157', 2);
INSERT INTO public.username VALUES (27, 'user_1748179966158', 4);
INSERT INTO public.username VALUES (37, 'user_1748180693183', 5);
INSERT INTO public.username VALUES (30, 'user_1748180096405', 2);
INSERT INTO public.username VALUES (29, 'user_1748180096406', 5);


--
-- Name: username_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.username_id_seq', 38, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: username username_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.username
    ADD CONSTRAINT username_pkey PRIMARY KEY (id);


--
-- Name: username username_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.username
    ADD CONSTRAINT username_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

