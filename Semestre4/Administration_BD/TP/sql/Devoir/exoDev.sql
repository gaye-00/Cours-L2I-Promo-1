drop database exoDev;

create database exoDev;
	use exoDev;

create table Chauffeur(Numero integer check(Numero >0),
	Nom varchar(30),
	Prenom varchar(30),
	Adresse varchar(30),
	Age smallint check(Age>14),
	Tel integer,
	Sexe char(10) check (Sexe in ('Masculin','Feminin')),
	DateEmbauche date,
	Nb_Km integer,
	constraint pk_Chauffeur primary key(Numero)
	);

create table Voiture(
	Matricule varchar(15),
	Marque varchar(15),
	Version char(5),
	Type varchar(15),
	Couleur varchar(15),
	Annee integer,
	Region varchar(40),
	constraint pk_Voiture primary key(Matricule)
	 );

create table Conduire(Chauffeur integer,
	Voiture varchar(15),
	DateCon date,
	Heure time,
	VilleDepart varchar(40),
	VilleArrive varchar(40),
	Distance integer,
	constraint pk_Conduire_ primary key(Chauffeur,Voiture,DateCon,Heure),
	constraint fk_Conduire_Chauffeur foreign key(Chauffeur) references Chauffeur(Numero),
	constraint fk_Conduire_Voiture foreign key(Voiture) references Voiture(Matricule)
	);

insert into Voiture values('AA 100','Pagerot','1.5','a couver','Vert',2019,'Dakar'),
	('AA 110','4x4','12','a couver','Vert',2012,'Fatick'),
	('BB 200','Range Rover','1.3','Non couver','Jaune',2014,'Ziguinchor'),
	('CC 300','Markopolo','2.9','De Mouton','Rouge',2029,'Matam'),
	('DD 400','Toyota','3.8','Rush Alleman','Bleu',2022,'Louga');

insert into Chauffeur values(1,'NDIAYE','Smah','Dakar',23,771026170,'Masculin','2019-11-25',0),
	(2,'NDOYE','Ibrahim','Bakel',70,775251938,'Feminin','2020-01-03',0),
	(3,'BAH','Moussa','Matam',29,774198397,'Masculin','2023-01-13',0),
	(4,'GAYE','Cheikh','Ziguinchor',25,755258340,'Feminin','2023-01-12',0)	;
delete from Conduire;
insert into Conduire values
	(2,'AA 100','2023-01-24','00:16:19','Naka','Nassout',1000),
	(1,'AA 100','2023-07-10','10:10:39','Medina Baye','Fass Tidjani',120),
	(4,'DD 400','2023-03-24','00:16:19','Tivaoune','Mbour',10),
	(1,'BB 200','2023-01-25','01:16:19','Matam','Fatick',30),
	(1,'BB 200','2022-01-25','01:16:19','Dakar','Ziguinchor',250),
	(1,'AA 100','2023-11-24','00:16:19','Touba','Dakar',180);

insert into Conduire values
(4,'DD 400','2023-03-25','00:16:19','Tivaoune','Mbour',10);
	


2023-01-25 01:16:19

delimiter &
create function nombreDeFois(c integer, v char(15)) returns integer
begin
	Declare n integer;
	SELECT count(*) into n from Conduire where Chauffeur=c and Voiture=v;
	return n;
end;

&
delimiter ;

delimiter &
create procedure affiche(c integer,v char(15))
	begin
	select DateCon,Heure,VilleArrive,VilleDepart from Conduire,Voiture where Matricule=v and Couleur="Vert" 
	and Marque="Pagerot" and Chauffeur=c and Voiture=v ;
	end;

&
delimiter ;
-- /////////////////////////////////////////
delimiter &
create trigger nbKilometre after insert on Conduire for each row
	begin
		declare d integer;
		select Nb_Km into d from Chauffeur where Numero=new.Chauffeur;
		set d=new.Distance+d;
		update  Chauffeur set Nb_Km=d where Numero=new.Chauffeur;

	end;
&
/*/////////////////////////////////////////////////////*/
delimiter ;

create function quie() returns varchar(20)
begin
	declare g varchar(10);
	select Grade into g from Charger,Enseignant where Enseignant=Matricule 
	and Matiere="Probabilite" and Type="CM" 
	return g;
end;

-- create function calvolH(ens integer) returns integer
-- 	begin
-- 		declare b integer;
-- 		select SUM(VolHoraire/3) into b from Matiere,Charger
-- 		where Enseignant=ens and Matiere=Nom;

-- return b;
-- 	end;

