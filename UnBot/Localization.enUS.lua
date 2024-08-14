local _, L = ...;
if GetLocale() == "enUS" then

    -- UnBot.lua
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