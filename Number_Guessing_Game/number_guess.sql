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
    games_id integer NOT NULL,
    user_id integer NOT NULL,
    score integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_games_id_seq OWNED BY public.games.games_id;


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
-- Name: games games_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN games_id SET DEFAULT nextval('public.games_games_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (10, 7, 935);
INSERT INTO public.games VALUES (11, 7, 200);
INSERT INTO public.games VALUES (12, 8, 170);
INSERT INTO public.games VALUES (13, 8, 894);
INSERT INTO public.games VALUES (14, 7, 879);
INSERT INTO public.games VALUES (15, 7, 361);
INSERT INTO public.games VALUES (16, 7, 811);
INSERT INTO public.games VALUES (17, 9, 7);
INSERT INTO public.games VALUES (18, 9, 195);
INSERT INTO public.games VALUES (19, 10, 879);
INSERT INTO public.games VALUES (20, 10, 978);
INSERT INTO public.games VALUES (21, 9, 98);
INSERT INTO public.games VALUES (22, 9, 117);
INSERT INTO public.games VALUES (23, 9, 535);
INSERT INTO public.games VALUES (24, 11, 758);
INSERT INTO public.games VALUES (25, 11, 315);
INSERT INTO public.games VALUES (26, 12, 525);
INSERT INTO public.games VALUES (27, 12, 444);
INSERT INTO public.games VALUES (28, 11, 666);
INSERT INTO public.games VALUES (29, 11, 330);
INSERT INTO public.games VALUES (30, 11, 278);
INSERT INTO public.games VALUES (31, 13, 116);
INSERT INTO public.games VALUES (32, 16, 587);
INSERT INTO public.games VALUES (33, 16, 26);
INSERT INTO public.games VALUES (34, 17, 41);
INSERT INTO public.games VALUES (35, 17, 959);
INSERT INTO public.games VALUES (36, 16, 116);
INSERT INTO public.games VALUES (37, 16, 887);
INSERT INTO public.games VALUES (38, 16, 16);
INSERT INTO public.games VALUES (39, 18, 692);
INSERT INTO public.games VALUES (40, 18, 315);
INSERT INTO public.games VALUES (41, 19, 899);
INSERT INTO public.games VALUES (42, 19, 810);
INSERT INTO public.games VALUES (43, 18, 13);
INSERT INTO public.games VALUES (44, 18, 412);
INSERT INTO public.games VALUES (45, 18, 4);
INSERT INTO public.games VALUES (46, 20, 984);
INSERT INTO public.games VALUES (47, 20, 143);
INSERT INTO public.games VALUES (48, 21, 916);
INSERT INTO public.games VALUES (49, 21, 364);
INSERT INTO public.games VALUES (50, 20, 367);
INSERT INTO public.games VALUES (51, 20, 788);
INSERT INTO public.games VALUES (52, 20, 385);
INSERT INTO public.games VALUES (53, 22, 127);
INSERT INTO public.games VALUES (54, 22, 956);
INSERT INTO public.games VALUES (55, 23, 448);
INSERT INTO public.games VALUES (56, 23, 982);
INSERT INTO public.games VALUES (57, 22, 51);
INSERT INTO public.games VALUES (58, 22, 565);
INSERT INTO public.games VALUES (59, 22, 904);
INSERT INTO public.games VALUES (60, 24, 568);
INSERT INTO public.games VALUES (61, 24, 697);
INSERT INTO public.games VALUES (62, 25, 741);
INSERT INTO public.games VALUES (63, 25, 662);
INSERT INTO public.games VALUES (64, 24, 439);
INSERT INTO public.games VALUES (65, 24, 927);
INSERT INTO public.games VALUES (66, 24, 712);
INSERT INTO public.games VALUES (67, 26, 531);
INSERT INTO public.games VALUES (68, 26, 922);
INSERT INTO public.games VALUES (69, 27, 490);
INSERT INTO public.games VALUES (70, 27, 565);
INSERT INTO public.games VALUES (71, 26, 220);
INSERT INTO public.games VALUES (72, 26, 367);
INSERT INTO public.games VALUES (73, 26, 382);
INSERT INTO public.games VALUES (74, 28, 616);
INSERT INTO public.games VALUES (75, 28, 337);
INSERT INTO public.games VALUES (76, 29, 624);
INSERT INTO public.games VALUES (77, 29, 751);
INSERT INTO public.games VALUES (78, 28, 216);
INSERT INTO public.games VALUES (79, 28, 926);
INSERT INTO public.games VALUES (80, 28, 76);
INSERT INTO public.games VALUES (81, 30, 237);
INSERT INTO public.games VALUES (82, 30, 89);
INSERT INTO public.games VALUES (83, 31, 388);
INSERT INTO public.games VALUES (84, 31, 698);
INSERT INTO public.games VALUES (85, 30, 209);
INSERT INTO public.games VALUES (86, 30, 441);
INSERT INTO public.games VALUES (87, 30, 615);
INSERT INTO public.games VALUES (88, 32, 747);
INSERT INTO public.games VALUES (89, 32, 252);
INSERT INTO public.games VALUES (90, 33, 690);
INSERT INTO public.games VALUES (91, 33, 355);
INSERT INTO public.games VALUES (92, 32, 520);
INSERT INTO public.games VALUES (93, 32, 256);
INSERT INTO public.games VALUES (94, 32, 365);
INSERT INTO public.games VALUES (95, 34, 924);
INSERT INTO public.games VALUES (96, 34, 563);
INSERT INTO public.games VALUES (97, 35, 279);
INSERT INTO public.games VALUES (98, 35, 424);
INSERT INTO public.games VALUES (99, 34, 520);
INSERT INTO public.games VALUES (100, 34, 692);
INSERT INTO public.games VALUES (101, 34, 784);
INSERT INTO public.games VALUES (102, 36, 792);
INSERT INTO public.games VALUES (103, 36, 748);
INSERT INTO public.games VALUES (104, 37, 447);
INSERT INTO public.games VALUES (105, 37, 479);
INSERT INTO public.games VALUES (106, 36, 736);
INSERT INTO public.games VALUES (107, 36, 801);
INSERT INTO public.games VALUES (108, 36, 590);
INSERT INTO public.games VALUES (109, 38, 198);
INSERT INTO public.games VALUES (110, 38, 631);
INSERT INTO public.games VALUES (111, 39, 757);
INSERT INTO public.games VALUES (112, 39, 911);
INSERT INTO public.games VALUES (113, 38, 963);
INSERT INTO public.games VALUES (114, 38, 997);
INSERT INTO public.games VALUES (115, 38, 202);
INSERT INTO public.games VALUES (116, 40, 336);
INSERT INTO public.games VALUES (117, 40, 346);
INSERT INTO public.games VALUES (118, 41, 768);
INSERT INTO public.games VALUES (119, 41, 934);
INSERT INTO public.games VALUES (120, 40, 957);
INSERT INTO public.games VALUES (121, 40, 262);
INSERT INTO public.games VALUES (122, 40, 10);
INSERT INTO public.games VALUES (123, 40, 10);
INSERT INTO public.games VALUES (124, 42, 302);
INSERT INTO public.games VALUES (125, 42, 65);
INSERT INTO public.games VALUES (126, 43, 396);
INSERT INTO public.games VALUES (127, 43, 838);
INSERT INTO public.games VALUES (128, 42, 489);
INSERT INTO public.games VALUES (129, 42, 642);
INSERT INTO public.games VALUES (130, 42, 367);
INSERT INTO public.games VALUES (131, 44, 204);
INSERT INTO public.games VALUES (132, 44, 674);
INSERT INTO public.games VALUES (133, 45, 632);
INSERT INTO public.games VALUES (134, 45, 334);
INSERT INTO public.games VALUES (135, 44, 886);
INSERT INTO public.games VALUES (136, 44, 580);
INSERT INTO public.games VALUES (137, 44, 970);
INSERT INTO public.games VALUES (138, 46, 716);
INSERT INTO public.games VALUES (139, 46, 500);
INSERT INTO public.games VALUES (140, 47, 604);
INSERT INTO public.games VALUES (141, 47, 503);
INSERT INTO public.games VALUES (142, 46, 318);
INSERT INTO public.games VALUES (143, 46, 225);
INSERT INTO public.games VALUES (144, 46, 194);
INSERT INTO public.games VALUES (145, 48, 816);
INSERT INTO public.games VALUES (146, 48, 410);
INSERT INTO public.games VALUES (147, 49, 916);
INSERT INTO public.games VALUES (148, 49, 847);
INSERT INTO public.games VALUES (149, 48, 446);
INSERT INTO public.games VALUES (150, 48, 335);
INSERT INTO public.games VALUES (151, 48, 141);
INSERT INTO public.games VALUES (152, 50, 986);
INSERT INTO public.games VALUES (153, 50, 898);
INSERT INTO public.games VALUES (154, 51, 324);
INSERT INTO public.games VALUES (155, 51, 438);
INSERT INTO public.games VALUES (156, 50, 415);
INSERT INTO public.games VALUES (157, 50, 820);
INSERT INTO public.games VALUES (158, 50, 269);
INSERT INTO public.games VALUES (159, 52, 336);
INSERT INTO public.games VALUES (160, 52, 416);
INSERT INTO public.games VALUES (161, 53, 887);
INSERT INTO public.games VALUES (162, 53, 789);
INSERT INTO public.games VALUES (163, 52, 609);
INSERT INTO public.games VALUES (164, 52, 902);
INSERT INTO public.games VALUES (165, 52, 752);
INSERT INTO public.games VALUES (166, 54, 616);
INSERT INTO public.games VALUES (167, 54, 700);
INSERT INTO public.games VALUES (168, 55, 525);
INSERT INTO public.games VALUES (169, 55, 373);
INSERT INTO public.games VALUES (170, 54, 856);
INSERT INTO public.games VALUES (171, 54, 740);
INSERT INTO public.games VALUES (172, 54, 820);
INSERT INTO public.games VALUES (173, 56, 958);
INSERT INTO public.games VALUES (174, 56, 96);
INSERT INTO public.games VALUES (175, 57, 224);
INSERT INTO public.games VALUES (176, 57, 709);
INSERT INTO public.games VALUES (177, 56, 748);
INSERT INTO public.games VALUES (178, 56, 62);
INSERT INTO public.games VALUES (179, 56, 151);
INSERT INTO public.games VALUES (180, 58, 506);
INSERT INTO public.games VALUES (181, 58, 682);
INSERT INTO public.games VALUES (182, 59, 958);
INSERT INTO public.games VALUES (183, 59, 901);
INSERT INTO public.games VALUES (184, 58, 373);
INSERT INTO public.games VALUES (185, 58, 883);
INSERT INTO public.games VALUES (186, 58, 767);
INSERT INTO public.games VALUES (187, 60, 489);
INSERT INTO public.games VALUES (188, 60, 774);
INSERT INTO public.games VALUES (189, 61, 47);
INSERT INTO public.games VALUES (190, 61, 246);
INSERT INTO public.games VALUES (191, 60, 445);
INSERT INTO public.games VALUES (192, 60, 19);
INSERT INTO public.games VALUES (193, 60, 970);
INSERT INTO public.games VALUES (194, 62, 78);
INSERT INTO public.games VALUES (195, 62, 86);
INSERT INTO public.games VALUES (196, 63, 928);
INSERT INTO public.games VALUES (197, 63, 834);
INSERT INTO public.games VALUES (198, 62, 306);
INSERT INTO public.games VALUES (199, 62, 83);
INSERT INTO public.games VALUES (200, 62, 833);
INSERT INTO public.games VALUES (201, 64, 48);
INSERT INTO public.games VALUES (202, 64, 278);
INSERT INTO public.games VALUES (203, 65, 408);
INSERT INTO public.games VALUES (204, 65, 255);
INSERT INTO public.games VALUES (205, 64, 697);
INSERT INTO public.games VALUES (206, 64, 552);
INSERT INTO public.games VALUES (207, 64, 380);
INSERT INTO public.games VALUES (208, 66, 505);
INSERT INTO public.games VALUES (209, 66, 720);
INSERT INTO public.games VALUES (210, 67, 725);
INSERT INTO public.games VALUES (211, 67, 569);
INSERT INTO public.games VALUES (212, 66, 661);
INSERT INTO public.games VALUES (213, 66, 846);
INSERT INTO public.games VALUES (214, 66, 465);
INSERT INTO public.games VALUES (215, 68, 65);
INSERT INTO public.games VALUES (216, 68, 201);
INSERT INTO public.games VALUES (217, 69, 843);
INSERT INTO public.games VALUES (218, 69, 302);
INSERT INTO public.games VALUES (219, 68, 301);
INSERT INTO public.games VALUES (220, 68, 853);
INSERT INTO public.games VALUES (221, 68, 569);
INSERT INTO public.games VALUES (222, 70, 264);
INSERT INTO public.games VALUES (223, 70, 942);
INSERT INTO public.games VALUES (224, 71, 694);
INSERT INTO public.games VALUES (225, 71, 254);
INSERT INTO public.games VALUES (226, 70, 115);
INSERT INTO public.games VALUES (227, 70, 880);
INSERT INTO public.games VALUES (228, 70, 421);
INSERT INTO public.games VALUES (229, 72, 584);
INSERT INTO public.games VALUES (230, 72, 750);
INSERT INTO public.games VALUES (231, 73, 989);
INSERT INTO public.games VALUES (232, 73, 593);
INSERT INTO public.games VALUES (233, 72, 117);
INSERT INTO public.games VALUES (234, 72, 102);
INSERT INTO public.games VALUES (235, 72, 474);
INSERT INTO public.games VALUES (236, 74, 109);
INSERT INTO public.games VALUES (237, 74, 380);
INSERT INTO public.games VALUES (238, 75, 21);
INSERT INTO public.games VALUES (239, 75, 868);
INSERT INTO public.games VALUES (240, 74, 872);
INSERT INTO public.games VALUES (241, 74, 707);
INSERT INTO public.games VALUES (242, 74, 473);
INSERT INTO public.games VALUES (243, 76, 6);
INSERT INTO public.games VALUES (244, 76, 66);
INSERT INTO public.games VALUES (245, 77, 371);
INSERT INTO public.games VALUES (246, 77, 357);
INSERT INTO public.games VALUES (247, 76, 82);
INSERT INTO public.games VALUES (248, 76, 580);
INSERT INTO public.games VALUES (249, 76, 92);
INSERT INTO public.games VALUES (250, 78, 488);
INSERT INTO public.games VALUES (251, 78, 406);
INSERT INTO public.games VALUES (252, 79, 462);
INSERT INTO public.games VALUES (253, 79, 526);
INSERT INTO public.games VALUES (254, 78, 683);
INSERT INTO public.games VALUES (255, 78, 718);
INSERT INTO public.games VALUES (256, 78, 2);
INSERT INTO public.games VALUES (257, 80, 518);
INSERT INTO public.games VALUES (258, 80, 626);
INSERT INTO public.games VALUES (259, 81, 591);
INSERT INTO public.games VALUES (260, 81, 937);
INSERT INTO public.games VALUES (261, 80, 311);
INSERT INTO public.games VALUES (262, 80, 376);
INSERT INTO public.games VALUES (263, 80, 719);
INSERT INTO public.games VALUES (264, 82, 761);
INSERT INTO public.games VALUES (265, 82, 715);
INSERT INTO public.games VALUES (266, 83, 507);
INSERT INTO public.games VALUES (267, 83, 603);
INSERT INTO public.games VALUES (268, 82, 80);
INSERT INTO public.games VALUES (269, 82, 121);
INSERT INTO public.games VALUES (270, 82, 365);
INSERT INTO public.games VALUES (271, 84, 339);
INSERT INTO public.games VALUES (272, 84, 72);
INSERT INTO public.games VALUES (273, 85, 182);
INSERT INTO public.games VALUES (274, 85, 203);
INSERT INTO public.games VALUES (275, 84, 108);
INSERT INTO public.games VALUES (276, 84, 291);
INSERT INTO public.games VALUES (277, 84, 795);
INSERT INTO public.games VALUES (278, 86, 300);
INSERT INTO public.games VALUES (279, 86, 604);
INSERT INTO public.games VALUES (280, 87, 813);
INSERT INTO public.games VALUES (281, 87, 622);
INSERT INTO public.games VALUES (282, 86, 1000);
INSERT INTO public.games VALUES (283, 86, 503);
INSERT INTO public.games VALUES (284, 86, 366);
INSERT INTO public.games VALUES (285, 88, 652);
INSERT INTO public.games VALUES (286, 88, 241);
INSERT INTO public.games VALUES (287, 89, 80);
INSERT INTO public.games VALUES (288, 89, 705);
INSERT INTO public.games VALUES (289, 88, 730);
INSERT INTO public.games VALUES (290, 88, 457);
INSERT INTO public.games VALUES (291, 88, 928);
INSERT INTO public.games VALUES (292, 90, 134);
INSERT INTO public.games VALUES (293, 90, 526);
INSERT INTO public.games VALUES (294, 91, 403);
INSERT INTO public.games VALUES (295, 91, 178);
INSERT INTO public.games VALUES (296, 90, 717);
INSERT INTO public.games VALUES (297, 90, 936);
INSERT INTO public.games VALUES (298, 90, 141);
INSERT INTO public.games VALUES (299, 92, 256);
INSERT INTO public.games VALUES (300, 92, 401);
INSERT INTO public.games VALUES (301, 93, 270);
INSERT INTO public.games VALUES (302, 93, 80);
INSERT INTO public.games VALUES (303, 92, 295);
INSERT INTO public.games VALUES (304, 92, 548);
INSERT INTO public.games VALUES (305, 92, 431);
INSERT INTO public.games VALUES (306, 94, 580);
INSERT INTO public.games VALUES (307, 94, 838);
INSERT INTO public.games VALUES (308, 95, 725);
INSERT INTO public.games VALUES (309, 95, 399);
INSERT INTO public.games VALUES (310, 94, 349);
INSERT INTO public.games VALUES (311, 94, 517);
INSERT INTO public.games VALUES (312, 94, 168);
INSERT INTO public.games VALUES (313, 96, 62);
INSERT INTO public.games VALUES (314, 96, 221);
INSERT INTO public.games VALUES (315, 97, 369);
INSERT INTO public.games VALUES (316, 97, 212);
INSERT INTO public.games VALUES (317, 96, 966);
INSERT INTO public.games VALUES (318, 96, 650);
INSERT INTO public.games VALUES (319, 96, 243);
INSERT INTO public.games VALUES (320, 98, 316);
INSERT INTO public.games VALUES (321, 98, 16);
INSERT INTO public.games VALUES (322, 99, 891);
INSERT INTO public.games VALUES (323, 99, 258);
INSERT INTO public.games VALUES (324, 98, 503);
INSERT INTO public.games VALUES (325, 98, 905);
INSERT INTO public.games VALUES (326, 98, 791);
INSERT INTO public.games VALUES (327, 100, 719);
INSERT INTO public.games VALUES (328, 100, 235);
INSERT INTO public.games VALUES (329, 101, 816);
INSERT INTO public.games VALUES (330, 101, 347);
INSERT INTO public.games VALUES (331, 100, 19);
INSERT INTO public.games VALUES (332, 100, 210);
INSERT INTO public.games VALUES (333, 100, 783);
INSERT INTO public.games VALUES (334, 100, 1);
INSERT INTO public.games VALUES (335, 102, 417);
INSERT INTO public.games VALUES (336, 102, 321);
INSERT INTO public.games VALUES (337, 103, 349);
INSERT INTO public.games VALUES (338, 103, 931);
INSERT INTO public.games VALUES (339, 102, 853);
INSERT INTO public.games VALUES (340, 102, 292);
INSERT INTO public.games VALUES (341, 102, 491);
INSERT INTO public.games VALUES (342, 104, 798);
INSERT INTO public.games VALUES (343, 104, 429);
INSERT INTO public.games VALUES (344, 105, 25);
INSERT INTO public.games VALUES (345, 105, 592);
INSERT INTO public.games VALUES (346, 104, 181);
INSERT INTO public.games VALUES (347, 104, 496);
INSERT INTO public.games VALUES (348, 104, 12);
INSERT INTO public.games VALUES (349, 100, 1);
INSERT INTO public.games VALUES (350, 17, 0);
INSERT INTO public.games VALUES (351, 106, 23);
INSERT INTO public.games VALUES (352, 106, 109);
INSERT INTO public.games VALUES (353, 107, 483);
INSERT INTO public.games VALUES (354, 107, 375);
INSERT INTO public.games VALUES (355, 106, 562);
INSERT INTO public.games VALUES (356, 106, 381);
INSERT INTO public.games VALUES (357, 106, 757);
INSERT INTO public.games VALUES (358, 108, 710);
INSERT INTO public.games VALUES (359, 108, 118);
INSERT INTO public.games VALUES (360, 109, 987);
INSERT INTO public.games VALUES (361, 109, 896);
INSERT INTO public.games VALUES (362, 108, 54);
INSERT INTO public.games VALUES (363, 108, 177);
INSERT INTO public.games VALUES (364, 108, 523);
INSERT INTO public.games VALUES (365, 110, 294);
INSERT INTO public.games VALUES (366, 110, 449);
INSERT INTO public.games VALUES (367, 111, 45);
INSERT INTO public.games VALUES (368, 111, 573);
INSERT INTO public.games VALUES (369, 110, 354);
INSERT INTO public.games VALUES (370, 110, 16);
INSERT INTO public.games VALUES (371, 110, 155);
INSERT INTO public.games VALUES (372, 112, 680);
INSERT INTO public.games VALUES (373, 112, 823);
INSERT INTO public.games VALUES (374, 113, 860);
INSERT INTO public.games VALUES (375, 113, 442);
INSERT INTO public.games VALUES (376, 112, 175);
INSERT INTO public.games VALUES (377, 112, 186);
INSERT INTO public.games VALUES (378, 112, 115);
INSERT INTO public.games VALUES (379, 114, 431);
INSERT INTO public.games VALUES (380, 114, 764);
INSERT INTO public.games VALUES (381, 115, 611);
INSERT INTO public.games VALUES (382, 115, 588);
INSERT INTO public.games VALUES (383, 114, 530);
INSERT INTO public.games VALUES (384, 114, 903);
INSERT INTO public.games VALUES (385, 114, 651);
INSERT INTO public.games VALUES (386, 116, 864);
INSERT INTO public.games VALUES (387, 116, 438);
INSERT INTO public.games VALUES (388, 117, 355);
INSERT INTO public.games VALUES (389, 117, 373);
INSERT INTO public.games VALUES (390, 116, 633);
INSERT INTO public.games VALUES (391, 116, 260);
INSERT INTO public.games VALUES (392, 116, 947);
INSERT INTO public.games VALUES (393, 118, 59);
INSERT INTO public.games VALUES (394, 118, 805);
INSERT INTO public.games VALUES (395, 119, 321);
INSERT INTO public.games VALUES (396, 119, 329);
INSERT INTO public.games VALUES (397, 118, 242);
INSERT INTO public.games VALUES (398, 118, 648);
INSERT INTO public.games VALUES (399, 118, 309);
INSERT INTO public.games VALUES (400, 120, 383);
INSERT INTO public.games VALUES (401, 120, 349);
INSERT INTO public.games VALUES (402, 121, 652);
INSERT INTO public.games VALUES (403, 121, 641);
INSERT INTO public.games VALUES (404, 120, 167);
INSERT INTO public.games VALUES (405, 120, 693);
INSERT INTO public.games VALUES (406, 120, 758);
INSERT INTO public.games VALUES (407, 122, 291);
INSERT INTO public.games VALUES (408, 122, 659);
INSERT INTO public.games VALUES (409, 123, 807);
INSERT INTO public.games VALUES (410, 123, 248);
INSERT INTO public.games VALUES (411, 122, 668);
INSERT INTO public.games VALUES (412, 122, 93);
INSERT INTO public.games VALUES (413, 122, 923);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (104, 'user_1753200533510');
INSERT INTO public.users VALUES (108, 'user_1753200714404');
INSERT INTO public.users VALUES (112, 'user_1753200720589');
INSERT INTO public.users VALUES (116, 'user_1753200733157');
INSERT INTO public.users VALUES (120, 'user_1753200824983');
INSERT INTO public.users VALUES (100, 'user_1753200345968');
INSERT INTO public.users VALUES (96, 'user_1753200304958');
INSERT INTO public.users VALUES (92, 'user_1753200226876');
INSERT INTO public.users VALUES (83, 'user_1753200210764');
INSERT INTO public.users VALUES (72, 'user_1753199990592');
INSERT INTO public.users VALUES (71, 'user_1753199924675');
INSERT INTO public.users VALUES (68, 'user_1753199913654');
INSERT INTO public.users VALUES (66, 'user_1753199849446');
INSERT INTO public.users VALUES (62, 'user_1753199821439');
INSERT INTO public.users VALUES (60, 'user_1753199752896');
INSERT INTO public.users VALUES (52, 'user_1753199402219');
INSERT INTO public.users VALUES (44, 'user_1753199284335');
INSERT INTO public.users VALUES (40, 'user_1753078249981');
INSERT INTO public.users VALUES (36, 'user_1753078086878');
INSERT INTO public.users VALUES (32, 'user_1753077972895');
INSERT INTO public.users VALUES (28, 'user_1753077895534');
INSERT INTO public.users VALUES (24, 'user_1753077832548');
INSERT INTO public.users VALUES (22, 'user_1753077803358');
INSERT INTO public.users VALUES (7, 'user_1753077640267');
INSERT INTO public.users VALUES (8, 'user_1753077640266');
INSERT INTO public.users VALUES (18, 'user_1753077734988');
INSERT INTO public.users VALUES (19, 'user_1753077734987');
INSERT INTO public.users VALUES (20, 'user_1753077774766');
INSERT INTO public.users VALUES (21, 'user_1753077774765');
INSERT INTO public.users VALUES (23, 'user_1753077803357');
INSERT INTO public.users VALUES (105, 'user_1753200533509');
INSERT INTO public.users VALUES (109, 'user_1753200714403');
INSERT INTO public.users VALUES (113, 'user_1753200720588');
INSERT INTO public.users VALUES (117, 'user_1753200733156');
INSERT INTO public.users VALUES (121, 'user_1753200824982');
INSERT INTO public.users VALUES (25, 'user_1753077832547');
INSERT INTO public.users VALUES (38, 'user_1753078104873');
INSERT INTO public.users VALUES (99, 'user_1753200327678');
INSERT INTO public.users VALUES (78, 'user_1753200203472');
INSERT INTO public.users VALUES (34, 'user_1753078001211');
INSERT INTO public.users VALUES (73, 'user_1753199990591');
INSERT INTO public.users VALUES (75, 'user_1753200199288');
INSERT INTO public.users VALUES (79, 'user_1753200203471');
INSERT INTO public.users VALUES (33, 'user_1753077972894');
INSERT INTO public.users VALUES (35, 'user_1753078001210');
INSERT INTO public.users VALUES (76, 'user_1753200201439');
INSERT INTO public.users VALUES (9, 'user_1753077676290');
INSERT INTO public.users VALUES (10, 'user_1753077676289');
INSERT INTO public.users VALUES (74, 'user_1753200199289');
INSERT INTO public.users VALUES (77, 'user_1753200201438');
INSERT INTO public.users VALUES (55, 'user_1753199414712');
INSERT INTO public.users VALUES (15, 'user_1753077723445');
INSERT INTO public.users VALUES (16, 'user_1753077733107');
INSERT INTO public.users VALUES (93, 'user_1753200226875');
INSERT INTO public.users VALUES (101, 'user_1753200345967');
INSERT INTO public.users VALUES (103, 'user_1753200401651');
INSERT INTO public.users VALUES (88, 'user_1753200219654');
INSERT INTO public.users VALUES (89, 'user_1753200219653');
INSERT INTO public.users VALUES (91, 'user_1753200221898');
INSERT INTO public.users VALUES (102, 'user_1753200401652');
INSERT INTO public.users VALUES (106, 'user_1753200656944');
INSERT INTO public.users VALUES (110, 'user_1753200718229');
INSERT INTO public.users VALUES (114, 'user_1753200730036');
INSERT INTO public.users VALUES (118, 'user_1753200760914');
INSERT INTO public.users VALUES (122, 'user_1753200853894');
INSERT INTO public.users VALUES (97, 'user_1753200304957');
INSERT INTO public.users VALUES (80, 'user_1753200205872');
INSERT INTO public.users VALUES (70, 'user_1753199924676');
INSERT INTO public.users VALUES (11, 'user_1753077719739');
INSERT INTO public.users VALUES (29, 'user_1753077895533');
INSERT INTO public.users VALUES (30, 'user_1753077913553');
INSERT INTO public.users VALUES (53, 'user_1753199402218');
INSERT INTO public.users VALUES (58, 'user_1753199422947');
INSERT INTO public.users VALUES (61, 'user_1753199752895');
INSERT INTO public.users VALUES (63, 'user_1753199821438');
INSERT INTO public.users VALUES (67, 'user_1753199849445');
INSERT INTO public.users VALUES (69, 'user_1753199913653');
INSERT INTO public.users VALUES (47, 'user_1753199340431');
INSERT INTO public.users VALUES (37, 'user_1753078086877');
INSERT INTO public.users VALUES (39, 'user_1753078104872');
INSERT INTO public.users VALUES (41, 'user_1753078249980');
INSERT INTO public.users VALUES (42, 'user_1753199146577');
INSERT INTO public.users VALUES (43, 'user_1753199146576');
INSERT INTO public.users VALUES (45, 'user_1753199284334');
INSERT INTO public.users VALUES (50, 'user_1753199355204');
INSERT INTO public.users VALUES (51, 'user_1753199355203');
INSERT INTO public.users VALUES (54, 'user_1753199414713');
INSERT INTO public.users VALUES (56, 'user_1753199417108');
INSERT INTO public.users VALUES (27, 'user_1753077877556');
INSERT INTO public.users VALUES (64, 'user_1753199840039');
INSERT INTO public.users VALUES (65, 'user_1753199840038');
INSERT INTO public.users VALUES (12, 'user_1753077719738');
INSERT INTO public.users VALUES (13, 'user_1753077723446');
INSERT INTO public.users VALUES (14, 'user_1753077723445');
INSERT INTO public.users VALUES (59, 'user_1753199422946');
INSERT INTO public.users VALUES (57, 'user_1753199417107');
INSERT INTO public.users VALUES (107, 'user_1753200656943');
INSERT INTO public.users VALUES (111, 'user_1753200718228');
INSERT INTO public.users VALUES (115, 'user_1753200730035');
INSERT INTO public.users VALUES (119, 'user_1753200760913');
INSERT INTO public.users VALUES (123, 'user_1753200853893');
INSERT INTO public.users VALUES (31, 'user_1753077913552');
INSERT INTO public.users VALUES (94, 'user_1753200229749');
INSERT INTO public.users VALUES (95, 'user_1753200229748');
INSERT INTO public.users VALUES (98, 'user_1753200327679');
INSERT INTO public.users VALUES (90, 'user_1753200221899');
INSERT INTO public.users VALUES (26, 'user_1753077877557');
INSERT INTO public.users VALUES (81, 'user_1753200205871');
INSERT INTO public.users VALUES (17, 'user_1753077733106');
INSERT INTO public.users VALUES (46, 'user_1753199340432');
INSERT INTO public.users VALUES (48, 'user_1753199352769');
INSERT INTO public.users VALUES (49, 'user_1753199352768');
INSERT INTO public.users VALUES (82, 'user_1753200210765');
INSERT INTO public.users VALUES (84, 'user_1753200214844');
INSERT INTO public.users VALUES (85, 'user_1753200214843');
INSERT INTO public.users VALUES (86, 'user_1753200217194');
INSERT INTO public.users VALUES (87, 'user_1753200217193');


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 413, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 123, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (games_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

