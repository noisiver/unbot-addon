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