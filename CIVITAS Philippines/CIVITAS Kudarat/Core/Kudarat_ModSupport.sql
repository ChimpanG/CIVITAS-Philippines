/*
	Mod Support
	Authors: SeelingCat
*/

-----------------------------------------------
-- GEDEMON'S YNAMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,						Leader,					MapName,			X,		Y	)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_KUDARAT',	'GiantEarth',		88,		40	),
		('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_KUDARAT',	'GreatestEarthMap',	89,		34	),
		('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_KUDARAT',	'Cordiform',		69,		34	);

-----------------------------------------------
-- TOMATEKH'S HISTORICAL RELIGIONS
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,				ReligionType)
SELECT	'LEADER_CVS_KUDARAT',	'RELIGION_AITO'
WHERE EXISTS (SELECT ReligionType FROM Religions WHERE ReligionType = 'RELIGION_AITO');

CREATE TRIGGER IF NOT EXISTS TRG_CVS_PHILIPPINES_Religions
AFTER INSERT ON Religions
WHEN NEW.ReligionType = 'RELIGION_AITO'
BEGIN
	INSERT INTO FavoredReligions
			(LeaderType,				ReligionType)
	VALUES	('LEADER_CVS_KUDARAT',	NEW.ReligionType);
END;