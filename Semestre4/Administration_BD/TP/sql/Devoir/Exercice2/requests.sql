-- 1. Ecrivez un trigger qui recalcule et modifie le nombre de kilomètres total parcouru par
-- un chauffeur à chaque fois qu'il conduit une voiture sur une distance donnée.

DELIMITER $$
CREATE TRIGGER tr_update_nbkm_chauffeur
AFTER INSERT ON Conduite
FOR EACH ROW
BEGIN
    UPDATE Chauffeur
    SET Nb_Km = Nb_Km + NEW.Distance
    WHERE Numero = NEW.Chauffeur;
END $$
DELIMITER ;



-- 2. Ecrivez une fonction qui renvoie le nombre de fois qu'un chauffeur donné a conduit une voiture donné
SELECT COUNT(*)
FROM Conduite
WHERE Chauffeur = 'Numero_Chauffeur'
AND Voiture = 'Matricule_Voiture';

-- Notez que "Numero_Chauffeur" et "Matricule_Voiture" doivent être remplacés par les valeurs réelles pour 
-- le chauffeur et la voiture en question.

-- 3. Ecrivez une procédure qui affiche les voyages (Date, Heure, VilleDepart, VilleArrive,
-- Distance) effectués par un chauffeur donné avec une Mercedes noire

CREATE PROCEDURE Afficher_Voyages_Chauffeur_MercedesNoire (IN Numero_Chauffeur VARCHAR(10))
BEGIN
    SELECT Date, Heure, VilleDepart, VilleArrive, Distance
    FROM Conduite c
    INNER JOIN Chauffeur ch ON c.Chauffeur = ch.Numero
    INNER JOIN Voiture v ON c.Voiture = v.Matricule
    WHERE ch.Numero = Numero_Chauffeur AND v.Marque = 'Mercedes' AND v.Couleur = 'Noir';
END;


-- Notez que vous devez remplacer "Numero_Chauffeur" par la valeur réelle pour le chauffeur en question.