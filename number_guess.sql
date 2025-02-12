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
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number_guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 10);
INSERT INTO public.games VALUES (2, 6, 797);
INSERT INTO public.games VALUES (3, 6, 92);
INSERT INTO public.games VALUES (4, 7, 257);
INSERT INTO public.games VALUES (5, 7, 222);
INSERT INTO public.games VALUES (6, 6, 462);
INSERT INTO public.games VALUES (7, 6, 505);
INSERT INTO public.games VALUES (8, 6, 382);
INSERT INTO public.games VALUES (9, 8, 905);
INSERT INTO public.games VALUES (10, 8, 998);
INSERT INTO public.games VALUES (11, 9, 596);
INSERT INTO public.games VALUES (12, 9, 946);
INSERT INTO public.games VALUES (13, 8, 292);
INSERT INTO public.games VALUES (14, 8, 456);
INSERT INTO public.games VALUES (15, 8, 891);
INSERT INTO public.games VALUES (16, 2, 12);
INSERT INTO public.games VALUES (17, 10, 577);
INSERT INTO public.games VALUES (18, 10, 886);
INSERT INTO public.games VALUES (19, 11, 430);
INSERT INTO public.games VALUES (20, 11, 669);
INSERT INTO public.games VALUES (21, 10, 589);
INSERT INTO public.games VALUES (22, 10, 771);
INSERT INTO public.games VALUES (23, 10, 526);
INSERT INTO public.games VALUES (24, 5, 11);
INSERT INTO public.games VALUES (25, 12, 368);
INSERT INTO public.games VALUES (26, 12, 653);
INSERT INTO public.games VALUES (27, 13, 561);
INSERT INTO public.games VALUES (28, 13, 342);
INSERT INTO public.games VALUES (29, 12, 319);
INSERT INTO public.games VALUES (30, 12, 605);
INSERT INTO public.games VALUES (31, 12, 625);
INSERT INTO public.games VALUES (32, 14, 32);
INSERT INTO public.games VALUES (33, 14, 286);
INSERT INTO public.games VALUES (34, 15, 119);
INSERT INTO public.games VALUES (35, 15, 493);
INSERT INTO public.games VALUES (36, 14, 492);
INSERT INTO public.games VALUES (37, 14, 327);
INSERT INTO public.games VALUES (38, 14, 234);
INSERT INTO public.games VALUES (39, 16, 116);
INSERT INTO public.games VALUES (40, 16, 405);
INSERT INTO public.games VALUES (41, 17, 195);
INSERT INTO public.games VALUES (42, 17, 876);
INSERT INTO public.games VALUES (43, 16, 993);
INSERT INTO public.games VALUES (44, 16, 758);
INSERT INTO public.games VALUES (45, 16, 575);
INSERT INTO public.games VALUES (46, 18, 828);
INSERT INTO public.games VALUES (47, 18, 680);
INSERT INTO public.games VALUES (48, 19, 928);
INSERT INTO public.games VALUES (49, 19, 72);
INSERT INTO public.games VALUES (50, 18, 997);
INSERT INTO public.games VALUES (51, 18, 414);
INSERT INTO public.games VALUES (52, 18, 926);
INSERT INTO public.games VALUES (53, 20, 622);
INSERT INTO public.games VALUES (54, 20, 207);
INSERT INTO public.games VALUES (55, 21, 684);
INSERT INTO public.games VALUES (56, 21, 47);
INSERT INTO public.games VALUES (57, 20, 209);
INSERT INTO public.games VALUES (58, 20, 820);
INSERT INTO public.games VALUES (59, 20, 997);
INSERT INTO public.games VALUES (60, 22, 931);
INSERT INTO public.games VALUES (61, 22, 655);
INSERT INTO public.games VALUES (62, 23, 581);
INSERT INTO public.games VALUES (63, 23, 774);
INSERT INTO public.games VALUES (64, 22, 618);
INSERT INTO public.games VALUES (65, 22, 822);
INSERT INTO public.games VALUES (66, 22, 983);
INSERT INTO public.games VALUES (67, 24, 5);
INSERT INTO public.games VALUES (68, 24, 900);
INSERT INTO public.games VALUES (69, 25, 297);
INSERT INTO public.games VALUES (70, 25, 301);
INSERT INTO public.games VALUES (71, 24, 948);
INSERT INTO public.games VALUES (72, 24, 242);
INSERT INTO public.games VALUES (73, 24, 585);
INSERT INTO public.games VALUES (74, 26, 557);
INSERT INTO public.games VALUES (75, 26, 706);
INSERT INTO public.games VALUES (76, 27, 917);
INSERT INTO public.games VALUES (77, 27, 92);
INSERT INTO public.games VALUES (78, 26, 270);
INSERT INTO public.games VALUES (79, 26, 476);
INSERT INTO public.games VALUES (80, 26, 726);
INSERT INTO public.games VALUES (81, 5, 8);
INSERT INTO public.games VALUES (82, 28, 955);
INSERT INTO public.games VALUES (83, 28, 435);
INSERT INTO public.games VALUES (84, 29, 855);
INSERT INTO public.games VALUES (85, 29, 665);
INSERT INTO public.games VALUES (86, 28, 825);
INSERT INTO public.games VALUES (87, 28, 802);
INSERT INTO public.games VALUES (88, 28, 329);
INSERT INTO public.games VALUES (89, 30, 235);
INSERT INTO public.games VALUES (90, 30, 587);
INSERT INTO public.games VALUES (91, 31, 112);
INSERT INTO public.games VALUES (92, 31, 389);
INSERT INTO public.games VALUES (93, 30, 448);
INSERT INTO public.games VALUES (94, 30, 967);
INSERT INTO public.games VALUES (95, 30, 243);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Grace');
INSERT INTO public.users VALUES (2, 'lolo');
INSERT INTO public.users VALUES (3, 'user_1739370768063');
INSERT INTO public.users VALUES (4, 'user_1739370768062');
INSERT INTO public.users VALUES (5, 'angel');
INSERT INTO public.users VALUES (6, 'user_1739371069996');
INSERT INTO public.users VALUES (7, 'user_1739371069995');
INSERT INTO public.users VALUES (8, 'user_1739371128295');
INSERT INTO public.users VALUES (9, 'user_1739371128294');
INSERT INTO public.users VALUES (10, 'user_1739371966835');
INSERT INTO public.users VALUES (11, 'user_1739371966834');
INSERT INTO public.users VALUES (12, 'user_1739372348376');
INSERT INTO public.users VALUES (13, 'user_1739372348375');
INSERT INTO public.users VALUES (14, 'user_1739372656252');
INSERT INTO public.users VALUES (15, 'user_1739372656251');
INSERT INTO public.users VALUES (16, 'user_1739372920096');
INSERT INTO public.users VALUES (17, 'user_1739372920095');
INSERT INTO public.users VALUES (18, 'user_1739372981986');
INSERT INTO public.users VALUES (19, 'user_1739372981985');
INSERT INTO public.users VALUES (20, 'user_1739373099363');
INSERT INTO public.users VALUES (21, 'user_1739373099362');
INSERT INTO public.users VALUES (22, 'user_1739373145389');
INSERT INTO public.users VALUES (23, 'user_1739373145388');
INSERT INTO public.users VALUES (24, 'user_1739373709822');
INSERT INTO public.users VALUES (25, 'user_1739373709821');
INSERT INTO public.users VALUES (26, 'user_1739373748212');
INSERT INTO public.users VALUES (27, 'user_1739373748211');
INSERT INTO public.users VALUES (28, 'user_1739373860769');
INSERT INTO public.users VALUES (29, 'user_1739373860768');
INSERT INTO public.users VALUES (30, 'user_1739373998048');
INSERT INTO public.users VALUES (31, 'user_1739373998047');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 95, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 31, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

