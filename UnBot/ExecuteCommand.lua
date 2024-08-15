local _, L = ...;

function CommandUnBotSetting(index)
	UnBotHideAllSubFrame();
	UnBotCloseAllBagsFrame();
	OnlineFrame:Hide();
	NPCFrame:Hide();
	
	if (InspectFrame and InspectFrame:IsShown()) then
		DisplayInfomation(L["InspectFrame_Show "]..UnitName(InspectFrame.unit)..L[", Name "]..InspectFrame:GetName());
	end
end

function CommandShowOnlineFrame(index)
	if (OnlineFrame:IsShown()) then
		OnlineFrame:Hide();
	else
		OnlineFrame:Show();
	end
end

function CommandShowNPCFrame(index)
	if (NPCFrame:IsShown()) then
		NPCFrame:Hide();
	else
		NPCFrame:Show();
	end
end

function CommandShowStrategyFrame(index)
	local targetClass = UnitClass("target");
	local targetName = UnitName("target");
	local isParty = UnitInParty("target");
	local isRaid = UnitInRaid("target");
	if (targetName == nil or targetName == "") then
		DisplayInfomation(L["NO_TARGET"]);
		return;
	end
	if (not UnitIsPlayer("target")) then
		DisplayInfomation(L["NEED_BOT_TARGET"]);
		return;
	end
	if (isParty == nil and isRaid == nil) then
		DisplayInfomation(L["TARGET_NOT_IN_GROUP"]);
		return;
	end
	-- if (not IsRealPartyLeader()) then
	-- 	DisplayInfomation("你当前不是队伍领袖。");
	-- 	return;
	-- end

	UnBotShowStrategyFrame(targetName, targetClass);
end

function CommandFriendsOnline(index)
	local num= GetNumFriends();
	if num>0 then
		for x=1,num,1 do
			local name,level,className,un2,online,un4 = GetFriendInfo(x);
			if (name ~= nil) then
				SendChatMessage(L[".playerbot bot add "]..name, "SAY");
			end
		end
	else
		DisplayInfomation(L["NO_FRIENDS_FOUND"]);
	end
end

function CommandFriendsInvite(index)
	local num= GetNumFriends();
	if num>0 then
		local partyCount = GetNumPartyMembers();
		local raidCount = GetNumRaidMembers();
		for x=1,num,1 do
			local name,level,className,un2,online,un4 = GetFriendInfo(x);
			if (name ~= nil) then
				local isParty = UnitInParty(name);
				local isRaid = UnitInRaid(name);
				if (isParty == nil and isRaid == nil) then
					if (partyCount == 4 and raidCount == 0) then
						ConvertToRaid();
					end
					InviteUnit(name);
				end
			end
		end
	else
		DisplayInfomation(L["NO_FRIENDS_FOUND"]);
	end
end

function CommandListIcons(index)
	local iconsList = {};
	for i=1, #UnBotCommandIconsPath do iconsList[i] = {[1]=i} end
	CreateIconsByUnBotBagsFrame(0, "UnBotBagsFrameIcon",0,false,iconsList,UnitName("player"),UnitClass("player"),"Icons",nil,nil,GetIconFunc);
end

function CommandInspectFrame(index)
	local targetClass = UnitClass("target");
	local targetName = UnitName("target");
	local isParty = UnitInParty("target");
	local isRaid = UnitInRaid("target");
	if (targetName == nil or targetName == "") then
		DisplayInfomation(L["NO_TARGET"]);
		return;
	end
	if (not UnitIsPlayer("target")) then
		DisplayInfomation(L["NEED_BOT_TARGET"]);
		return;
	end
	if (isParty == nil and isRaid == nil) then
		DisplayInfomation(L["TARGET_NOT_IN_GROUP"]);
		return;
	end
	-- if (not IsRealPartyLeader()) then
	-- 	DisplayInfomation("你当前不是队伍领袖。");
	-- 	return;
	-- end
	InspectFrame_Show("target");
end

function CommandInitForLevel(index)
	local targetName = UnitName("target");
	if (targetName == nil or targetName == "") then
		DisplayInfomation(L["NO_TARGET"]);
		return;
	end
	if (not UnitIsPlayer("target")) then
		DisplayInfomation(L["NEED_BOT_TARGET"]);
		return;
	end
	-- if (not IsRealPartyLeader()) then
	-- 	DisplayInfomation("你当前不是队伍领袖。");
	-- 	return;
	-- end
	local lv = UnitLevel("player");
	SendChatMessage(UnBotExecuteCommand[index]..tostring(lv), "SAY");
end

function CommandReadyCheck(index)
	-- if (not IsRealPartyLeader()) then
	-- 	DisplayInfomation("你当前不是队伍领袖。");
	-- 	return;
	-- end
	DoReadyCheck();
end

function CommandCombatStop(index)
	-- if (not IsRealPartyLeader()) then
	-- 	DisplayInfomation("你当前不是队伍领袖。");
	-- 	return;
	-- end

	if (UnitInRaid("player") ~= nil) then
		if (GetNumRaidMembers()>0) then
			for i=1, GetNumRaidMembers(), 1 do
				local name = (UnitName("raid"..i));
				if (name) then
					DisplayInfomation(L["In the group "]..name..L[" out of combat"]); -- Needs correction
					SendChatMessage(UnBotExecuteCommand[index]..name, "PARTY");
				end
			end
		end
	else
		SendChatMessage(UnBotExecuteCommand[index]..UnitName("player"), "PARTY");
		if (GetNumPartyMembers()>0) then
			for i=1, GetNumPartyMembers(), 1 do
				local name = (UnitName("party"..i));
				if (name) then
					DisplayInfomation(L["In the group "]..name..L[" out of combat"]); -- Needs correction
					SendChatMessage(UnBotExecuteCommand[index]..name, "PARTY");
				end
			end
		end
	end
end

function CommandUninvite(index)
	-- if (not UnitIsPartyLeader("player")) then
	-- 	DisplayInfomation("你当前不是队伍领袖。");
	-- 	return;
	-- end
	SendChatMessage("nc +grind", "PARTY");
	SendChatMessage("stay", "PARTY");
	if (UnitInRaid("player") ~= nil) then
		if (GetNumRaidMembers()>0) then
			for i=1, GetNumRaidMembers(), 1 do
				local name = (UnitName("raid"..i));
				if (name and name ~= UnitName("player")) then
					UninviteUnit(name);
				end
			end
		end
	else
		if (GetNumPartyMembers()>0) then
			for i=1, GetNumPartyMembers(), 1 do
				local name = (UnitName("party"..i));
				if (name and name ~= UnitName("player")) then
					UninviteUnit(name);
				end
			end
		end
	end
end

function CommandUnBotItemList(index)
	local targetClass = UnitClass("target");
	local targetName = UnitName("target");
	local isParty = UnitInParty("target");
	local isRaid = UnitInRaid("target");
	if (targetName == nil or targetName == "") then
		DisplayInfomation(L["NO_TARGET"]);
		return;
	end
	if (not UnitIsPlayer("target")) then
		DisplayInfomation(L["NEED_BOT_TARGET"]);
		return;
	end
	if (isParty == nil and isRaid == nil) then
		DisplayInfomation(L["TARGET_NOT_IN_GROUP"]);
		return;
	end
	-- if (not IsRealPartyLeader()) then
	-- 	DisplayInfomation("你当前不是队伍领袖。");
	-- 	return;
	-- end
	CreateIconsByUnBotBagsFrame(1, "UnBotItemList"..targetName,1,false,{},targetName,targetClass,L["View items"],FlushItemsToBags,nil,GetItemFunc);
end

function CommandUnBotDestroyItem(index)
	local targetClass = UnitClass("target");
	local targetName = UnitName("target");
	local isParty = UnitInParty("target");
	local isRaid = UnitInRaid("target");
	if (targetName == nil or targetName == "") then
		DisplayInfomation(L["NO_TARGET"]);
		return;
	end
	if (not UnitIsPlayer("target")) then
		DisplayInfomation(L["NEED_BOT_TARGET"]);
		return;
	end
	if (isParty == nil and isRaid == nil) then
		DisplayInfomation(L["TARGET_NOT_IN_GROUP"]);
		return;
	end
	-- if (not IsRealPartyLeader()) then
	-- 	DisplayInfomation("你当前不是队伍领袖。");
	-- 	return;
	-- end
	CreateIconsByUnBotBagsFrame(3, "UnBotDestroyItem"..targetName,1,true,{},targetName,targetClass,"Discard items",FlushItemsToBags,UnBotExecuteCommand[index],GetItemFunc);
end

function CommandUnBotEquipItem(index)
	local targetClass = UnitClass("target");
	local targetName = UnitName("target");
	local isParty = UnitInParty("target");
	local isRaid = UnitInRaid("target");
	if (targetName == nil or targetName == "") then
		DisplayInfomation(L["NO_TARGET"]);
		return;
	end
	if (not UnitIsPlayer("target")) then
		DisplayInfomation(L["NEED_BOT_TARGET"]);
		return;
	end
	if (isParty == nil and isRaid == nil) then
		DisplayInfomation(L["TARGET_NOT_IN_GROUP"]);
		return;
	end
	-- if (not IsRealPartyLeader()) then
	-- 	DisplayInfomation("你当前不是队伍领袖。");
	-- 	return;
	-- end
	CreateIconsByUnBotBagsFrame(2, "UnBotEquipItem"..targetName,1,true,{},targetName,targetClass,"Equip items",FlushItemsToBags,UnBotExecuteCommand[index],GetItemFunc);
end

function CommandUnBotSellItem(index)
	local targetClass = UnitClass("target");
	local targetName = UnitName("target");
	local isParty = UnitInParty("target");
	local isRaid = UnitInRaid("target");
	if (targetName == nil or targetName == "") then
		DisplayInfomation(L["NO_TARGET"]);
		return;
	end
	if (not UnitIsPlayer("target")) then
		DisplayInfomation(L["NEED_BOT_TARGET"]);
		return;
	end
	if (isParty == nil and isRaid == nil) then
		DisplayInfomation(L["TARGET_NOT_IN_GROUP"]);
		return;
	end
	-- if (not IsRealPartyLeader()) then
	-- 	DisplayInfomation("你当前不是队伍领袖。");
	-- 	return;
	-- end
	CreateIconsByUnBotBagsFrame(4, "UnBotSellItem"..targetName,1,true,{},targetName,targetClass,"Sell items",FlushItemsToBags,UnBotExecuteCommand[index],GetItemFunc);
end

function CommandUnBotUseItem(index)
	local targetClass = UnitClass("target");
	local targetName = UnitName("target");
	local isParty = UnitInParty("target");
	local isRaid = UnitInRaid("target");
	if (targetName == nil or targetName == "") then
		DisplayInfomation(L["NO_TARGET"]);
		return;
	end
	if (not UnitIsPlayer("target")) then
		DisplayInfomation(L["NEED_BOT_TARGET"]);
		return;
	end
	if (isParty == nil and isRaid == nil) then
		DisplayInfomation(L["TARGET_NOT_IN_GROUP"]);
		return;
	end
	-- if (not IsRealPartyLeader()) then
	-- 	DisplayInfomation("你当前不是队伍领袖。");
	-- 	return;
	-- end
	CreateIconsByUnBotBagsFrame(5, "UnBotUseItem"..targetName,1,true,{},targetName,targetClass,"Use items",FlushItemsToBags,UnBotExecuteCommand[index],GetItemFunc);
end

function CommandUnBotSpells(index)
	local targetClass = UnitClass("target");
	local targetName = UnitName("target");
	local isParty = UnitInParty("target");
	local isRaid = UnitInRaid("target");
	if (targetName == nil or targetName == "") then
		DisplayInfomation(L["NO_TARGET"]);
		return;
	end
	if (not UnitIsPlayer("target")) then
		DisplayInfomation(L["NEED_BOT_TARGET"]);
		return;
	end
	if (isParty == nil and isRaid == nil) then
		DisplayInfomation(L["TARGET_NOT_IN_GROUP"]);
		return;
	end
	-- if (not IsRealPartyLeader()) then
	-- 	DisplayInfomation("你当前不是队伍领袖。");
	-- 	return;
	-- end
	CreateIconsByUnBotBagsFrame(0, "UnBotSpells"..targetName,2,false,{},targetName,targetClass,"Spells",FlushItemsToBags,UnBotExecuteCommand[index],GetItemFunc);
end

function CommandAddFriends(index)
	if (UnitInRaid("player") ~= nil) then
		if (GetNumRaidMembers()>0) then
			for i=1, GetNumRaidMembers(), 1 do
				local name = (UnitName("raid"..i));
				if (name and name ~= UnitName("player")) then
					AddFriend(name);
					-- DisplayInfomation("添加好友"..name);
				end
			end
		end
	else
		if (GetNumPartyMembers()>0) then
			for i=1, GetNumPartyMembers(), 1 do
				local name = (UnitName("party"..i));
				if (name and name ~= UnitName("player")) then
					AddFriend(name);
					-- DisplayInfomation("添加好友"..name);
				end
			end
		end
	end
end
