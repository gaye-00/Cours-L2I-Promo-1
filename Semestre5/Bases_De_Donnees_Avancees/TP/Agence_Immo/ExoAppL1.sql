-- a. Donner la liste des immeubles.
SELECT * FROM Immeuble;

-- b. Donner la liste des appartements de l’immeuble situé au 250 Tilène.
-- SELECT Appartement.* FROM Appartement INNER JOIN Immeuble WHERE Adresse = '250 Tilene';
SELECT * FROM Appartement WHERE Immeuble = '250 Tilène';

-- c. Donner le nombre de pièces et le prix des appartements de l’immeuble situé au 10 Castor.
SELECT Nb_piece, Prix FROM Appartement WHERE Appartement.Immeuble = '10 Castor';

-- d. Quels sont les appartements les plus chers ?
SELECT *
FROM Appartement
WHERE Prix = (
    SELECT MAX(Prix)
    FROM Appartement
);

SELECT Prix FROM Appartement ORDER BY Prix DESC LIMIT 1;
-- Pour afficher le prix le plus chair des AP.

-- e. Qui a occupé le plus longtemps l’appartement 5 d’un immeuble construit en 2018 ?
SELECT * FROM Locataire INNER JOIN Louer WHERE Louer.Locataire = Locataire.Numero ORDER BY Duree DESC LIMIT 1;
/*Manque quelques conditions comme anne = 2018 et Appartement = 5*/