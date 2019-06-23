/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_LEADER_CVS_KUDARAT_UA',					'KIND_TRAIT'	),
		('MODTYPE_CVS_KUDARAT_UA_FAITH_DISCOUNT',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_KUDARAT_UA_BUILDING_PRODUCTION',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,						Name,									Description										)
VALUES	('TRAIT_LEADER_CVS_KUDARAT_UA',	'LOC_TRAIT_LEADER_CVS_KUDARAT_UA_NAME',	'LOC_TRAIT_LEADER_CVS_KUDARAT_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType							)
VALUES	('LEADER_CVS_KUDARAT',	'TRAIT_LEADER_CVS_KUDARAT_UA'		),
		('LEADER_CVS_KUDARAT',	'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,						ModifierId	)
SELECT	'TRAIT_LEADER_CVS_KUDARAT_UA',	'MODIFIER_CVS_KUDARAT_UA_DISCOUNT_'||UnitType
FROM	Units WHERE TrackReligion = 1;

INSERT INTO	TraitModifiers
		(TraitType,						ModifierId	)
SELECT	'TRAIT_LEADER_CVS_KUDARAT_UA',	'MODIFIER_CVS_KUDARAT_UA_PRODUCTION_'||BuildingType
FROM	Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,				EffectType							)
VALUES	('MODTYPE_CVS_KUDARAT_UA_FAITH_DISCOUNT',		'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_UNIT_PURCHASE_COST'	),
		('MODTYPE_CVS_KUDARAT_UA_BUILDING_PRODUCTION',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_BUILDING_PRODUCTION'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,								SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KUDARAT_UA_DISCOUNT_'||UnitType,	'MODTYPE_CVS_KUDARAT_UA_FAITH_DISCOUNT',	NULL					
FROM	Units WHERE TrackReligion = 1;

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,									SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KUDARAT_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KUDARAT_UA_BUILDING_PRODUCTION',	NULL					
FROM	Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,			Value )
SELECT	'MODIFIER_CVS_KUDARAT_UA_DISCOUNT_'||UnitType,	'UnitType',		UnitType	
FROM	Units WHERE TrackReligion = 1;

INSERT INTO	ModifierArguments
		(ModifierId,									Name,			Value )
SELECT	'MODIFIER_CVS_KUDARAT_UA_DISCOUNT_'||UnitType,	'Amount',		50	
FROM	Units WHERE TrackReligion = 1;

INSERT INTO	ModifierArguments
		(ModifierId,											Name,				Value )
SELECT	'MODIFIER_CVS_KUDARAT_UA_PRODUCTION_'||BuildingType,	'BuildingType',		BuildingType
FROM	Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value )
SELECT	'MODIFIER_CVS_KUDARAT_UA_PRODUCTION_'||BuildingType,	'Amount',		50	
FROM	Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');