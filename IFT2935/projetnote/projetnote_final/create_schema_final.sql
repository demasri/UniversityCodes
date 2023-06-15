BEGIN TRANSACTION;

DROP SCHEMA if exists ift2935_projet_final CASCADE;

CREATE SCHEMA ift2935_projet_final;

set search_path to ift2935_projet_final;

CREATE SEQUENCE Annonceur_id_seq;
CREATE TABLE Annonceur (
  Id_Annonceur int NOT NULL DEFAULT NEXTVAL('Annonceur_id_seq'),
    Nom varchar(50) NOT NULL,
      Prenom varchar(50) NOT NULL,
        Code_Postal varchar(20) NOT NULL,
	  Courriel varchar(25) NOT NULL,
	    Numero_Telephone varchar(25) NOT NULL,
	      CONSTRAINT PK_Annonceur PRIMARY KEY (Id_Annonceur),
	        CONSTRAINT UK_Annonceur_1 UNIQUE (Nom, Prenom, Code_Postal, Courriel, Numero_Telephone)
		);

COMMENT ON COLUMN Annonceur.Id_Annonceur IS 'Identifiant de l''annonceur';
COMMENT ON COLUMN Annonceur.Nom IS 'Nom de l''annonceur';
COMMENT ON COLUMN Annonceur.Prenom IS 'Prenom de l''annonceur';
COMMENT ON COLUMN Annonceur.Code_Postal IS 'Code Postal de l''annonceur';
COMMENT ON COLUMN Annonceur.Courriel IS 'Courriel de l''annonceur';
COMMENT ON COLUMN Annonceur.Numero_Telephone IS 'Numero de telephone de l''annonceur';

CREATE SEQUENCE Categorie_id_seq;
CREATE TABLE Categorie (
  Id_Categorie int NOT NULL DEFAULT NEXTVAL('Categorie_id_seq'),
    Nom varchar(255) NOT NULL,
      Description varchar(255) NOT NULL,
        CONSTRAINT PK_Categorie PRIMARY KEY (Id_Categorie),
	  CONSTRAINT UK_Categorie_Nom UNIQUE (Nom),
	    CONSTRAINT UK_Categorie_Description UNIQUE (Description)
	    );

COMMENT ON COLUMN Categorie.Id_Categorie IS 'Identifiant de la categorie du produit';
COMMENT ON COLUMN Categorie.Nom IS 'Code de la categorie du produit';
COMMENT ON COLUMN Categorie.Description IS 'Description de la categorie du produit';

CREATE SEQUENCE Expert_id_seq;
CREATE TABLE Expert (
  Id_Expert int NOT NULL DEFAULT NEXTVAL('Expert_id_seq'),
    Nom varchar(255) NOT NULL,
      Prenom varchar(255) NOT NULL,
        Numero_Employe varchar(255) NOT NULL,
	  Date_Embauche date NOT NULL,
	    CONSTRAINT PK_Expert PRIMARY KEY (Id_Expert),
	      CONSTRAINT UK_Expert_Numero_Employe UNIQUE (Numero_Employe),
	        CONSTRAINT UK_Expert_2 UNIQUE (Nom, Prenom, Numero_Employe, Date_Embauche)
		);

COMMENT ON COLUMN Expert.Id_Expert IS 'Identifiant de l''expert';
COMMENT ON COLUMN Expert.Nom IS 'Nom  de l''expert';
COMMENT ON COLUMN Expert.Prenom IS 'Prenom  de l''expert';
COMMENT ON COLUMN Expert.Numero_Employe IS 'Numero d''employe  de l''expert';
COMMENT ON COLUMN Expert.Date_Embauche IS 'Date d''embauche  de l''expert';
COMMENT ON CONSTRAINT UK_Expert_Numero_Employe ON Expert IS 'Le numero Employe est unique';

CREATE TABLE Historique_Prix (
  Id_Produit int NOT NULL,
    Id_Annonceur int NOT NULL,
      Id_Expert int NOT NULL,
        Date_Debut_Modification_Prix date NOT NULL,
	  Date_Fin_Modification_Prix date,
	    Prix_Propose decimal(10,2) NOT NULL,
		Prix_Avant_Modification decimal(10,2),
	      PRIMARY KEY (Id_Produit, Id_Annonceur, Id_Expert, Date_Debut_Modification_Prix)
	      );
	      COMMENT ON COLUMN Historique_Prix.Id_Produit IS 'Identifiant du produit';
	      COMMENT ON COLUMN Historique_Prix.Id_Annonceur IS 'Identifiant de l''annonceur';
	      COMMENT ON COLUMN Historique_Prix.Id_Expert IS 'Identifiant de l''expert';
	      COMMENT ON COLUMN Historique_Prix.Date_Debut_Modification_Prix IS 'Date de debut effective proposee par l''expert';
	      COMMENT ON COLUMN Historique_Prix.Date_Fin_Modification_Prix IS 'Date de fin effective proposee par l''expert';
	      COMMENT ON COLUMN Historique_Prix.Prix_Propose IS 'Prix Modifie propose par l''expert';
		  COMMENT ON COLUMN Historique_Prix.Prix_Avant_Modification IS 'Prix avant modification propose par expert';

CREATE SEQUENCE Produit_id_seq;
CREATE TABLE Produit (
  Id_Produit int NOT NULL DEFAULT NEXTVAL('Produit_id_seq'),
    Id_Annonceur int NOT NULL,
      Titre varchar(50) NOT NULL,
        Description varchar(255) NOT NULL,
	  Prix decimal(10,2) NOT NULL,
	    Statut int NOT NULL DEFAULT 0,
	      Id_Categorie int NOT NULL,
	        Date_De_Publication date,
		  PRIMARY KEY (Id_Annonceur, Id_Produit),
		    CONSTRAINT UK_Produit UNIQUE (Id_Produit),
		      CONSTRAINT UK_Produit_2 UNIQUE (Id_Annonceur, Titre, Description, Prix, Statut, Id_Categorie, Date_De_Publication)
		      );

COMMENT ON COLUMN Produit.Id_Produit IS 'Idendifiant du produit';
COMMENT ON COLUMN Produit.Id_Annonceur IS 'Identifiant de l''annonceur';
COMMENT ON COLUMN Produit.Titre IS 'Titre du produit';
COMMENT ON COLUMN Produit.Description IS 'Description du produit';
COMMENT ON COLUMN Produit.Prix IS 'Prix du produit affiche par l''annonceur';
COMMENT ON COLUMN Produit.Statut IS 'Statut du produit (1 pour Vendu et 0 pour Non Vendu et 2 pour retire)';
COMMENT ON COLUMN Produit.Id_Categorie IS 'Identifiant de la categorie du produit';
COMMENT ON COLUMN Produit.Date_De_Publication IS 'Date de publication de l''annonce';
COMMENT ON CONSTRAINT UK_Produit ON Produit IS 'Chaque annonce a son id_produit different';

ALTER TABLE Historique_Prix ADD CONSTRAINT fk_Historique_Prix_Expert_1 FOREIGN KEY (Id_Expert) REFERENCES Expert (Id_Expert);
ALTER TABLE Historique_Prix ADD CONSTRAINT fk_Historique_Prix_Produit_1 FOREIGN KEY (Id_Annonceur, Id_Produit) REFERENCES Produit (Id_Annonceur, Id_Produit);
ALTER TABLE Produit ADD CONSTRAINT fk_Produit_Categorie_1 FOREIGN KEY (Id_Categorie) REFERENCES Categorie (Id_Categorie);
ALTER TABLE Produit ADD CONSTRAINT fk_Produit_Annonceur_1 FOREIGN KEY (Id_Annonceur) REFERENCES Annonceur (Id_Annonceur);
ALTER TABLE Produit ADD CONSTRAINT Statut_0_1_2 CHECK (Statut >=0 and Statut <=2);



COMMIT;

begin transaction;

set search_path to ift2935_projet_final;

CREATE OR REPLACE FUNCTION insertHistorique_Prix( )
RETURNS trigger AS
$$

begin

/* Si le produit est déjà vendu (Satut = 1) ou retiré (Satut = 2) alors pas besoin de faire une proposition de modification du prix.

 Si la proposition de modification de prix consiste à proposer la même valeur alors pas besoin de faire une proposition de modification du prix 
 
 Dans ces 2 cas, la fonction ne fait rien.
 
 */

IF (SELECT Prix as Prix  From  Produit Where id_produit = new.id_produit  and id_annonceur = new.id_annonceur) = new.Prix_Propose
    OR
    (SELECT statut as statut  From  Produit Where id_produit = new.id_produit  and id_annonceur = new.id_annonceur) = 2
    OR
    (SELECT statut as statut  From  Produit Where id_produit = new.id_produit  and id_annonceur = new.id_annonceur) = 1
    THEN  return old;
ELSE
  BEGIN

--     DROP TABLE  IF EXISTS produit_temp_insert;
        
    CREATE  TEMP TABLE produit_temp_insert AS
    (Select prix , id_produit, id_annonceur
    From   produit
    Where id_produit = new.id_produit  and id_annonceur = new.id_annonceur  limit 1);
    
    
    INSERT INTO historique_prix(
	 id_produit, id_annonceur, id_expert, date_debut_modification_prix, date_fin_modification_prix, prix_propose, prix_avant_modification) 
      (SELECT
	 new.id_produit, new.id_annonceur, new.id_expert, new.date_debut_modification_prix, new.date_fin_modification_prix, new.prix_propose, p.prix as prix_avant_modification
     FROM historique_prix h, produit_temp_insert p
    Where  h.id_produit = p.id_produit    and h.id_annonceur = p.id_annonceur
        );
       
return new;
   END;
END IF;   	 
	 

end;
$$ language 'plpgsql';



CREATE OR REPLACE FUNCTION UpdateProduit_Prix( )
RETURNS trigger AS
$$

begin

/* Si le produit est déjà vendu (Satut = 1) ou retiré (Satut = 2) alors pas besoin de faire une proposition de modification du prix.

 Si la proposition de modification de prix consiste à proposer la même valeur alors pas besoin de faire une proposition de modification du prix 
 
 Dans ces 2 cas, la fonction ne fait rien.
 
 */

IF (SELECT Prix as Prix  From  Produit Where id_produit = new.id_produit  and id_annonceur = new.id_annonceur) = new.Prix_Propose
    OR
    (SELECT statut as statut  From  Produit Where id_produit = new.id_produit  and id_annonceur = new.id_annonceur) = 2
    OR
    (SELECT statut as statut  From  Produit Where id_produit = new.id_produit  and id_annonceur = new.id_annonceur) = 1
    THEN  return old;
ELSE
  BEGIN

--     DROP TABLE  IF EXISTS produit_temp_update;

    CREATE  TEMP TABLE produit_temp_update AS
    (Select prix , id_produit, id_annonceur
    From   produit
    Where id_produit = new.id_produit  and id_annonceur = new.id_annonceur  limit 1);

    
    Update produit
    Set prix = new.Prix_Propose
    Where id_produit = new.id_produit  and id_annonceur = new.id_annonceur;

    Update historique_prix
    set prix_avant_modification = prix
    FROM historique_prix h, produit_temp_update p
    Where  h.id_produit = p.id_produit    and h.id_annonceur = p.id_annonceur
    AND   p.id_produit = historique_prix.id_produit  and p.id_annonceur = historique_prix.id_annonceur;   
	 
return new;
   END;
END IF;   	 
	 
end;
$$ language 'plpgsql';


DROP TRIGGER IF EXISTS  trg_before_insert_historique_prix ON historique_prix;

CREATE TRIGGER  trg_before_insert_historique_prix
BEFORE INSERT
ON historique_prix
for each row
execute procedure insertHistorique_Prix();

DROP TRIGGER IF EXISTS  trg_after_insert_historique_prix ON historique_prix;

CREATE TRIGGER  trg_after_insert_historique_prix
AFTER INSERT
ON historique_prix
for each row
execute procedure UpdateProduit_Prix();

COMMIT;

begin transaction;

set search_path to ift2935_projet_final;

CREATE OR REPLACE FUNCTION UpdateProduit_Statut( )
RETURNS trigger AS
$$

begin

/* Si le nouveau statut du produit est le même que l'ancien statut du produit alors la fonction ne fait rien.
   Si le nouveau statut du produit est  différent de retiré (Satut != 2) alors on mets à jour le statut.
   Sinon Si le nouveau statut du produit est égal à retiré (Satut = 2) alors 
         Si le produit a fait l'objet de modification de Prix alors retablir l'ancien prix puis mettre à jour le statut
         Sinon mettre à jour le statut

  */

IF  new.statut = old.statut THEN  
return old;
ELSE
  

     IF (SELECT new.statut as statut  From  Produit Where produit.id_produit = new.id_produit  and produit.id_annonceur = new.id_annonceur) != 2 THEN

	Update produit
	Set statut = new.statut
	Where produit.id_produit = new.id_produit  and produit.id_annonceur = new.id_annonceur;

	return new;    
    ELSE
	IF EXISTS (SELECT prix_avant_modification as prix_avant_modification  From  historique_prix Where id_produit = new.id_produit  and id_annonceur = new.id_annonceur) THEN


		    DROP TABLE  IF EXISTS min_date_debut_modification_prix;
		    
		    CREATE   TABLE min_date_debut_modification_prix as
			(
			select h.id_produit as id_produit,  min(h.date_debut_modification_prix ) as min_date_debut_modification_prix
			from ift2935_projet_final.historique_prix h
			Where historique_prix.id_produit = new.id_produit  and historique_prix.id_annonceur = new.id_annonceur  
			group by h.id_produit limit 1);

		    DROP TABLE  IF EXISTS historique_prix_temp;
		    
	            CREATE   TABLE historique_prix_temp AS
			(Select prix_avant_modification as prix_avant_modification , id_produit, id_annonceur
			From   historique_prix  h, min_date_debut_modification_prix m
			Where h.id_produit = new.id_produit  and h.id_annonceur = new.id_annonceur 
			and h.id_produit = m.id_produit 
			and h.date_debut_modification_prix = m.min_date_debut_modification_prix
			  limit 1);

			Update produit
			Set statut = new.statut
			Where id_produit = new.id_produit  and id_annonceur = new.id_annonceur;

			Update produit
			Set prix = hpt.prix_avant_modification
			FROM  historique_prix_temp hpt
			Where  produit.id_produit = hpt.id_produit    and produit.id_annonceur = hpt.id_annonceur;
			--and    id_produit = new.id_produit    and id_annonceur = new.id_annonceur;

			return new; 
	ELSE

			Update produit
			Set statut = new.statut
			Where id_produit = new.id_produit  and id_annonceur = new.id_annonceur;

			return new; 
	END IF;
     END IF;
    
return new;
 --  END;
END IF;   	 
	 
end;
$$ language 'plpgsql';



DROP TRIGGER IF EXISTS  trg_After_UpdateProduit_Statut ON Produit;

CREATE TRIGGER  trg_After_UpdateProduit_Statut
AFTER UPDATE
ON Produit
for each row
execute procedure UpdateProduit_Statut();

COMMIT;




