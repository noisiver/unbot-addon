
local _, YBL = ...

local L = LibStub("AceLocale-3.0"):GetLocale("YssBossLoot", true)
local icon = LibStub("LibDBIcon-1.0")

YBL.skulls = {
	["options"] = {
		[1] = "|TInterface\\Addons\\YssBossLoot\\Art\\skullwhite:26|t",
		[2] = "|TInterface\\WorldMap\\3DSkull_64:26:26:0:0:128:128:9:64:7:64|t",
		[3] = "|TInterface\\WorldMap\\Skull_64:26:26:0:0:128:128:0:64:0:64|t",
		[4] = "|TInterface\\WorldMap\\Skull_64Blue:26|t",
		[5] = "|TInterface\\WorldMap\\Skull_64Green:26|t",
		[6] = "|TInterface\\WorldMap\\Skull_64Purple:26|t",
		[7] = "|TInterface\\WorldMap\\Skull_64Red:26|t",
		[8] = "|TInterface\\WorldMap\\Skull_64Grey:26|t",
		[9] = "|TInterface\\WorldMap\\3DSkull_64Grey:26|t",
	},
	["info"] = {
		[1] = "Interface\\Addons\\YssBossLoot\\Art\\skullwhite",
		[2] = "Interface\\WorldMap\\3DSkull_64:0.07:0.5:0.054:0.5",
		[3] = "Interface\\WorldMap\\Skull_64:0:0.5:0:0.5",
		[4] = "Interface\\WorldMap\\Skull_64Blue",
		[5] = "Interface\\WorldMap\\Skull_64Green",
		[6] = "Interface\\WorldMap\\Skull_64Purple",
		[7] = "Interface\\WorldMap\\Skull_64Red",
		[8] = "Interface\\WorldMap\\Skull_64Grey",
		[9] = "Interface\\WorldMap\\3DSkull_64Grey",
	},
}

YBL.MainOption = {
	type="group",
	width = 'fill',
	handler = YBL,
	name = "YssBossLoot",
	childGroups = 'tree',
	args = {
		LibDBIcon = {
			type = "toggle",
			name = L['Minimap Icon'],
			order = 1,
			get = function() return not YBL.db.profile.LibDBIcon.hide end,
			set = function(info, val)
				YBL.db.profile.LibDBIcon.hide = not val
				if val then
					icon:Show("YssBossLoot")
				else
					icon:Hide("YssBossLoot")
				end
			end,
		},
		addtooltipinfo = {
			type = "toggle",
			name = L['Add Tooltip Info'],
			order = 50,
			get = function() return YBL.db.profile.addtooltipinfo end,
			set = function(info, val)
				YBL.db.profile.addtooltipinfo = val
				if val then
					YBL:EnableTooltipInfo()
				else
					YBL:DisableTooltipInfo()
				end
			end,
		},
		bossframesize = {
			name = L["Boss Frame Size"],
			type = "range",
			min = 1,
			max = 100,
			step = 1,
			get = function() return YBL.db.profile.bossframesize end,
			set = function(info, val)
				YBL.db.profile.bossframesize = val
				YBL:RefreshBossFrames()
			end,
			order = 100,
		},
		bossfontsize = {
			name = L["Boss Font Size"],
			type = "range",
			min = 1,
			max = 30,
			step = 1,
			get = function() return YBL.db.profile.bossfontsize end,
			set = function(info, val)
				YBL.db.profile.bossfontsize = val
				YBL:RefreshBossFrames()
			end,
			order = 200,
		},
		OpentoCurrentInstanceDifficulty = {
			type = "toggle",
			width = "full",
			name = L['Open to Current Instance Difficulty'],
			get = function() return YBL.db.profile.OpentoCurrentInstanceDifficulty end,
			set = function(info, val)
				YBL.db.profile.OpentoCurrentInstanceDifficulty = val
			end,
			order = 225,
		},
		OpentoCurrentlySelectedGroupDifficulty = {
			type = "toggle",
			width = "full",
			name = L['Open to Currently Selected Difficulty in Group'],
			desc = L['Open to Currently Selected Difficulty in Group desc'],
			get = function()
				if YBL.db.profile.OpentoCurrentInstanceDifficulty then
					return YBL.db.profile.OpentoCurrentlySelectedGroupDifficulty
				else
					return false
				end
			end,
			set = function(info, val)
				print(tostring(val))
				YBL.db.profile.OpentoCurrentlySelectedGroupDifficulty = val
			end,
			disabled = function() return not YBL.db.profile.OpentoCurrentInstanceDifficulty end,
			order = 250,
		},
		["portalBackdrop"] = {
			name = L["Animated Background"],
			type = "toggle",
			width = "full",
			get = function() return YBL.db.profile.portalBackdrop end,
			set = function(info, val)
				YBL.db.profile.portalBackdrop = val
				YBL:RefreshBossFrames()
			end,
			order = 275,
		},
		["3Dskull"] = {
			name = L["Use 3D Skull"],
			type = "toggle",
			width = "full",
			get = function() return YBL.db.profile.threeDskull end,
			set = function(info, val)
				YBL.db.profile.threeDskull = val
				YBL:RefreshBossFrames()
			end,
			disabled = function() return YBL.db.profile.threeDskull == nil end,
			order = 300,
		},
		["2Dskulls"] = {
			name = L["2D Skulls"],
			type = "multiselect",
			values = YBL.skulls.options,
			width = 'half',
			get = function(info, key)
				return YBL.db.profile.twoDskull == key
			end,
			set = function(info, key, val)
				if val then
					YBL.db.profile.twoDskull = key
					YBL:RefreshBossFrames()
				end
			end,
			disabled = function() return YBL.db.profile.threeDskull end,
			order = 400,
		},
		['lootsizegroup'] = {
			type="group",
			width = 'fill',
			handler = YBL,
			name = L["Loot Scaling"],
			inline = true,
			order = 500,
			args = {
				Large = {
					order = 100,
					name = L["Large Map"],
					get = function() return YBL.db.profile.lootscale_large end,
					set = function(info, val) YBL.db.profile.lootscale_large = val end,
					type = "range",
					min = 0.5, max = 1.5, bigStep = 0.01,
					isPercent = true,
				},
				Quests = {
					order = 200,
					name = L["Large Map with Objectives"],
					get = function() return YBL.db.profile.lootscale_quest end,
					set = function(info, val) YBL.db.profile.lootscale_quest = val end,
					type = "range",
					min = 0.5, max = 1.5, bigStep = 0.01,
					isPercent = true,
				},
				Small = {
					order = 300,
					name = L["Small Map"],
					get = function() return YBL.db.profile.lootscale_mini end,
					set = function(info, val) YBL.db.profile.lootscale_mini = val end,
					type = "range",
					min = 0.5, max = 1.5, bigStep = 0.01,
					isPercent = true,
				},
			},
		},
	},
}

YBL.FilterOption = {
	type="group",
	width = 'fill',
	handler = YBL,
	name = L['Filter'],
	childGroups = 'tab',
	args = {},
	plugins = {
		filters = {}
	},
}
YBL.filterOptions = YBL.FilterOption.plugins.filters

local IOFchild = CreateFrame('frame', nil, InterfaceOptionsFrame)
IOFchild:SetScript("OnShow", function()
	for k, filter in pairs(YBL.filters) do
		if filter.UpdateOptions then
			filter:UpdateOptions()
		end
	end
end)
IOFchild:SetScript("OnHide", function()
	for k, filter in pairs(YBL.filters) do
		filter:ResetFilter()
	end
end)

YBL.optframe = {}
LibStub("AceConfig-3.0"):RegisterOptionsTable('YBL', YBL.MainOption)
YBL.optframe.YBL = LibStub("AceConfigDialog-3.0"):AddToBlizOptions('YBL', 'YssBossLoot')
-- function addapted from the RegisterModuleOptions function in Mapster
function YBL:RegisterModuleOptions(name, optionTbl, displayName)
	local cname = "YBL"..name
	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable(cname, optionTbl)
	self.optframe[name] = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(cname, displayName, "YssBossLoot")
end

YBL:RegisterModuleOptions('filter', YBL.FilterOption, L['Filter'])

