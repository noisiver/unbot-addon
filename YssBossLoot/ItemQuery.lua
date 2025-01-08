
local _, YssBossLoot = ...

local L = LibStub("AceLocale-3.0"):GetLocale("YssBossLoot", true)

local timerFrame = CreateFrame("Frame")
local animationGroup = timerFrame:CreateAnimationGroup()
local animation = animationGroup:CreateAnimation("Animation")
animation:SetDuration(7) -- increase this number if this Scanner starts disconnecting people without outside interference 6 seams to be the minimum lets use 7 to keep a little buffer
animationGroup:SetLooping("NONE")

local Scanner = CreateFrame("GameTooltip", "YssBossLoot_ScannerTooltip", nil, "GameTooltipTemplate")
Scanner:SetOwner(UIParent, "ANCHOR_NONE")

local itemlist = {}
local query_item
local function QueryNextItem()
	if next(itemlist) then
		query_item = tremove(itemlist, 1) -- always pull from bottom of table (its expensive but ensures order also makes adding items inexpensive and spreads out the expensive operation)
		if GetItemInfo(query_item) then -- if we already know item no need to query for it we just move on to the next item on the list
			YssBossLoot:UpdateLoot(#itemlist, query_item)
			return QueryNextItem()
		else
			YssBossLoot:UpdateLoot(#itemlist)
		end
		Scanner:SetHyperlink('item:'..query_item)
	else
		query_item = nil
		YssBossLoot:UpdateLoot(0)
	end
end

local function OnTooltipSetItem()
	if not query_item then return end
	if GetItemInfo(query_item) then -- if we already know item no need to query for it we just move on to the next item on the list
		YssBossLoot:UpdateLoot(#itemlist, query_item)
		if animationGroup:IsPlaying() then
			animationGroup:Stop()
		end
		QueryNextItem()
	else
		animationGroup:Play()
	end
end

animationGroup:SetScript("OnFinished", QueryNextItem)
Scanner:SetScript('OnTooltipSetItem', OnTooltipSetItem)

local PopupDisplayed = false
YssBossLoot.QuerryStopped = nil
StaticPopupDialogs["YssBossLoot_UnsafeQuery_DIALOG"] = {
	text = L["UNSAVE_QUERY_MSG"],
	button1 = YES,
	button2 = NO,
	OnAccept = function (self)
		YssBossLoot.db.global.badLogout = nil
		QueryNextItem()
		clicked = true
	end,
	OnCancel = function (self, data, reason)
		if reason == "clicked" then
			YssBossLoot.QuerryStopped = true
		end
	end,
	OnHide = function()
		if YssBossLoot.db.global.badLogout then
			if not YssBossLoot.QuerryStopped then
				PopupDisplayed = false
			end
			YssBossLoot:UpdateLoot(0)
		end
	end,
	timeout = 0,
	hideOnEscape = 1,
	noCancelOnEscape = 1,
	whileDead = 1,
}

function YssBossLoot:QueryItemInfo(item)
	if GetItemInfo(item) then -- do a preliminary check if we already know the item
		return nil
	end
	for i, listitem in ipairs(itemlist) do -- check if this item is already in our list
		if item == listitem then
			return nil
		end
	end
	itemlist[#itemlist+1] = item
	if not query_item then
		if self.db.global.badLogout and time() - self.db.global.badLogout < 900 then
			if YssBossLoot.QuerryStopped then
				YssBossLoot:UpdateLoot(0)
			elseif not PopupDisplayed then
				PopupDisplayed = true
				local popup = StaticPopup_Show("YssBossLoot_UnsafeQuery_DIALOG")
				popup:SetFrameStrata("TOOLTIP")
			end
		else
			self.db.global.badLogout = nil
			QueryNextItem()
		end
	end
end

function YssBossLoot:CancelAllQueries()
	wipe(itemlist)
	query_item = nil
	if YssBossLoot.queries then
		wipe(YssBossLoot.queries)
	end
	animationGroup:Stop()
end

local logoutFunctions = {
	["Logout"] = true,
	["Quit"] = true,
	["ForceQuit"] = true,
	["ReloadUI"] = true,
}
local cancelLogoutFunctions = {
	["CancelLogout"] = true,
}

local function logoutHook()
	YssBossLoot.isValidLogout = true
end
local function logoutHook_cancel()
	YssBossLoot.isValidLogout = nil
end

local function consoleHook(func, ...)
	for f in pairs(logoutFunctions) do
		if string.lower(f) == string.lower(func) then
			return logoutHook()
		end
	end
	for f in pairs(cancelLogoutFunctions) do
		if string.lower(f) == string.lower(func) then
			return logoutHook_cancel()
		end
	end
end

-- Setup our Logout Hooks
hooksecurefunc("ConsoleExec", consoleHook)
for func in pairs(logoutFunctions) do
	hooksecurefunc(func, logoutHook)
end
for func in pairs(cancelLogoutFunctions) do
	hooksecurefunc(func, logoutHook_cancel)
end

function YssBossLoot:PLAYER_LOGOUT()
	if not self.isValidLogout and query_item then
		self.db.global.badLogout = time()
	elseif self.db.global.badLogout and time() - self.db.global.badLogout > 900 then
		self.db.global.badLogout = nil
	end
end
YssBossLoot.frame:RegisterEvent("PLAYER_LOGOUT")

--[[ dc test function (this will DC the client)
--/script YssBossLootTest()
function YssBossLootTest()
	animation:SetDuration(.1)
	for i=1,100 do
		YssBossLoot:QueryItemInfo(i)
	end
end
]]