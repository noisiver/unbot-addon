local _, L = ...;

if GetLocale() == "enUS" then

    -----------------------------------------------------------------------------------------------
    --- Bindings.lua ---
    -----------------------------------------------------------------------------------------------

    L["Un Bot Command ActionButton 1"] = "Un Bot Command ActionButton 1";
    L["Un Bot Command ActionButton 2"] = "Un Bot Command ActionButton 2";
    L["Un Bot Command ActionButton 3"] = "Un Bot Command ActionButton 3";
    L["Un Bot Command ActionButton 4"] = "Un Bot Command ActionButton 4";
    L["Un Bot Command ActionButton 5"] = "Un Bot Command ActionButton 5";
    L["Un Bot Command ActionButton 6"] = "Un Bot Command ActionButton 6";
    L["Un Bot Command ActionButton 7"] = "Un Bot Command ActionButton 7";
    L["Un Bot Command ActionButton 8"] = "Un Bot Command ActionButton 8";
    L["Un Bot Command ActionButton 9"] = "Un Bot Command ActionButton 9";
    L["Un Bot Command ActionButton 10"] = "Un Bot Command ActionButton 10";
    L["Un Bot Close Frame ActionButton"] = "Un Bot Close Frame ActionButton";

    -----------------------------------------------------------------------------------------------
    --- EquipInventory.xml ---
    -----------------------------------------------------------------------------------------------

    L["Left mouse button： Make "] = "Left mouse button： Make ";
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
    L["Quantity owned："] = "Quantity owned：";

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