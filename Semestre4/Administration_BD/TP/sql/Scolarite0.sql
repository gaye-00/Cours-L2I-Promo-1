create database Scolarite;
Use Scolarite;
create table Departement
(
	Nom varchar(30),
	UFR varchar(10),
	Adresse varchar(40) Unique, 
	AnneeOuverture smallInt check (AnneeOuverture between 2006 and 2012),
    Constraint PK_Dept Primary Key (Nom, UFR)
);

create table Enseignant
(
	Matricule char(7),
	Nom varchar(20),
	Prenom varchar (30),
	Grade varchar(30) Default "Assistant" check (Grade in ("Assistant","Maitre-assistant", "Maitre de conference", "Professeur")),
	Specialite varchar(20),
	Constraint PK_Ensg Primary Key (Matricule)
);
create table Servir
(
	NomDept varchar(30),
	UFRDept varchar(10),
	Enseignant char(7),
	Constraint Fk_Servir_Dept Foreign key (NomDept,UFRDept) References Departement(Nom,UFR),
	Constraint FK_Servir_Enseg Foreign key(Enseignant) References Enseignant(Matricule),
	Constraint PK_Servir Primary Key (NomDept, UFRDept, Enseignant)
);

create table Matiere
(
	Nom varchar(30),
	VolHorraire smallInt,
	coefficient smallInt,
	Type varchar(20),
	Constraint PK_Matiere Primary Key (Nom)
);
create table Dispenser
(
	Enseignant char(7),
	Matiere varchar(30),
	Type varchar(20),
	Constraint FK_Disp_Ensg Foreign key (Enseignant) References Enseignant(Matricule),
	Constraint FK_Disp_Mat Foreign key (Matiere) References Matiere (Nom),
	Constraint PK_Disp Primary Key (Enseignant, Matiere, Type)
);

--Creation de la vue Informaticien--
create view Informaticien As Select Matricule,Nom,Prenom From Enseignant where Specialite = 'Informaticien';

----------------------------------------------||||||||||||||||||----------------------------------------------

--Requete d'insertion des tables 

--1-
Insert into Departement (Nom,AnneeOuverture,UFR) values ('Informatique',2007,'UFR ST');

--2-
Insert into Departement values ('Geographie','UFR ST','Diabir',2007);

--3-
Insert into Departement (AnneeOuverture,Adresse,Nom,UFR) values (2007,'Diabir','Geographie','UFR ST');

----------------------------------------------||||||||||||||||||----------------------------------------------

--===|||=== Requete SQL ===|||===--
--1- Listes des voitures (Matricule,Marque,Version)
Select (Matricule,Marque,Version) From Voiture;

--2- Les Conducteurs ayant entre 28 et 50 ans
Select * From Conducteur where age>=28 And age<=50;

--3- Le conducteurs ayant conduit la voiture de matricule LG 1425 B le 10/05/2018 a 21h
Select C.numero,C.Prenom,C.Nom, From Conducteur as C, Conduite as Con where con.personne = c.numero and 
con.voiture = 'LG 1425 B' and con.date = '20/05/2018' and con.heure = '21';

--4- Conducteur ayant meme nom ou prenom avec un autre 
Select C1.* From conducteurs as C1, Conducteur as C2 where (C1.nom = C2.nom or C1.prenom = C2.prenom) and
C1.numero <> C2.numero;

--5 Conducteur n'ayant jamais conduit la voiture de matricule ZG 2145 B
Select numero,nom,prenom From Conducteur 
								minus
Select C.numero,C.Prenom,C.Nom From Conducteur as C1, Conduite as C where c.voiture = 'ZG 2145 B' and
c1.numero = c.personne

----------------------------------------------||||||||||||||||||----------------------------------------------


