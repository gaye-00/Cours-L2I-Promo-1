INSERT INTO Voiture VALUES
('AA 100','Pagerot','Final2','a couver','Vert',2019),
('AA 110','4x4','12','a couver','Vert',2012),
('BB 200','Range Rover','1.3','Non couver','Jaune',2020),
('CC 300','Markopolo','2.9','De Mouton','Rouge',2029),
('DD 400','Toyota','3.8','Rush Alleman','Bleu',2022);

INSERT INTO Conducteur VALUES
(1,'NDIAYE','Smah','Dakar',23,771026170,'Masculin','2019-11-25'),
(2,'NDOYE','Ibrahim','Bakel',70,775251938,'Feminin','2020-01-03'),
(3,'BAH','Moussa','Matam',29,774198397,'Masculin','2023-01-13'),
(4,'GAYE','Cheikh','Ziguinchor',25,755258340,'Feminin','2023-01-12');

INSERT INTO Conduite(Client,Voiture,DateLouer,NbJour,PrixJour) VALUES
(1,'AA 100','2023-05-24 00:16:19',12,70000),
(2,'AA 100','2023-01-24','00:16:19'),
(1,'AA 100','2023-07-10','10:10:39'),
(4,'DD 400','2023-03-24','00:16:19'),
(1,'BB 200','2023-01-25','01:16:19'),
(1,'BB 200','2022-01-25','01:16:19'),
(1,'AA 100','2023-11-24','00:16:19');