SET default_storage_engine = MyISAM;
show engines;

net stop wampapache
net start wampapache
net stop wampmysqld
net start wampmysqld
-----------------------------------------------------------------------------------------------------
-- Pour connaitre l'utilisateur actuelle
SELECT current_user();

-- Pour faire une selection ordonner
SELECT * FROM Charger ORDER BY Type;

sudo mysqldump -h localhost -u root -p Scolarite Enseignant Service Charger  > /media/abdoulaye/Users/Abdoulaye_Gaye/Desktop/Semestre4/Administration_BD/TP/sql/Sauvegarde/Ens_Scolarite.sql

sudo mysqldump -u root -p Scolarite Enseignant Service Charger > /home/abdoulaye/Ens_Scolarite.sql