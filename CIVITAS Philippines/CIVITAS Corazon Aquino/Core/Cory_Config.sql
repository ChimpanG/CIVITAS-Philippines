--- Players

INSERT INTO Players
			(CivilizationType, 		LeaderType, 		CivilizationName,				CivilizationIcon, 						LeaderName, 					LeaderIcon, 				CivilizationAbilityName,					CivilizationAbilityDescription,						CivilizationAbilityIcon,				LeaderAbilityName,									LeaderAbilityDescription, 								LeaderAbilityIcon, 			Portrait,					PortraitBackground)
VALUES		('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_CORAZON',	'LOC_CIVILIZATION_CVS_PHILIPPINES_NAME',	'ICON_CIVILIZATION_CIVITAS_PHILIPPINES_CORY',	'LOC_LEADER_CVS_CORAZON_NAME',	'ICON_LEADER_CVS_CORAZON',	'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_NAME',	'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_DESCRIPTION',	'ICON_CIVILIZATION_CIVITAS_PHILIPPINES_CORY',	'LOC_TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA_NAME',	'LOC_TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA_DESCRIPTION',	'ICON_LEADER_CVS_CORAZON',	'LEADER_CVS_CORAZON_NEUTRAL', 'LEADER_GORGO_BACKGROUND');

--- Player Items

INSERT INTO PlayerItems
			(CivilizationType,		LeaderType,			Type,					Name,							Description,							Icon,						SortIndex)
VALUES		('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_CORAZON',	'UNIT_CVS_PHILIPPINES_UU',	'LOC_UNIT_CVS_PHILIPPINES_UU_NAME',	'LOC_UNIT_CVS_PHILIPPINES_UU_DESCRIPTION',	'ICON_UNIT_CVS_PHILIPPINES_UU',	10),
			('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_CORAZON',	'BUILDING_CVS_PHILIPPINES_UI',		'LOC_BUILDING_CVS_PHILIPPINES_UI_NAME',	'LOC_BUILDING_CVS_PHILIPPINES_UI_DESCRIPTION',		'ICON_BUILDING_CVS_PHILIPPINES_UI',	20);

--- Players

INSERT INTO Players
			(Domain,						CivilizationType, 		LeaderType, 		CivilizationName,				CivilizationIcon, 						LeaderName, 					LeaderIcon, 				CivilizationAbilityName,					CivilizationAbilityDescription,						CivilizationAbilityIcon,				LeaderAbilityName,									LeaderAbilityDescription, 								LeaderAbilityIcon, 			Portrait,					PortraitBackground)
VALUES		('Players:Expansion1_Players',	'CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_CORAZON',	'LOC_CIVILIZATION_CVS_PHILIPPINES_NAME',	'ICON_CIVILIZATION_CIVITAS_PHILIPPINES_CORY',	'LOC_LEADER_CVS_CORAZON_NAME',	'ICON_LEADER_CVS_CORAZON',	'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_NAME',	'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_DESCRIPTION',	'ICON_CIVILIZATION_CIVITAS_PHILIPPINES_CORY',	'LOC_TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA_NAME',	'LOC_TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA_DESCRIPTION',	'ICON_LEADER_CVS_CORAZON',	'LEADER_CVS_CORAZON_NEUTRAL', 'LEADER_GORGO_BACKGROUND');

--- Player Items

INSERT INTO PlayerItems
			(Domain,						CivilizationType,		LeaderType,			Type,					Name,							Description,							Icon,						SortIndex)
VALUES		('Players:Expansion1_Players',	'CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_CORAZON',	'UNIT_CVS_PHILIPPINES_UU',	'LOC_UNIT_CVS_PHILIPPINES_UU_NAME',	'LOC_UNIT_CVS_PHILIPPINES_UU_DESCRIPTION',	'ICON_UNIT_CVS_PHILIPPINES_UU',	10),
			('Players:Expansion1_Players',	'CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_CORAZON',	'BUILDING_CVS_PHILIPPINES_UI',		'LOC_BUILDING_CVS_PHILIPPINES_UI_NAME',	'LOC_BUILDING_CVS_PHILIPPINES_UI_DESCRIPTION',		'ICON_BUILDING_CVS_PHILIPPINES_UI',	20);
