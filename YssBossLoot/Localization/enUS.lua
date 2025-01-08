-- English localization file for enUS and enGB.
local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local enUS = AceLocale:NewLocale("YssBossLoot", "enUS", true)
if not enUS then return end

enUS['Loot'] = true
enUS['Normal Loot'] = true
enUS['Heroic Loot'] = true
enUS['Normal 10-man Loot'] = true
enUS['Normal 25-man Loot'] = true
enUS['Heroic 10-man Loot'] = true
enUS['Heroic 25-man Loot'] = true

enUS['Dungeon'] = true
enUS['Raid'] = true

enUS["|cffffff00Click|r to open YssBossLoot Options"] = true

enUS["UNSAVE_QUERY_MSG"] = "|cFF33FF99YssBossLoot|r has detected that you recently disconnected. This may have been caused by scanning too many |cffff2020unsafe itemlinks|r too fast which increases your chance of repeat disconnects while scanning.\n\n|cffffd200Do you want to continue scanning?|r"

enUS["Hide Loot"] = true
enUS['Filter'] = true
enUS["|cffffff00Left Click|r to select Instance"] = true
enUS["|cffffff00Right Click|r to open Options"] = true
enUS['Check All'] = true
enUS['Uncheck All'] = true
enUS['Instance Type'] = true

enUS["Class Filter"] = true
enUS['No Class Restriction'] = true
enUS['When selected items with this class restriction will be shown'] = true
enUS['Only Type/SubType combinations you have previously seen can be filtered by default'] = true
enUS['Only equip location you have previously seen can be filtered by default'] = true
enUS['When selected this item type will be shown unless multible subtypes are found'] = true
enUS['Show this sub type'] = true
enUS['When selected this item stat will be filtered out'] = true
enUS['Only item stats you have previously seen can be filtered by default'] = true
enUS['Show All'] = true
enUS["Filter All"] = true
enUS["Filter All desc"] = "Due to filters overlapping\nyou will most likely have to disable\ntwo or more filters after using\nthe Filter All button."
enUS['Item Type Filter'] = true
enUS['Equip Location Filter'] = true
enUS["Item Stat Filter"] = true
enUS['When selected this item equip location will be shown'] = true
enUS['|cFFFF0000<<WARNING>>|r|nIf you change these from the default grey checkmark you may missout on items with no stats.|nOnly item stats you have previously seen can be filtered by default'] = true
enUS['Yellow Checkmark:|nWe want this stat.|n|nGrey Checkmark:|nWe do not care if we have this stat or not.|n|nNo Checkmark:|nWe do not want this stat.'] = true
enUS["Don't Want:"] = true
enUS['Want:'] = true

enUS["3D_Skull_Detect_MSG"] = "|cffffd200YssBossLoot has detected %s!|r|n|nDo you want to use it as your boss frame skull"

enUS["Loot Scaling"] = true
enUS["Large Map"] = true
enUS["Large Map with Objectives"] = true
enUS["Small Map"] = true
enUS["Boss Frame Size"] = true
enUS["Boss Font Size"] = true
enUS["Animated Background"] = true
enUS["Use 3D Skull"] = true
enUS["2D Skulls"] = true
enUS['Minimap Icon'] = true
enUS['Add Tooltip Info'] = true
enUS['Open to Current Instance Difficulty'] = true
enUS['Open to Currently Selected Difficulty in Group'] = true
enUS['Open to Currently Selected Difficulty in Group desc'] = "Opens to the current difficulty if you are in a group but still outside the instance"
