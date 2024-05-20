-- 1  Afficher la liste des appartements de même nombre de pièces, mais de prix différents et
--    étant au même niveau.
SELECT AP1.* FROM Appartement AS AP1 CROSS JOIN Appartement AS AP2 ON AP1.Nb_piece = AP2.Nb_piece  
AND AP1.Prix<>AP2.Prix AND AP1.Niveau=AP2.Niveau AND AP1.Immeuble<>AP2.Immeuble AND AP1.Numero <> AP2.Numero;

-- Correction classe
SELECT DISTINCT AP1.* FROM Appartement AS AP1, Appartement AS AP2 WHERE AP1.Nb_piece = AP2.Nb_piece  
AND AP1.Prix<>AP2.Prix AND AP1.Niveau=AP2.Niveau AND AP1.Immeuble<>AP2.Immeuble;

SELECT A.* FROM Appartement AS A WHERE EXISTS (SELECT B.* FROM Appartement AS B WHERE A.Nb_piece = B.Nb_piece
AND A.Niveau  = B.Niveau AND A.Prix <> B.Prix);

----------------------------------------------------------------------------------------------------------------------------------------

-- 2  Quel(s) locataire(s) a/ont loué tous les appartements du niveau 2 d’un immeuble situé
--    au 25 Lindiane construit en 2000 ?
SELECT Locataire.Numero, Locataire.Nom, Locataire.Prenom, Locataire.Age FROM Louer INNER JOIN Immeuble, Appartement, Locataire 
WHERE Louer.Appartement = Appartement.Numero AND Louer.Immeuble = Immeuble.Adresse AND Louer.Locataire = Locataire.Numero
AND Niveau = 2 AND Adresse = "25 Lindiane";
-- OR
SELECT Locataire.* FROM Louer INNER JOIN Immeuble, Appartement, Locataire  WHERE Louer.Appartement = Appartement.Numero
AND Louer.Immeuble = Immeuble.Adresse AND Louer.Locataire = Locataire.Numero AND Niveau = 2 AND Adresse = "25 Lindiane";

----------------------------------------------------------------------------------------------------------------------------------------

-- 3  Afficher les appartements déjà loués par quelqu’un.
-- SELECT * FROM Appartement NATUREL JOIN Louer ON Numero = Appartement;
-- Le problelem ce trouve dans le NATUREL JOIN
SELECT Appartement.Numero, Appartement.Immeuble, Appartement.Nb_piece, Appartement.Prix, Appartement.Niveau, Louer.Locataire
FROM Appartement INNER JOIN Louer ON Appartement.Numero = Louer.Appartement;
-- OR
SELECT Appartement.* FROM Appartement INNER JOIN Louer ON Appartement.Numero = Louer.Appartement;








-- 2  Quel(s) locataire(s) a/ont loué tous les appartements du niveau 2 d’un immeuble situé
--    au 25 Lindiane construit en 2000 ?
SELECT L.Numero, L.Nom, L.Prenom
FROM Locataire L
WHERE NOT EXISTS (
    SELECT A.Numero, A.Immeuble
    FROM Appartement A
    WHERE A.Niveau = 2
        AND A.Immeuble = '25 Lindiane'
        AND A.Immeuble = (
            SELECT I.Adresse
            FROM Immeuble I
            WHERE I.Adresse = A.Immeuble
                AND I.Annee = 2000
        )
        AND NOT EXISTS (
            SELECT *
            FROM Louer Lr
            WHERE Lr.Appartement = A.Numero
                AND Lr.Immeuble = A.Immeuble
                AND Lr.Locataire = L.Numero
        )
)

SELECT Locataire.Numero, Locataire.Nom, Locataire.Prenom, Locataire.Age
FROM Louer
INNER JOIN Appartement ON Louer.Appartement = Appartement.Numero
INNER JOIN Immeuble ON Louer.Immeuble = Immeuble.Adresse
INNER JOIN Locataire ON Louer.Locataire = Locataire.Numero
WHERE Appartement.Niveau = 2
    AND Immeuble.Adresse = '25 Lindiane'
    AND Immeuble.Annee = 2000
GROUP BY Locataire.Numero, Locataire.Nom, Locataire.Prenom, Locataire.Age
HAVING COUNT(DISTINCT Appartement.Numero) = (
    SELECT COUNT(*)
    FROM Appartement
    WHERE Niveau = 2
        AND Immeuble = '25 Lindiane'
);


-- 2  Quel(s) locataire(s) a/ont loué tous les appartements du niveau 2 d’un immeuble situé
--    au 25 Lindiane construit en 2000 ?
SELECT L.Numero, L.Nom, L.Prenom, L.Age
FROM Locataire L
WHERE L.Numero IN (
    SELECT DISTINCT Lr.Locataire
    FROM Louer Lr
    INNER JOIN Appartement A ON Lr.Appartement = A.Numero AND Lr.Immeuble = A.Immeuble
    INNER JOIN Immeuble I ON Lr.Immeuble = I.Adresse
    WHERE A.Niveau = 2
        AND I.Adresse = '25 Lindiane'
        AND I.Annee = 2000
    GROUP BY Lr.Locataire
    HAVING COUNT(DISTINCT A.Numero) = (
        SELECT COUNT(*)
        FROM Appartement
        WHERE Niveau = 2 AND Immeuble = '25 Lindiane'
    )
);


SELECT L.Numero, L.Nom, L.Prenom, L.Age
FROM Locataire L
WHERE L.Numero IN (
    SELECT DISTINCT Lr.Locataire
    FROM Louer Lr
    INNER JOIN Appartement A ON Lr.Appartement = A.Numero AND Lr.Immeuble = A.Immeuble
    INNER JOIN Immeuble I ON Lr.Immeuble = I.Adresse
    WHERE I.Adresse = '25 Lindiane'
    GROUP BY Lr.Locataire
    HAVING COUNT(DISTINCT A.Numero) = (
        SELECT COUNT(*)
        FROM Appartement
        WHERE Immeuble = '25 Lindiane'
    )
);



SELECT L.Nom, L.Prenom
FROM Locataire AS L
WHERE EXISTS (
  SELECT A.Numero
  FROM Appartement AS A
  WHERE A.Niveau = 2
  AND A.Prix = 2000
  AND A.Immeuble = (SELECT I.Adresse FROM Immeuble AS I WHERE I.Adresse = '25 Lindiane' AND I.Annee = 2000)
  AND A.Numero NOT IN (
    SELECT DISTINCT Louer.Appartement
    FROM Louer
    WHERE Louer.Locataire = L.Numero
  )
);
