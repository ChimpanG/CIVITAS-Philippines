/*
	Leader
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,						Kind				)
VALUES	('LEADER_CVS_LAPU_LAPU',	'KIND_LEADER'		);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,					LeaderType,					CapitalName					)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_LAPU_LAPU',		'LOC_CITY_NAME_MACTAN'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,				Name,								InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_LAPU_LAPU',	'LOC_LEADER_CVS_LAPU_LAPU_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,					Quote											)
VALUES	('LEADER_CVS_LAPU_LAPU',		'LOC_PEDIA_LEADERS_PAGE_CVS_LAPU_LAPU_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,				ForegroundImage,				BackgroundImage,					PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_LAPU_LAPU',	'LEADER_CVS_LAPU_LAPU_NEUTRAL',	'LEADER_CVS_LAPU_LAPU_BACKGROUND',	0					);

-----------------------------------------------
-- Colors
-----------------------------------------------

INSERT INTO	PlayerColors
		(Type,						Usage,		PrimaryColor,		 			SecondaryColor,						TextColor					)
VALUES	('LEADER_CVS_LAPU_LAPU',	'Unique',	'COLOR_CVS_LAPU_LAPU_PRIMARY',	'COLOR_CVS_LAPU_LAPU_SECONDARY',	'COLOR_PLAYER_WHITE_TEXT'	);

INSERT INTO	Colors
		(Type,								Color				)
VALUES	('COLOR_CVS_LAPU_LAPU_PRIMARY',		'120,0,32,255'		),	
		('COLOR_CVS_LAPU_LAPU_SECONDARY',	'252,120,161,255'	);
		