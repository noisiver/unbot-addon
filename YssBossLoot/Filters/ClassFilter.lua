
local addonName, addon = ...

local L = LibStub("AceLocale-3.0"):GetLocale(addonName, true)

addon.filters["Class Filter"] = {}
local filter = addon.filters["Class Filter"]

filter.classes_filtered = {}
filter.classesChecked = false

local curr_classes = {}
do -- Tooltip Scanner to detect if we already know an item
	local Scanner = _G["FILTERS_CF_ScannerTooltip"]  or CreateFrame("GameTooltip", "FILTERS_CF_ScannerTooltip", nil, "GameTooltipTemplate")
	Scanner:SetOwner(UIParent, "ANCHOR_NONE")
	local class_cache = {}
	setmetatable(class_cache, {__mode = "kv"})
	local temptable = {}
	function filter:GetClasses(link)
		if class_cache[link] == nil then
			Scanner:ClearLines()
			Scanner:SetHyperlink(link)
			for i=1,Scanner:NumLines() do
				Scanner[i] = Scanner[i] or _G["FILTERS_CF_ScannerTooltipTextLeft"..i]
				local classes = string.match(Scanner[i]:GetText(), string.gsub(ITEM_CLASSES_ALLOWED, "%%s", "(.+)"))
				if classes then
					class_cache[link] = classes
				end
			end
		end
		wipe(temptable)
		if class_cache[link] then
			for t, lc in pairs(LOCALIZED_CLASS_NAMES_MALE ) do
				if string.find(class_cache[link], lc) then
					temptable[#temptable+1] = t
				end
			end
			--print(unpack(temptable))
			return temptable
		else
			class_cache[link] = false
			return nil
		end
	end
end

function filter:AddItem(link)
	local classes = self:GetClasses(link)
	if classes then
		for i, c in ipairs(classes) do
			curr_classes[c] = true
		end
	else
		curr_classes['NCR'] = true -- NCR == No Class Restriction
	end
end

function filter:ClearAll()
	wipe(curr_classes)
	filter:ResetFilter()
end

function filter:isFilterd(link)
	if next(self.classes_filtered) then
		local classes = self:GetClasses(link)
		if classes then
			for i, c in ipairs(classes) do
				if self.classes_filtered[c] then
					return false
				end
			end
			return true
		else
			return not self.classes_filtered['NCR']
		end
	else
		return false
	end
end

function filter:ResetFilter()
	wipe(self.classes_filtered)
	for q, v in pairs(addon.db.profile.ClassFilter) do
		self.classes_filtered[q] = v
	end
end

function filter:ShowAll()
	wipe(self.classes_filtered)
end

function filter:FilterAll()

end

function filter:WriteDefault(db)
	db.profile.ClassFilter = {}
end

function filter:isRelevant()
	local count = 0
	for k in pairs(curr_classes) do
		count = count + 1
		if count > 1 then
			return true
		end
	end
end


local TypeSelect = {
	type = 'toggle',
	desc = L['When selected items with this class restriction will be shown'],
	name = function(info)
		local i = tonumber(info[#info])
		local hex = RAID_CLASS_COLORS[CLASS_SORT_ORDER[i]] and string.format("|cff%02x%02x%02x", RAID_CLASS_COLORS[CLASS_SORT_ORDER[i]].r*255, RAID_CLASS_COLORS[CLASS_SORT_ORDER[i]].g*255, RAID_CLASS_COLORS[CLASS_SORT_ORDER[i]].b*255) or NORMAL_FONT_COLOR_CODE
		return hex..(LOCALIZED_CLASS_NAMES_MALE[CLASS_SORT_ORDER[i]] or L['No Class Restriction'])
	end,
	get = function(info)
		local n = tonumber(info[#info])
		if CLASS_SORT_ORDER[n] then
			return addon.db.profile.ClassFilter[CLASS_SORT_ORDER[n]]
		else
			return addon.db.profile.ClassFilter['NCR']
		end
	end,
	set = function(info, val)
		local n = tonumber(info[#info])
		if CLASS_SORT_ORDER[n] then
			addon.db.profile.ClassFilter[CLASS_SORT_ORDER[n]] = val
		else
			addon.db.profile.ClassFilter['NCR'] = val
		end
	end,
	order = function(info)
		return tonumber(info[#info])
	end,
}

function filter:UpdateOptions()
	if not addon.filterOptions["Class Filter"] then
		addon.filterOptions["Class Filter"] = {
			type = 'group',
			name = L["Class Filter"],
			args = {
			},
		}
		local args = addon.filterOptions["Class Filter"].args

		for i, t in ipairs(CLASS_SORT_ORDER) do
			args[tostring(i)] = TypeSelect
		end
		args[tostring(#CLASS_SORT_ORDER + 1)] = TypeSelect
	end
end

local info, itemtypesorted, itemtypesortedL = {}, {}, {}
local classesstring = string.format(ITEM_CLASSES_ALLOWED, '')
local invertedClassSort = {}
for i, c in ipairs(CLASS_SORT_ORDER) do
	invertedClassSort[c] = i
end
invertedClassSort['NCR'] = #CLASS_SORT_ORDER + 1
function filter:GetDropdown(level)
	wipe(info)
	wipe(itemtypesorted)
	info.keepShownOnClick = 1
    if level == 1 then
		info.text = classesstring
		info.value = classesstring
		info.hasArrow = true
		info.func = function()
			local b
			if self.classesChecked then
				b = nil
			else
				b = true
			end
			self.classesChecked = b
			for el in pairs(curr_classes) do
				self.classes_filtered[el] = b
			end
			ToggleDropDownMenu(1, nil, addon.FilterMenu, addon.FilterButton, 0, 0)
			ToggleDropDownMenu(1, nil, addon.FilterMenu, addon.FilterButton, 0, 0)
			addon:FilterUpdate()
		end
		UIDropDownMenu_AddButton(info, level)
	elseif level == 2 and classesstring == UIDROPDOWNMENU_MENU_VALUE then
		for q in pairs(curr_classes) do
			itemtypesorted[#itemtypesorted+1] = q
		end
		table.sort(itemtypesorted, function(a,b)
			return invertedClassSort[a] < invertedClassSort[b]
		end)

		for i = 1, #itemtypesorted do
			local hex = RAID_CLASS_COLORS[itemtypesorted[i]] and string.format("|cff%02x%02x%02x", RAID_CLASS_COLORS[itemtypesorted[i]].r*255, RAID_CLASS_COLORS[itemtypesorted[i]].g*255, RAID_CLASS_COLORS[itemtypesorted[i]].b*255) or NORMAL_FONT_COLOR_CODE
			info.text = hex..(LOCALIZED_CLASS_NAMES_MALE[itemtypesorted[i]] or L['No Class Restriction'])
			info.arg1 = itemtypesorted[i]
			info.checked = self.classes_filtered[itemtypesorted[i]]
			info.func = function(button, arg1)
				if self.classes_filtered[arg1] then
					self.classes_filtered[arg1] = nil
				else
					self.classes_filtered[arg1] = true
				end
				addon:FilterUpdate()
			end
			UIDropDownMenu_AddButton(info, level)
		end
	end

end

