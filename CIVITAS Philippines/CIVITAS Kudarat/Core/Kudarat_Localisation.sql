/*
	Localisation
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag,	Language,	Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("LOC_LEADER_CVS_KUDARAT_NAME",  "en_US",	"Kudarat"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("LOC_TRAIT_LEADER_CVS_KUDARAT_UA_NAME",  "en_US",	"Helper of the Faith"	),
	("LOC_TRAIT_LEADER_CVS_KUDARAT_UA_DESCRIPTION",	"en_US",	
	"May purchase [ICON_RELIGION] Religious Units for half the amount of [ICON_FAITH] Faith, and Walls are constructed in half the usual time. Gains access to the Kota unique district."),

-----------------------------------------------
-- UI
-----------------------------------------------

	("LOC_DISTRICT_CVS_KUDARAT_UI_NAME",	"en_US",	"Kota"	),
	("LOC_DISTRICT_CVS_KUDARAT_UI_DESCRIPTION",	"en_US",	  
	"An Aqueduct replacement unique to Philippines. Provides +4 [ICON_Housing] Housing, and acquires Walls when they are constructed in the City Center, alongside a minor [ICON_Ranged] Ranged Attack. Receives +2 [ICON_FAITH] Faith for each level of Walls. May not be built adjacent to the City Center and must be constructed on Hills."),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("LOC_AGENDA_CVS_KUDARAT_NAME",	"en_US",	
	"Men of the Lake"	),
	("LOC_AGENDA_CVS_KUDARAT_DESCRIPTION", "en_US",	
	"Likes civilizations who follow the same Religion, and wants his cities to all follow the same Religion. Hates anyone trying to spread their Religion into his cities."	),
	("LOC_DIPLO_KUDO_LEADER_CVS_KUDARAT_REASON_ANY",	"en_US",		  
	"(You follow the same religion.)"	),
	("LOC_DIPLO_MODIFIER_CVS_KUDARAT_HAPPY",	"en_US",	
	"Kudarat is pleased that you follow the same religion."	),
	("LOC_DIPLO_WARNING_LEADER_CVS_KUDARAT_REASON_ANY",	"en_US",	  
	"(You imposed religious conversion on his people.)"	),
	("LOC_DIPLO_MODIFIER_CVS_KUDARAT_UNHAPPY",		"en_US",	 
	"Kudarat is disappointed in your attempts to convert his cities to your religion."	),
		
-----------------------------------------------
-- Diplos
-----------------------------------------------	

-- DOM
	("LOC_LOADING_INFO_LEADER_CVS_KUDARAT",  "en_US",	
	"Wise and illustrious King Tiglath-Pileser III. Your legendary reputation as a scholar is matched only by your ferocity in conquest. And yet, your legend represents merely a glimmer of your true ambition. Ensure that your thirst for knowledge does not go unquenched, seize lands as far as the horizon, and rest assured the world shall be yours."  	),
	
-- FIRST MEET
	-- First AI Line
	("LOC_DIPLO_FIRST_MEET_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Let it be known that I will not hesitate to cut down an enemy where they stand, but those that conduct themselves with grace and civility may consider themselves friends of Assyria." ),
	
	-- AI invitation to visit nearby City
	("LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"I wish to welcome you to the great kingdom of Assyria. Come, visit our libraries. A world of knowledge at your fingertips."	),
	
	-- AI accepts human invitation
	("LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"I would be honored."	),
	
	-- AI invitation to exchange Capital Information
	("LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Prosperity begins with education. Come, let us exchange information on our Capitals so that we may learn more about one another."	),

-- GREETINGS	
	("LOC_DIPLO_GREETING_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Welcome."	),
	
-- DELEGATION
	-- AI Accepts
	("LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Your delegation arrived, and we are humbled by your generosity."	),
	
	-- AI Rejects
	("LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"I'm afraid not."	),
	
	-- AI Requests
	("LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Will you receive our diplomatic delegation in your capital?"	),
	
-- OPEN BORDERS
	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",	"en_US",	                                     
	"Very well."	),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",  "en_US",	                                   
	"You must have mistaken me for a fool. The answer is no."	),
	
	-- AI requests from human	
	("LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_KUDARAT_ANY",      "en_US",	                                
	"Will you do me the honor of allowing my soldiers free passage through your territory?"	),
	
-- DECLARE FRIENDSHIP

	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",   "en_US",	                                   
	"It would be my honor."	),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",   "en_US",	                                   
	"I'm afraid not, for a man is known by the company he keeps."	),
	
	-- AI Requests friendship from human	
	("LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_KUDARAT_ANY",     "en_US",	                                 
	"It would appear that our intellectual pursuits are in alignment. I extend my hand in friendship."	),
	
	-- Human accepts AI requests, AI responds	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_KUDARAT_ANY",   "en_US",	                                   
	"Splendid."	),
	
	-- Human rejects AI requests, AI responds	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_KUDARAT_ANY",   "en_US",	                                   
	"I think you will come to regret this decision. Most unwise."	),

-- ALLIANCE

	-- AI Requests an alliance from human
	("LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Partnerships produce stability in a world where there is little. Let us guarantee our good fortune by forming an alliance."	),

-- KUDOS & WARNINGS
	
	-- AI Kudos
	("LOC_DIPLO_KUDO_EXIT_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"He who is learned believes only half of what he hears, but only the wisest of men know which half. It would appear that we find each other in good company."	),
	
	-- AI Warnings
	("LOC_DIPLO_WARNING_EXIT_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"It is easier to snatch possessions as thieves than it is to work for them. It is easier to seize land from another than it is to toil it yourself. And it is easier to lay waste to a city than it is to rebuild it. You'd be wise to remember this."	),
	
	-- AI warns player for border troops
	("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Education is a better safeguard of prosperity than a standing army, but it doesn't hurt to have both. I'd suggest you move your troops."	),

-- TRADE
	
	-- AI Accepts Deal
	("LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Very well."	),

	-- AI Rejects Deal
	("LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Don't waste my time."	),

-- DENOUNCE
	
	-- From Human
	("LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Before god we are equally wise... and equally foolish."	),
	
	-- From AI
	("LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Poor is the pupil that does not surpass his mentor. (Denounces You)"	),
	
-- DOW
	
	-- Human Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Let them come."	),
	
	-- AI Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Wars are won by those who are willing to do what the other is not. Let's see how far you'll fall from grace to save your pathetic kingdom."	),
	
-- MAKE PEACE
	
	-- AI accepts from human
	("LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Fine."	),
	
	-- AI refuses human
	("LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"You plead for mercy? From me? Forgiveness is between you and the gods. You'll meet them before I'm done here."	),
	
	-- AI requests from human
	("LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"No man is ever wise by chance. The time has come to lay down our arms."	),

-- DEFEAT
	
	-- AI is Defeated
	("LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"And so it is by your hand that I meet my end. I regret nothing, for it was always better to fight for something than live for nothing. Go ahead, finish this."	),

	-- Human is Defeated (will see this in hotseat)
	("LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"And so it is by your hand that I meet my end. I regret nothing, for it was always better to fight for something than live for nothing. Go ahead, finish this."	),	

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("LOC_PEDIA_LEADERS_PAGE_CVS_KUDARAT_QUOTE",	"en_US",	
	"You men of the Lake! Forgetting your ancient liberty, have submitted to the Castilians. Such submission is sheer stupidity."  	),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_KUDARAT_TITLE",	"en_US",	
	"Muhammad Dipatuan Kudarat"),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_KUDARAT_SUBTITLE",	"en_US",	
	"Sultan of Maguindanao"),
	
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_CAPSULE_BODY",	"en_US",	
	"Placeholder"),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_DETAILED_BODY",	"en_US",	
	"Placeholder"),
	
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_HISTORY_PARA_1",	"en_US",	
	"Placeholder"),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_HISTORY_PARA_2",	"en_US",	
	"Placeholder"),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_HISTORY_PARA_3",	"en_US",	
	"Placeholder"),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_HISTORY_PARA_4",	"en_US",	
	"Placeholder"),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_HISTORY_PARA_5",	"en_US",	
	"Placeholder"),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_HISTORY_PARA_6",	"en_US",	
	"Placeholder"),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_HISTORY_PARA_7",	"en_US",	
	"Placeholder"),

	("LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_CVS_KUDARAT_UI_CHAPTER_HISTORY_PARA_1",	"en_US",
	"With the arrival of Indianized and Muslim scholars from nearby Indonesia, the native Filipinos were introduced to the concept of the kota or the fort. The Muslim Filipinos of the south built strong fortresses called kota or moong to protect their communities. Usually, entire families occupies the kotas, rather than just warriors. The kota served not only as a military installation, but also as a palace for the local lord, who often had their own kotas to assert their right to rule. It is said that at the height of the Maguindanao Sultanate's power, they blanketed the areas around Western Mindanao with kotas and other types of fortifications to block the Spanish advance into the region."),
	("LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_CVS_KUDARAT_UI_CHAPTER_HISTORY_PARA_2",	"en_US",
	"The kota were usually made of stone and bamboo, or other light materials, and surrounded by trench networks. As a result, some of these kotas were burned easily or destroyed. With further Spanish campaigns in the region, the Sultanate was subdued and majority of kota were dismantled or destroyed. Kota were used by the Muslims as defense against Spaniards and other foreigners, and also saw use by renegades and rebels who built fortifications in defiance of other chiefs in the area. During the American occupation, rebels built strongholds and the datus, rajahs or sultans often built and reinforced their kotas in a desperate bid to maintain rule over their subjects and their land. Many of these forts were destroyed by American expeditions, and as a result, very few kota still stand to this day.");
