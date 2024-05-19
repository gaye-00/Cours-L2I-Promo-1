 Drop Database Scolarite;
 create Database Scolarite;
 Use Scolarite;

 create table Departement (
 	Nom varchar(25),
 	UFR varchar(10),
 	Adresse varchar(30) Unique,
 	Anneeouverture SmallInt check(AnneeOuverture Between 2006 and 2012),
 	constraint PK_Departement primary key(Nom, UFR)
 );

 create table Enseignant (
 	Matricule char(7),
 	Nom varchar(15) Not Null,
 	Prenom varchar(25) Not Null,
 	Grade varchar(15) check(Grade in('Assistant', 'Maitre-Assistant', 'Maitre de conferences', 'Professeur')) default 'Assistant',
 	Specialite varchar(20),
 	constraint PK_Enseignant primary key(Matricule)
 );

 create table Service (
 	NomDept char(25),
 	UFRDept varchar(10) check(UFRDept in('UFR ST', 'UFR SES', 'UFR LASHU')),
 	Enseignant varchar(10),
 	constraint PK_Sercive primary key(NomDept, UFRDept, Enseignant),
 	constraint FK_Servire_Departement foreign key(NomDept, UFRDept) references Departement(Nom, UFR),
 	constraint FK_Servire_Enseignant foreign key(Enseignant) references Enseignant(Matricule)
 );

 create table Matiere (
 	Nom varchar(25),
 	VolHoraire SmallInt,
 	Coefficient SmallInt,
 	Type varchar(10),
 	constraint PK_Matiere primary key(Nom)
 );

 create table Dispenser (
 	Enseignant char(7),
 	Matiere varchar(25),
 	Type varchar(10) check(Type in('TD', 'TP', 'CM')),
 	constraint PK_Dispenser primary key(Enseignant, Matiere, Type),
 	constraint FK_Dispenser_Enseignant foreign key(Enseignant) references Enseignant(Matricule),
 	constraint FK_Dispenser_Matiere foreign key(Matiere) references Matiere(Nom)
 );

 create view Informaticien as select Matricule, Nom, Prenom from Enseignant where Specialite='Informatique';

 show tables;
-- desc nomtable;


Insert Into Departement(Nom, UFR, Adresse, Anneeouverture) values('Informatique', 'UFR ST', Null ,2007);
Insert Into Departement values('Geographie', 'UFR ST', 'Diabir', 2007);
Insert Into Departement values('Tourisme', 'UFR SES', 'Elevage', 2008);
Insert Into Enseignant(Matricule, Nom, Prenom, Grade, Specialite) values('2014 05', 'DIATTA', 'Astou', Null, 'Droit');

 -- 2
 --a select Matricule, Marque, Version From voiture;

 --b select * From Conducteur where age >= 28 and age <= 50;

 --c select C.numero, C.prenom, C.nom from Conducteur as C, [Voiture as V], Conduire as Con where Con.personne = C.Numero
 -- and __Con.Voiture = V.Matricule and__ V.Matricule = 'LG 1425Z' and Con.date = '10/05/2018' and Con.heure = 21;

 --d select C1.* from Conducteur as C1, Conducteur as C2 where (C1.nom = C2.nom or C1.prenom = C2.prenom) and
 -- C1.Numero <> C2.Numero;

create user user1@localhost identified by 'Passer';
create user user2@localhost identified by 'Entrer';
Grant select on Scolarite.* to user1@localhost with Grant option;
GRANT DELETE ON Scolarite.Departement to user2@localhost;
GRANT DELETE ON Scolarite.Matiere to user2@localhost;
GRANT UPDATE ON Scolarite.Dispenser to user2@localhost;
REVOKE DELETE ON Scolarite.Departement FROM user2@localhost;

-- create user user2@localhost identified by 'Entrer';
-- GRANT DELETE ON Matiere, Departement to user2@localhost;

----------------------------------------------------------------------------------------------------------------------------------
-- 1
ALTER TABLE Matiere add credit SmallInt check(credit in(2, 3, 4, 5));
-- 2
RENAME TABLE Dispenser TO Charger;
-- 3
ALTER TABLE Matiere CHANGE Type Categorie varchar(25);
-- 4
ALTER TABLE Matiere MODIFY Coefficient SmallInt CHECK(Coefficient IN(1, 2, 3));
-- ALTER TABLE Matiere ADD CONTRAINT CK_Coef CHECK(Coefficient IN(1, 2, 3));
-- 5
-- mysql> SHOW CREATE TABLE Service;
ALTER TABLE Service DROP foreign key FK_Servire_Departement;
ALTER TABLE Departement DROP primary key;
ALTER TABLE Departement ADD CONSTRAINT PK_Departement primary key(Nom);
ALTER TABLE Service ADD CONSTRAINT FK_Servire_Departement FOREIGN KEY(NomDept) REFERENCES Departement(Nom);
ALTER TABLE Service DROP UFRDept;

-- use mysql;
-- SELECT USER FROM USER;
