
local _, YssBossLoot = ...

local broker = LibStub("LibDataBroker-1.1")
local icon = LibStub("LibDBIcon-1.0")

local L = LibStub("AceLocale-3.0"):GetLocale("YssBossLoot", true)
local BZ = LibStub("LibBabble-Zone-3.0", true):GetUnstrictLookupTable()

local last_ldb_anchor

local hovertip
function YssBossLoot:SetupLDB()
	self.ldbp = LibStub("LibDataBroker-1.1"):NewDataObject("YssBossLoot", {
		icon = "Interface\\Addons\\YssBossLoot\\Art\\skullwhite",
		label = "|cFF33FF99YssBossLoot|r",
		type = "launcher",
		text  = "YssBossLoot",
		OnClick = function(clickedFrame, button)
			if button == "RightButton" then
				InterfaceOptionsFrame_OpenToCategory(YssBossLoot.optframe.YBL)
			else
				ToggleDropDownMenu(1, nil, YssBossLoot.LDBdrop, clickedFrame, 0, 0)
				last_ldb_anchor = clickedFrame
			end
			if hovertip and hovertip.Hide then
				hovertip:Hide()
			end
		end,
		OnTooltipShow = function(tt)
			tt:AddLine('YssBossLoot')
			tt:AddLine(L["|cffffff00Left Click|r to select Instance"])
			tt:AddLine(L["|cffffff00Right Click|r to open Options"])
			hovertip = tt
		end,
	})
	icon:Register("YssBossLoot", YssBossLoot.ldbp, YssBossLoot.db.profile.LibDBIcon)
end


YssBossLoot.LDBdrop = CreateFrame("Frame", "YssBossLoot_FilterMenu")
YssBossLoot.LDBdrop.onHide = function(...)
	MenuParent = nil
	MenuItem = nil
	MenuEquipSlot = nil
end

YssBossLoot.LDBdrop.HideMenu = function()
    if UIDROPDOWNMENU_OPEN_MENU == YssBossLoot.LDBdrop then
        CloseDropDownMenus()
    end
end

local function InstanceClick(button, arg1)
	ShowUIPanel(WorldMapFrame)
	SetMapByID(arg1)
end

local function sillyBlizzardCheckmarkRemover(button)
	ToggleDropDownMenu(1, nil, YssBossLoot.LDBdrop, last_ldb_anchor, 0, 0)
	ToggleDropDownMenu(1, nil, YssBossLoot.LDBdrop, last_ldb_anchor, 0, 0)
end


local info, sortedList, miscList = {}, {}, {}
YssBossLoot.LDBdrop.initialize = function(self, level)
	if not level then return end
	wipe(info)
	wipe(sortedList)
	wipe(miscList)
    if level == 1 then
		info.disabled = nil
        info.notCheckable = 1
		info.keepShownOnClick = 1
		for c, lc in pairs(YssBossLoot.MapTypes) do
			miscList[lc] = c
			sortedList[#sortedList+1] = lc
		end
		table.sort(sortedList)

		--local currCont, currZone, currLevel = GetMapType()
		for i = 1, #sortedList do
			info.text = NORMAL_FONT_COLOR_CODE..sortedList[i]
			info.value = miscList[sortedList[i]]
			info.hasArrow = true
			info.func = sillyBlizzardCheckmarkRemover
			info.checked = nil
			UIDropDownMenu_AddButton(info, level)
		end

		info.hasArrow = false
		info.text = CLOSE
		info.func = self.HideMenu
		UIDropDownMenu_AddButton(info, level)

	elseif level == 2 then
        info.notCheckable = 1
		for z, id in pairs(YssBossLoot.IDs[UIDROPDOWNMENU_MENU_VALUE]) do
			local Lzone = BZ[z] or z
			miscList[Lzone] = id
			sortedList[#sortedList+1] = Lzone
		end
		table.sort(sortedList)

		for i = 1, #sortedList do
			info.text = sortedList[i]
			info.arg1 = miscList[sortedList[i]]
			info.func = InstanceClick
			UIDropDownMenu_AddButton(info, level)
		end
	end
end