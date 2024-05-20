MariaDB [Agence_Immo]> SELECT * FROM Appartement AS AP1 INNER JOIN Appartement AS AP2 ON AP1.Nb_piece=AP2.Nb_piece AND AP1.Prix<>AP2.Prix AND AP1.Niveau=AP2.Niveau;

SELECT * FROM Appartement AS AP1 INNER JOIN Appartement AS AP2 ON AP1.Nb_piece=AP2.Nb_piece AND AP1.Prix<>AP2.Prix AND AP1.Niveau=AP2.Niveau AND AP1.Immeuble<>AP2.Immeuble;

SELECT * FROM Appartement AS AP1 CROSS JOIN Appartement AS AP2 ON AP1.Nb_piece = AP2.Nb_piece  AND AP1.Prix<>AP2.Prix AND AP1.Niveau=AP2.Niveau AND AP1.Immeuble<>AP2.Immeuble;

