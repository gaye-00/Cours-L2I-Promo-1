mysql -u root -p
show databases
create database gestion_election;
use gestion_election;


mysql> create Table Election (
    -> type varchar(14) check(type in('Presidentielle', 'legislative', 'locale')),
    -> Annee smallint check(Annee > 2000),
    -> Date Date,
    -> constraint PK_Election Primary key (Type, Annee)
    -> );

desc election;

mysql> create table Electeur
    -> (
    -> Numero integer check(value > 0),
    -> Nom varchar(15) Not Null,
    -> Prenom varchar(25) Not Null,
    -> Age Smallint check(value between 18 and 120),
    -> Sexe char(1) check(value in('M', 'F')),
    -> Adresse varchar(30),
    -> Bureau smallint,
    -> Centre varchar(30),
    -> constraint PK_Electeur primary key(Numero),
    -> constraint FK_Electeur_Bureau foreign key(Bureau, Centre) References Bureau(Numero, Centre)
    -> );


mysql> create table Centre
    -> (
    -> Nom varchar(30),
    -> Adresse varchar(30),
    -> Type varchar(7) check(type in('Pilote', 'Normale')),
    -> constraint PK_Centre primary key(Nom)
    -> );

status ==> version de mysql

mysql> create Table Bureau
    -> (
    -> Numero integer check(value >0),
    -> Centre varchar(30),
    -> Nb_Inscrit integer check(value between 100 and 600),
    -> Type varchar(7) check(type in('Pilote', 'Normale')),
    -> President integer,
    -> constraint PK_Bureau primary key(Numero, Centre),
    -> constraint FK_Bureau_Centre foreign key(Centre) references Centre(Nom),
    -> constraint FK_Bureau_Electeur foreign key(President) references Electeur(Numero)
    -> );

mysql> create table Conserner
    -> (
    -> Type_Election varchar(14),
    -> Annee_Election smallint,
    -> Centre varchar(30),
    -> constraint Pk_Conserner primary key(Type_Election, Annee_Election, Centre),
    -> constraint FK_Conserner_Election foreign key(Type_Election, Annee_Election) references Election(Type, Annee),
    -> constraint FK_Conserner_Centre foreign key(Centre) references Centre(Nom)
    -> );

mysql> create table Gagner
    -> (
    -> Type_Election varchar(14),
    -> Annee_Election smallint,
    -> Electeur integer,
    -> constraint Pk_Gagner primary key(Type_Election, Annee_Election, Electeur),
    -> constraint FK_Gagner_Election foreign key(Type_Election, Annee_Election) references Election(Type, Annee),
    -> constraint FK_Gagner_Electeur foreign key(Electeur) references Electeur(Numero)
    -> );


show tables;

mysql> create table representant(
    -> electeur integer,
    -> bureau smallint,
    -> centre varchar(30),
    -> type_election varchar(14),
    -> Annee_Election smallint,
    -> constraint Pk_representant primary key(electeur,bureau,centre,Type_Election, Annee_Election),
    -> constraint FK_representant_Election foreign key(Type_Election, Annee_Election) references Election(Type, Annee),
    -> constraint FK_representant_Electeur foreign key(electeur) references Electeur(numero),
    -> constraint FK_representant_bureau foreign key(bureau) references bureau(numero),
    -> constraint FK_representant_centre foreign key(centre) references Centre(Nom));



//------------------------------------------------------------------------------------------------------------------------//

use gestion_election;

mysql> insert into election (type, Date, Annee)
    -> values ('Municipale', '2013-01-25', 2013);

 select *from election;

mysql> insert into election values ('legislative', 2018, '2018-07-30'),
    -> ('presidentielle', 2020, '2020-03-12');

mysql> insert into electeur(numero, nom, prenom, age, sexe, adresse, bureau, centre)
    -> values (2457, 'gueye', 'Moustapha', 59, 'M', 'Tilene', 1, 'LDB');

mysql> insert into electeur values(2458, 'Diatta', 'Fatima', 32, 'F', 'Boucotte', 1, 'LDB');
mysql> insert into electeur values(2459, 'Seck', 'Abdallah', 65, 'M', 'Tilene', 2, 'LDB');
mysql> insert into electeur values(2460, 'Gueye', 'Fatima', 18, 'F', 'Kenia', 2, 'L0DB');
mysql> insert into electeur values(2461, 'Faty', 'Faty', 38, 'F', 'Kenia', 1, 'LDB');
mysql> insert into electeur values(2462, 'Gueye', 'Cheikh', 32, 'M', 'Diabir', 2, 'LODB');
mysql> insert into electeur values(2463, 'Diedhiou', 'Jean', 32, 'M', 'Tilene', 2, 'LODB');
mysql> insert into electeur values(2464, 'Ndiaye', 'Michelle', 55, 'F', 'Tilene', 2, 'LDB');
mysql> insert into electeur values(2465, 'Fall', 'Fatoumata', 75, 'F', 'Diabir', 2, 'LDB');

mysql> insert into centre(nom, adresse, type)
    -> values('LDB', 'Nema', 'Normal');

mysql> insert into centre values ('LOLB', 'Nema', 'Normal');
mysql> insert into centre values ('LOLB', 'Djibock', 'Normal');
mysql> insert into centre values ('LPER', 'Perisack', 'Pilote');

mysql> insert into bureau (numero, centre, nb_inscrit, type, president)
    -> values (1, 'LOLB', 360, Normal, 2462);

mysql> insert into bureau values (2, 'LOLB', 500, 'Normal', 2465);
mysql> insert into bureau values (1, 'LPER', 600, 'Pilote', 2457);
mysql> insert into bureau values (1, 'LDB', 450, 'Normal', 2464);
mysql> insert into bureau values (2, 'LDB', 455, 'Normal', 2461);
mysql> insert into bureau values (3, 'LDB', 440, 'Normal', 2462);
mysql> insert into bureau values (4, 'LDB', 500, 'Normale', 2465);

mysql> insert into conserner (type_election, annee_election, centre)
    -> values ('Municipale', 2013, 'LDB');

mysql> insert into conserner values ('Municipale', 2013, 'LOLB');
mysql> insert into conserner values ('Presidentielle', 2020, 'LDB');
mysql> insert into conserner values ('Presidentielle', 2020, 'LODB');

mysql> insert into representant (electeur, bureau, centre, type_election, annee_election)
    -> values (2461, 1, 'LDB', 'Presidentielle', 2019);

mysql> insert into representant values (2461, 2, 'LOLB', 'Municipale', 2013);
mysql> insert into representant values (2465, 1, 'LOLB', 'Municipale', 2013);
mysql> insert into representant values (2462, 2, 'LDB', 'Presidentielle', 2020);

mysql> insert into gagner (type_election, annee_election, electeur)
    -> values ('Presidentielle', 2020, 2463);

mysql> insert into gagner values ('Municipale', 2020, 2460);

//------------------------------------------------------------------------------------------------------------------------//

1- Renommez l'attribut Date de la table Election
2- Ajouter l'attribut telephone à la table Electeur
3- Supprimez l'attribut Nb_Inscrit de la table Bureau 
LMD
1- Supprimer l'election legislative de la table Election
2- Modifiez l'annee de l'election Presidentielle en (2013)
3- Ecrivez les requetes suivantes
 a- Affichez la liste des electeurs du Bureau 1 du centre LDB
 b- Donner le nom et le prenom du president du bureau 2 du centre LPER;
4- Combien d'electeurs compte le centre LDB ?
5- Donnez la moyenne d'âge des electeurs
6- Qui est l electeur le plus âgé ?

                    -- Correction --

1- mysql> Alter Table election change Date N_Date varchar(30);
2- mysql> Alter Table election add telephone char(12) check('##_##_###_##_##');
2_cor- Alter Table election add telephone char(12) check( telephone like '##['']###['']##['']##');
mysql> alter table election drop N_Date;
mysql> Alter Table election add N_Date Date;
3- mysql> alter table Bureau drop Nb_Inscrit;

LMD
1_cor- Delete from Election where type = 'legislative';
2_cor- Update Election Set Annee = 2019 where type = 'Presidentielle';
Update Election Set N_Date = '2019-03-12' where type = 'Presidentielle';
Update Election Set N_Date = '2019-03-12' where type = 'Municipale';
3.a_cor - Select *from electeur where Bureau = 1 and centre = 'LDB';
  b_cor - Select E.nom, E.prenom from Electeur as E, Bureau as B where E Bureau = 2
	  and E.Centre = 'LPER' and E.numero = B.president;
	mysql> Select E.nom, E.prenom from Electeur as E, Bureau as B where E.Bureau = 2
        -> and E.Centre = 'LDB' and E.numero = B.president;
  4_cor - Select count(*) from electeur where centre='LBD';
  5_cor - Select Avg(age) from Electeur;
  6_cor - Select *from Electeur where Age =(Select Max(Age) from Electeur);


//------------------------------------------------------------------------------------------------------------------------//
1- Creer 2 utilisateurs
  a- admin passser01
  b- invite entrer01
2- Donner les privileges d'un adminstrateur à Admin
3- Donner la possibilite de visualiser le Numero, le Nom, et le Prenom de chaque electeur à Invite
  - La possibilite d'ajouter des bureaux
  - La possibilite de supprimes des centres
4- Connection avec Admin
5- Affichage du contenu de la base


1_a- mysql> create user admin@localhost identified by 'passer01';
1_b- mysql> create user invite@localhost identified by 'entrer01';

C:\wamp64\bin\mysql\mysql5.7.36\bin>mysql -u admin -p
mysql> create database Test01; 
==> ERROR 1044 (42000): Accès refusé pour l'utilisateur': 'admin'@'@localhost'. Base 'test01'

2- mysql> Grant All privileges on *.* to admin@localhost with Grant option ;
mysql> Flush privileges;

3-
- mysql> Grant Insert on gestion_election.Bureau to invite@localhost;
- mysql> Grant Delete on gestion_election.Centre to invite@localhost;
mysql> select *from electeur;
ERROR 1142 (42000): La commande 'SELECT' est interdite à l'utilisateur: 'invite'@'@localhost' sur la table 'electeur''
==> Cree une vue et donner la privilege à invite
mysql> create view Electeur_Invite As select Numero, Nom, Prenom from electeur;
mysql> Grant select on gestion_election.Electeur_Invite to invite@localhost; -- root
mysql> Flush privileges;

mysql> select *from electeur_invite;

==> Pour enlever les priviges à invite sur Electeur_Invite;
mysql> Revoke Select on gestion_election.Electeur_Invite from invite@localhost;

mysql> select *from electeur_invite;
ERROR 1142 (42000): La commande 'SELECT' est interdite à l'utilisateur: 'invite'@'@localhost' sur la table 'electeur_invite'
mysql>