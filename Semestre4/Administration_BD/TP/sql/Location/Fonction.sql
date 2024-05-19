-- 1. Créer une fonction qui renvoie le prix à payer pour un nombre de jours et un prix journalier donné ;
DELIMITER &
CREATE FUNCTION PrixAPayer(C VARCHAR(15), V VARCHAR(10), D DATE) RETURNS FLOAT UNSIGNED
BEGIN
	DECLARE s FLOAT UNSIGNED;
	DECLARE nj SMALLINT;
	DECLARE pj FLOAT UNSIGNED;

	SELECT NbJour, PrixJour INTO nj, pj FROM Louer
	WHERE C = Client AND V = Voiture AND D = Date;

	SET s = nj * pj;
	RETURN s;

END;&
DELIMITER ;

-- 2. Créer une procédure qui affiche la liste des clients qui ont loué la voiture de matricule
-- ZG 0000 P pour une durée dépassant une semaine (7 jours) ;
DELIMITER &
CREATE PROCEDURE ListeClient(IN V VARCHAR(10))
BEGIN
	DECLARE np VARCHAR(15);
	DECLARE no VARCHAR(10);
	DECLARE pr VARCHAR(30);
	DECLARE sex CHAR(1);
	DECLARE adres VARCHAR(50);
	DECLARE ag SMALLINT;
	DECLARE tel VARCHAR(9);
	DECLARE i, j SMALLINT UNSIGNED DEFAULT 0;

	DECLARE C1 CURSOR FOR SELECT Client.* FROM Client, Louer
	WHERE NumPremis = Client AND V = Voiture AND NbJour > 7;

	DECLARE CONTINUE HANDLER FOR NOT FOUND SET i = 1;

	OPEN C1;
		Boucle_Loop : LOOP
			FETCH C1 INTO np, no, pr, sex, adres, ag, tel;

			IF i = 1 THEN
				IF j = 0 THEN
					SELECT "Aucun client n'a jamais louer cette voiture plus de 7 jours";
				END IF;

				LEAVE Boucle_Loop;
			END IF;

			SET j = j + 1;
			SELECT np, no, pr, sex, adres, ag, tel;
		END LOOP;
	CLOSE C1;

END; &
DELIMITER ;

CALL ListeClient("ZG 0001 P");
mysql> DROP PROCEDURE ListeClient;

-- 3. Créer un trigger qui remplit automatiquement la table Fidelite à chaque fois qu’un client loue
-- une voiture. Un client est fidèle à une voiture s’il l’a louée pour une durée cumulée dépassant
-- 100 jours.

DELIMITER &
CREATE TRIGGER Theloyal AFTER INSERT ON Louer FOR EACH ROW
BEGIN
	DECLARE n SMALLINT UNSIGNED DEFAULT 0;
	DECLARE pluscent BOOLEAN DEFAULT FALSE;
	DECLARE newjours SMALLINT;
	DECLARE newprix FLOAT;

	SELECT COUNT(*) INTO n FROM Fidelite WHERE Fidelite.Client = Louer.Client;

	IF NEW.NbJour > 100 THEN
		SET pluscent = TRUE;
	END IF;

	IF n = 0 THEN
		INSERT INTO Fidelite VALUES(Louer.Client, Louer.Voiture, NEW.NbJour, NEW.PrixJour, pluscent);
	ELSE
		SET newjours = Fidelite.TotalNbJour + NEW.NbJour;
		SET newprix = Fidelite.TotalPrix + (NEW.NbJour * NEW.PrixJour);

		UPDATE Fidelite SET Fidelite.TotalNbJour = newjours WHERE Fidelite.Client = Louer.Client;
		UPDATE Fidelite SET Fidelite.TotalPrix = newprix WHERE Fidelite.Client = Louer.Client;
	END IF;

END; &
DELIMITER ;