local _, L = ...;

if GetLocale() == "enUS" then

    -----------------------------------------------------------------------------------------------
    --- Bindings.lua ---
    -----------------------------------------------------------------------------------------------

    L["Un Bot Command ActionButton 1"] = "UnBot Command ActionButton 1";
    L["Un Bot Command ActionButton 2"] = "UnBot Command ActionButton 2";
    L["Un Bot Command ActionButton 3"] = "UnBot Command ActionButton 3";
    L["Un Bot Command ActionButton 4"] = "UnBot Command ActionButton 4";
    L["Un Bot Command ActionButton 5"] = "UnBot Command ActionButton 5";
    L["Un Bot Command ActionButton 6"] = "UnBot Command ActionButton 6";
    L["Un Bot Command ActionButton 7"] = "UnBot Command ActionButton 7";
    L["Un Bot Command ActionButton 8"] = "UnBot Command ActionButton 8";
    L["Un Bot Command ActionButton 9"] = "UnBot Command ActionButton 9";
    L["Un Bot Command ActionButton 10"] = "UnBot Command ActionButton 10";
    L["Un Bot Close Frame ActionButton"] = "UnBot Close Frame ActionButton";

    -----------------------------------------------------------------------------------------------
    --- EquipInventory.xml ---
    -----------------------------------------------------------------------------------------------

    L["Left mouse button: Make "] = "Left mouse button: Make ";
    L[" equip this item."] = " equip this item.";
    L["e "] = "e ";
    
    -----------------------------------------------------------------------------------------------
    --- ExecuteCommand.lua ---
    -----------------------------------------------------------------------------------------------

    -- CommandUnBotSetting
    L["InspectFrame_Show "] = "InspectFrame_Show ";
    L[", Name "] = ", Name ";

    -- CommandShowStrategyFrame & CommandInspectFrame & CommandInitForLevel & CommandUnBotItemList
    L["NO_TARGET"] = "You have no target.";
    L["NEED_BOT_TARGET"] = "You need to target a bot.";
    L["TARGET_NOT_IN_GROUP"] = "The target is not in your group.";

    -- CommandFriendsOnline
    L[".playerbot bot add "] = ".playerbot bot add ";
    L["NO_FRIENDS_FOUND"] = "You have no friends.";

    -- CommandCombatStop
    L["In the group "] = "In the group ";
    L[" out of combat"] = " out of combat";

    -- CommandUnBotItemList
    L["View items"] = "View items";
    
    -----------------------------------------------------------------------------------------------
    --- ImplantInspectFrame.lua ---
    -----------------------------------------------------------------------------------------------

    -- UnBotInitInspectFrame
    L["Embedded the module into the character window"] = "Embedded the module into the character window";

    -- UnBotInspectPaperDollFrame_OnShow
    L["In the equipment slot: Left mouse button to change the equipment and right mouse button to remove the equipment."] = "In the equipment slot: Left mouse button to change the equipment and right mouse button to remove the equipment.";

    -----------------------------------------------------------------------------------------------
    --- NPCFrame.lua ---
    -----------------------------------------------------------------------------------------------

    -- NPCCommand_OnEnter
    L["Creates a "] = "Creates a ";
    L[" bot."] = " bot.";
    L["Before using the command, you need to target yourself or a bot."] = "Before using the command, you need to target yourself or a bot.";
    L["Uses:"] = "Uses:";

    -----------------------------------------------------------------------------------------------
    --- Online.lua ---
    -----------------------------------------------------------------------------------------------

    -- UnBotShowOnlineFrame
    L["Failed to open the Online window."] = "Failed to open the Online window.";

    -----------------------------------------------------------------------------------------------
    --- QueryReward.lua ---
    -----------------------------------------------------------------------------------------------

    -- ShowQuestReward
    L["Select reward for completing quests"] = "Select reward for completing quests";
    L["Complete quest reward panelLabel "] = "Complete quest reward panelLabel ";
    L["TitleLabel Not found, failed to set player name "] = "TitleLabel Not found, failed to set player name ";

    -- UnBotShowQuestRewardTips
    L["ITEM_NOT_ON_CLIENT_REFRESH"] = "This item has not appeared on your client. You need to wait for a moment to query the server and then move the mouse to this item again.";
    L["Left mouse button: Select "] = "Left mouse button: Select ";
    L[" as the quest reward"] = " as the quest reward";

    -----------------------------------------------------------------------------------------------
    --- Strategy.lua ---
    -----------------------------------------------------------------------------------------------
    
    -- StrategyOption_OnEnter
    L["Active"] = "Active";
    L["Inactive"] = "Inactive";
    L["Some strategies are ineffective for certain classes and some are mutually exclusive."] = "Some strategies are ineffective for certain classes and some are mutually exclusive.";
    L["LMB: Deactivate"] = "LMB: Deactivate";
    L["LMB: Activate"] = "LMB: Activate";

    -----------------------------------------------------------------------------------------------
    --- StrategyTips.lua ---
    -----------------------------------------------------------------------------------------------
    
    -- InitializeStrategy
    L["grind_title"] = "Aggressive";
    L["grind_desc"] = "When the bot has no target it will attack any nearby target.";
    L["attack_weak_title"] = "Free Targeting";
    L["attack_weak_desc"] = "The bot will pick their own target to attack while in combat.";
    L["attack_force_title"] = "Passive";
    L["attack_force_desc"] = "The bot will not automatically pick a target while in combat, the target has to be set by you.";
    L["tank_title"] = "Single Enemy";
    L["tank_desc"] = "The bot will not aggro more than one enemy at a time.";
    L["tank_aoe_title"] = "Multiple Enemies";
    L["tank_aoe_desc"] = "The bot will aggro all available enemies at the same time.";
    L["tank_assist_title"] = "Assist Tank";
    L["tank_assist_desc"] = "The bot will assist the tank in the group.";
    L["dps_title"] = "DPS";
    L["dps_desc"] = "The bot will damage their target while in combat.";
    L["dps_aoe_title"] = "AoE (DPS)";
    L["dps_aoe_desc"] = "The bot will damage their target while in combat and use area of effect abilities if there are multiple targets.";
    L["dps_assist_title"] = "Assist DPS";
    L["dps_assist_desc"] = "The bot will assist the dps in the group."; -- Needs correction
    L["dps_debuff_title"] = "Debuff (DPS)";
    L["dps_debuff_desc"] = "The bot will cast debuffs on their target while in combat.";
    L["heal_title"] = "Healer";
    L["heal_desc"] = "The bot will no longer deal damage while in combat but will instead focus on healing injured members of the group.";
    L["aoe_title"] = "AOE Damage";
    L["aoe_desc"] = "Bots use AOE damage while in combat."; -- Needs correction
    L["flee_title"] = "Move Away";
    L["flee_desc"] = "The bot will try to move away from their target while in combat."; -- ???
    L["fire_title"] = "Fire";
    L["fire_desc"] = "The bot will use fire-based spells to deal damage while in combat. (Mage only)";
    L["fire_aoe_title"] = "Fire (AOE)";
    L["fire_aoe_desc"] = "The bot will use fire-based area of effect spells if there are multiple targets. (Mage only)";
    L["frost_title"] = "Frost";
    L["frost_desc"] = "The bot will use frost-based spells to deal damage while in combat. (Mage only)";
    L["frost_aoe_title"] = "Frost (AOE)";
    L["frost_aoe_desc"] = "The bot will use frost-based area of effect spells if there are multiple targets. (Mage only)";
    L["arcane_title"] = "Arcane";
    L["arcane_desc"] = "The bot will use arcane-based spells to deal damage while in combat. (Mage only)";
    L["threat_title"] = "Threat Control";
    L["threat_desc"] = "The bot will be conservative while in combat to prevent gaining too much threat.";
    L["conserve_mana_title"] = "Conserve Mana";
    L["conserve_mana_desc"] = "The bot will use mana sparingly while in combat.";
    L["shadow_title"] = "Shadow";
    L["shadow_desc"] = "Bots uses shadow-based spells to deal damage while in combat. (Warlock and Priest only)";
    L["shadow_aoe_title"] = "Shadow (AoE)";
    L["shadow_aoe_desc"] = "The bot will use shadow-based area of effect spells if there are multiple targets. (Warlock and Priest only)";
    L["shadow_debuff_title"] = "Debuff (Shadow)";
    L["shadow_debuff_desc"] = "The bot will cast shadow-based debuffs on their target while in combat. (Warlock and Priest only)";
    L["melee_title"] = "Melee";
    L["melee_desc"] = "The bot will always move close to their target while in combat. (Shaman only)";
    L["melee_aoe_title"] = "Melee (AoE)";
    L["melee_aoe_desc"] = "The bot will always move close to their target while in combat and will use area of effect abilities to damage their target. (Shaman only)";
    L["rshadow_title"] = "Shadow Resistance";
    L["rshadow_desc"] = "The bot will use Shadow Resistance Aura while in combat. (Paladin only)";
    L["rfrost_title"] = "Frost Resistance";
    L["rfrost_desc"] = "The bot will use Frost Resistance Aura while in combat. (Paladin only)";
    L["rfire_title"] = "Fire Resistance";
    L["rfire_desc"] = "The bot will use Fire Resistance Aura while in combat. (Paladin only)";
    L["barmor_title"] = "Devotion Aura";
    L["barmor_desc"] = "The bot will use Devotion Aura while in combat. (Paladin only)";
    L["bspeed_title"] = "Crusader Aura";
    L["bspeed_desc"] = "The bot will use Crusader Aura while in combat. (Paladin only)";
    L["rnature_title"] = "Nature Resistance";
    L["rnature_desc"] = "机器人在战斗中开启自然抗性光环。(针对猎人机器人)"; -- Needs correction
    L["bhealth_title"] = "Buff (Health)";
    L["bhealth_desc"] = "The bot will use buffs that increases health while in combat."; -- ???
    L["bmana_title"] = "Buff (Mana)";
    L["bmana_desc"] = "The bot will use buffs that increases mana while not in combat."; -- ???
    L["bdps_title"] = "Buff (Damage)";
    L["bdps_desc"] = "The bot will use buffs that increases damage while not in combat."; -- ???
    L["bear_title"] = "Bear Form";
    L["bear_desc"] = "The bot will use Bear Form or Dire Bear Form while in combat. (Druid only)";
    L["cat_title"] = "Cat Form";
    L["cat_desc"] = "The bot will use Cat Form while in combat. (Druid only)";
    L["cat_aoe_title"] = "Cat Form (AoE)";
    L["cat_aoe_desc"] = "The bot will use Cat Form while in combat and focus on using area of effect abilities. (Druid only)";
    L["caster_title"] = "Ranged";
    L["caster_desc"] = "The bot will cast ranged spells on their target while in combat. (Druid and Shaman only)";
    L["caster_aoe_title"] = "Ranged (AoE)";
    L["caster_aoe_desc"] = "The bot will use area of effect spells if there are multiple targets.";
    L["caster_debuff_title"] = "Debuff (Ranged)";
    L["caster_debuff_desc"] = "The bot will cast ranged debuffs on their target while in combat. (Druid and Shaman only)";
    L["totems_title"] = "Totems";
    L["totems_desc"] = "The bot will place totems on the ground while in combat. (Shaman only)";
    L["loot_title"] = "Loot";
    L["loot_desc"] = "The bot will loot any nearby enemies while in combat.";
    L["naxx_title"] = "Naxxramas";
    L["naxx_desc"] = "The bots behavior will be specific to Naxxramas. (This is only valid inside Naxxramas)";

    -- ClassStrategyNC
    L["grind_nc_title"] = "Aggressive";
    L["grind_nc_desc"] = "The bot will check for nearby enemies to attack while not in combat.";
    L["move_random_nc_title"] = "Move Randomly";
    L["move_random_nc_desc"] = "The bot will run around randomly when it is bored and not in combat.";
    L["attack_weak_nc_title"] = "Free Targeting";
    L["attack_weak_nc_desc"] = "The bot will freely choose a target to attack when it enters combat.";
    L["attack_force_nc_title"] = "Passive";
    L["attack_force_nc_desc"] = "The bot will not perform any actions while not in combat and you have to manually specify a target for them.";
    L["bhealth_nc_title"] = "Buff (Health)";
    L["bhealth_nc_desc"] = "The bot will use buffs that increases health while not in combat."; -- ???
    L["bmana_nc_title"] = "Buff (Mana)";
    L["bmana_nc_desc"] = "The bot will use buffs that increases mana while not in combat."; -- ???
    L["bdps_nc_title"] = "Buff (Damage)";
    L["bdps_nc_desc"] = "The bot will use buffs that increases damage while not in combat."; -- ???
    L["emote_nc_title"] = "Emote";
    L["emote_nc_desc"] = "The bot will perform emotes from time to time when it is bored and not in combat.";
    L["food_nc_title"] = "Rest";
    L["food_nc_desc"] = "The bot will receive food and drinks after leaving combat depending on their requirements.";
    L["loot_nc_title"] = "Loot";
    L["loot_nc_desc"] = "The bot will loot any nearby enemies after leaving combat.";
    L["stay_nc_title"] = "Stay";
    L["stay_nc_desc"] = "The bot will stand still while not in combat.";
    L["follow_nc_title"] = "Follow";
    L["follow_nc_desc"] = "The bot will follow you while not in combat.";
    L["quest_nc_title"] = "Quest";
    L["quest_nc_desc"] = "The bot will accept and turn in quests with NPCs you are interacting with.";
    L["naxx_nc_title"] = "Naxxramas";
    L["naxx_nc_desc"] = "The bots behavior will be specific to Naxxramas. (This is only valid inside Naxxramas)";

    -----------------------------------------------------------------------------------------------
    --- Tooltips.lua ---
    -----------------------------------------------------------------------------------------------
    
    -- UnBotTooltipTitle
    L["TooltipTitle_0"] = "Close windows and button groups";
    L["TooltipTitle_1"] = "Initialize all online bots";
    L["TooltipTitle_2"] = "Initialize a bot";
    L["TooltipTitle_3"] = "Initialize all bots";
    L["TooltipTitle_4"] = "Update a random bots";
    L["TooltipTitle_5"] = "Reset talents of a bot";
    L["TooltipTitle_6"] = "Add the remaining talents of a bot (1)";
    L["TooltipTitle_7"] = "Add the remaining talents of a bot (2)";
    L["TooltipTitle_8"] = "Add the remaining talents of a bot (3)";
    L["TooltipTitle_9"] = "Reset botAI of all bots";
    L["TooltipTitle_10"] = "Reset botAI of a bot";
    L["TooltipTitle_11"] = "Check equipment of a bot";
    L["TooltipTitle_12"] = "Initialize a bot";
    L["TooltipTitle_13"] = "Teleport all bots to you";
    L["TooltipTitle_14"] = "Teleport a bot to you";
    L["TooltipTitle_15"] = "Make all bots follow you";
    L["TooltipTitle_16"] = "Make a bot follow you";
    L["TooltipTitle_17"] = "Make all bots learn spells";
    L["TooltipTitle_18"] = "Make all bots release spirit";
    L["TooltipTitle_19"] = "Make a bot release spirit";
    L["TooltipTitle_20"] = "Check quest status of all bots";
    L["TooltipTitle_21"] = "Check quest status of a bot";
    L["TooltipTitle_22"] = "Check the status of all bots";
    L["TooltipTitle_23"] = "Check the status of a bot";
    L["TooltipTitle_24"] = "Make all bots collect loot";
    L["TooltipTitle_25"] = "Make all bots run away";
    L["TooltipTitle_26"] = "Make tank bots run away";
    L["TooltipTitle_27"] = "Make dps bots run away";
    L["TooltipTitle_28"] = "Make healer bots run away";
    L["TooltipTitle_29"] = "Make melee bots run away";
    L["TooltipTitle_30"] = "Make ranged bots run away";
    L["TooltipTitle_31"] = "Make a bot run away";
    L["TooltipTitle_32"] = "Make all bots attack your target";
    L["TooltipTitle_33"] = "Make tank bots attack your target";
    L["TooltipTitle_34"] = "Make dps bots attack your target";
    L["TooltipTitle_35"] = "Make healer bots attack your target";
    L["TooltipTitle_36"] = "Make melee bots attack your target";
    L["TooltipTitle_37"] = "Make ranged bots attack your target";
    L["TooltipTitle_38"] = "Bot Formation - Arrow";
    L["TooltipTitle_39"] = "Bot Formation - Defensive";
    L["TooltipTitle_40"] = "Bot Formation - Dense";
    L["TooltipTitle_41"] = "Bot Formation - Melee";
    L["TooltipTitle_42"] = "Bot Formation - Circle";
    L["TooltipTitle_43"] = "Bot Formation - Lined up";
    L["TooltipTitle_44"] = "Bot Formation - Queuing";
    L["TooltipTitle_45"] = "Bot Formation - Hash";
    L["TooltipTitle_46"] = "Check the formation of all bots";
    L["TooltipTitle_47"] = "Make all bots stand still";
    L["TooltipTitle_48"] = "Select bot to automatically select target"; -- Needs correction
    L["TooltipTitle_49"] = "Select bot to select target manually"; -- Needs correction
    L["TooltipTitle_50"] = "Druid Spell DPS"; -- Needs correction
    L["TooltipTitle_51"] = "Druid Bear Form"; -- Needs correction
    L["TooltipTitle_52"] = "Druid Cat Form"; -- Needs correction
    L["TooltipTitle_53"] = "Druid Healing Mode"; -- Needs correction
    L["TooltipTitle_54"] = "Open the strategy editor";
    L["TooltipTitle_55"] = "Make a Paladin bot use Frost Resistance Aura";
    L["TooltipTitle_56"] = "Make a Paladin bot use Fire Resistance Aura";
    L["TooltipTitle_57"] = "Make a Paladin bot use Devotion Aura";
    L["TooltipTitle_58"] = "Make a Paladin bot use Crusader Aura";
    L["TooltipTitle_59"] = "Make a Paladin bot use Blessing of Kings";
    L["TooltipTitle_60"] = "Make a Paladin bot use Blessing of Wisdom";
    L["TooltipTitle_61"] = "Make a Paladin bot use Blessing of Might";
    L["TooltipTitle_62"] = "Check AI status of all bots";
    L["TooltipTitle_63"] = "Check AI status of a bot";
    L["TooltipTitle_64"] = "Check inventory of a bot";
    L["TooltipTitle_65"] = "Make a bot discard an item";
    L["TooltipTitle_66"] = "Make a bot equip an item";
    L["TooltipTitle_67"] = "Make a bot sell an item";
    L["TooltipTitle_68"] = "Make a bot use an item";
    L["TooltipTitle_69"] = "Check spell book of a bot";
    L["TooltipTitle_70"] = "Make the entire group leave combat";
    L["TooltipTitle_71"] = "Disband the group";
    L["TooltipTitle_72"] = "View all icons in the game";
    L["TooltipTitle_73"] = "Teleport to another player";
    L["TooltipTitle_74"] = "Manage bots";
    L["TooltipTitle_75"] = "See non-combat strategies for selecting bots"; -- Needs correction
    L["TooltipTitle_76"] = "Make a bot stand still";
    L["TooltipTitle_77"] = "Summon a bot";
    L["TooltipTitle_78"] = "Make all bots on your friends list go online";
    L["TooltipTitle_79"] = "Invite everyone on your friends list";
    L["TooltipTitle_80"] = "Check in place" -- Needs correction
    L["TooltipTitle_81"] = "Make all bots restore mana";
    L["TooltipTitle_82"] = "Make all bots go offline";
    L["TooltipTitle_83"] = "Make all bots go online";
    L["TooltipTitle_84"] = "Module: Naxxramas";
    L["TooltipTitle_85"] = "Reset actions for all bots";
    L["TooltipTitle_86"] = "Make a bot go offline";
    L["TooltipTitle_87"] = "Make a bot go online";
    L["TooltipTitle_88"] = "Add all bots to your friends list";
    L["TooltipTitle_89"] = "Grind"; -- Needs correction

-- UnBotTooltipHelp
    L["TooltipHelp0"] = "Closes open windows and expanded button groups. Use right mouse button to hide the bar. You can use /unbot to toggle the bar.";
    L["TooltipHelp1"] = "Reinitialize all online bots, including their levels (random among the level ranges set), equipment, and skills. After execution, the server will be stuck and you need to wait. It cannot be executed frequently."; -- Needs correction
    L["TooltipHelp2"] = "Initializes the targeted bot. It will set their level, equipment, and skills.";
    L["TooltipHelp3"] = "Initializes all bots in your group. It will set their level, equipment, and skills.";
    L["TooltipHelp4"] = "Update random bots. When the number of online bots is not enough for the background setting, supplementary bots will be online. When the quantity is sufficient, some will be offline and some will be online."; -- Needs correction
    L["TooltipHelp5"] = "Select the bot to reset its talents, and then use the bots command to add the remaining talents to allow the bot to switch talents. If the bot switches talents, you need to execute reset ai again to make the bot work in the new talents (Command No. 9 or 10). You need a GM account to be valid."; -- Needs correction
    L["TooltipHelp6"] = "Select the bot and let it add all remaining talent points to its talents on the first type page. If the bot switches talents, you need to execute reset ai again to make the bot work in the new talent (Command No. 9 or 10 reset ai)."; -- Needs correction
    L["TooltipHelp7"] = "Select the bot and let it add all remaining talent points to its talents on the second type page. If the bot switches talents, you need to execute reset ai again to make the bot work in the new talent (Command No. 9 or 10 reset ai)."; -- Needs correction
    L["TooltipHelp8"] = "Select the bot and let it add all remaining talent points to the talent on its third type page. If the bot switches talents, you need to execute reset ai again to make the bot work in the new talent (Command No. 9 or 10 reset ai)."; -- Needs correction
    L["TooltipHelp9"] = "Reset the AI strategy of all bots in the team. After a bot switches talents, it is usually necessary to execute this command so that the bots can start fighting with new talents."; -- Needs correction
    L["TooltipHelp10"] = "Reset the AI strategy of the selected bot. After the bot switches talents, you usually need to execute this command to let the bot start fighting with the new talents."; -- Needs correction
    L["TooltipHelp11"] = "Checks the equipment of the targeted bot.";
    L["TooltipHelp12"] = "Initialize the target bot to your own level, and reset its skills and equipment to this level. If you want to reset it to another level, you need to manually enter the command, and finally add the level number."; -- Needs correction
    L["TooltipHelp13"] = "Teleports all bots in your group to you.";
    L["TooltipHelp14"] = "Teleports the targeted bot to you.";
    L["TooltipHelp15"] = "Makes all bots in your group follow you in the set formation. They will continue their normal routine while in combat. It will also stop the bots from fleeing if the run away command was used.";
    L["TooltipHelp16"] = "Makes the targeted bot follow you. It is especially useful to stop the bot from fleeing if the run away command was used.";
    L["TooltipHelp17"] = "Makes all bots in your group learn spells from the targeted trainer. The possible targets are class trainers and profession trainers.";
    L["TooltipHelp18"] = "Makes all bots in your group release spirit. You can use the teleport commands to bring the bots back to you. This is only usable while inside a dungeon.";
    L["TooltipHelp19"] = "Makes the targeted bot release spirit. You can use the teleport commands to bring the bot back to you. This is only usable while inside a dungeon.";
    L["TooltipHelp20"] = "Checks the quest status of all bots in your group. It will tell you how many quests are completed and how many are in progress.";
    L["TooltipHelp21"] = "Checks the quest status of the targeted bot. It will tell you how many quests are completed and how many are in progress.";
    L["TooltipHelp22"] = "View the current status of all bots in the team, including: what percentage of experience the current level has, the number of remaining backpack slots, and the amount of remaining money."; -- Needs correction
    L["TooltipHelp23"] = "View the current status of the selected bot, including: what percentage of experience the current level has, the number of remaining backpack grids, and the amount of remaining money."; -- Needs correction
    L["TooltipHelp24"] = "Makes all bots in your group collect loot from nearby dead enemies.";
    L["TooltipHelp25"] = "Makes all bots in the team run away, abandon the fight, and run to your own location to follow you. (You can use the follow command to cancel this effect, command 15 or 16 follow)"; -- Needs correction
    L["TooltipHelp26"] = "Let the tank robot in the team run away, give up the fight, and run to your own position to follow you. (You can use the follow command to cancel this effect, command 15 or 16 follow)"; -- Needs correction
    L["TooltipHelp27"] = "Let the dps robot in the team run away, give up the fight, and run to your own position to follow you. (You can use the follow command to cancel this effect, command 15 or 16 follow)"; -- Needs correction
    L["TooltipHelp28"] = "Have the healer bots in the team run away, give up the fight, and run to your own location to follow you. (You can use the follow command to cancel this effect, command 15 or 16 follow)"; -- Needs correction
    L["TooltipHelp29"] = "Let the melee bots in the team run away, give up the fight, and run to your own position to follow you. (You can use the follow command to cancel this effect, command 15 or 16 follow)"; -- Needs correction
    L["TooltipHelp30"] = "Let the ranged bots in the team run away, give up the fight, and run to your own location to follow you. (You can use the follow command to cancel this effect, command 15 or 16 follow)"; -- Needs correction
    L["TooltipHelp31"] = "Makes the chosen bot escape, give up the fight, and run to your own location to follow you. (You can use the follow command to cancel this effect, command 15 or 16 follow)"; -- Needs correction
    L["TooltipHelp32"] = "Makes all bots in your group attack the targeted enemy.";
    L["TooltipHelp33"] = "Makes tank bots in your group attack the targeted enemy.";
    L["TooltipHelp34"] = "Makes dps bots in your group attack the targeted enemy.";
    L["TooltipHelp35"] = "Makes healer bots in your group attack the targeted enemy.";
    L["TooltipHelp36"] = "Makes melee bots in your group attack the targeted enemy.";
    L["TooltipHelp37"] = "Makes ranged bots in your group attack the targeted enemy.";
    L["TooltipHelp38"] = "Makes all bots in your group position themselves in the shape of an arrow. In the front are tanks followed by melee dps, ranged dps, and healers at the end.";
    L["TooltipHelp39"] = "Makes all bots in your group position themselves in a defensive formation.";
    L["TooltipHelp40"] = "Makes all bots in your group position themselves in a dense formation.";
    L["TooltipHelp41"] = "Let all bots in the team position themselves according to the melee mode."; -- Needs correction
    L["TooltipHelp42"] = "Let all the bots in the team stand in a circular shape, with tanks and melee in the middle, and ranged and healers standing in a large circle on the outside."; -- Needs correction
    L["TooltipHelp43"] = "Let all the bots in the team stand in the shape of a phalanx, just like the phalanx on the ancient Roman battlefield."; -- Needs correction
    L["TooltipHelp44"] = "Let all the bots in the team move with you one by one. After the first movement is completed, the second one starts to move and spread out their positions."; -- Needs correction
    L["TooltipHelp45"] = "Let all the bots in the team spread out and follow you one by one."; -- Needs correction
    L["TooltipHelp46"] = "Checks the current formation of all bots in your group.";
    L["TooltipHelp47"] = "Makes all bots in your group stand still. They can still continue their normal routine while in combat but will return to standing still after leaving combat.";
    L["TooltipHelp48"] = "Select the bot to automatically select the target. Once entering the battle, the bot will automatically select the attack target. The attack command is invalid for the bot."; -- Needs correction
    L["TooltipHelp49"] = "Select the bot to manually select the target. After entering the battle, the bot will be manually selected by the player to attack the designated target. It will not switch automatically. In other words, the DPS and TANK strategies are invalid in this combat mode, and the attack command is valid for the bot."; -- Needs correction
    L["TooltipHelp50"] = "The selected druid bot uses spell dps in combat, and uses it if it has a moonkin form."; -- Needs correction
    L["TooltipHelp51"] = "The selected druid bot uses bear or giant bear form to pull monsters during battle."; -- Needs correction
    L["TooltipHelp52"] = "Use cat form dps in selected druid bot battles."; -- Needs correction
    L["TooltipHelp53"] = "The selected druid bot is in healing mode during combat."; -- Needs correction
    L["TooltipHelp54"] = "Opens the strategy editor for the targeted bot. The editor allows you to define how the bot behaves both in and out of combat.";
    L["TooltipHelp55"] = "Makes the targeted Paladin bot use Frost Resistance Aura.";
    L["TooltipHelp56"] = "Makes the targeted Paladin bot use Fire Resistance Aura.";
    L["TooltipHelp57"] = "Makes the targeted Paladin bot use Devotion Aura.";
    L["TooltipHelp58"] = "Makes the targeted Paladin bot use Crusader Aura.";
    L["TooltipHelp59"] = "Makes the targeted Paladin bot use Blessing of Kings to buff other members of your group.";
    L["TooltipHelp60"] = "Makes the targeted Paladin bot use Blessing of Wisdom to buff other members of your group.";
    L["TooltipHelp61"] = "Makes the targeted Paladin bot use Blessing of Might to buff other members of your group.";
    L["TooltipHelp62"] = "Checks the AI status of all bots in your group.";
    L["TooltipHelp63"] = "Checks the AI status of the targeted bot.";
    L["TooltipHelp64"] = "Opens the inventory of the targeted bot.";
    L["TooltipHelp65"] = "Opens the inventory of the targeted bot to make it discard items.";
    L["TooltipHelp66"] = "Opens the inventory of the targeted bot to make it equip items.";
    L["TooltipHelp67"] = "Opens the inventory of the targeted bot to make it sell items. You have to target a vendor after opening the inventory in order to be able to sell items.";
    L["TooltipHelp68"] = "Opens the inventory of the targeted bot to make it use items.";
    L["TooltipHelp69"] = "Checks the spells the targeted bot has.";
    L["TooltipHelp70"] = "Makes everyone in you group, including yourself, leave combat. (GM only)";
    L["TooltipHelp71"] = "Let all players in the team leave the team, and the bots can leave the team one by one to avoid being unable to form these bots after you leave the team."; -- Needs correction
    L["TooltipHelp72"] = "Opens a window that lists all icons available in World of Warcraft.";
    L["TooltipHelp73"] = "Teleports you to the targeted player. (GM only)";
    L["TooltipHelp74"] = "Opens a window that shows all bots on your friends list and in your guild. The left mouse button will make a bot go online while right mouse button will invite it to your group.";
    L["TooltipHelp75"] = "See non-combat strategies for selecting bots"; -- Needs correction
    L["TooltipHelp76"] = "Makes a bot stand still. It can still continue its normal routine while in combat but will return to standing still after leaving combat.";
    L["TooltipHelp77"] = "Opens a window that allows you to summon a bot.";
    L["TooltipHelp78"] = "Makes all bots on your friends list go online.";
    L["TooltipHelp79"] = "Invites everyone on your friends list to your group. If the group is full while invites are still happening the process will be aborted.";
    L["TooltipHelp80"] = "Execute a team's position confirmation and let the bot automatically replenish food, drink, ammunition and arrows according to the situation."; -- Needs correction
    L["TooltipHelp81"] = "Makes all bots in your group drink water to restore mana.";
    L["TooltipHelp82"] = "Makes all bots in your group go offline.";
    L["TooltipHelp83"] = "Makes all bots in your group go online.";
    L["TooltipHelp84"] = "Enables the Naxxramas module for all bots in your group. This is only usable while inside Naxxramas.";
    L["TooltipHelp85"] = "Resets actions for all bots in your group.";
    L["TooltipHelp86"] = "Makes the targeted bot go offline.";
    L["TooltipHelp87"] = "Makes the targeted bot go online.";
    L["TooltipHelp88"] = "Adds all bots in your group to your friends list.";
    L["TooltipHelp89"] = "Make all bots automatically attack nearby creatures that yield experience points.";

    -----------------------------------------------------------------------------------------------
    --- UnBot.lua ---
    -----------------------------------------------------------------------------------------------
    
    L["Bar is now hidden. Use /unbot to toggle the bar."]   = "Bar is now hidden. Use /unbot to toggle the bar.";
    L["Window initialization failed: "]                     = "Window initialization failed: ";
    L["InspectFrame_Show "]                                 = "InspectFrame_Show ";
    L["Initializing bot controller"]                        = "Initializing bot controller";
    L["Bot controller initialized"]                         = "Bot controller initialized";
    L["Target:"]                                            = "Target:";
    L["Uses:"]                                              = "Uses:";
    L["LMB: Use"]                                           = "LMB: Use";
    L["RMB: Toggle button group"]                           = "RMB: Toggle button group";
    L["RMB: Set shortcut"]                                  = "RMB: Set shortcut";
    L["RMB: Hide the bar"]                                  = "RMB: Hide the bar";
 
    L["Select reward"]                                      = "Select reward";
    L["Could not find order "]                              = "Could not find order ";
    L["You have no target."]                                = "You have no target.";
    L["The target is not in your group."]                   = "The target is not in your group.";
     
    L["You click button index "]                            = "You click button index ";
    L[", execute "]                                         = ", execute ";

    -----------------------------------------------------------------------------------------------
    --- UnBotBags.lua ---
    -----------------------------------------------------------------------------------------------
    
    -- UnBotBags.lua -> UnBotGetCostEnergyText
    L["Consume"] = "Consume";
    L["Mana"] = "Mana";
    L["Rage"] = "Rage";
    L["Energy"] = "Energy";
    L["Resource"] = "Resource";

    -- UnBotBags.lua -> UnBotShowButtonTips
    L["item:"] = "item:";
    L["Quantity owned "] = "Quantity owned ";

    L[" yards"] = " yards";
    L["Instant"] = "Instant";
    L["Cast time: "] = "Cast time: ";
    L[" second(s)"] = " second(s)";

    L["ITEM_NOT_IN_BAG_REFRESH"] = "This item has not appeared in your backpack. You need to query the server. Please click the refresh button at the bottom of the interface to see it.";
    
    L["LMB: Equip"] = "LMB: Equip";
    L["LMB: Discard"] = "LMB: Discard";
    L["LMB: Sell"] = "LMB: Sell";
    L["LMB: Use"] = "LMB: Use";
    L["LMB: Cast"] = "LMB: Cast";
    L["LMB: Let"] = "LMB: Let";

    L["RMB: Hide"] = "RMB: Hide";

    L["Index:"] = "Index:";

    -- CreateBagsTypeOptions
    L["View"] = "View";
    L["Inventory"] = "Inventory";
    L["Equip"] = "Equip";
    L["Equip item"] = "Equip item";
    L["Discard"] = "Discard";
    L["Discard item"] = "Discard item";
    L["Sell"] = "Sell";
    L["Sell item"] = "Sell item";
    L["Use"] = "Use";
    L["Use item"] = "Use item";

    -- CreateOptionByParent
    L["Refresh"] = "Refresh";

    -- UpdateUnBotBagsFramePage
    L["Page "] = "Page ";
    L[" of "] = " of ";

    -- ExecuteCommandByBagsItem
    L["You have no vendor targeted."] = "You have no vendor targeted.";

    -- FlushItemsToBags
    L["c"] = "c";
    L["spells"] = "spells";

    -- RecvMuchSpellToBags
    L["Recv spell id "] = "Recv spell id ";
    L[" error."] = " error.";

end