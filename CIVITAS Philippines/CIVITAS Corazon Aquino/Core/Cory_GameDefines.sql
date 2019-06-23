--- LEADERS
--- Types
INSERT INTO Types
			(Type,					Kind)
VALUES		('LEADER_CVS_CORAZON',	'KIND_LEADER');

--- Leaders
INSERT INTO Leaders
			(LeaderType,			Name,							Sex,		InheritFrom,				SceneLayers)
VALUES		('LEADER_CVS_CORAZON',	'LOC_LEADER_CVS_CORAZON_NAME',	'Female',	'LEADER_DEFAULT',			4);

--- Leader Quotes
INSERT INTO LeaderQuotes
			(LeaderType,			Quote)
VALUES		('LEADER_CVS_CORAZON',	'LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_CORAZON_QUOTE');

--- Historical Agendas
INSERT INTO HistoricalAgendas
			(LeaderType,			AgendaType)
VALUES		('LEADER_CVS_CORAZON',	'AGENDA_CIVITAS_CORY_PEOPLE_POWER');

--- Leader Traits
INSERT INTO LeaderTraits
			(LeaderType,			TraitType)
VALUES		('LEADER_CVS_CORAZON',	'TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA');

--- Favored Religion
INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
VALUES  	('LEADER_CVS_CORAZON',  					'RELIGION_CATHOLICISM');

--- AGENDAS
--- Types
INSERT INTO Types
			(Type,										Kind)
VALUES		('TRAIT_AGENDA_CIVITAS_CORY_PEOPLE_POWER',		'KIND_TRAIT');

--- Agendas
INSERT INTO Agendas
			(AgendaType,							Name,										Description)
VALUES		('AGENDA_CIVITAS_CORY_PEOPLE_POWER',	'LOC_AGENDA_CIVITAS_CORY_PEOPLE_POWER_NAME',		'LOC_AGENDA_CIVITAS_CORY_PEOPLE_POWER_DESCRIPTION');

--- Traits
INSERT INTO Traits
			(TraitType,								Name,					Description)
VALUES		('TRAIT_AGENDA_CIVITAS_CORY_PEOPLE_POWER',		'LOC_PLACEHOLDER',		'LOC_PLACEHOLDER');

--- Agenda Traits
INSERT INTO AgendaTraits
			(AgendaType,					TraitType)
VALUES		('AGENDA_CIVITAS_CORY_PEOPLE_POWER',	'TRAIT_AGENDA_CIVITAS_CORY_PEOPLE_POWER');

--- Exclusive Agendas
INSERT INTO ExclusiveAgendas
			(AgendaOne,						AgendaTwo)
VALUES		('AGENDA_CIVITAS_CORY_PEOPLE_POWER',	'AGENDA_FUN_LOVING'),
			('AGENDA_CIVITAS_CORY_PEOPLE_POWER',	'AGENDA_IDEOLOGUE');

--- Trait Modifiers	
INSERT INTO TraitModifiers
			(TraitType,												ModifierId)
VALUES		('TRAIT_AGENDA_CIVITAS_CORY_PEOPLE_POWER',					'CIVITAS_CORY_HAPPY_PEOPLE'),
			('TRAIT_AGENDA_CIVITAS_CORY_PEOPLE_POWER',					'CIVITAS_CORY_SAD_PEOPLE'),
			('TRAIT_AGENDA_CIVITAS_CORY_PEOPLE_POWER',					'CIVITAS_CORY_DIFF_GOV');

--- Modifiers
INSERT INTO Modifiers
			(ModifierId,										ModifierType,									SubjectRequirementSetId)
VALUES		('CIVITAS_CORY_HAPPY_PEOPLE',					'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'CIVITAS_CORY_HAPPY_PEOPLE_SET'),
			('CIVITAS_CORY_SAD_PEOPLE',						'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'CIVITAS_CORY_SAD_PEOPLE_SET'),
			('CIVITAS_CORY_DIFF_GOV',						'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'CIVITAS_CORY_DIFF_GOV_SET');

--- Requirement Sets
INSERT INTO RequirementSets
			(RequirementSetId,									RequirementSetType)
VALUES		('CIVITAS_CORY_HAPPY_PEOPLE_SET',		'REQUIREMENTSET_TEST_ALL'),
			('CIVITAS_CORY_SAD_PEOPLE_SET',			'REQUIREMENTSET_TEST_ALL'),
			('CIVITAS_CORY_DIFF_GOV_SET',			'REQUIREMENTSET_TEST_ALL');

--- Requirement Set Requirements
INSERT INTO RequirementSetRequirements
			(RequirementSetId,							RequirementId)
VALUES		('CIVITAS_CORY_HAPPY_PEOPLE_SET',		'REQUIRES_MAJOR_CIV_OPPONENT'),
			('CIVITAS_CORY_HAPPY_PEOPLE_SET',		'REQUIRES_MET_10_TURNS_AGO'),
			('CIVITAS_CORY_HAPPY_PEOPLE_SET',		'REQUIRES_HAS_HIGH_HAPPINESS'),

			('CIVITAS_CORY_SAD_PEOPLE_SET',			'REQUIRES_MAJOR_CIV_OPPONENT'),
			('CIVITAS_CORY_SAD_PEOPLE_SET',			'REQUIRES_MET_10_TURNS_AGO'),
			('CIVITAS_CORY_SAD_PEOPLE_SET',			'REQUIRES_HAS_LOW_HAPPINESS'),

			('CIVITAS_CORY_DIFF_GOV_SET',			'REQUIRES_MAJOR_CIV_OPPONENT'),
			('CIVITAS_CORY_DIFF_GOV_SET',			'REQUIRES_MET_10_TURNS_AGO'),
			('CIVITAS_CORY_DIFF_GOV_SET',			'REQUIRES_HAS_DIFFERENT_GOVERNMENT');

--- Modifier Arguments
INSERT INTO ModifierArguments
			(ModifierId,										Name,							Value)
VALUES		('CIVITAS_CORY_HAPPY_PEOPLE',			'InitialValue',					12),
			('CIVITAS_CORY_HAPPY_PEOPLE',			'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_CORAZON_REASON_HAPPY_PEOPLE'),
			('CIVITAS_CORY_HAPPY_PEOPLE',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_AGENDA_CIVITAS_CORY_PEOPLE_POWER_HAPPY_PEOPLE'),
			('CIVITAS_CORY_SAD_PEOPLE',				'InitialValue',					-7),
			('CIVITAS_CORY_SAD_PEOPLE',				'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_CORAZON_REASON_SAD_PEOPLE'),
			('CIVITAS_CORY_SAD_PEOPLE',				'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_AGENDA_CIVITAS_CORY_PEOPLE_POWER_SAD_PEOPLE'),
			('CIVITAS_CORY_DIFF_GOV',				'InitialValue',					-7),
			('CIVITAS_CORY_DIFF_GOV',				'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_CORAZON_REASON_DIFF_GOV'),
			('CIVITAS_CORY_DIFF_GOV',				'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_AGENDA_CIVITAS_CORY_PEOPLE_POWER_DIFF_GOV');

--- Modifier Strings
INSERT INTO ModifierStrings
			(ModifierId,										Context,	Text)
VALUES		('CIVITAS_CORY_HAPPY_PEOPLE',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
			('CIVITAS_CORY_SAD_PEOPLE',			'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
			('CIVITAS_CORY_DIFF_GOV',			'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');


--- COLORS

INSERT INTO Colors 
			(Type,											Red,	Green,	Blue,	Alpha)
VALUES		('COLOR_PLAYER_CIVITAS_PHILIPPINES_CORY_PRIMARY',	.992,	.992,	.588,	1),
			('COLOR_PLAYER_CIVITAS_PHILIPPINES_CORY_SECONDARY',	.980,	.000,	.000,	1);
			
INSERT INTO PlayerColors
			(Type,					Usage,				PrimaryColor,								SecondaryColor,								TextColor)
VALUES		('LEADER_CVS_CORAZON',	'Unique',			'COLOR_PLAYER_CIVITAS_PHILIPPINES_CORY_PRIMARY',	'COLOR_PLAYER_CIVITAS_PHILIPPINES_CORY_SECONDARY',	'COLOR_PLAYER_WHITE_TEXT');



--- LOADING INGO
--- Loading Info
INSERT INTO LoadingInfo
			(LeaderType,			BackgroundImage,				ForegroundImage,			PlayDawnofManAudio)
VALUES		('LEADER_CVS_CORAZON',	'LEADER_GORGO_BACKGROUND',	'LEADER_CVS_CORAZON_NEUTRAL',	0);

--- TRAITS
--- Types
INSERT INTO Types
			(Type,										Kind)
VALUES 		('TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA',	'KIND_TRAIT');


--- Traits
INSERT INTO Traits
			(TraitType,									Name,												Description)
VALUES		('TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA',	'LOC_TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA_NAME',	'LOC_TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA_DESCRIPTION');


--- Trait Modifiers		
INSERT INTO TraitModifiers 
		(TraitType,							ModifierId)
VALUES  ('TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA',	'CIVITAS_CORY_NATIONAL_PARK_TOURISM'),
		('TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA',	'CIVITAS_CORY_GREAT_MUSIC_TOURISM'),
		('TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA',	'CIVITAS_CORY_FARM_GOLD'),
		('TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA',	'CIVITAS_CORY_PLANTATION_FOOD');

--- Modifiers
INSERT INTO Modifiers 
		(ModifierId,										ModifierType,											SubjectRequirementSetId)
VALUES	('CIVITAS_CORY_NATIONAL_PARK_TOURISM',				'MODIFIER_PLAYER_ADJUST_TOURISM_FROM_NATIONAL_PARKS',	null),
		('CIVITAS_CORY_GREAT_MUSIC_TOURISM',				'MODIFIER_PLAYER_CITIES_ADJUST_TOURISM',				null),
		('CIVITAS_CORY_FARM_GOLD',							'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					'CIVITAS_CORY_NEXT_TO_FARM'),
		('CIVITAS_CORY_PLANTATION_FOOD',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					'CIVITAS_CORY_NEXT_TO_PLANTATION');


--- Modifier Arguments
INSERT INTO ModifierArguments 
		(ModifierId,										Name,					Value)
VALUES	('CIVITAS_CORY_NATIONAL_PARK_TOURISM',				'Amount',				50),
		('CIVITAS_CORY_GREAT_MUSIC_TOURISM',				'GreatWorkObjectType',	'GREATWORKOBJECT_MUSIC'),
		('CIVITAS_CORY_GREAT_MUSIC_TOURISM',				'ScalingFactor',		300),
		('CIVITAS_CORY_FARM_GOLD',							'YieldType',			'YIELD_GOLD'),
		('CIVITAS_CORY_FARM_GOLD',							'Amount',				1),
		('CIVITAS_CORY_PLANTATION_FOOD',					'YieldType',			'YIELD_FOOD'),
		('CIVITAS_CORY_PLANTATION_FOOD',					'Amount',				1);

--- Requirement Sets
INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType			)
VALUES	('CIVITAS_CORY_NEXT_TO_FARM',						'REQUIREMENTSET_TEST_ALL'	),
		('CIVITAS_CORY_NEXT_TO_PLANTATION',					'REQUIREMENTSET_TEST_ALL'	);

--- Requirement Set Requirements
INSERT INTO RequirementSetRequirements	
		(RequirementSetId,							RequirementId				)
VALUES	('CIVITAS_CORY_NEXT_TO_FARM',				'REQ_CIVITAS_CORY_NEXT_TO_FARM'		),
		('CIVITAS_CORY_NEXT_TO_FARM',				'REQ_CIVITAS_CORY_IS_FARM'		),
		('CIVITAS_CORY_NEXT_TO_PLANTATION',			'REQ_CIVITAS_CORY_NEXT_TO_PLANTATION'		);

--- Requirements
INSERT INTO Requirements
		(RequirementId,										RequirementType,												Inverse	)
VALUES	('REQ_CIVITAS_CORY_NEXT_TO_FARM',					'REQUIREMENT_PLOT_ADJACENT_IMPROVEMENT_TYPE_MATCHES',			0		),
		('REQ_CIVITAS_CORY_IS_FARM',						'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES',					0		),
		('REQ_CIVITAS_CORY_NEXT_TO_PLANTATION',				'REQUIREMENT_PLOT_ADJACENT_IMPROVEMENT_TYPE_MATCHES',			0		);

--- Requirement Arguments
INSERT INTO RequirementArguments
		(RequirementId,												Name,				Value					)
VALUES	('REQ_CIVITAS_CORY_NEXT_TO_FARM',							'ImprovementType',	'IMPROVEMENT_FARM'	),
		('REQ_CIVITAS_CORY_IS_FARM',								'ImprovementType',	'IMPROVEMENT_FARM'	),
		('REQ_CIVITAS_CORY_NEXT_TO_PLANTATION',						'ImprovementType',	'IMPROVEMENT_PLANTATION'	);
		



--- CIVILIZATIONS
--- Civilization Leaders
INSERT INTO CivilizationLeaders
			(CivilizationType,		LeaderType,			CapitalName)
VALUES		('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_CORAZON',	'LOC_CITY_NAME_MANILA');

--- AI
--- AiListTypes
INSERT INTO AiListTypes	
		(ListType)
VALUES	('CIVITAS_CORY_Buildings'),
		('CIVITAS_CORY_Civics'),
		('CIVITAS_CORY_Districts'),
		('CIVITAS_CORY_Techs'),
		('CIVITAS_CORY_Units'),
		('CIVITAS_CORY_PseudoYields');

--- AiLists
INSERT INTO AiLists	
		(ListType,						LeaderType,									System)
VALUES	('CIVITAS_CORY_Buildings',		'TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA',	'Buildings'),
		('CIVITAS_CORY_Civics',			'TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA',	'Civics'),
		('CIVITAS_CORY_Districts',		'TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA',	'Districts'),
		('CIVITAS_CORY_Techs',			'TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA',	'Technologies'),
		('CIVITAS_CORY_Units',			'TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA',	'Units'),
		('CIVITAS_CORY_PseudoYields',	'TRAIT_LEADER_CVS_CORAZON_INA_ING_DEMOKRASYA',	'PseudoYields');
	
--- AiFavoredItems
INSERT INTO AiFavoredItems	
		(ListType,					Favored,	Value,		Item)
VALUES	('CIVITAS_CORY_Buildings',		1,			1,			'BUILDING_CVS_PHILIPPINES_UI'), 
		('CIVITAS_CORY_Buildings',		1,			1,			'BUILDING_BROADCAST_CENTER'),
		('CIVITAS_CORY_Buildings',		1,			1,			'BUILDING_BROADWAY'), 
		('CIVITAS_CORY_Buildings',		1,			1,			'BUILDING_SYDNEY_OPERA_HOUSE'), 
		('CIVITAS_CORY_Buildings',		1,			1,			'BUILDING_BOLSHOI_THEATER'), 
		('CIVITAS_CORY_PseudoYields',	1,			50,			'PSEUDOYIELD_GPP_MUSICIAN'), 
		('CIVITAS_CORY_Civics',			1,			0,			'CIVIC_MASS_MEDIA'),
		('CIVITAS_CORY_Civics',			1,			0,			'CIVIC_SUFFRAGE'),
		('CIVITAS_CORY_Civics',			1,			0,			'CIVIC_CULTURAL_HERITAGE'),
		('CIVITAS_CORY_Districts',		1,			0,			'DISTRICT_THEATER'), 
		('CIVITAS_CORY_Techs',			1,			0,			'TECH_BANKING'),
		('CIVITAS_CORY_Techs',			1,			0,			'TECH_ECONOMICS'),
		('CIVITAS_CORY_Techs',			1,			0,			'TECH_CONSERVATION'),
		('CIVITAS_CORY_Units',			1,			0,			'UNIT_CVS_PHILIPPINES_UU'),
		('CIVITAS_CORY_Units',			1,			0,			'UNIT_NATURALIST');
