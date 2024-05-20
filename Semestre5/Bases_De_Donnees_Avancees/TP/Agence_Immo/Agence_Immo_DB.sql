DROP DATABASE IF EXISTS Agence_Immo;
CREATE DATABASE IF NOT EXISTS Agence_Immo;
USE Agence_Immo;

CREATE TABLE IF NOT EXISTS Immeuble (
    Adresse VARCHAR(30),
    Nb_niveau SMALLINT CHECK(Nb_niveaU > 0),
    Annee YEAR,
    CONSTRAINT PK_Immeuble PRIMARY KEY(Adresse)
);

CREATE TABLE IF NOT EXISTS Appartement(
    Numero INTEGER CHECK(Numero > 0),
    Immeuble VARCHAR(30) ,
    Nb_piece SMALLINT CHECK(Nb_piece > 0),
    Prix INTEGER CHECK(Prix > 0),
    Niveau SMALLINT CHECK(Niveau > 0),
    CONSTRAINT PK_Appartement PRIMARY KEY(Numero, Immeuble),
    CONSTRAINT FK_Appartement_Immeuble FOREIGN KEY(Immeuble) REFERENCES Immeuble(Adresse)
);

CREATE TABLE IF NOT EXISTS Locataire(
    Numero VARCHAR(10), 
    Nom VARCHAR(20), 
    Prenom VARCHAR(30), 
    Age SMALLINT CHECK(Age > 0), 
    Sexe CHAR(1) CHECK(Sexe IN('F', 'M')), 
    Profession VARCHAR(50),
    CONSTRAINT PK_Locataire PRIMARY KEY(Numero)
);

CREATE TABLE IF NOT EXISTS Louer(
    Appartement INTEGER, 
    Immeuble VARCHAR(30), 
    Locataire VARCHAR(10), 
    Date DATE, 
    Duree SMALLINT CHECK(Duree > 0),
    CONSTRAINT PK_Louer PRIMARY KEY(Appartement, Immeuble, Locataire, Date),
    CONSTRAINT FK_Louer_Appartement FOREIGN KEY(Appartement, Immeuble) REFERENCES Appartement(Numero, Immeuble),
    -- CONSTRAINT FK_Louer_Immeuble FOREIGN KEY(Immeuble) REFERENCES Immeuble(Adresse),
    CONSTRAINT FK_Louer_Locataire FOREIGN KEY(Locataire) REFERENCES Locataire(Numero)
);