Croduit.Titre IS 'Titre du produit';
COMMENT ON COLUMN Produit.Description IS 'Description du produit';
COMMENT ON COLUMN Produit.Prix IS 'Prix du produit affiche par l''annonceur';
COMMENT ON COLUMN Produit.Statut IS 'Statut du produit (1 pour Vendu et 0 pour Non Vendu)';
COMMENT ON COLUMN Produit.Id_Categorie IS 'Identifiant de la categorie du produit';
COMMENT ON COLUMN Produit.Date_De_Publication IS 'Date de publication de l''annonce';
COMMENT ON CONSTRAINT UK_Produit ON Produit IS 'Chaque annonce a son id_produit different';

ALTER TABLE Affiche ADD CONSTRAINT fk_Affiche_Annonceur_1 FOREIGN KEY (Id_Annonceur) REFERENCES Annonceur (Id_Annonceur);
ALTER TABLE Affiche ADD CONSTRAINT fk_Affiche_Produit_1 FOREIGN KEY (Id_Produit) REFERENCES Produit (Id_Annonceur);
ALTER TABLE Historique_Prix ADD CONSTRAINT fk_Historique_Prix_Expert_1 FOREIGN KEY (Id Expert) REFERENCES Expert (Id_Expert);
ALTER TABLE Historique_Prix ADD CONSTRAINT fk_Historique_Prix_Produit_1 FOREIGN KEY (Date_Debut_Modification_Prix, Id_Annonceur) REFERENCES Produit (Id_Annonceur, Id_Produit);
ALTER TABLE Produit ADD CONSTRAINT fk_Produit_Categorie_1 FOREIGN KEY (Id_Categorie) REFERENCES Categorie (Id_Categorie);
ALTER TABLE Produit ADD CONSTRAINT fk_Produit_Annonceur_1 FOREIGN KEY (Id_Annonceur) REFERENCES Annonceur (Id_Annonceur);
