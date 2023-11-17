--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: batting_statistics; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.batting_statistics (
    player_id integer NOT NULL,
    team_id integer,
    year character varying(255),
    matches_played integer,
    innings_played integer,
    runs_scored integer,
    not_outs integer,
    highest_score integer,
    balls_faced integer
);


ALTER TABLE public.batting_statistics OWNER TO freecodecamp;

--
-- Name: bowling_statistics; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.bowling_statistics (
    player_id integer NOT NULL,
    team_id integer,
    year character varying(255),
    matches_played integer,
    innings_played integer,
    balls integer,
    wickets_taken integer,
    maidens integer,
    best_figures integer,
    overs numeric(3,1),
    runs integer
);


ALTER TABLE public.bowling_statistics OWNER TO freecodecamp;

--
-- Name: match_details; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.match_details (
    match_id integer NOT NULL,
    venue_id integer NOT NULL,
    match_date date,
    date date,
    team1_id integer NOT NULL,
    team2_id integer NOT NULL,
    wickets_down_for_team_1 integer,
    wickets_down_for_team_2 integer,
    runs_scored_by_team1 integer,
    runs_scored_by_team2 integer,
    result character varying(50)
);


ALTER TABLE public.match_details OWNER TO freecodecamp;

--
-- Name: match_details_match_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.match_details_match_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.match_details_match_id_seq OWNER TO freecodecamp;

--
-- Name: match_details_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.match_details_match_id_seq OWNED BY public.match_details.match_id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    player_name character varying(255) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    team_name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: venues; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.venues (
    venue_id integer NOT NULL,
    venue_name character varying(255) NOT NULL
);


ALTER TABLE public.venues OWNER TO freecodecamp;

--
-- Name: venues_venue_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.venues_venue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venues_venue_id_seq OWNER TO freecodecamp;

--
-- Name: venues_venue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.venues_venue_id_seq OWNED BY public.venues.venue_id;


--
-- Name: match_details match_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.match_details ALTER COLUMN match_id SET DEFAULT nextval('public.match_details_match_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Name: venues venue_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.venues ALTER COLUMN venue_id SET DEFAULT nextval('public.venues_venue_id_seq'::regclass);


--
-- Data for Name: batting_statistics; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.batting_statistics VALUES (151, 11, '2019', 11, 11, 556, 2, 107, 321);


--
-- Data for Name: bowling_statistics; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.bowling_statistics VALUES (160, 11, '2019', 5, 5, 258, 5, 0, 3, 43.0, 230);


--
-- Data for Name: match_details; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.match_details VALUES (2, 2, '2019-05-30', NULL, 11, 17, 8, 10, 316, 207, 'Team 16 Won');


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (151, 'Joe Root', 16);
INSERT INTO public.players VALUES (152, 'Eoin Morgan', 16);
INSERT INTO public.players VALUES (153, 'Jonny Bairstow', 16);
INSERT INTO public.players VALUES (154, 'Jos Buttler', 16);
INSERT INTO public.players VALUES (155, 'Jofra Archer', 16);
INSERT INTO public.players VALUES (156, 'Chris Woakes', 16);
INSERT INTO public.players VALUES (157, 'Mark Wood', 16);
INSERT INTO public.players VALUES (158, 'Liam Plunkett', 16);
INSERT INTO public.players VALUES (159, 'Adil Rashid', 16);
INSERT INTO public.players VALUES (160, 'Moeen Ali', 16);
INSERT INTO public.players VALUES (161, 'Jason Roy', 16);
INSERT INTO public.players VALUES (162, 'Ben Stokes', 16);
INSERT INTO public.players VALUES (163, 'Tom Curran', 16);
INSERT INTO public.players VALUES (164, 'Liam Dawson', 16);
INSERT INTO public.players VALUES (165, 'James Vince', 16);
INSERT INTO public.players VALUES (166, 'Virat Kohli', 17);
INSERT INTO public.players VALUES (167, 'Rohit Sharma', 17);
INSERT INTO public.players VALUES (168, 'MS Dhoni', 17);
INSERT INTO public.players VALUES (169, 'Hardik Pandya', 17);
INSERT INTO public.players VALUES (170, 'Kuldeep Yadav', 17);
INSERT INTO public.players VALUES (171, 'Yuzvendra Chahal', 17);
INSERT INTO public.players VALUES (172, 'Jasprit Bumrah', 17);
INSERT INTO public.players VALUES (173, 'Bhuvneshwar Kumar', 17);
INSERT INTO public.players VALUES (174, 'KL Rahul', 17);
INSERT INTO public.players VALUES (175, 'Dinesh Karthik', 17);
INSERT INTO public.players VALUES (176, 'Ravindra Jadeja', 17);
INSERT INTO public.players VALUES (177, 'Mohammed Shami', 17);
INSERT INTO public.players VALUES (178, 'Kedar Jadhav', 17);
INSERT INTO public.players VALUES (179, 'Vijay Shankar', 17);
INSERT INTO public.players VALUES (180, 'Shikhar Dhawan', 17);
INSERT INTO public.players VALUES (181, 'Steve Smith', 18);
INSERT INTO public.players VALUES (182, 'David Warner', 18);
INSERT INTO public.players VALUES (183, 'Mitchell Starc', 18);
INSERT INTO public.players VALUES (184, 'Pat Cummins', 18);
INSERT INTO public.players VALUES (185, 'Glenn Maxwell', 18);
INSERT INTO public.players VALUES (186, 'Marcus Stoinis', 18);
INSERT INTO public.players VALUES (187, 'Aaron Finch', 18);
INSERT INTO public.players VALUES (188, 'Usman Khawaja', 18);
INSERT INTO public.players VALUES (189, 'Alex Carey', 18);
INSERT INTO public.players VALUES (190, 'Nathan Coulter-Nile', 18);
INSERT INTO public.players VALUES (191, 'Jason Behrendorff', 18);
INSERT INTO public.players VALUES (192, 'Kane Richardson', 18);
INSERT INTO public.players VALUES (193, 'Shaun Marsh', 18);
INSERT INTO public.players VALUES (194, 'Adam Zampa', 18);
INSERT INTO public.players VALUES (195, 'Nathan Lyon', 18);
INSERT INTO public.players VALUES (196, 'Kane Williamson', 19);
INSERT INTO public.players VALUES (197, 'Martin Guptill', 19);
INSERT INTO public.players VALUES (198, 'Ross Taylor', 19);
INSERT INTO public.players VALUES (199, 'Lockie Ferguson', 19);
INSERT INTO public.players VALUES (200, 'Trent Boult', 19);
INSERT INTO public.players VALUES (201, 'James Neesham', 19);
INSERT INTO public.players VALUES (202, 'Colin de Grandhomme', 19);
INSERT INTO public.players VALUES (203, 'Tom Latham', 19);
INSERT INTO public.players VALUES (204, 'Mitchell Santner', 19);
INSERT INTO public.players VALUES (205, 'Tim Southee', 19);
INSERT INTO public.players VALUES (206, 'Matt Henry', 19);
INSERT INTO public.players VALUES (207, 'Henry Nicholls', 19);
INSERT INTO public.players VALUES (208, 'Tom Blundell', 19);
INSERT INTO public.players VALUES (209, 'Ish Sodhi', 19);
INSERT INTO public.players VALUES (210, 'Tom Latham', 19);
INSERT INTO public.players VALUES (211, 'Babar Azam', 20);
INSERT INTO public.players VALUES (212, 'Fakhar Zaman', 20);
INSERT INTO public.players VALUES (213, 'Mohammad Amir', 20);
INSERT INTO public.players VALUES (214, 'Shadab Khan', 20);
INSERT INTO public.players VALUES (215, 'Sarfaraz Ahmed', 20);
INSERT INTO public.players VALUES (216, 'Imad Wasim', 20);
INSERT INTO public.players VALUES (217, 'Wahab Riaz', 20);
INSERT INTO public.players VALUES (218, 'Haris Sohail', 20);
INSERT INTO public.players VALUES (219, 'Mohammad Hafeez', 20);
INSERT INTO public.players VALUES (220, 'Shaheen Afridi', 20);
INSERT INTO public.players VALUES (221, 'Asif Ali', 20);
INSERT INTO public.players VALUES (222, 'Hasan Ali', 20);
INSERT INTO public.players VALUES (223, 'Shoaib Malik', 20);
INSERT INTO public.players VALUES (224, 'Imam-ul-Haq', 20);
INSERT INTO public.players VALUES (225, 'Shan Masood', 20);
INSERT INTO public.players VALUES (226, 'Shakib Al Hasan', 16);
INSERT INTO public.players VALUES (227, 'Mushfiqur Rahim', 16);
INSERT INTO public.players VALUES (228, 'Tamim Iqbal', 16);
INSERT INTO public.players VALUES (229, 'Mustafizur Rahman', 16);
INSERT INTO public.players VALUES (230, 'Mahmudullah', 16);
INSERT INTO public.players VALUES (231, 'Mashrafe Mortaza', 16);
INSERT INTO public.players VALUES (232, 'Soumya Sarkar', 16);
INSERT INTO public.players VALUES (233, 'Liton Das', 16);
INSERT INTO public.players VALUES (234, 'Mohammad Saifuddin', 16);
INSERT INTO public.players VALUES (235, 'Mosaddek Hossain', 16);
INSERT INTO public.players VALUES (236, 'Mehidy Hasan', 16);
INSERT INTO public.players VALUES (237, 'Rubel Hossain', 16);
INSERT INTO public.players VALUES (238, 'Sabbir Rahman', 16);
INSERT INTO public.players VALUES (239, 'Abu Jayed', 16);
INSERT INTO public.players VALUES (240, 'Najibullah Zadran', 16);
INSERT INTO public.players VALUES (241, 'Faf du Plessis', 17);
INSERT INTO public.players VALUES (242, 'Quinton de Kock', 17);
INSERT INTO public.players VALUES (243, 'Kagiso Rabada', 17);
INSERT INTO public.players VALUES (244, 'Imran Tahir', 17);
INSERT INTO public.players VALUES (245, 'Hashim Amla', 17);
INSERT INTO public.players VALUES (246, 'Aiden Markram', 17);
INSERT INTO public.players VALUES (247, 'Chris Morris', 17);
INSERT INTO public.players VALUES (248, 'David Miller', 17);
INSERT INTO public.players VALUES (249, 'Lungi Ngidi', 17);
INSERT INTO public.players VALUES (250, 'Rassie van der Dussen', 17);
INSERT INTO public.players VALUES (251, 'Andile Phehlukwayo', 17);
INSERT INTO public.players VALUES (252, 'Dwaine Pretorius', 17);
INSERT INTO public.players VALUES (253, 'Beuran Hendricks', 17);
INSERT INTO public.players VALUES (254, 'Tabraiz Shamsi', 17);
INSERT INTO public.players VALUES (255, 'JP Duminy', 17);
INSERT INTO public.players VALUES (256, 'Jason Holder', 18);
INSERT INTO public.players VALUES (257, 'Chris Gayle', 18);
INSERT INTO public.players VALUES (258, 'Shai Hope', 18);
INSERT INTO public.players VALUES (259, 'Sheldon Cottrell', 18);
INSERT INTO public.players VALUES (260, 'Carlos Brathwaite', 18);
INSERT INTO public.players VALUES (261, 'Oshane Thomas', 18);
INSERT INTO public.players VALUES (262, 'Andre Russell', 18);
INSERT INTO public.players VALUES (263, 'Nicholas Pooran', 18);
INSERT INTO public.players VALUES (264, 'Evin Lewis', 18);
INSERT INTO public.players VALUES (265, 'Shannon Gabriel', 18);
INSERT INTO public.players VALUES (266, 'Darren Bravo', 18);
INSERT INTO public.players VALUES (267, 'Kemar Roach', 18);
INSERT INTO public.players VALUES (268, 'Sunil Ambris', 18);
INSERT INTO public.players VALUES (269, 'Ashley Nurse', 18);
INSERT INTO public.players VALUES (270, 'Fabian Allen', 18);
INSERT INTO public.players VALUES (271, 'Dimuth Karunaratne', 19);
INSERT INTO public.players VALUES (272, 'Kusal Perera', 19);
INSERT INTO public.players VALUES (273, 'Lasith Malinga', 19);
INSERT INTO public.players VALUES (274, 'Angelo Mathews', 19);
INSERT INTO public.players VALUES (275, 'Kusal Mendis', 19);
INSERT INTO public.players VALUES (276, 'Dhananjaya de Silva', 19);
INSERT INTO public.players VALUES (277, 'Thisara Perera', 19);
INSERT INTO public.players VALUES (278, 'Isuru Udana', 19);
INSERT INTO public.players VALUES (279, 'Suranga Lakmal', 19);
INSERT INTO public.players VALUES (280, 'Jeevan Mendis', 19);
INSERT INTO public.players VALUES (281, 'Avishka Fernando', 19);
INSERT INTO public.players VALUES (282, 'Lahiru Thirimanne', 19);
INSERT INTO public.players VALUES (283, 'Jeffrey Vandersay', 19);
INSERT INTO public.players VALUES (284, 'Nuwan Pradeep', 19);
INSERT INTO public.players VALUES (285, 'Milinda Siriwardana', 19);
INSERT INTO public.players VALUES (286, 'Gulbadin Naib', 20);
INSERT INTO public.players VALUES (287, 'Rashid Khan', 20);
INSERT INTO public.players VALUES (288, 'Mohammad Nabi', 20);
INSERT INTO public.players VALUES (289, 'Asghar Afghan', 20);
INSERT INTO public.players VALUES (290, 'Hazratullah Zazai', 20);
INSERT INTO public.players VALUES (291, 'Najibullah Zadran', 20);
INSERT INTO public.players VALUES (292, 'Samiullah Shinwari', 20);
INSERT INTO public.players VALUES (293, 'Hashmatullah Shahidi', 20);
INSERT INTO public.players VALUES (294, 'Mujeeb Ur Rahman', 20);
INSERT INTO public.players VALUES (295, 'Dawlat Zadran', 20);
INSERT INTO public.players VALUES (296, 'Aftab Alam', 20);
INSERT INTO public.players VALUES (297, 'Hamid Hassan', 20);
INSERT INTO public.players VALUES (298, 'Rahmat Shah', 20);
INSERT INTO public.players VALUES (299, 'Ikram Alikhil', 20);
INSERT INTO public.players VALUES (300, 'Karim Janat', 20);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (11, 'England');
INSERT INTO public.teams VALUES (12, 'India');
INSERT INTO public.teams VALUES (13, 'Australia');
INSERT INTO public.teams VALUES (14, 'New Zealand');
INSERT INTO public.teams VALUES (15, 'Pakistan');
INSERT INTO public.teams VALUES (16, 'Bangladesh');
INSERT INTO public.teams VALUES (17, 'South Africa');
INSERT INTO public.teams VALUES (18, 'West Indies');
INSERT INTO public.teams VALUES (19, 'Sri Lanka');
INSERT INTO public.teams VALUES (20, 'Afghanistan');


--
-- Data for Name: venues; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.venues VALUES (1, 'Lord''s');
INSERT INTO public.venues VALUES (2, 'The Oval');
INSERT INTO public.venues VALUES (3, 'Edgbaston');
INSERT INTO public.venues VALUES (4, 'Old Trafford');
INSERT INTO public.venues VALUES (5, 'Trent Bridge');
INSERT INTO public.venues VALUES (6, 'Headingley');
INSERT INTO public.venues VALUES (7, 'Cardiff Wales Stadium');
INSERT INTO public.venues VALUES (8, 'Rose Bowl');
INSERT INTO public.venues VALUES (9, 'County Ground');
INSERT INTO public.venues VALUES (10, 'Riverside Ground');


--
-- Name: match_details_match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.match_details_match_id_seq', 2, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 300, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 20, true);


--
-- Name: venues_venue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.venues_venue_id_seq', 10, true);


--
-- Name: batting_statistics batting_statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.batting_statistics
    ADD CONSTRAINT batting_statistics_pkey PRIMARY KEY (player_id);


--
-- Name: bowling_statistics bowling_statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bowling_statistics
    ADD CONSTRAINT bowling_statistics_pkey PRIMARY KEY (player_id);


--
-- Name: match_details match_details_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.match_details
    ADD CONSTRAINT match_details_pkey PRIMARY KEY (match_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: venues venues_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.venues
    ADD CONSTRAINT venues_pkey PRIMARY KEY (venue_id);


--
-- Name: batting_statistics batting_statistics_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.batting_statistics
    ADD CONSTRAINT batting_statistics_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- Name: batting_statistics batting_statistics_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.batting_statistics
    ADD CONSTRAINT batting_statistics_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(team_id);


--
-- Name: bowling_statistics bowling_statistics_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bowling_statistics
    ADD CONSTRAINT bowling_statistics_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- Name: bowling_statistics bowling_statistics_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bowling_statistics
    ADD CONSTRAINT bowling_statistics_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(team_id);


--
-- Name: match_details match_details_team1_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.match_details
    ADD CONSTRAINT match_details_team1_id_fkey FOREIGN KEY (team1_id) REFERENCES public.teams(team_id);


--
-- Name: match_details match_details_team2_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.match_details
    ADD CONSTRAINT match_details_team2_id_fkey FOREIGN KEY (team2_id) REFERENCES public.teams(team_id);


--
-- Name: match_details match_details_venue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.match_details
    ADD CONSTRAINT match_details_venue_id_fkey FOREIGN KEY (venue_id) REFERENCES public.venues(venue_id);


--
-- Name: players players_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

