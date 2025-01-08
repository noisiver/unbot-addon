
local _, YssBossLoot = ...

local L = LibStub("AceLocale-3.0"):GetLocale("YssBossLoot", true)
local BZ = LibStub("LibBabble-Zone-3.0", true):GetLookupTable()


------------------------------------------------------------
-------------------------Map Types--------------------------
------------------------------------------------------------
YssBossLoot.MapTypes = {
	['Dungeon'] = L['Dungeon'],
	['Raid'] = L['Raid'],
	['Battlegrounds'] = BATTLEGROUNDS,
}

YssBossLoot.Ext = {
	"Classic",
	"The Burning Crusade",
	"Wrath of the Lich King",
}

------------------------------------------------------------
-------------------------Map Levels--------------------------
------------------------------------------------------------
YssBossLoot.MapLevels = {
	["Dungeon"] = {
		["Wrath of the Lich King"] = {
			["The Culling of Stratholme"] = "79|80";
			["Azjol-Nerub"] = "73|73";
			["Halls of Reflection"] = "79|80";
			["Drak'Tharon Keep"] = "74|76";
			["Trial of the Champion"] = "79|80";
			["Utgarde Keep"] = "69|72";
			["Halls of Stone"] = "77|79";
			["Pit of Saron"] = "79|80";
			["The Forge of Souls"] = "79|80";
			["Utgarde Pinnacle"] = "79|80";
			["The Oculus"] = "79|80";
			["Ahn'kahet: The Old Kingdom"] = "73|75";
			["The Nexus"] = "71|73";
			["The Violet Hold"] = "75|77";
			["Halls of Lightning"] = "79|80";
			["Gundrak"] = "76|78";
		};
		["The Burning Crusade"] = {
			["The Steamvault"] = "67|75";
			["Shadow Labyrinth"] = "67|75";
			["Auchenai Crypts"] = "65|67";
			["The Blood Furnace"] = "61|63";
			["Hellfire Ramparts"] = "59|62";
			["The Shattered Halls"] = "67|75";
			["Old Hillsbrad Foothills"] = "66|68";
			["Mana-Tombs"] = "64|66";
			["Sethekk Halls"] = "67|68";
			["The Botanica"] = "67|75";
			["The Underbog"] = "63|65";
			["The Mechanar"] = "67|75";
			["The Slave Pens"] = "62|64";
			["The Black Morass"] = "68|75";
			["The Arcatraz"] = "68|75";
			["Magisters' Terrace"] = "70|70";
		};
		["Classic"] = {
			["Dire Maul"] = "55|65";
			["The Stockade"] = "22|25";
			["Blackrock Spire"] = "57|63";
			["Razorfen Downs"] = "34|37";
			["The Deadmines"] = "17|20";
			["Scarlet Monastery"] = "32|35";
			["Scholomance"] = "55|65";
			["Ragefire Chasm"] = "15|16";
			["Blackfathom Deeps"] = "21|24";
			["Shadowfang Keep"] = "18|21";
			["Razorfen Kraul"] = "24|27";
			["Gnomeregan"] = "25|28";
			["Wailing Caverns"] = "17|20";
			["Uldaman"] = "37|40";
			["Sunken Temple"] = "47|50";
			["Blackrock Depths"] = "53|56";
			["Stratholme"] = "55|65";
			["Maraudon"] = "45|48";
			["Zul'Farrak"] = "43|47";
		};
	};
	["Raid"] = {
		["Wrath of the Lich King"] = {
			["Ulduar"] = "80|83";
			["Icecrown Citadel"] = "80|83";
			["The Obsidian Sanctum"] = "80|83";
			["Vault of Archavon"] = "80|83";
			["The Ruby Sanctum"] = "80|83";
			["Onyxia's Lair"] = "80|83";
			["Naxxramas"] = "80|83";
			["Trial of the Crusader"] = "80|83";
			["The Eye of Eternity"] = "80|83";
		};
		["The Burning Crusade"] = {
			["The Eye"] = "70|73";
			["Serpentshrine Cavern"] = "70|73";
			["Gruul's Lair"] = "70|73";
			["Karazhan"] = "70|73";
			["Magtheridon's Lair"] = "70|73";
			["Black Temple"] = "70|73";
			["Zul'Aman"] = "70|73";
			["Hyjal Summit"] = "70|73";
			["Sunwell Plateau"] = "70|73";
		};
		["Classic"] = {
			["Blackwing Lair"] = "60|63";
			["Zul'Gurub"] = "57|63";
			["Ruins of Ahn'Qiraj"] = "60|63";
			["Temple of Ahn'Qiraj"] = "60|63";
			["Molten Core"] = "60|63";
		};
	};
	["Battlegrounds"] = {
		["Strand of the Ancients"] = "71|80";
		["Arathi Basin"] = "20|80";
		["Warsong Gulch"] = "10|80";
		["Isle of Conquest"] = "71|80";
		["Eye of the Storm"] = "61|80";
		["Alterac Valley"] = "51|80";
	};
}

------------------------------------------------------------
----------------------Map Zone ID's--------------------------
------------------------------------------------------------
YssBossLoot.IDs = {}
YssBossLoot.IDs.Dungeon = {
	["Ahn'kahet: The Old Kingdom"] = 522,
	["Azjol-Nerub"] = 533,
	["Drak'Tharon Keep"] = 534,
	["Gundrak"] = 530,
	["Halls of Lightning"] = 525,
	["Halls of Stone"] = 526, -- Great Name Blizz
	["The Culling of Stratholme"] = 521,
	["The Nexus"] = 520,
	["The Oculus"] = 528, -- Great Name Blizz
	["The Violet Hold"] = 536,
	["Utgarde Keep"] = 523,
	["Utgarde Pinnacle"] = 524,
	["Trial of the Champion"] = 542,
	["The Forge of Souls"] = 601,
	["Pit of Saron"] = 602,
	["Halls of Reflection"] = 603,
}

YssBossLoot.IDs.Raid = {
	["Icecrown Citadel"] = 604,
	["Naxxramas"] = 535,
	["The Eye of Eternity"] = 527,
	["The Obsidian Sanctum"] = 531,
	["The Ruby Sanctum"] = 609,
	["Ulduar"] = 529,
	["Vault of Archavon"] = 532,
	["Trial of the Crusader"] = 543,
}

YssBossLoot.IDs.Battlegrounds = {
	["Alterac Valley"] = 401,
	["Arathi Basin"] = 461,
	["Eye of the Storm"] = 482,
	["Strand of the Ancients"] = 512,
	["Warsong Gulch"] = 443,
	["Isle of Conquest"] = 540,
}

YssBossLoot.IDs.type = {}
YssBossLoot.IDs.rDungeon = {}
for k, v in pairs(YssBossLoot.IDs.Dungeon) do
	YssBossLoot.IDs.rDungeon[v] = k
	YssBossLoot.IDs.type[v] = 'Dungeon'
end
YssBossLoot.IDs.rRaid = {}
for k, v in pairs(YssBossLoot.IDs.Raid) do
	YssBossLoot.IDs.rRaid[v] = k
	YssBossLoot.IDs.type[v] = 'Raid'
end
YssBossLoot.IDs.rBattlegrounds = {}
for k, v in pairs(YssBossLoot.IDs.Battlegrounds) do
	YssBossLoot.IDs.rBattlegrounds[v] = k
	YssBossLoot.IDs.type[v] = 'Battlegrounds'
end

------------------------------------------------------------
----------------------Map Levels----------------------------
------------------------------------------------------------
YssBossLoot.Levels = {}
YssBossLoot.Levels.Dungeon = {
	["Ahn'kahet: The Old Kingdom"] = 2,
	["Azjol-Nerub"] = {3,2,1},
	["Drak'Tharon Keep"] = 2,
	["Gundrak"] = 1,
	["Halls of Lightning"] = 2,
	["Halls of Stone"] = 1,
	["The Culling of Stratholme"] = {0,1},
	["The Nexus"] = 1,
	["The Oculus"] = 4,
	["The Violet Hold"] = 1,
	["Utgarde Keep"] = 3,
	["Utgarde Pinnacle"] = 2,
	["Trial of the Champion"] = 1,
	["The Forge of Souls"] = 1,
	["Pit of Saron"] = 0,
	["Halls of Reflection"] = 1,
}

YssBossLoot.Levels.Raid = {
	["Icecrown Citadel"] = 8,
	["Naxxramas"] = {5,1,2,3,4,6},
	["The Eye of Eternity"] = 1,
	["The Obsidian Sanctum"] = 0,
	["The Ruby Sanctum"] = 0,
	["Ulduar"] = {0,1,2,4,3,5},
	["Vault of Archavon"] = 1,
	["Trial of the Crusader"] = 2,
}

YssBossLoot.Levels.Battlegrounds = {
	["Alterac Valley"] = 0,
	["Arathi Basin"] = 0,
	["Eye of the Storm"] = 0,
	["Strand of the Ancients"] = 0,
	["Warsong Gulch"] = 0,
	["Isle of Conquest"] = 0,
}

------------------------------------------------------------
-------------------------Map Bosses-------------------------
------------------------------------------------------------
YssBossLoot.Bosses = {}
YssBossLoot.Bosses.Dungeon = { -- format is maplevel1:map1X:map1Y|maplevel2:map2X:map2Y...
	["Ahn'kahet: The Old Kingdom"] = {
		["Amanitar"]="1:6685:7842",
		["Elder Nadox"]="1:6928:2744",
		["Herald Volazj"]="1:2362:5056|2:3992:5117",
		["Jedoga Shadowseeker"]="1:4827:7343|2:6749:7586",
		["Prince Taldaram"]="1:6279:4959",
	},
	["Drak'Tharon Keep"] = {
		["King Dred"]="1:6093:8657",
		["Novos the Summoner"]="1:6960:4740",
		["The Prophet Tharon'ja"]="2:4754:1345",
		["Trollgore"]="1:5663:1795",
	},
	["Azjol-Nerub"] = {
		["Krik'thir the Gatewatcher"]="3:5027:4470",
		["Hadronox"]="2:4335:5919",
		["Anub'arak"]="1:6203:4839",
	},
	["Gundrak"] = {
		["Drakkari Elemental"]="1:4649:6540",
		["Eck the Ferocious"]="1:2532:7015",
		["Gal'darah"]="1:4657:2781",
		["Moorabi"]="1:3959:4934",
		["Slad'ran"]="1:5372:4886",
	},
	["Halls of Lightning"] = {
		["General Bjarngrim"]="1:4357:3705",
		["Ionar"]="2:6101:7757",
		["Loken"]="2:1924:5202",
		["Volkhan"]="2:3765:2124",
	},
	["Halls of Stone"] = {
		["Krystallus"]="1:4000:6066",
		["Maiden of Grief"]="1:5014:8621",
		["Sjonnir The Ironshaper"]="1:4989:1333",
		["The Tribunal of Ages"]="1:8477:7623",
	},
	["The Culling of Stratholme"] = {
		["Chrono-Lord Epoch"]="2:6571:2550",
		["Infinite Corruptor"]="2:5176:4156",
		["Mal'Ganis"]="2:3229:4606",
		["Meathook"]="2:6166:4898",
		["Salramm the Fleshcrafter"]="2:4681:6017",
	},
	["The Nexus"] = {
		["Anomalus"]="1:6149:2185",
		["Commanders"]="1:1899:5080",
		["Grand Magus Telestra"]="1:2751:4022",
		["Keristrasza"]="1:3611:6771",
		["Ormorok the Tree-Shaper"]="1:5622:7282",
	},
	["The Oculus"] = {
		["Drakos the Interrogator"]="1:4892:7586",
		["Ley-Guardian Eregos"]="4:4714:2087",
		["Mage-Lord Urom"]="3:7066:2756",
		["Varos Cloudstrider"]="2:4608:1917",
	},
	["The Violet Hold"] = {
		["Cyanigosa"]="1:4576:5579",
		["Erekem"]="1:2459:6297",
		["Ichoron"]="1:5598:3961",
		["Lavanthor"]="1:6271:7635",
		["Moragg"]="1:7033:5190",
		["Xevozz"]="1:3343:4691",
		["Zuramat the Obliterator"]="1:2840:3486",
	},
	["Utgarde Keep"] = {
		["Skarvald the Constructor"]="2:5825:6139",
		["Ingvar the Plunderer"]="3:7228:3803",
		["Prince Keleseth"]="1:2881:6272",
	},
	["Utgarde Pinnacle"] = {
		["Gortok Palehoof"]="2:6060:6893",
		["King Ymiron"]="2:4097:5348",
		["Skadi the Ruthless"]="2:6863:3645",
		["Svala Sorrowgrave"]="1:3619:6990",
	},
	["Trial of the Champion"] = {
		["Grand Champions"] = "1:5103:6424",
		["Eadric the Pure"] = "1:6003:5274",
		["Argent Confessor Paletress"] = "1:4203:5274",
		["The Black Knight"] = "1:5103:4124",
	},
	["The Forge of Souls"] = {
		["Bronjahm"] = "1:4349:4995",
		["Devourer of Souls"] = "1:4365:1260",
	},
	["Pit of Saron"] = {
		["Forgemaster Garfrost"] = "0:6766:5518",
		["Krick and Ick"] = "0:4738:4034",
		["Scourgelord Tyrannus"] = "0:4414:2623",
	},
	["Halls of Reflection"] = {
		["The Lich King"] = "1:1007:2756",
		["Marwyn"] = "1:4284:6285",
		["Falric"] = "1:3497:7501",
	},
}

YssBossLoot.Bosses.Raid = {
	["Icecrown Citadel"] = {
		["Lord Marrowgar"] = "1:3896:6002",
		["Lady Deathwhisper"] = "1:3896:8671",
		["Deathbringer Saurfang"] = "3:5134:2192",
		["Icecrown Gunship Battle"] ="2:4530:5471",--
		["Blood Prince Council"] = "5:5184:1444",--??
		["Blood-Queen Lana'thel"] = "6:5114:4396",--
		["Valithria Dreamwalker"] = "5:7668:7386",--
		["Sindragosa"] = "4:3656:2338",
		["Rotface"] = "5:1980:4196",
		["Festergut"] = "5:1980:6550",
		["Professor Putricide"] = "5:1324:5366",
		["The Lich King"] = "7:4984:5292",
	},
	["The Eye of Eternity"] = {
		["Malygos"] = "1:3853:5000",
	},
	["The Obsidian Sanctum"] = {
		["Sartharion"] = "0:5051:4779",
		["Tenebron"] = "0:4157:4818",
		["Shadron"] = "0:5198:3321",
		["Vesperon"] = "0:5303:6198",
	},
	["The Ruby Sanctum"] = {
		["Halion"] = "0:4925:5388",
		["Saviana Ragefire"] = "0:3647:5367",
		["General Zarithrian"] = "0:4953:8021",
		["Baltharus the Warborn"] = "0:6573:5388",
	},
	["Vault of Archavon"] = {
		["Archavon the Stone Watcher"] = "1:4912:1716",
		["Emalon the Storm Watcher"] = "1:6255:5528",
		["Koralon the Flame Watcher"] = "1:3596:5541",
		["Toravon the Ice Watcher"] = "1:6255:3676",
	},
	["Naxxramas"] = {
		["Patchwerk"] = "1:5395:4216|5:4311:2656",
		["Grobbulus"] = "1:6166:5275|5:4737:3241",
		["Gluth"] = "1:4584:4423|5:3863:2771",
		["Thaddius"] = "1:2645:1503|5:2792:1158",

		["Anub'Rekhan"] = "2:3059:4703|5:5517:2933",
		["Grand Widow Faerlina"] = "2:4397:3620|5:6257:2335",
		["Maexxna"] = "2:6847:1552|5:7610:1193",

		["Instructor Razuvious"] = "3:4268:4581|5:3647:6783",
		["Gothik the Harvester"] = "3:6741:5980|5:5135:7625",
		["The Four Horsemen"] = "3:3019:7696|5:2895:8658",

		["Noth the Plaguebringer"] = "4:3465:5664|5:5692:7394",
		["Heigan the Unclean"] = "4:4973:4581|5:6599:6742",
		["Loatheb"] = "4:7569:2866|5:8162:5710",

		["Sapphiron"] = "6:5663:6759",
		["Kel'Thuzad"] = "6:3659:2270",
	},
	["Ulduar"] = {
		["Flame Leviathan"] = "1:4925:3888",
		["Razorscale"] = "1:5436:2683",
		["Ignis the Furnace Master"] = "1:3830:2671",
		["XT-002 Deconstructor"] = "1:4852:1455",

		["Assembly of Iron"] = "2:1550:5701",
		["Kologarn"] = "2:3724:1248",
		["Algalon the Observer"] = "2:7917:4630",

		["Auriaya"] = "3:5119:5701",
		["Hodir"] = "3:6693:6406",
		["Thorim"] = "3:7187:4873",
		["Freya"] = "3:5322:2306",

		["Mimiron"] = "5:4357:4143",

		["General Vezax"] = "4:5687:6066",
		["Yogg-Saron"] = "4:6806:4070|6:5395:6467",
	},
	["Trial of the Crusader"] = {
		["The Northrend Beasts"] = "1:5103:6424",
		["Lord Jaraxxus"] = "1:4203:5274",
		["Faction Champions"] = "1:6003:5274",
		["The Twin Val'kyr"] = "1:5103:4124",
		["Anub'arak"] = "2:5306:3535",
	},
}