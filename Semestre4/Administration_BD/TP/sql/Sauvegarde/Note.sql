-- 1. Sauvegardez les tables contenant un numéro de matricule d’un enseignant dans le
-- fichier Ens_Scolarite.sql ;
sudo mysqldump -h localhost -u root -p Scolarite Enseignant Service Charger  > /media/abdoulaye/Users/Abdoulaye_Gaye/Desktop/Semestre4/Administration_BD/TP/sql/Sauvegarde/Ens_Scolarite.sql

-- 2. Ecrivez de deux manières différentes le script permettant de sauvegarder les matières et les cours ;
sudo mysqldump -h localhost -u root -p Scolarite Enseignant Service Charger  > /media/abdoulaye/Users/Abdoulaye_Gaye/Desktop/Semestre4/Administration_BD/TP/sql/Sauvegarde/Ens_Scolarite.sql
sudo mysqldump -u root -p -r /media/abdoulaye/Users/Abdoulaye_Gaye/Desktop/Semestre4/Administration_BD/TP/sql/Sauvegarde/Ens_Scolarite2.sql Scolarite Matiere Charger

-- 3. Sauvegardez toute la base de données Scolarité dans le fichier Total_Scolarite.sql.
SHOW VARIABLES LIKE '%log%';
set global general_log = ON;
--# Pour activer la journalisation.
sudo gedit /var/lib/mysql/abdoulaye-ThinkPad-T450s.log
--# abdoulaye-ThinkPad-T450s.log est le nom du fichier de journalisation

SET GLOBAL slow_query_log = ON; --# Pour activer le fichier contenant les requetes lentes
sudo gedit /var/lib/mysql/abdoulaye-ThinkPad-T450s-slow.log --# Pour afficher le fichier
SHOW VARIABLES LIKE '%query%'; --# Pour voir la valeur par defaut
SET GLOBAL long_query_time = 0.0001; --# Pour changer la valeur par defaut qui est 10.000000