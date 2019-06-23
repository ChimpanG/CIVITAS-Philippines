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
	
	("LOC_LEADER_CVS_LAPU_LAPU_NAME",  "en_US",	"Lapu Lapu"		),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("LOC_TRAIT_LEADER_CVS_LAPU_LAPU_UA_NAME",  "en_US",	"First Resistance"	),
	("LOC_TRAIT_LEADER_CVS_LAPU_LAPU_UA_DESCRIPTION",	"en_US",	
	"Units receive double experience when defending and additional [ICON_STRENGTH] Combat Strength when fighting adjacent to coast. Gains access to the Bagani unique unit."),
	
-----------------------------------------------
-- UU
-----------------------------------------------

	("LOC_UNIT_CVS_LAPU_LAPU_UU_NAME",	"en_US",	"Timawa"	),
	("LOC_UNIT_CVS_LAPU_LAPU_UU_DESCRIPTION",	"en_US",	  
	"A melee unit unique to the Philippines. Ignores Zone of Control and receives +1 [ICON_Movement] Movement, increasing to +2 when adjacent to coast."),
	
	("LOC_ABILITY_CVS_LAPU_LAPU_UU_COAST_COMBAT_DESCRIPTION",	"en_US",	"+{1_Amount} Combat Strength on Coastal Land"	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("LOC_AGENDA_CVS_LAPU_LAPU_NAME",	"en_US",	
	"Magahat"	),
	("LOC_AGENDA_CVS_LAPU_LAPU_DESCRIPTION", "en_US",	
	"Respects civilizations that focus on commercial infrastructure. Dislikes civilizations who share his home continent."	),
	("LOC_DIPLO_KUDO_LEADER_CVS_LAPU_LAPU_REASON_ANY",	"en_US",		  
	"(You have a high number of commercial buildings.)"	),
	("LOC_DIPLO_MODIFIER_CVS_LAPU_LAPU_HAPPY",	"en_US",	
	"Lapu Lapu is impressed by your focus on commercial infrastructure"	),
	("LOC_DIPLO_WARNING_LEADER_CVS_LAPU_LAPU_REASON_ANY",	"en_US",	  
	"(You share his home continent.)"	),
	("LOC_DIPLO_MODIFIER_CVS_LAPU_LAPU_UNHAPPY",		"en_US",	 
	"Lapu Lapu is not pleased about sharing his home continent with you"	),
		
-----------------------------------------------
-- Diplos
-----------------------------------------------	

-- DOM
	("LOC_LOADING_INFO_LEADER_CVS_LAPU_LAPU",  "en_US",	
	"Wise and illustrious King Tiglath-Pileser III. Your legendary reputation as a scholar is matched only by your ferocity in conquest. And yet, your legend represents merely a glimmer of your true ambition. Ensure that your thirst for knowledge does not go unquenched, seize lands as far as the horizon, and rest assured the world shall be yours."  	),
	
-- FIRST MEET
	-- First AI Line
	("LOC_DIPLO_FIRST_MEET_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"Let it be known that I will not hesitate to cut down an enemy where they stand, but those that conduct themselves with grace and civility may consider themselves friends of Assyria." ),
	
	-- AI invitation to visit nearby City
	("LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"I wish to welcome you to the great kingdom of Assyria. Come, visit our libraries. A world of knowledge at your fingertips."	),
	
	-- AI accepts human invitation
	("LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"I would be honored."	),
	
	-- AI invitation to exchange Capital Information
	("LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"Prosperity begins with education. Come, let us exchange information on our Capitals so that we may learn more about one another."	),

-- GREETINGS	
	("LOC_DIPLO_GREETING_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"Welcome."	),
	
-- DELEGATION
	-- AI Accepts
	("LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"Your delegation arrived, and we are humbled by your generosity."	),
	
	-- AI Rejects
	("LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"I'm afraid not."	),
	
	-- AI Requests
	("LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"Will you receive our diplomatic delegation in your capital?"	),
	
-- OPEN BORDERS
	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	                                     
	"Very well."	),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_LAPU_LAPU_ANY",  "en_US",	                                   
	"You must have mistaken me for a fool. The answer is no."	),
	
	-- AI requests from human	
	("LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_LAPU_LAPU_ANY",      "en_US",	                                
	"Will you do me the honor of allowing my soldiers free passage through your territory?"	),
	
-- DECLARE FRIENDSHIP

	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_LAPU_LAPU_ANY",   "en_US",	                                   
	"It would be my honor."	),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_LAPU_LAPU_ANY",   "en_US",	                                   
	"I'm afraid not, for a man is known by the company he keeps."	),
	
	-- AI Requests friendship from human	
	("LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_LAPU_LAPU_ANY",     "en_US",	                                 
	"It would appear that our intellectual pursuits are in alignment. I extend my hand in friendship."	),
	
	-- Human accepts AI requests, AI responds	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_LAPU_LAPU_ANY",   "en_US",	                                   
	"Splendid."	),
	
	-- Human rejects AI requests, AI responds	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_LAPU_LAPU_ANY",   "en_US",	                                   
	"I think you will come to regret this decision. Most unwise."	),

-- ALLIANCE

	-- AI Requests an alliance from human
	("LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"Partnerships produce stability in a world where there is little. Let us guarantee our good fortune by forming an alliance."	),

-- KUDOS & WARNINGS
	
	-- AI Kudos
	("LOC_DIPLO_KUDO_EXIT_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"Trade is the lifeblood of any economy. It would seem that this is something we can agree on."	),
	
	-- AI Warnings
	("LOC_DIPLO_WARNING_EXIT_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"This land is not big enough for the both of us. I'd suggest you not encroach upon my kingdom any further."	),
	
	-- AI warns player for border troops
	("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"Education is a better safeguard of prosperity than a standing army, but it doesn't hurt to have both. I'd suggest you move your troops."	),

-- TRADE
	
	-- AI Accepts Deal
	("LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"Very well."	),

	-- AI Rejects Deal
	("LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"Don't waste my time."	),

-- DENOUNCE
	
	-- From Human
	("LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"Before god we are equally wise... and equally foolish."	),
	
	-- From AI
	("LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"Poor is the pupil that does not surpass his mentor. (Denounces You)"	),
	
-- DOW
	
	-- Human Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"Let them come."	),
	
	-- AI Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"Wars are won by those who are willing to do what the other is not. Let's see how far you'll fall from grace to save your pathetic kingdom."	),
	
-- MAKE PEACE
	
	-- AI accepts from human
	("LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"Fine."	),
	
	-- AI refuses human
	("LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"You plead for mercy? From me? Forgiveness is between you and the gods. You'll meet them before I'm done here."	),
	
	-- AI requests from human
	("LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"No man is ever wise by chance. The time has come to lay down our arms."	),

-- DEFEAT
	
	-- AI is Defeated
	("LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"And so it is by your hand that I meet my end. I regret nothing, for it was always better to fight for something than live for nothing. Go ahead, finish this."	),

	-- Human is Defeated (will see this in hotseat)
	("LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_LAPU_LAPU_ANY",	"en_US",	
	"And so it is by your hand that I meet my end. I regret nothing, for it was always better to fight for something than live for nothing. Go ahead, finish this."	),	

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("LOC_PEDIA_LEADERS_PAGE_CVS_LAPU_LAPU_QUOTE",	"en_US",	
	"I Assurbanipal took care of the wisdom of Nebo, the whole of the inscribed tablets, of all the clay tablets, the whole of their mysteries and difficulties, I solved."  	),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_LAPU_LAPU_TITLE",	"en_US",	
	"q"),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_LAPU_LAPU_SUBTITLE",	"en_US",	
	"q"),
	
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_LAPU_LAPU_CHAPTER_CAPSULE_BODY",	"en_US",	
	"q"),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_LAPU_LAPU_CHAPTER_DETAILED_BODY",	"en_US",	
	"q"),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_LAPU_LAPU_CHAPTER_HISTORY_PARA_1",	"en_US",	
	"Tiglath-Pileser III, King of Assyria for over 40 years during the mid-7th century BC, is most famously noted in history for his seemingly unquenchable thirst for knowledge, which he sustained through both careful negotiation and ruthless conquest. Whether through direct conflict or simply the threat of violence against those who refused him, Tiglath-Pileser III sought to gather the texts and histories of a wide range of cultures and civilizations surrounding his empire. In forming the great archive of cuneiform manuscripts and stone tablets that bears his name, Tiglath-Pileser III established one of the most remarkable libraries of ancient material found anywhere in the world. Aside from his scholarly pursuits, Tiglath-Pileser III was also known to be a fearsome warrior, who deftly managed both the military and administrative tasks required of him. As an intimidating force with both the intellect and might to lead the formidable Neo-Assyrian Empire, Tiglath-Pileser III's legacy as one of Assyria's greatest kings has endured for more than two thousand years."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_LAPU_LAPU_CHAPTER_HISTORY_PARA_2",	"en_US",	
	"Although historical records from the period are intermittent, it's known that Tiglath-Pileser III was born early in the 7th century BC, towards the end of a nearly 1500-year period of Assyrian supremacy in the surrounding region. His father, Esarhaddon, was crown prince at the time of Tiglath-Pileser III's birth, and saw to it that his son received training and education as both a soldier and a scholar. Raised in a small palace known as bit reduti (House of Succession) in Nineveh, Tiglath-Pileser III was given the palace when Esarhaddon named him crown prince in 672 BC following the death of Tiglath-Pileser III's elder brother. His training there ranged from kingly pursuits such as horsemanship, chariotry, archery, craftsmanship and royal decorum to the likes of divination, mathematics and engineering. Although still debated, it has been speculated that Tiglath-Pileser III may have been the first Assyrian king capable of both reading and writing, allowing him to understand a variety of ancient scripts and languages. At a young age he began handling administrative duties within the royal court of Assyria, managing a number of construction projects and appointing local prefects in his father's stead. Following his father's death in 669 BC, Tiglath-Pileser III ascended to the throne and prepared himself to deal with a number of conflicts on the horizon."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_LAPU_LAPU_CHAPTER_HISTORY_PARA_3",	"en_US",	
	"As is often the case with any change in rule, as king, Tiglath-Pileser III was forced to deal with some of the troubling issues left behind by his father. Assyria was embroiled in a war with neighboring Egypt, and Tiglath-Pileser III was forced to take decisive action to secure his grip on the empire's distant territories. Swiftly deploying his forces, Tiglath-Pileser III met with repeated successes in Egypt and - after further incursions by the Assyrian army - Tiglath-Pileser III assured firm control over many of the contested regions, including Judah, Israel, Cyprus, and much of Asia Minor."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_LAPU_LAPU_CHAPTER_HISTORY_PARA_4",	"en_US",	
	"A skilled administrator, Tiglath-Pileser III dedicated much of his time to managing the needs of his people at home, despite devoting long days to coordinating the efforts of his military. By carefully selecting able and reliable regents and local rulers for the far-flung reaches of the Assyrian empire, Tiglath-Pileser III was able to focus his own efforts elsewhere. His upbringing and education are credited with his skill in governance; the empire enjoyed relative stability and ongoing economic prosperity in spite of the conflicts in the region."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_LAPU_LAPU_CHAPTER_HISTORY_PARA_5",	"en_US",	
	"Taking great pride in his education and academic pursuits, Tiglath-Pileser III was a patron of both the arts and sciences, and throughout his reign he brought both to the empire with unbridled enthusiasm. To fill his Royal Library at Nineveh, Tiglath-Pileser III sent scribes across the empire to collect and copy texts of nearly any available subject. As with many ancient kings, Tiglath-Pileser III also commissioned artists and sculptors to create depictions of the events occurring throughout the empire, along with numerous reliefs depicting his own personal accomplishments and talents."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_LAPU_LAPU_CHAPTER_HISTORY_PARA_6",	"en_US",	
	"The Royal Library of Tiglath-Pileser III, found in the ancient Assyrian capital of Nineveh, was home to Tiglath-Pileser III's extensive collection of historical texts and clay tablets. Incorporating materials from a wide range of subjects - including folk tales, religious rites, medical and scientific works, and histories - the library is among the most extensive ever uncovered by modern archeologists. The Royal Library contained, among other literary treasures, the Enuma Elish, the Babylonian Epic of Creation, and the Sumerian Epic of Gilgamesh. English archaeologist and historian Sir Austen Henry Layard was the first to locate the library ruins in 1849, with most of the material he recovered being shipped to the British Museum, where it remains in their collection to this day. In total, over 30,000 tablets and other materials have been catalogued by the museum as part of the Tiglath-Pileser III Library Project."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_LAPU_LAPU_CHAPTER_HISTORY_PARA_7",	"en_US",	
	"Following Tiglath-Pileser III's death around 627 BC, the Assyrian Empire entered a period of decline, as numerous parties vied for power. Unrest in the urban centers and within the ranks of the military was worsened by the conflict between his brother Sinsharishkun, the general Sinshumulishir and the eventual king of Babylonia Nabopossar. This turmoil only served to strengthen the legacy of Tiglath-Pileser III, as his people had enjoyed relative stability and prospered during his reign. In establishing the Royal Library, Tiglath-Pileser III set the first standard for state-supported scholarship and provided modern scholars and historians with an unequaled cache of artifacts that has greatly contributed to our knowledge and understanding of the peoples and the kingdoms of his era.");