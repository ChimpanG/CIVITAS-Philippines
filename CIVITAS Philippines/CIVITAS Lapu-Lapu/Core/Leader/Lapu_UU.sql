/*
	UU
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,											Kind				)
VALUES	('TRAIT_LEADER_CVS_LAPU_LAPU_UU',				'KIND_TRAIT'		),
		('UNIT_CVS_LAPU_LAPU_UU',						'KIND_UNIT'			),
		('ABILITY_CVS_LAPU_LAPU_UU',					'KIND_ABILITY'		),
		('MODTYPE_CVS_LAPU_LAPU_UU_ADJUST_STRENGTH',	'KIND_MODIFIER'		),
		('MODTYPE_CVS_LAPU_LAPU_UU_IGNORE_ZOC',			'KIND_MODIFIER'		);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_CVS_LAPU_LAPU_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,							Tag							)
VALUES	('UNIT_CVS_LAPU_LAPU_UU',		'CLASS_CVS_LAPU_LAPU_UU'	),
		('ABILITY_CVS_LAPU_LAPU_UU',	'CLASS_CVS_LAPU_LAPU_UU'	);

INSERT INTO TypeTags (Type,	Tag)
SELECT 	'UNIT_CVS_LAPU_LAPU_UU',
		Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_SWORDSMAN';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,							Name								)
VALUES	('TRAIT_LEADER_CVS_LAPU_LAPU_UU',	'LOC_UNIT_CVS_LAPU_LAPU_UU_NAME'	);

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------
		
INSERT INTO LeaderTraits
		(LeaderType,				TraitType						)
VALUES	('LEADER_CVS_LAPU_LAPU',	'TRAIT_LEADER_CVS_LAPU_LAPU_UU'	);

-----------------------------------------------
-- Units
-----------------------------------------------	
	
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic,
		StrategicResource
		)
SELECT	'UNIT_CVS_LAPU_LAPU_UU',	-- UnitType
		'LOC_UNIT_CVS_LAPU_LAPU_UU_NAME',	-- Name
		'LOC_UNIT_CVS_LAPU_LAPU_UU_DESCRIPTION', -- Description
		'TRAIT_LEADER_CVS_LAPU_LAPU_UU', -- TraitType
		BaseMoves + 1, -- BaseMoves
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic,
		NULL -- StrategicResource
FROM	Units
WHERE	UnitType = 'UNIT_SWORDSMAN';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_LAPU_LAPU_UU',
		UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_SWORDSMAN';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_LAPU_LAPU_UU',
		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_SWORDSMAN';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,			ReplacesUnitType	)
VALUES	('UNIT_CVS_LAPU_LAPU_UU',	'UNIT_SWORDSMAN'	);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,				Name,									Description									)
VALUES	('ABILITY_CVS_LAPU_LAPU_UU',	'LOC_ABILITY_CVS_LAPU_LAPU_UU_NAME',	'LOC_ABILITY_CVS_LAPU_LAPU_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,				ModifierId									)
VALUES	('ABILITY_CVS_LAPU_LAPU_UU',	'MODIFIER_CVS_LAPU_LAPU_UU_COAST_COMBAT'	),
		('ABILITY_CVS_LAPU_LAPU_UU',	'MODIFIER_CVS_LAPU_LAPU_UU_IGNORE_ZOC'		);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_LAPU_LAPU_UU_ADJUST_STRENGTH',	'COLLECTION_UNIT_COMBAT',	'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'	),
		('MODTYPE_CVS_LAPU_LAPU_UA_IGNORE_ZOC',			'COLLECTION_OWNER',			'EFFECT_ADJUST_UNIT_IGNORE_ZOC'				);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,								SubjectRequirementSetId				)
VALUES	('MODIFIER_CVS_LAPU_LAPU_UU_COAST_COMBAT',		'MODTYPE_CVS_LAPU_LAPU_UU_ADJUST_STRENGTH',	'REQSET_CVS_LAPU_LAPU_UU_ADJ_COAST'	),
		('MODIFIER_CVS_LAPU_LAPU_UU_IGNORE_ZOC',		'MODTYPE_CVS_LAPU_LAPU_UA_IGNORE_ZOC',		NULL								);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,								Name,		Value	)
VALUES	('MODIFIER_CVS_LAPU_LAPU_UU_COAST_COMBAT',	'Amount',	7		),
		('MODIFIER_CVS_LAPU_LAPU_UU_IGNORE_ZOC',	'Ignore',	1		);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO	ModifierStrings
		(ModifierId,								Context,	Text																)
VALUES	('MODIFIER_CVS_LAPU_LAPU_UU_COAST_COMBAT',	'Preview',	'LOC_ABILITY_CVS_LAPU_LAPU_UU_COAST_COMBAT_MODIFIER_DESCRIPTION'	);
		
-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType,				Inverse	)
VALUES	('REQ_CVS_LAPU_LAPU_UU_ADJ_COAST',	'REQUIREMENT_UNIT_ON_COAST',	0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,						Name,		Value	)
VALUES	('REQ_CVS_LAPU_LAPU_UU_ADJ_COAST',	'Water',	1		);
		
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId						)
VALUES	('REQSET_CVS_LAPU_LAPU_UU_ADJ_COAST',	'REQ_CVS_LAPU_LAPU_UU_ADJ_COAST'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_LAPU_LAPU_UU_ADJ_COAST',	'REQUIREMENTSET_TEST_ALL'	);