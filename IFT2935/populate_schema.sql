set search_path to ift2935_projet_test5;

insert into catégorie (Nom, Description) values
('MEU', 'Meubles'),
('JOU', 'Jouets'),
('ELE', 'Electronique'),
('VEH', 'Véhicules'),
('SPO', 'Sports et Exterieur'),
('ALI', 'Aliments'),
('SER', 'Services'),
('VET', 'Vetements'),
('MED', 'Médicaments'),
('COU', 'Cours en Ligne');

insert into annonceur (Nom, Prénom, Code_Postal, Courriel, Numéro_Téléphone) values
('Asselin','Bertrapri','X2X 5P0','41161@dummymailserver.com','(713) 555-2911'),
('Baillargeon','Marmomon','M3R 9F8','70744@dummymailserver.com','(713) 555-2912'),
('Brunet','Myducan','V4B 6C7','59259@dummymailserver.com','(713) 555-2913'),
('Émond','Marsantur','J8K 8P8','55484@dummymailserver.com','(713) 555-2914'),
('Giroux','Grichipri','E8Q 5N8','36110@dummymailserver.com','(713) 555-2915'),
('Gosselin','Nudurvin','C4D 7E5','80799@dummymailserver.com','(713) 555-2916'),
('Hébert','Flagallou','B5Q 9E2','93721@dummymailserver.com','(713) 555-2917'),
('Hébert','Josanvin','C4N 7Y2','48746@dummymailserver.com','(713) 555-2918'),
('Lambert','Lavipa','F8D 3G2','82647@dummymailserver.com','(713) 555-2919'),
('Patenaude','Nutratre','N0P 4B4','58000@dummymailserver.com','(713) 555-2920'),
('Patenaude','Sounelline','P3N 4Z2','33514@dummymailserver.com','(713) 555-2921'),
('Pelletier','Louplifort','H2P 6W7','68988@dummymailserver.com','(713) 555-2922'),
('Pelletier','Louplipri','K0M 1B6','10800@dummymailserver.com','(713) 555-2923'),
('Raté','Cadurson','S8L 9R6','16536@dummymailserver.com','(713) 555-2924'),
('Richard','Nutelson','V6U 5X0','89153@dummymailserver.com','(713) 555-2925'),
('Roberge','Flafota','E5J 1N6','07375@dummymailserver.com','(713) 555-2926'),
('Roberge','Laviline','G6N 0P1','95567@dummymailserver.com','(713) 555-2927'),
('Roberge','Silrelti','Y2P 8S8','70416@dummymailserver.com','(713) 555-2928'),
('Rousseau','Martelson','V1X 3X3','80964@dummymailserver.com','(713) 555-2929'),
('Sigouin','Mybisha','V6L 3P5','81465@dummymailserver.com','(713) 555-2930'),
('Trudeau','Tibifort','E4X 0U5','44717@dummymailserver.com','(713) 555-2931');

insert into client (nom, prénom, adresse_postal, courriel, numéro_téléphone, code_postal) values
('El-Masri', 'Daniel', '951 rue Testing', 'delmasri@exemple.com', '(438) 555-4388', 'A2B 9C4'),
('Bourne', 'Jason', '123 rue Testing', 'jbourne@exemple.com', '(438) 555-0123', 'A1B 2C3'),
('Wick', 'John', '456 rue Testing', 'jwick@exemple.com', '(438) 555-4567', 'A2B 3C4'),
('Bond', 'James', '789 rue Testing', 'jbond@exemple.com', '(438) 555-9101', 'A3B 4C5'),
('Wayne', 'Bruce', '014 rue Testing', 'bwayne@exemple.com', '(438) 555-1258', 'A4B 5C6'),
('Lucas', 'Frank', '025 rue Testing', 'flucas@exemple.com', '(438) 555-6947', 'A5B 6C7'),
('Gillick', 'Alejandro', '036 rue Testing', 'agillick@exemple.com', '(438) 555-6598', 'A6B 7C8'),
('Hunt', 'Ethan', '147 rue Testing', 'ehunt@exemple.com', '(438) 555-2525', 'A7B 8C9'),
('Moses', 'Frank', '258 rue Testing', 'fmoses@exemple.com', '(438) 555-7896', 'A8B 9C1'),
('Clovis', 'William', '369 rue Testing', 'wclovis@exemple.com', '(438) 555-6532', 'A9B 1C2');

insert into Expert (Nom, Prénom, Numéro_Employé, Date_Embauche) values
('Trudel','Mychoti','27309513','2018-02-21 00:00:00.000'),
('Baillargeon','Mymarcan','50795529','2018-07-12 00:00:00.000'),
('Rathé','Lamarpa','79006830','2018-08-28 00:00:00.000'),
('Goyette','Doudurvol','72120478','2018-04-23 00:00:00.000'),
('Simard','Lousanser','70368564','2018-03-08 00:00:00.000'),
('Rousseau','Godusha','17802665','2018-04-26 00:00:00.000'),
('Roberge','Durbipa','51086439','2018-06-04 00:00:00.000'),
('Arsenault','Nuchiser','46681420','2018-06-07 00:00:00.000'),
('Dupuis','Didudel','15125752','2018-03-08 00:00:00.000'),
('Tardif','Poclotur','33518969','2018-12-03 00:00:00.000'),
('Simard','Lavican','74530752','2018-10-21 00:00:00.000'),
('Patenaude','Marmofort','80500956','2018-03-07 00:00:00.000'),
('Brunet','Doutelfort','8388373','2018-12-18 00:00:00.000'),
('Blackburn','Distraser','11402878','2018-07-06 00:00:00.000'),
('Giroux','Sougalga','71200267','2018-01-08 00:00:00.000'),
('Racine','Silfomine','4103364','2018-01-22 00:00:00.000'),
('Goyette','Loutelpri','64329693','2018-12-18 00:00:00.000'),
('Tremblay','Surelcan','2975711','2018-06-28 00:00:00.000'),
('Tremblay','Caclofort','90358179','2018-07-14 00:00:00.000'),
('Deschênes','Marservol','34262300','2018-02-24 00:00:00.000'),
('Chateaubriand','Logalga','99767870','2018-05-26 00:00:00.000'),
('Raté','Marbimon','47972329','2018-07-16 00:00:00.000'),
('Lebrun','Difofi','69810074','2018-12-11 00:00:00.000'),
('Girard','Soupilga','4729227','2018-08-03 00:00:00.000'),
('Chateaubriand','Douchison','616013','2018-08-07 00:00:00.000'),
('Hébert','Grisanson','94038705','2018-06-05 00:00:00.000'),
('Trudel','Doubiser','4990573','2018-09-05 00:00:00.000'),
('Côté','Berchodol','83164165','2018-07-30 00:00:00.000'),
('Lacombe','Cridulou','93469005','2018-03-12 00:00:00.000'),
('Lebrun','Camotur','14270759','2018-09-04 00:00:00.000');

insert into Produit ( Titre ,Description, Prix, Statut, Id_Catégorie) values
('Table_TSL','Table de Salon de Luxe', 9599, '1', 1),
('Table_TSN','Table de Salon normal', 9599, '1', 1),
('Table_TSB','Table basse de Salon', 1599, '0', 1),
('Table_TM','Table à manger', 2799, '0', 1),
('Table_DC','Table de chevet', 199, '0', 1),
('Lit_KSL','Lit king size de luxe', 2999, '1', 1),
('Lit_KSN','Lit king size normal',  999, '0', 1),
('Lit_QSL','Lit queen size de luxe', 1999, '1', 1),
('Lit_QSN','Lit queen size normal',  599, '0', 1),
('Bilboquet_2_4','Bilboquet pour enfant de 2 à 4 ans',  299.75, '1', 2),
('Bilboquet_5_10','Bilboquet pour enfant de 5 à 10 ans',  99.25, '0', 2),
('Toupie_3_5','Toupie pour enfant de 3 à 5 ans',  199.75, '1', 2),
('Toupie_12_15','Toupie pour enfant de 12 à 15 ans',  99.25, '0', 2),
('Think_Elmasri_T650','Ordinateur portable de marque Elmasri', 6599, '1', 3),
('Phone_Elmasri_P500','Telephone portable de marque Elmasri', 775.85, '0', 3),
('Dream_Elmasri_650','Ordinateur Professionel de marque Elmasri', 3899.99, '0', 3),
('Pad_Elmasri_P100','Tablette portable de marque Elmasri', 699.99, '0', 3),
('Dream_Car_Elmasri_DC700','Voiture de luxe de marque Elmasri', 399699.99, '1', 4),
('Dream_Car_Elmasri_DC500','Voiture de luxe de marque Elmasri', 299699.99, '0', 4),
('Dream_Car_Elmasri_DC3500','Voiture de luxe de marque Elmasri', 199699.99, '0', 4),
('Jogging_Sport_XXXL','Survetement de sport de taille XXXL', 599.95, '1', 5),
('Jogging_Sport_XL','Survetement de sport de taille XL', 199.95, '0', 5),
('Jogging_Sport_L','Survetement de sport de taille L', 99.95, '0', 5),
('Jogging_Sport_M','Survetement de sport de taille M', 79.95, '0', 5),
('Couscous_Saquenay','Couscous du saguenay à base poissons', 599.95, '1', 6),
('Couscous_Estrie','Couscous de estrie à base canard', 599.95, '0', 6),
('Cassoulet_Liban','Cassoulet du Liban', 199.95, '0', 6),
('Jogging_Elmasri_XXXL','Survetement de ville de taille XXXL', 499.95, '1', 8),
('Jogging_Elmasri_XL','Survetement de ville de taille XL', 99.95, '0', 8),
('Jogging_Elmasri_L','Survetement de ville de taille L', 89.95, '1', 8),
('Jogging_Elmasri_M','Survetement de ville de taille M', 69.95, '0', 8);

insert into Affiche (Date_de_Publication, Id_Annonceur, Id_Produit) values
('2016-01-02 00:00:00.000','11','1'),
('2016-01-05 00:00:00.000','6','24'),
('2016-01-10 00:00:00.000','14','2'),
('2016-01-14 00:00:00.000','4','31'),
('2016-01-21 00:00:00.000','20','20'),
('2016-02-07 00:00:00.000','20','18'),
('2016-02-25 00:00:00.000','18','31'),
('2016-03-01 00:00:00.000','18','11'),
('2016-03-07 00:00:00.000','10','1'),
('2016-03-08 00:00:00.000','5','23'),
('2016-03-15 00:00:00.000','2','6'),
('2016-03-15 00:00:00.000','18','6'),
('2016-03-17 00:00:00.000','16','4'),
('2016-03-31 00:00:00.000','2','7'),
('2016-04-01 00:00:00.000','3','10'),
('2016-04-08 00:00:00.000','9','20'),
('2017-04-13 00:00:00.000','20','22'),
('2017-04-14 00:00:00.000','11','29'),
('2017-04-15 00:00:00.000','1','11'),
('2017-05-04 00:00:00.000','20','21'),
('2017-05-11 00:00:00.000','9','10'),
('2017-05-12 00:00:00.000','13','9'),
('2017-05-15 00:00:00.000','20','24'),
('2017-05-17 00:00:00.000','8','25'),
('2017-05-22 00:00:00.000','17','6'),
('2017-06-05 00:00:00.000','15','21'),
('2017-06-08 00:00:00.000','21','1'),
('2017-06-23 00:00:00.000','3','28'),
('2017-06-24 00:00:00.000','21','25'),
('2017-07-03 00:00:00.000','8','18'),
('2017-07-12 00:00:00.000','17','27'),
('2017-07-24 00:00:00.000','2','23'),
('2017-07-26 00:00:00.000','18','17'),
('2017-08-08 00:00:00.000','5','22'),
('2017-08-18 00:00:00.000','1','3'),
('2017-08-31 00:00:00.000','9','9'),
('2018-09-06 00:00:00.000','6','13'),
('2018-09-08 00:00:00.000','15','28'),
('2018-10-15 00:00:00.000','21','13'),
('2018-10-30 00:00:00.000','17','16'),
('2018-11-01 00:00:00.000','10','24'),
('2018-11-04 00:00:00.000','9','23'),
('2018-11-10 00:00:00.000','1','4'),
('2018-11-12 00:00:00.000','9','15'),
('2018-11-13 00:00:00.000','4','9'),
('2018-11-24 00:00:00.000','6','1'),
('2018-11-26 00:00:00.000','8','3'),
('2018-11-30 00:00:00.000','15','4'),
('2017-12-05 00:00:00.000','6','28'),
('2017-12-12 00:00:00.000','20','10'),
('2017-12-13 00:00:00.000','21','9'),
('2017-12-26 00:00:00.000','21','31');

insert into Vente (Date_de_la_vente, Quantité, Id_Client, Id_Produit) values
('2016-01-04 00:00:00.000','1','1','10'),
('2016-01-18 00:00:00.000','1','8','31'),
('2016-01-20 00:00:00.000','2','3','9'),
('2016-02-07 00:00:00.000','2','10','10'),
('2016-03-18 00:00:00.000','1','3','10'),
('2016-03-23 00:00:00.000','2','10','20'),
('2016-03-30 00:00:00.000','2','1','25'),
('2016-04-14 00:00:00.000','1','5','4'),
('2016-05-01 00:00:00.000','2','4','30'),
('2016-06-11 00:00:00.000','2','7','6'),
('2016-06-30 00:00:00.000','2','9','10'),
('2016-07-06 00:00:00.000','1','1','18'),
('2016-07-12 00:00:00.000','2','10','17'),
('2016-07-16 00:00:00.000','1','5','15'),
('2016-08-26 00:00:00.000','2','2','29'),
('2016-09-11 00:00:00.000','2','9','20'),
('2016-10-25 00:00:00.000','1','6','30'),
('2016-11-10 00:00:00.000','1','3','24'),
('2016-11-15 00:00:00.000','2','2','12'),
('2016-11-16 00:00:00.000','2','6','3'),
('2016-11-21 00:00:00.000','2','3','23'),
('2016-12-25 00:00:00.000','2','1','6'),
('2017-01-08 00:00:00.000','2','3','6'),
('2017-01-15 00:00:00.000','2','2','20'),
('2017-02-10 00:00:00.000','1','5','6'),
('2017-02-22 00:00:00.000','1','10','1'),
('2017-03-09 00:00:00.000','1','10','23'),
('2017-03-12 00:00:00.000','2','9','9'),
('2017-04-22 00:00:00.000','2','8','21'),
('2017-05-14 00:00:00.000','1','10','10'),
('2017-05-30 00:00:00.000','2','3','4'),
('2017-06-03 00:00:00.000','1','5','3'),
('2017-06-14 00:00:00.000','2','4','24'),
('2017-06-26 00:00:00.000','1','10','9'),
('2017-07-06 00:00:00.000','1','8','22'),
('2017-07-09 00:00:00.000','1','1','18'),
('2017-09-21 00:00:00.000','2','3','27'),
('2017-09-26 00:00:00.000','1','5','6'),
('2017-09-27 00:00:00.000','1','5','7'),
('2017-10-25 00:00:00.000','2','2','16'),
('2017-11-23 00:00:00.000','1','10','31'),
('2017-11-23 00:00:00.000','2','8','14'),
('2017-11-27 00:00:00.000','2','9','10'),
('2017-12-18 00:00:00.000','1','3','6'),
('2018-01-04 00:00:00.000','1','8','29'),
('2018-01-05 00:00:00.000','2','6','30'),
('2018-02-19 00:00:00.000','2','9','4'),
('2018-02-21 00:00:00.000','1','6','5'),
('2018-02-25 00:00:00.000','2','5','6'),
('2018-03-13 00:00:00.000','2','3','17'),
('2018-04-06 00:00:00.000','1','10','14'),
('2018-04-20 00:00:00.000','1','5','8'),
('2018-04-25 00:00:00.000','1','5','17'),
('2018-04-26 00:00:00.000','2','7','12'),
('2018-05-01 00:00:00.000','2','4','7'),
('2018-05-11 00:00:00.000','1','8','9'),
('2018-05-31 00:00:00.000','1','4','21'),
('2018-06-17 00:00:00.000','2','6','30'),
('2018-07-06 00:00:00.000','1','5','12'),
('2018-09-17 00:00:00.000','2','1','7'),
('2018-10-01 00:00:00.000','1','5','16'),
('2018-10-12 00:00:00.000','2','1','6'),
('2018-10-15 00:00:00.000','2','1','15'),
('2018-11-20 00:00:00.000','2','4','15'),
('2018-11-23 00:00:00.000','2','1','12'),
('2018-12-08 00:00:00.000','1','9','22');
