--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.1
-- Dumped by pg_dump version 9.5.1

-- Started on 2020-04-25 17:38:40

-- SET statement_timeout = 0;
-- SET lock_timeout = 0;
-- SET client_encoding = 'UTF8';
-- SET standard_conforming_strings = on;
-- SET check_function_bodies = false;
-- SET client_min_messages = warning;
-- SET row_security = off;

SET search_path = ift2935_projet_final, pg_catalog;

--
-- TOC entry 2258 (class 0 OID 26089)
-- Dependencies: 208
-- Data for Name: annonceur; Type: TABLE DATA; Schema: ift2935_projet_final; Owner: -
--

ALTER TABLE ift2935_projet_final.produit DISABLE TRIGGER trg_after_updateproduit_statut;
ALTER TABLE ift2935_projet_final.historique_prix DISABLE TRIGGER trg_after_insert_historique_prix;
ALTER TABLE ift2935_projet_final.historique_prix DISABLE TRIGGER trg_before_insert_historique_prix;

DELETE FROM ift2935_projet_final.historique_prix;

DELETE FROM ift2935_projet_final.produit;

DELETE FROM ift2935_projet_final.annonceur;

INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (1, 'Asselin', 'Bertrapri', 'X2X 5P0', '41161@dummymailserver.com', '(713) 555-2911');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (2, 'Baillargeon', 'Marmomon', 'M3R 9F8', '70744@dummymailserver.com', '(713) 555-2912');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (3, 'Brunet', 'Myducan', 'V4B 6C7', '59259@dummymailserver.com', '(713) 555-2913');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (4, 'Émond', 'Marsantur', 'J8K 8P8', '55484@dummymailserver.com', '(713) 555-2914');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (5, 'Giroux', 'Grichipri', 'E8Q 5N8', '36110@dummymailserver.com', '(713) 555-2915');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (6, 'Gosselin', 'Nudurvin', 'C4D 7E5', '80799@dummymailserver.com', '(713) 555-2916');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (7, 'Hébert', 'Flagallou', 'B5Q 9E2', '93721@dummymailserver.com', '(713) 555-2917');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (8, 'Hébert', 'Josanvin', 'C4N 7Y2', '48746@dummymailserver.com', '(713) 555-2918');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (9, 'Lambert', 'Lavipa', 'F8D 3G2', '82647@dummymailserver.com', '(713) 555-2919');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (10, 'Patenaude', 'Nutratre', 'N0P 4B4', '58000@dummymailserver.com', '(713) 555-2920');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (11, 'Patenaude', 'Sounelline', 'P3N 4Z2', '33514@dummymailserver.com', '(713) 555-2921');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (12, 'Pelletier', 'Louplifort', 'H2P 6W7', '68988@dummymailserver.com', '(713) 555-2922');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (13, 'Pelletier', 'Louplipri', 'K0M 1B6', '10800@dummymailserver.com', '(713) 555-2923');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (14, 'Raté', 'Cadurson', 'S8L 9R6', '16536@dummymailserver.com', '(713) 555-2924');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (15, 'Richard', 'Nutelson', 'V6U 5X0', '89153@dummymailserver.com', '(713) 555-2925');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (16, 'Roberge', 'Flafota', 'E5J 1N6', '07375@dummymailserver.com', '(713) 555-2926');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (17, 'Roberge', 'Laviline', 'G6N 0P1', '95567@dummymailserver.com', '(713) 555-2927');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (18, 'Roberge', 'Silrelti', 'Y2P 8S8', '70416@dummymailserver.com', '(713) 555-2928');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (19, 'Rousseau', 'Martelson', 'V1X 3X3', '80964@dummymailserver.com', '(713) 555-2929');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (20, 'Sigouin', 'Mybisha', 'V6L 3P5', '81465@dummymailserver.com', '(713) 555-2930');
INSERT INTO annonceur (id_annonceur, nom, prenom, code_postal, courriel, numero_telephone) VALUES (21, 'Trudeau', 'Tibifort', 'E4X 0U5', '44717@dummymailserver.com', '(713) 555-2931');


COMMIT;

--
-- TOC entry 2298 (class 0 OID 0)
-- Dependencies: 207
-- Name: annonceur_id_seq; Type: SEQUENCE SET; Schema: ift2935_projet_final; Owner: -
--

SELECT pg_catalog.setval('annonceur_id_seq', 21, true);




--
-- TOC entry 2260 (class 0 OID 26099)
-- Dependencies: 210
-- Data for Name: categorie; Type: TABLE DATA; Schema: ift2935_projet_final; Owner: -
--

DELETE FROM ift2935_projet_final.categorie;

INSERT INTO categorie (id_categorie, nom, description) VALUES (1, 'MEU', 'Meubles');
INSERT INTO categorie (id_categorie, nom, description) VALUES (2, 'JOU', 'Jouets');
INSERT INTO categorie (id_categorie, nom, description) VALUES (3, 'ELE', 'Electronique');
INSERT INTO categorie (id_categorie, nom, description) VALUES (4, 'VEH', 'Véhicules');
INSERT INTO categorie (id_categorie, nom, description) VALUES (5, 'SPO', 'Sports et Exterieur');
INSERT INTO categorie (id_categorie, nom, description) VALUES (6, 'ALI', 'Aliments');
INSERT INTO categorie (id_categorie, nom, description) VALUES (7, 'SER', 'Services');
INSERT INTO categorie (id_categorie, nom, description) VALUES (8, 'VET', 'Vetements');
INSERT INTO categorie (id_categorie, nom, description) VALUES (9, 'MED', 'Médicaments');
INSERT INTO categorie (id_categorie, nom, description) VALUES (10, 'COU', 'Cours en Ligne');

COMMIT;

--
-- TOC entry 2299 (class 0 OID 0)
-- Dependencies: 209
-- Name: categorie_id_seq; Type: SEQUENCE SET; Schema: ift2935_projet_final; Owner: -
--

SELECT pg_catalog.setval('categorie_id_seq', 10, true);


--
-- TOC entry 2262 (class 0 OID 26114)
-- Dependencies: 212
-- Data for Name: expert; Type: TABLE DATA; Schema: ift2935_projet_final; Owner: -
--

DELETE FROM ift2935_projet_final.expert;

INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (1, 'Trudel', 'Mychoti', '27309513', '2018-02-21');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (2, 'Baillargeon', 'Mymarcan', '50795529', '2018-07-12');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (3, 'Rathé', 'Lamarpa', '79006830', '2018-08-28');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (4, 'Goyette', 'Doudurvol', '72120478', '2018-04-23');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (5, 'Simard', 'Lousanser', '70368564', '2018-03-08');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (6, 'Rousseau', 'Godusha', '17802665', '2018-04-26');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (7, 'Roberge', 'Durbipa', '51086439', '2018-06-04');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (8, 'Arsenault', 'Nuchiser', '46681420', '2018-06-07');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (9, 'Dupuis', 'Didudel', '15125752', '2018-03-08');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (10, 'Tardif', 'Poclotur', '33518969', '2018-12-03');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (11, 'Simard', 'Lavican', '74530752', '2018-10-21');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (12, 'Patenaude', 'Marmofort', '80500956', '2018-03-07');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (13, 'Brunet', 'Doutelfort', '8388373', '2018-12-18');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (14, 'Blackburn', 'Distraser', '11402878', '2018-07-06');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (15, 'Giroux', 'Sougalga', '71200267', '2018-01-08');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (16, 'Racine', 'Silfomine', '4103364', '2018-01-22');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (17, 'Goyette', 'Loutelpri', '64329693', '2018-12-18');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (18, 'Tremblay', 'Surelcan', '2975711', '2018-06-28');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (19, 'Tremblay', 'Caclofort', '90358179', '2018-07-14');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (20, 'Deschênes', 'Marservol', '34262300', '2018-02-24');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (21, 'Chateaubriand', 'Logalga', '99767870', '2018-05-26');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (22, 'Raté', 'Marbimon', '47972329', '2018-07-16');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (23, 'Lebrun', 'Difofi', '69810074', '2018-12-11');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (24, 'Girard', 'Soupilga', '4729227', '2018-08-03');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (25, 'Chateaubriand', 'Douchison', '616013', '2018-08-07');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (26, 'Hébert', 'Grisanson', '94038705', '2018-06-05');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (27, 'Trudel', 'Doubiser', '4990573', '2018-09-05');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (28, 'Côté', 'Berchodol', '83164165', '2018-07-30');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (29, 'Lacombe', 'Cridulou', '93469005', '2018-03-12');
INSERT INTO expert (id_expert, nom, prenom, numero_employe, date_embauche) VALUES (30, 'Lebrun', 'Camotur', '14270759', '2018-09-04');

COMMIT;

--
-- TOC entry 2300 (class 0 OID 0)
-- Dependencies: 211
-- Name: expert_id_seq; Type: SEQUENCE SET; Schema: ift2935_projet_final; Owner: -
--

SELECT pg_catalog.setval('expert_id_seq', 30, true);


--
-- TOC entry 2265 (class 0 OID 26134)
-- Dependencies: 215
-- Data for Name: produit; Type: TABLE DATA; Schema: ift2935_projet_final; Owner: -
--

--DELETE FROM ift2935_projet_final.produit;

INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (16, 16, 'Dream_Elmasri_650', 'Ordinateur Professionel de marque Elmasri', 3899.99, 3, '2017-04-13', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (17, 17, 'Pad_Elmasri_P100', 'Tablette portable de marque Elmasri', 699.99, 3, '2016-04-08', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (18, 18, 'Dream_Car_Elmasri_DC700', 'Voiture de luxe de marque Elmasri', 399699.99, 4, '2016-04-01', 1);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (19, 19, 'Dream_Car_Elmasri_DC500', 'Voiture de luxe de marque Elmasri', 299699.99, 4, '2016-03-17', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (20, 20, 'Dream_Car_Elmasri_DC3500', 'Voiture de luxe de marque Elmasri', 199699.99, 4, '2016-03-15', 2);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (21, 21, 'Jogging_Sport_XXXL', 'Survetement de sport de taille XXXL', 599.95, 5, '2016-03-15', 1);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (22, 1, 'Jogging_Sport_XL', 'Survetement de sport de taille XL', 199.95, 5, '2016-03-08', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (23, 2, 'Jogging_Sport_L', 'Survetement de sport de taille L', 99.95, 5, '2016-03-07', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (24, 3, 'Jogging_Sport_M', 'Survetement de sport de taille M', 79.95, 5, '2016-03-01', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (25, 4, 'Couscous_Saquenay', 'Couscous du saguenay à base poissons', 599.95, 6, '2016-02-25', 1);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (26, 5, 'Couscous_Estrie', 'Couscous de estrie à base canard', 599.95, 6, '2016-02-07', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (27, 6, 'Cassoulet_Liban', 'Cassoulet du Liban', 199.95, 6, '2016-01-21', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (31, 10, 'Jogging_Elmasri_M', 'Survetement de ville de taille M', 69.95, 8, '2016-01-05', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (1, 1, 'Table_TSL', 'Table de Salon de Luxe', 5759.99, 1, '2017-07-05', 1);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (2, 2, 'Table_TSN', 'Table de Salon normal', 2967.16, 1, '2017-06-05', 1);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (3, 3, 'Table_TSB', 'Table basse de Salon', 1583.15, 1, '2017-04-05', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (4, 4, 'Table_TM', 'Table à manger', 2570.50, 1, '2017-08-03', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (5, 5, 'Table_DC', 'Table de chevet', 772.14, 1, '2017-12-05', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (6, 6, 'Lit_KSL', 'Lit king size de luxe', 2980.15, 1, '2017-01-03', 1);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (7, 7, 'Lit_KSN', 'Lit king size normal', 959.93, 1, '2017-06-02', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (8, 8, 'Lit_QSL', 'Lit queen size de luxe', 1888.41, 1, '2017-01-22', 1);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (9, 9, 'Lit_QSN', 'Lit queen size normal', 342.80, 1, '2017-12-17', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (10, 10, 'Bilboquet_2_4', 'Bilboquet pour enfant de 2 à 4 ans', 698.02, 2, '2017-05-15', 1);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (11, 11, 'Bilboquet_5_10', 'Bilboquet pour enfant de 5 à 10 ans', 176.54, 2, '2017-05-12', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (12, 12, 'Toupie_3_5', 'Toupie pour enfant de 3 à 5 ans', 297.38, 2, '2017-05-11', 1);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (13, 13, 'Toupie_12_15', 'Toupie pour enfant de 12 à 15 ans', 173.37, 2, '2017-05-04', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (14, 14, 'Think_Elmasri_T650', 'Ordinateur portable de marque Elmasri', 6685.03, 3, '2017-04-15', 1);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (15, 15, 'Phone_Elmasri_P500', 'Telephone portable de marque Elmasri', 860.20, 3, '2017-04-14', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (28, 7, 'Jogging_Elmasri_XXXL', 'Survetement de ville de taille XXXL', 495.29, 8, '2016-01-21', 1);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (29, 8, 'Jogging_Elmasri_XL', 'Survetement de ville de taille XL', 95.09, 8, '2016-01-14', 0);
INSERT INTO produit (id_produit, id_annonceur, titre, description, prix, id_categorie, date_de_publication, statut) VALUES (30, 9, 'Jogging_Elmasri_L', 'Survetement de ville de taille L', 89.82, 8, '2016-01-10', 1);


COMMIT;


--
-- TOC entry 2263 (class 0 OID 26127)
-- Dependencies: 213
-- Data for Name: historique_prix; Type: TABLE DATA; Schema: ift2935_projet_final; Owner: -
--

INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (4, 4, 1, '2018-04-07', NULL, 2039.58, 2799.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (10, 10, 4, '2018-06-14', NULL, 126.27, 299.75);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (2, 2, 1, '2018-05-08', NULL, 2543.03, 2999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (3, 3, 3, '2018-12-25', NULL, 1583.15, 1599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (7, 7, 5, '2018-05-27', NULL, 892.21, 999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (8, 8, 2, '2018-11-06', NULL, 1335.32, 1999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (7, 7, 1, '2018-03-24', NULL, 412.94, 999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (7, 7, 2, '2018-09-03', NULL, 959.93, 999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (2, 2, 3, '2018-11-09', NULL, 2466.20, 2999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (7, 7, 3, '2018-09-29', NULL, 208.44, 999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (3, 3, 5, '2018-05-15', NULL, 1144.95, 1599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (1, 1, 1, '2018-04-14', NULL, 5752.38, 5999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (9, 9, 3, '2018-10-09', NULL, 258.51, 599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (3, 3, 1, '2018-05-14', NULL, 1392.81, 1599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (6, 6, 5, '2018-05-28', NULL, 2565.71, 2999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (1, 1, 2, '2018-11-03', NULL, 5759.99, 5999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (6, 6, 3, '2018-12-07', NULL, 2693.73, 2999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (9, 9, 4, '2018-06-14', NULL, 216.94, 599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (3, 3, 4, '2018-06-30', NULL, 1022.41, 1599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (4, 4, 2, '2018-10-23', NULL, 2074.66, 2799.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (2, 2, 4, '2018-07-04', NULL, 2967.16, 2999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (4, 4, 4, '2018-08-11', NULL, 2570.50, 2799.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (1, 1, 3, '2018-10-04', NULL, 5660.94, 5999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (2, 2, 2, '2018-08-17', NULL, 2757.49, 2999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (8, 8, 5, '2018-06-17', NULL, 1026.86, 1999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (8, 8, 1, '2018-04-09', NULL, 1888.41, 1999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (6, 6, 4, '2018-07-05', NULL, 2929.02, 2999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (7, 7, 4, '2018-05-29', NULL, 932.73, 999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (6, 6, 2, '2018-10-17', NULL, 2980.15, 2999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (9, 9, 2, '2018-08-31', NULL, 342.80, 599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (6, 6, 1, '2018-06-06', NULL, 2820.06, 2999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (8, 8, 3, '2018-09-27', NULL, 1770.52, 1999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (10, 10, 2, '2018-08-19', NULL, 180.44, 299.75);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (1, 1, 4, '2018-08-03', NULL, 5217.21, 5999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (2, 2, 5, '2018-04-07', NULL, 2933.13, 2999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (4, 4, 3, '2018-11-20', NULL, 1882.47, 2799.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (8, 8, 4, '2018-06-04', NULL, 1193.04, 1999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (1, 1, 5, '2018-05-27', NULL, 5392.92, 5999.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (3, 3, 2, '2018-08-30', NULL, 1365.66, 1599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (4, 4, 5, '2018-04-10', NULL, 2188.26, 2799.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (11, 11, 10, '2019-04-01', NULL, 161.05, 99.25);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (13, 13, 11, '2019-01-17', NULL, 150.44, 99.25);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (12, 12, 7, '2018-09-01', NULL, 243.97, 199.75);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (13, 13, 6, '2018-07-11', NULL, 104.17, 99.25);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (12, 12, 6, '2018-06-01', NULL, 253.73, 199.75);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (13, 13, 10, '2019-02-23', NULL, 131.49, 99.25);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (12, 12, 8, '2018-07-09', NULL, 249.64, 199.75);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (15, 15, 7, '2018-08-24', NULL, 850.87, 775.85);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (12, 12, 10, '2019-03-10', NULL, 284.68, 199.75);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (13, 13, 9, '2018-06-04', NULL, 118.02, 99.25);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (15, 15, 8, '2018-07-19', NULL, 860.20, 775.85);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (13, 13, 7, '2018-09-25', NULL, 160.27, 99.25);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (14, 14, 11, '2018-12-26', NULL, 6661.66, 6599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (11, 11, 8, '2018-09-11', NULL, 145.20, 99.25);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (14, 14, 9, '2018-05-20', NULL, 6641.43, 6599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (12, 12, 11, '2019-01-05', NULL, 297.38, 199.75);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (15, 15, 9, '2018-05-26', NULL, 804.25, 775.85);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (11, 11, 7, '2018-09-25', NULL, 111.60, 99.25);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (12, 12, 9, '2018-05-03', NULL, 257.11, 199.75);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (14, 14, 6, '2018-07-19', NULL, 6646.38, 6599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (14, 14, 7, '2018-09-18', NULL, 6685.03, 6599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (15, 15, 6, '2018-06-07', NULL, 791.09, 775.85);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (11, 11, 9, '2018-07-05', NULL, 159.71, 99.25);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (15, 15, 11, '2019-01-10', NULL, 777.98, 775.85);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (14, 14, 10, '2019-04-01', NULL, 6652.23, 6599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (15, 15, 10, '2019-02-08', NULL, 794.75, 775.85);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (11, 11, 6, '2018-06-09', NULL, 115.10, 99.25);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (11, 11, 11, '2018-12-02', NULL, 176.54, 99.25);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (13, 13, 8, '2018-09-28', NULL, 173.37, 99.25);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (14, 14, 8, '2018-09-05', NULL, 6649.69, 6599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (28, 7, 16, '2018-04-01', NULL, 465.70, 499.95);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (29, 8, 15, '2018-03-15', NULL, 65.33, 99.95);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (29, 8, 16, '2018-03-30', NULL, 95.09, 99.95);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (28, 7, 12, '2018-06-23', NULL, 454.75, 499.95);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (28, 7, 13, '2019-04-14', NULL, 495.29, 499.95);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (29, 8, 13, '2019-02-25', NULL, 50.76, 99.95);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (30, 9, 15, '2018-04-22', NULL, 52.56, 89.95);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (30, 9, 13, '2019-02-05', NULL, 59.37, 89.95);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (30, 9, 14, '2018-09-06', NULL, 51.27, 89.95);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (28, 7, 15, '2018-04-02', NULL, 494.50, 499.95);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (29, 8, 12, '2018-05-24', NULL, 88.69, 99.95);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (29, 8, 14, '2018-09-24', NULL, 82.05, 99.95);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (30, 9, 16, '2018-05-09', NULL, 89.82, 89.95);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (30, 9, 12, '2018-05-26', NULL, 72.18, 89.95);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (28, 7, 14, '2018-10-31', NULL, 465.89, 499.95);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (5, 5, 3, '2018-12-08', NULL, 59.86, 199.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (10, 10, 1, '2018-04-04', NULL, 563.57, 299.75);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (10, 10, 5, '2018-04-24', NULL, 614.93, 299.75);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (5, 5, 4, '2018-08-03', NULL, 772.14, 199.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (5, 5, 5, '2018-06-10', NULL, 731.36, 199.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (10, 10, 3, '2018-11-04', NULL, 698.02, 299.75);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (9, 9, 1, '2018-03-29', NULL, 10.07, 599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (5, 5, 1, '2018-04-29', NULL, 627.91, 199.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (9, 9, 5, '2018-06-11', NULL, 225.49, 599.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (5, 5, 2, '2018-09-14', NULL, 667.00, 199.00);
INSERT INTO historique_prix (id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) VALUES (20, 20, 20, '2020-04-22', NULL, 77777777.99, 199699.99);

COMMIT;



-- Completed on 2020-04-25 17:38:40

--
-- PostgreSQL database dump complete
--


--
-- TOC entry 2301 (class 0 OID 0)
-- Dependencies: 214
-- Name: produit_id_seq; Type: SEQUENCE SET; Schema: ift2935_projet_final; Owner: -
--

SELECT pg_catalog.setval('produit_id_seq', 31, true);

ALTER TABLE ift2935_projet_final.produit ENABLE TRIGGER trg_after_updateproduit_statut;
ALTER TABLE ift2935_projet_final.historique_prix ENABLE TRIGGER trg_after_insert_historique_prix;
ALTER TABLE ift2935_projet_final.historique_prix ENABLE TRIGGER trg_before_insert_historique_prix;
