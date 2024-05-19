Analyse moi cette base de donnée et écrit les requets suivantes :
CREATE DATABASE IF NOT EXISTS DEV_LOCATION;
USE DEV_LOCATION;

CREATE TABLE IF NOT EXISTS Chauffeur (
	Numero VARCHAR(10),
	Nom VARCHAR(30) NOT NULL,
	Prenom VARCHAR(30) NOT NULL,
	Adresse VARCHAR(30),
	Age SMALLINT CHECK(Age > 0),
	Tel VARCHAR(12),
	Sexe CHAR(10) CHECK (Sexe in ('Masculin','Feminin')),
	DateEmbauche DATE,
	Nb_Km SMALLINT UNSIGNED,
	CONSTRAINT PK_Conducteur PRIMARY KEY(Numero)
);

CREATE TABLE IF NOT EXISTS Voiture (
	Matricule VARCHAR(15),
	Marque VARCHAR(15),
	Version CHAR(5),
	Type VARCHAR(15),
	Couleur VARCHAR(15),
	Annee YEAR,
	Region VARCHAR(20),
	CONSTRAINT PK_Voiture PRIMARY KEY(Matricule)
);

CREATE TABLE IF NOT EXISTS Conduite (
	Chauffeur VARCHAR(10),
	Voiture VARCHAR(15),
	Date DATE,
	Heure TIME,
	VilleDepart VARCHAR(50),
	VilleArrive VARCHAR(50),
	Distance SMALLINT UNSIGNED,
	CONSTRAINT PK_Conduire PRIMARY KEY(Chauffeur, Voiture, Date, Heure),
	CONSTRAINT FK_Conduire_Chauffeur FOREIGN KEY(Chauffeur) REFERENCES Chauffeur(Numero),
	CONSTRAINT FK_Conduire_Voiture FOREIGN KEY(Voiture) REFERENCES Voiture(Matricule)
);


Ecrivez un trigger qui recalcule et modifie le nombre de kilomètres total parcouru par
un chauffeur à chaque fois qu'il conduit une voiture sur une distance donnée