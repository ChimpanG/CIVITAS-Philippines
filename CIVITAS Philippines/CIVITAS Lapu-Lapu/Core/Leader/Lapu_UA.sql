/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_LEADER_CVS_LAPU_LAPU_UA',				'KIND_TRAIT'	),
		('MODTYPE_CVS_LAPU_LAPU_UA_ADJUST_XP',			'KIND_MODIFIER'	),
		('MODTYPE_CVS_LAPU_LAPU_UA_TERRAIN_ADJACENCY',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,							Name,										Description,										InternalOnly	)
VALUES	('TRAIT_LEADER_CVS_LAPU_LAPU_UA',	'LOC_TRAIT_LEADER_CVS_LAPU_LAPU_UA_NAME',	'LOC_TRAIT_LEADER_CVS_LAPU_LAPU_UA_DESCRIPTION',	0				);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,				TraitType						)
VALUES	('LEADER_CVS_LAPU_LAPU',	'TRAIT_LEADER_CVS_LAPU_LAPU_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,							ModifierId											)	
VALUES	('TRAIT_LEADER_CVS_LAPU_LAPU_UA',	'MODIFIER_CVS_LAPU_LAPU_UA_DEFEND_XP'				),
		('TRAIT_LEADER_CVS_LAPU_LAPU_UA',	'MODIFIER_CVS_LAPU_LAPU_UA_ENCAMPMENT_ADJACENCY'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,					EffectType									)
VALUES	('MODTYPE_CVS_LAPU_LAPU_UA_ADJUST_XP',			'COLLECTION_PLAYER_UNITS',		'EFFECT_ADJUST_UNIT_EXPERIENCE_MODIFIER'	),
		('MODTYPE_CVS_LAPU_LAPU_UA_TERRAIN_ADJACENCY',	'COLLECTION_PLAYER_CITIES',		'EFFECT_TERRAIN_ADJACENCY'					);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId				)
VALUES	('MODIFIER_CVS_LAPU_LAPU_UA_DEFEND_XP',				'MODTYPE_CVS_LAPU_LAPU_UA_ADJUST_XP',			'REQSET_CVS_LAPU_LAPU_UA_DEFENDING'	),
		('MODIFIER_CVS_LAPU_LAPU_UA_ENCAMPMENT_ADJACENCY',	'MODTYPE_CVS_LAPU_LAPU_UA_TERRAIN_ADJACENCY',	NULL								);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,										Name,			Value													)
VALUES	('MODIFIER_CVS_LAPU_LAPU_UA_DEFEND_XP',				'Amount',		100														),
		('MODIFIER_CVS_LAPU_LAPU_UA_ENCAMPMENT_ADJACENCY',	'DistrictType',	'DISTRICT_ENCAMPMENT'									),
		('MODIFIER_CVS_LAPU_LAPU_UA_ENCAMPMENT_ADJACENCY',	'TerrainType',	'TERRAIN_COAST'											),
		('MODIFIER_CVS_LAPU_LAPU_UA_ENCAMPMENT_ADJACENCY',	'YieldType',	'YIELD_PRODUCTION'										),
		('MODIFIER_CVS_LAPU_LAPU_UA_ENCAMPMENT_ADJACENCY',	'Amount',		1														),
		('MODIFIER_CVS_LAPU_LAPU_UA_ENCAMPMENT_ADJACENCY',	'Description',	'LOC_CVS_LAPU_LAPU_UA_ENCAMPMENT_ADJACENCY_DESCRIPTION'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType,					Inverse	)
VALUES	('REQ_CVS_LAPU_LAPU_UA_IS_DEFENDING',	'REQUIREMENT_PLAYER_IS_ATTACKING',	1		);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId							)
VALUES	('REQSET_CVS_LAPU_LAPU_UA_DEFENDING',		'REQ_CVS_LAPU_LAPU_UA_IS_DEFENDING'		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_LAPU_LAPU_UA_DEFENDING',	'REQUIREMENTSET_TEST_ALL'	);