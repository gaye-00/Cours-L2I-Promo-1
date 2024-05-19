CREATE DATABASE LOCATION;
USE LOCATION;

CREATE TABLE CONDUCTEUR (
	'numero' varchar(10),
	'nom' varchar(15) NOT NULL,
	'Prenom' varchar(30) NOT NULL,
	'adresse' varchar(50),
	'age' SmallInt,
	'telephone'varchar(9) CHECK(telephone LIKE']##[' ']###[' ']##[' ']##['),
	'sexe' char(1) CHECK(sexe in('M', 'F')),
	'dateEmbauche' date
);

CREATE TABLE Clients (
	NumPremis varchar(15),
	Nom varchar(10) NOT NULL,
	Prenom varchar(30) NOT NULL,
	Sexe char(1) CHECK(Sexe in('M', 'F')),
	Adresse varchar(50),
	Age SmallInt check(Age > 0),
	Telephone varchar(9) CHECK(Telephone LIKE ']##[' ']###[' ']##[' ']##[')
);
ALTER TABLE Client ADD CONSTRAINT PK_Client Primary key(NumPremis);
ALTER TABLE Client MODIFY Telephone varchar(12);

CREATE TABLE IF NOT EXISTS Voiture (
	Matricule varchar(10),
	Marque varchar(20) NOT NULL,
	Version varchar(10),
	Type varchar(15),
	Couleur varchar(20),
	-- Annee SMALLINT CHECK(Annee > 0),
	Annee YEAR,
	CONSTRAINT PK_Voiture PRIMARY KEY(Matricule)
);

CREATE TABLE IF NOT EXISTS Louer (
	Client varchar(15),
	Voiture varchar(10),
	Date Date,
	NbJour SMALLINT CHECK(NbJour > 0),
	PrixJour FLOAT CHECK(PrixJour > 0),
	CONSTRAINT PK_Louer PRIMARY KEY(Client, Voiture, Date),
	CONSTRAINT FK_Louer_Client FOREIGN KEY(Client) REFERENCES Client(NumPremis),
	CONSTRAINT FK_Louer_Voiture FOREIGN KEY(Voiture) REFERENCES Voiture(Matricule)
);
-- UNSIGNED FLOAT ==> Probleme

CREATE TABLE IF NOT EXISTS Fidelite (
	Client VARCHAR(15),
	Voiture VARCHAR(10),
	TotalNbJour SMALLINT UNSIGNED,
	TotalPrix FLOAT UNSIGNED,
	Fidele BOOLEAN DEFAULT FALSE,
	CONSTRAINT PK_Fidelite PRIMARY KEY(Client, Voiture),
	CONSTRAINT FK_Fidelite_Client FOREIGN KEY(Client) REFERENCES Client(NumPremis),
	CONSTRAINT FK_Fidelite_Voiture FOREIGN KEY(Voiture) REFERENCES Voiture(Matricule)
);