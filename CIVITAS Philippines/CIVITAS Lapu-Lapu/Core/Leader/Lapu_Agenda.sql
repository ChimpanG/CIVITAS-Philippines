/*
	Agenda
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,							Kind			)
VALUES  ('TRAIT_AGENDA_CVS_LAPU_LAPU',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,				Name,								Description								)
VALUES 	('AGENDA_CVS_LAPU_LAPU',	'LOC_AGENDA_CVS_LAPU_LAPU_NAME',	'LOC_AGENDA_CVS_LAPU_LAPU_DESCRIPTION'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,				AgendaType				)
VALUES 	('LEADER_CVS_LAPU_LAPU',	'AGENDA_CVS_LAPU_LAPU'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,					AgendaTwo			)
VALUES 	('AGENDA_CVS_LAPU_LAPU',	'AGENDA_PARANOID'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,						Name,								Description								)
VALUES	('TRAIT_AGENDA_CVS_LAPU_LAPU',	'LOC_AGENDA_CVS_LAPU_LAPU_NAME',	'LOC_AGENDA_CVS_LAPU_LAPU_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,				TraitType						)
VALUES 	('AGENDA_CVS_LAPU_LAPU',	'TRAIT_AGENDA_CVS_LAPU_LAPU'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId									)
VALUES	('TRAIT_AGENDA_CVS_LAPU_LAPU',	'AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPY'		),
		('TRAIT_AGENDA_CVS_LAPU_LAPU',	'AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPIER'		),
		('TRAIT_AGENDA_CVS_LAPU_LAPU',	'AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPIEST'	),
		('TRAIT_AGENDA_CVS_LAPU_LAPU',	'AGENDA_MODIFIER_CVS_LAPU_LAPU_UNHAPPY'		);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,								ModifierType,									SubjectRequirementSetId				)
VALUES	('AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_LAPU_LAPU_HAPPY'		),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPIER',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_LAPU_LAPU_HAPPIER'		),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPIEST',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_LAPU_LAPU_HAPPIEST'		),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_LAPU_LAPU_UNHAPPY'		);

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,								Context,		Text								)
VALUES	('AGENDA_MODIFIER_CVS_LAPU_LAPU_UNHAPPY',	'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPY',		'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,							Value													)
VALUES	('AGENDA_MODIFIER_CVS_LAPU_LAPU_UNHAPPY',	'InitialValue',					-7														),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_UNHAPPY',	'ReductionTurns',				7														),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_UNHAPPY',	'ReductionValue',				-1														),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_LAPU_LAPU_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_LAPU_LAPU_UNHAPPY'				),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPY',		'InitialValue',					3														),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPY',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_LAPU_LAPU_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPY',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_LAPU_LAPU_HAPPY'				),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPIER',	'InitialValue',					5														),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPIER',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_LAPU_LAPU_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPIER',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_LAPU_LAPU_HAPPY'				),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPIEST',	'InitialValue',					7														),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPIEST',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_LAPU_LAPU_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_LAPU_LAPU_HAPPIEST',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_LAPU_LAPU_HAPPY'				);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType									)
VALUES	('REQ_CVS_LAPU_LAPU_ENCROACHMENT',		'REQUIREMENT_PLAYER_SHARES_HOME_CONTINENT'		),
		('REQ_CVS_LAPU_LAPU_HIGH_MARKET',		'REQUIREMENT_PLAYER_HAS_AT_LEAST_NUM_BUILDINGS'	),
		('REQ_CVS_LAPU_LAPU_HIGH_BANK',			'REQUIREMENT_PLAYER_HAS_AT_LEAST_NUM_BUILDINGS'	),
		('REQ_CVS_LAPU_LAPU_HIGH_STOCK',		'REQUIREMENT_PLAYER_HAS_AT_LEAST_NUM_BUILDINGS'	);
		
-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,							Name,				Value						)
VALUES	('REQ_CVS_LAPU_LAPU_HIGH_MARKET',		'BuildingType',		'BUILDING_MARKET'			),
		('REQ_CVS_LAPU_LAPU_HIGH_MARKET',		'Amount',			3							),
		('REQ_CVS_LAPU_LAPU_HIGH_BANK',			'BuildingType',		'BUILDING_BANK'				),
		('REQ_CVS_LAPU_LAPU_HIGH_BANK',			'Amount',			5							),
		('REQ_CVS_LAPU_LAPU_HIGH_STOCK',		'BuildingType',		'BUILDING_STOCK_EXCHANGE'	),
		('REQ_CVS_LAPU_LAPU_HIGH_STOCK',		'Amount',			7							);
		
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId						)
VALUES	('REQSET_CVS_LAPU_LAPU_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_LAPU_LAPU_UNHAPPY',	'REQUIRES_MET_30_TURNS_AGO'			),
		('REQSET_CVS_LAPU_LAPU_UNHAPPY',	'REQ_CVS_LAPU_LAPU_ENCROACHMENT'	),
		('REQSET_CVS_LAPU_LAPU_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_LAPU_LAPU_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_CVS_LAPU_LAPU_HAPPY',		'REQ_CVS_LAPU_LAPU_HIGH_MARKET'		),
		('REQSET_CVS_LAPU_LAPU_HAPPIER',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_LAPU_LAPU_HAPPIER',	'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_CVS_LAPU_LAPU_HAPPIER',	'REQ_CVS_LAPU_LAPU_HIGH_BANK'		),
		('REQSET_CVS_LAPU_LAPU_HAPPIEST',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_LAPU_LAPU_HAPPIEST',	'REQUIRES_MET_30_TURNS_AGO'			),
		('REQSET_CVS_LAPU_LAPU_HAPPIEST',	'REQ_CVS_LAPU_LAPU_HIGH_STOCK'		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_LAPU_LAPU_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_LAPU_LAPU_HAPPY',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_LAPU_LAPU_HAPPIER',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_LAPU_LAPU_HAPPIEST',	'REQUIREMENTSET_TEST_ALL'	);
