local _, L = ...;

function UnBotTick(bagsFrame, tick)
	if (bagsFrame.lastFlushTick > 0) then
		if  ((tick - bagsFrame.lastFlushTick) > bagsFrame.waitFlushTime) then
			bagsFrame.lastFlushTick = 0;
			UnBotEnableAllFrameFlushButton();
		end
	end
end

function UnBotCanFlushInfo(bagsFrame)
	if (bagsFrame == nil) then
		return false;
	end
	if (bagsFrame.lastFlushTick > 0) then
		return true;
	else
		return false;
	end
end

function UnBotBagsHeadFrameSetFontText(race, name, info)
	local text = "|cff0000cc"..race.."|r |cff00cccc"..name.."|r - |cffcccccc"..info.."|r";
	return text;
end

local function CreateIconGroupByParent(fromParent,hheadGap,vheadGap,hnum,vnum,hgap,vgap,size)
	if (fromParent == nil) then
		return nil;
	end
	local iconsGroup = {};
	local iconsIndex = 1;
	for v=1, vnum do
		for h=1, hnum do
			local newFrame = CreateFrame("Button","BGIconsFrame"..tostring(iconsIndex),fromParent,"UnBotBagsButtonTemplate");
			newFrame.bagsIcon = nil;
			newFrame.iconIndex = -1;
			newFrame.Icon = newFrame:CreateTexture("BGIcons"..tostring(iconsIndex),"BACKGROUND");
			newFrame.Icon:SetTexture(fromParent.disableIcon);
			newFrame.Icon:SetAllPoints(newFrame);
			newFrame.Icon:Show();
			newFrame:SetPushedTexture([[Interface\BUTTONS\UI-Quickslot-Depress]]);
			newFrame:SetHighlightTexture([[Interface\Buttons\UI-Common-MouseHilight]],"ADD");
			newFrame:Show();
			local offsetX = hheadGap+(h-1)*size+hgap*h;
			local offsetY = (vheadGap+(v-1)*size+vgap*v)*(-1)+5;
			newFrame:SetPoint("TOPLEFT", fromParent, "TOPLEFT", offsetX, offsetY);
			newFrame.index = iconsIndex;
			iconsGroup[iconsIndex] = newFrame;
			iconsIndex = iconsIndex + 1;
			newFrame.countLabel = newFrame:CreateFontString(newFrame:GetName().."Count","OVERLAY");
			newFrame.countLabel:SetFont("Fonts\\FRIZQT__.TTF",11);
			newFrame.countLabel:SetTextColor(0.8,0,0.8,1);
			newFrame.countLabel:SetHeight(12);
			newFrame.countLabel:SetText(" ");
			newFrame.countLabel:SetPoint("BOTTOMRIGHT",newFrame,"BOTTOMRIGHT",-2,2);
			newFrame.countLabel:SetJustifyH("RIGHT");
			newFrame.countLabel:SetJustifyV("BOTTOM");
			newFrame.countLabel:SetShadowColor(0.1,0.1,0.1);
			newFrame.countLabel:SetShadowOffset(1,-1);
			newFrame:SetScript("OnEnter", function() UnBotShowButtonTips(newFrame, fromParent) end);
			newFrame:SetScript("OnLeave", function() GameTooltip:Hide() end);
			newFrame:SetScript("OnClick", function(self, button)
				local over = ExecuteCommandByBagsItem(fromParent,newFrame.dataIndex);
				if (over == true and fromParent.afterRemove) then
					RemoveByIndex(fromParent,newFrame.dataIndex);
				end
			end);
			newFrame:SetScript("OnMouseUp", function(self, button)
				if (button == "RightButton") then
					RemoveByIndex(fromParent,newFrame.dataIndex);
				end
			end);
		end
	end
	return iconsGroup;
end

function UnBotGetCostEnergyText(costType, costValue)
	if (costValue <= 0) then
		return " ";
	end
	if (costType == 0) then
		return L["Consume"]..tostring(costValue)..L["Mana"]; -- Needs correction
	elseif (costType == 1) then
		return L["Consume"]..tostring(costValue)..L["Rage"]; -- Needs correction
	elseif (costType == 3) then
		return L["Consume"]..tostring(costValue)..L["Energy"]; -- Needs correction
	else
		return L["Consume"]..tostring(costValue)..L["Resource"]; -- Needs correction
	end
end
	--item [2] = spellID
	--item [3] = name
	--item [4] = texture
	--item [6] = rankLV
	--item [7] = costType = 0,1,3
	--item [8] = costMana
	--item [9] = castTime
	--item [10] = distance
function UnBotShowButtonTips(newFrame, fromParent)
	if (newFrame.bagsIcon ~= nil) then
		GameTooltip:SetOwner(newFrame, "ANCHOR_TOPRIGHT");
		local itemID = fromParent.dataGroup[newFrame.dataIndex][2];
		if (itemID ~= nil and itemID > 0) then
			local needQuery = fromParent.dataGroup[newFrame.dataIndex][5];
			if (needQuery == false) then
				if (fromParent.bagsType == 1) then
					GameTooltip:SetHyperlink(L["item:"]..itemID..":0:0:0:0:0:0:0");
					if (fromParent.dataGroup[newFrame.dataIndex][7] ~= nil and fromParent.dataGroup[newFrame.dataIndex][7] > 1) then
						GameTooltip:AddLine(" ",1,1,1,1);
						GameTooltip:AddDoubleLine(L["Quantity owned："],tostring(fromParent.dataGroup[newFrame.dataIndex][7]),0,0.8,0.8,0.8,0.8,0); -- Needs correction
					end
				elseif (fromParent.bagsType == 2) then
					local spellLink = GetSpellLink(itemID);
					if (spellLink ~= nil) then
						GameTooltip:SetHyperlink(spellLink);
					else
						local spellData = fromParent.dataGroup[newFrame.dataIndex];
						GameTooltip:AddLine(spellData[3],1,0,0,1);
						GameTooltip:AddDoubleLine(UnBotGetCostEnergyText(spellData[7],spellData[8]),tostring(spellData[6]),1,1,1,0.5,0.5,0.5);
						local castDis = "";
						if (spellData[10] <= 0) then
							castDis = "Self-cast";
						else
							castDis = tostring(spellData[10])..L[" yards"];
						end
						if (spellData[9] <= 0) then
							GameTooltip:AddDoubleLine(L["Instant"],castDis,0.65,0.55,0,0,0.8,0.8);
						else
							GameTooltip:AddDoubleLine(L["Cast time: "] .. tostring(spellData[9]/1000)..L[" second(s)"],castDis,0.65,0.55,0,0,0.8,0.8); -- Needs correction
						end
					end
				end
			else
				GameTooltip:AddLine(fromParent.dataGroup[newFrame.dataIndex][3],1,0,0,1);
				GameTooltip:AddLine(L["ITEM_NOT_IN_BAG_REFRESH"],1,0,0,1); -- Needs correction
			end
			GameTooltip:AddLine(" ",1,1,1,1);
			if (fromParent.command ~= nil and fromParent.command ~= "") then
				if (fromParent.bagsType == 1) then
					if (fromParent.command == UnBotExecuteCommand[66]) then
						GameTooltip:AddLine(L["LMB: Equip"],0.65,0.55,0,1);
					elseif (tostring(fromParent.command) == UnBotExecuteCommand[65]) then
						GameTooltip:AddLine(L["LMB: Discard"],0.65,0.55,0,1);
					elseif (tostring(fromParent.command) == UnBotExecuteCommand[67]) then
						GameTooltip:AddLine(L["LMB: Sell"],0.65,0.55,0,1);
					elseif (tostring(fromParent.command) == UnBotExecuteCommand[68]) then
						GameTooltip:AddLine(L["LMB: Use"],0.65,0.55,0,1);
					else
						GameTooltip:AddLine(L["LMB: Use"],0.65,0.55,0,1);
					end
				elseif (fromParent.bagsType == 2) then
					GameTooltip:AddLine(L["LMB: Cast"],0.65,0.55,0,1);
				else
					GameTooltip:AddLine(L["LMB: Let "]..fromParent.target.." "..fromParent.activeText,0.65,0.55,0,1); -- Needs correction
				end
			end
			GameTooltip:AddLine(L["RMB: Hide"],0.65,0.55,0,1);
			if (fromParent.bagsType == 2) then
				GameTooltip:AddDoubleLine("ID:",tostring(itemID),0,0.8,0.8,0.8,0,0);
			end
		else
			GameTooltip:AddLine(newFrame.bagsIcon);
		end
		GameTooltip:AddDoubleLine(L["Index:"],tostring(newFrame.iconIndex),0,0,1,1,0,1);
		GameTooltip:AddTexture(fromParent.dataGroup[newFrame.dataIndex][4]);
		GameTooltip:Show();
	end
end

local function CreateBagsTypeOptions(fromParent, checkedIndex)
	if (fromParent == nil or checkedIndex == nil) then
		return nil;
	end
	local newFrame = CreateFrame("CheckButton",fromParent:GetName().."BagsType1",fromParent,"UnBotBagsTypeTemplate");
	newFrame.title = newFrame:CreateFontString(newFrame:GetName().."Title","ARTWORK");
	newFrame.title:SetFont("Fonts\\FRIZQT__.TTF",11);
	newFrame.title:SetTextColor(1.0,0.8,0,1);
	newFrame.title:SetText(L["View"]);
	newFrame.title:SetPoint("TOPLEFT",newFrame,"TOPRIGHT",-2,-8);
	newFrame.title:SetShadowColor(0,0,0);
	newFrame.title:SetShadowOffset(1,-1);
	newFrame:Show();
	newFrame.parentFrame = fromParent;
	newFrame.command = nil;
	newFrame.afterRemove = false;
	newFrame.parentFrameText = UnBotBagsHeadFrameSetFontText(fromParent.raceName, fromParent.target, L["Inventory"]);
	newFrame:SetPoint("TOPRIGHT", fromParent, "TOPRIGHT", -52, -24 * 1);
	table.insert(fromParent.optionsType, newFrame);
	if (checkedIndex == 1) then
		BagsTypeOptionsClick(newFrame, fromParent, newFrame.afterRemove);
	end
	
	newFrame = CreateFrame("CheckButton",fromParent:GetName().."BagsType2",fromParent,"UnBotBagsTypeTemplate");
	newFrame.title = newFrame:CreateFontString(newFrame:GetName().."Title","ARTWORK");
	newFrame.title:SetFont("Fonts\\FRIZQT__.TTF",11);
	newFrame.title:SetTextColor(1.0,0.8,0,1);
	newFrame.title:SetText(L["Equip"]);
	newFrame.title:SetPoint("TOPLEFT",newFrame,"TOPRIGHT",-2,-8);
	newFrame.title:SetShadowColor(0,0,0);
	newFrame.title:SetShadowOffset(1,-1);
	newFrame:Show();
	newFrame.parentFrame = fromParent;
	newFrame.command = UnBotExecuteCommand[66];
	newFrame.afterRemove = true;
	newFrame.parentFrameText = UnBotBagsHeadFrameSetFontText(fromParent.raceName, fromParent.target, L["Equip item"]);
	newFrame:SetPoint("TOPRIGHT", fromParent, "TOPRIGHT", -52, -29 * 2 + 13);
	table.insert(fromParent.optionsType, newFrame);
	if (checkedIndex == 2) then
		BagsTypeOptionsClick(newFrame, fromParent, newFrame.afterRemove);
	end
	
	newFrame = CreateFrame("CheckButton",fromParent:GetName().."BagsType3",fromParent,"UnBotBagsTypeTemplate");
	newFrame.title = newFrame:CreateFontString(newFrame:GetName().."Title","ARTWORK");
	newFrame.title:SetFont("Fonts\\FRIZQT__.TTF",11);
	newFrame.title:SetTextColor(1.0,0.8,0,1);
	newFrame.title:SetText(L["Discard"]);
	newFrame.title:SetPoint("TOPLEFT",newFrame,"TOPRIGHT",-2,-8);
	newFrame.title:SetShadowColor(0,0,0);
	newFrame.title:SetShadowOffset(1,-1);
	newFrame:Show();
	newFrame.parentFrame = fromParent;
	newFrame.command = UnBotExecuteCommand[65];
	newFrame.afterRemove = true;
	newFrame.parentFrameText = UnBotBagsHeadFrameSetFontText(fromParent.raceName, fromParent.target, L["Discard item"]);
	newFrame:SetPoint("TOPRIGHT", fromParent, "TOPRIGHT", -52, -29 * 3 + 21);
	table.insert(fromParent.optionsType, newFrame);
	if (checkedIndex == 3) then
		BagsTypeOptionsClick(newFrame, fromParent, newFrame.afterRemove);
	end
	
	newFrame = CreateFrame("CheckButton",fromParent:GetName().."BagsType4",fromParent,"UnBotBagsTypeTemplate");
	newFrame.title = newFrame:CreateFontString(newFrame:GetName().."Title","ARTWORK");
	newFrame.title:SetFont("Fonts\\FRIZQT__.TTF",11);
	newFrame.title:SetTextColor(1.0,0.8,0,1);
	newFrame.title:SetText(L["Sell"]);
	newFrame.title:SetPoint("TOPLEFT",newFrame,"TOPRIGHT",-2,-8);
	newFrame.title:SetShadowColor(0,0,0);
	newFrame.title:SetShadowOffset(1,-1);
	newFrame:Show();
	newFrame.parentFrame = fromParent;
	newFrame.command = UnBotExecuteCommand[67];
	newFrame.afterRemove = true;
	newFrame.parentFrameText = UnBotBagsHeadFrameSetFontText(fromParent.raceName, fromParent.target, L["Sell item"]);
	newFrame:SetPoint("TOPRIGHT", fromParent, "TOPRIGHT", -52, -29 * 4 + 29);
	table.insert(fromParent.optionsType, newFrame);
	if (checkedIndex == 4) then
		BagsTypeOptionsClick(newFrame, fromParent, newFrame.afterRemove);
	end
	
	newFrame = CreateFrame("CheckButton",fromParent:GetName().."BagsType5",fromParent,"UnBotBagsTypeTemplate");
	newFrame.title = newFrame:CreateFontString(newFrame:GetName().."Title","ARTWORK");
	newFrame.title:SetFont("Fonts\\FRIZQT__.TTF",11);
	newFrame.title:SetTextColor(1.0,0.8,0,1);
	newFrame.title:SetText(L["Use"]);
	newFrame.title:SetPoint("TOPLEFT",newFrame,"TOPRIGHT",-2,-9);
	newFrame.title:SetShadowColor(0,0,0);
	newFrame.title:SetShadowOffset(1,-1);
	newFrame:Show();
	newFrame.parentFrame = fromParent;
	newFrame.command = UnBotExecuteCommand[68];
	newFrame.afterRemove = true;
	newFrame.parentFrameText = UnBotBagsHeadFrameSetFontText(fromParent.raceName, fromParent.target, L["Use item"]);
	newFrame:SetPoint("TOPRIGHT", fromParent, "TOPRIGHT", -52, -29 * 5 + 37);
	table.insert(fromParent.optionsType, newFrame);
	if (checkedIndex == 5) then
		BagsTypeOptionsClick(newFrame, fromParent, newFrame.afterRemove);
	end
end

function BagsTypeOptionsClick(self, bagsFrame, afterRemove)
	for i=1, #(bagsFrame.optionsType) do
		if (bagsFrame.optionsType[i] ~= self) then
			bagsFrame.optionsType[i]:SetChecked(false);
		else
			bagsFrame.optionsType[i]:SetChecked(true);
		end
	end
	bagsFrame.title:SetText(self.parentFrameText);
	bagsFrame.command = self.command;
	bagsFrame.afterRemove = afterRemove;
end

local function CreateOptionByParent(fromParent,flushFunc)
	if (fromParent == nil) then
		return nil;
	end

	fromParent.title = fromParent:CreateFontString(fromParent:GetName().."Title","ARTWORK");
	fromParent.title:SetFont("Fonts\\FRIZQT__.TTF",12);
	fromParent.title:SetTextColor(1.0,1.0,1.0,1);
	fromParent.title:SetText(UnBotBagsHeadFrameSetFontText(fromParent.raceName, fromParent.target, fromParent.activeText));
	fromParent.title:SetPoint("TOPLEFT",fromParent,"TOPLEFT",6,-6);
	fromParent.title:SetShadowColor(0,0,0);
	fromParent.title:SetShadowOffset(1,-1);

	fromParent.page = fromParent:CreateFontString(fromParent:GetName().."Page","ARTWORK");
	fromParent.page:SetFont("Fonts\\FRIZQT__.TTF",11);
	fromParent.page:SetTextColor(1.0,1.0,1.0,1);
	fromParent.page:SetText("0-0");
	fromParent.page:SetPoint("CENTER",fromParent,"BOTTOMLEFT",82,18);
	fromParent.page:SetShadowColor(0,0,0);
	fromParent.page:SetShadowOffset(1,-1);

	local newFrame = CreateFrame("Button","BGIconsFrame",fromParent,"UnBotBagsButtonTemplate");
	newFrame.Icon = newFrame:CreateTexture("BGIcons","BACKGROUND");
	newFrame.Icon:SetTexture([[Interface\BUTTONS\UI-SpellbookIcon-PrevPage-Up]]);
	newFrame.Icon:SetAllPoints(newFrame);
	newFrame.Icon:Show();
	newFrame:SetPushedTexture([[Interface\BUTTONS\UI-SpellbookIcon-PrevPage-Down]]);
	newFrame:SetHighlightTexture([[Interface\Buttons\UI-Common-MouseHilight]],"ADD");
	newFrame:Show();
	newFrame:SetPoint("BOTTOMLEFT", fromParent, "BOTTOMLEFT", 4, 3);
	newFrame.parentFrame = fromParent;
	newFrame:SetScript("OnClick", function() PickPrevOrNextButton(fromParent,true) end);
	newFrame:SetSize(28, 28)

	newFrame = CreateFrame("Button","BGIconsFrame",fromParent,"UnBotBagsButtonTemplate");
	newFrame.Icon = newFrame:CreateTexture("BGIcons","BACKGROUND");
	newFrame.Icon:SetTexture([[Interface\BUTTONS\UI-SpellbookIcon-NextPage-Up]]);
	newFrame.Icon:SetAllPoints(newFrame);
	newFrame.Icon:Show();
	newFrame:SetPushedTexture([[Interface\BUTTONS\UI-SpellbookIcon-NextPage-Down]]);
	newFrame:SetHighlightTexture([[Interface\Buttons\UI-Common-MouseHilight]],"ADD");
	newFrame:Show();
	newFrame:SetPoint("BOTTOMLEFT", fromParent, "BOTTOMLEFT", 134, 3);
	newFrame.parentFrame = fromParent;
	newFrame:SetScript("OnClick", function() PickPrevOrNextButton(fromParent,false) end);
	newFrame:SetSize(28, 28)

	newFrame = CreateFrame("Button","BagsFrameFlush"..fromParent:GetName(),fromParent,"UIPanelButtonTemplate");
	newFrame:SetText(L["Refresh"]);
	newFrame:SetWidth(56);
	newFrame:SetHeight(24);
	newFrame:Show();
	newFrame:SetPoint("BOTTOMLEFT", fromParent, "BOTTOMLEFT", 188, 6);
	newFrame:SetScript("OnClick", function()
		if (flushFunc ~= nil) then
			flushFunc(fromParent,fromParent.command);
			UnBotDisableAllFrameFlushButton();
		end
	end);

	local closeFrame = CreateFrame("Button","BGIconsFrame",fromParent,"UIPanelCloseButton");
	closeFrame:SetWidth(32);
	closeFrame:SetHeight(32);
	closeFrame:Show();
	closeFrame:SetPoint("TOPRIGHT", fromParent, "TOPRIGHT", 3, 3);
	closeFrame:SetScript("OnClick", function()
		RemoveFromUnBotFrame(fromParent)
		fromParent:Hide()
		fromParent:SetParent(nil)
	end);

end

function PickPrevOrNextButton(bagsFrame, pn)
	if (bagsFrame == nil or bagsFrame.dataGroup == nil) then
		return;
	end
	local firstIndex = 1;
	local overIndex = math.ceil((#(bagsFrame.dataGroup)) / bagsFrame.pageCount);
	if (overIndex == 0) then
		overIndex = 1;
	end
	if (pn == true) then
		if (bagsFrame.currentPage > firstIndex) then
			bagsFrame.currentPage = bagsFrame.currentPage - 1;
			UpdateUnBotBagsFramePage(bagsFrame);
		end
	else
		if (bagsFrame.currentPage < overIndex) then
			bagsFrame.currentPage = bagsFrame.currentPage + 1;
			UpdateUnBotBagsFramePage(bagsFrame);
		end
	end
end

function CreateIconsByUnBotBagsFrame(checkedIndex, name,bagType,afterRemove,datas,target,race,activeText,flushFunc,command,getFunc)
	if (CanAddToUnBotFrame(name) == false) then
		return nil;
	end
	local bagsFrame = CreateFrame("Frame",name,UIParent,"UnBotBagsFrame");
	local bagsHead = CreateFrame("Frame",bagsFrame:GetName().."Head",bagsFrame,"UnBotBagsFrameHeadFrame");
	bagsHead:Show();
	if (bagType == 1) then
		bagsFrame:SetSize(330, 208);
		bagsHead:SetSize(330, 26);
	else
		bagsFrame:SetSize(250, 208);
		bagsHead:SetSize(250, 26);
	end
	bagsFrame.bagsType = bagType;
	bagsFrame.bgIconsGroup = CreateIconGroupByParent(bagsFrame,5,32,8,5,0,0,30);
	if (bagsFrame.flushFunc ~= nil or datas == nil) then
		bagsFrame.dataGroup = {};
	else
		bagsFrame.dataGroup = datas;
	end
	bagsFrame.afterRemove = afterRemove;
	bagsFrame.target = target;
	bagsFrame.raceName = race;
	bagsFrame.activeText = activeText;
	bagsFrame.flushFunc = flushFunc;
	bagsFrame.getFunc = getFunc;
	CreateOptionByParent(bagsFrame,flushFunc);
	if (bagType == 1) then
		CreateBagsTypeOptions(bagsFrame, checkedIndex);
	end
	UpdateUnBotBagsFramePage(bagsFrame);
	bagsFrame:Show();
	bagsFrame:RegisterEvent("CHAT_MSG_WHISPER");
	
	AddToUnBotFrame(bagsFrame, name);
	if (bagsFrame.flushFunc ~= nil) then
		bagsFrame.flushFunc(bagsFrame,command);
		UnBotDisableAllFrameFlushButton();
	end

	bagsFrame:SetScale(UnBotScaleConfig);

	return bagsFrame;
end

function UnBotCloseAllBagsFrame()
	for i=1, #(UnBotFrame.ShowedBags) do
		UnBotFrame.ShowedBags[i]:Hide();
		UnBotFrame.ShowedBags[i]:SetParent(nil);
	end
	UnBotFrame.ShowedBags = {};
	--UnBotFrame.currentRecvLinkFrame = nil;
end

function UpdateUnBotBagsFramePage(bagsFrame)
	if (bagsFrame == nil) then
		return;
	end
	
	local startIndex = (bagsFrame.currentPage - 1) * bagsFrame.pageCount + 1;
	local groupIndex = 1;
	for i=startIndex, startIndex+bagsFrame.pageCount-1 do
		if (i > #(bagsFrame.dataGroup) or bagsFrame.getFunc == nil) then
			bagsFrame.bgIconsGroup[groupIndex].Icon:SetTexture(bagsFrame.disableIcon);
			bagsFrame.bgIconsGroup[groupIndex].bagsIcon = nil;
			bagsFrame.bgIconsGroup[groupIndex].iconIndex = 0;
			bagsFrame.bgIconsGroup[groupIndex].countLabel:SetText(" ");
		else
			local icon, name = bagsFrame.getFunc(bagsFrame, i);
			bagsFrame.bgIconsGroup[groupIndex].Icon:SetTexture(icon);
			bagsFrame.bgIconsGroup[groupIndex].bagsIcon = name;
			bagsFrame.bgIconsGroup[groupIndex].iconIndex = bagsFrame.dataGroup[i][1];
			if (bagsFrame.bagsType == 1 and bagsFrame.dataGroup[i][7] ~= nil and bagsFrame.dataGroup[i][7] > 1) then
				bagsFrame.bgIconsGroup[groupIndex].countLabel:SetText(tostring(bagsFrame.dataGroup[i][7]));
			else
				bagsFrame.bgIconsGroup[groupIndex].countLabel:SetText(" ");
			end
		end
		bagsFrame.bgIconsGroup[groupIndex].dataIndex = i;
		groupIndex = groupIndex + 1;
	end
	local overIndex = math.ceil((#(bagsFrame.dataGroup)) / bagsFrame.pageCount);
	if (overIndex == 0) then
		overIndex = 1;
	end
	bagsFrame.page:SetText(L["Page "]..tostring(bagsFrame.currentPage)..L[" of "]..tostring(overIndex));
end

function ExecuteCommandByBagsItem(bagsFrame,index)
	if (bagsFrame == nil or index < 1 or index > #(bagsFrame.dataGroup)) then
		return false;
	end
	if (bagsFrame.command ~= nil and bagsFrame.command ~= "") then
		if (bagsFrame.command == UnBotExecuteCommand[67]) then
			local targetName = UnitName("target");
			if (targetName == nil or targetName == "") then
				DisplayInfomation(L["You have no vendor targeted."]);
				return false;
			end
		end
		if (bagsFrame.bagsType == 1) then
			local itemID = bagsFrame.dataGroup[index][2];
			-- local itemName = bagsFrame.dataGroup[index][3];
			local itemLink
			_,itemLink,_,_,_,_,_,_,_,_ = GetItemInfo(tostring(itemID));
			SendChatMessage(bagsFrame.command..itemLink, "WHISPER", nil, bagsFrame.target);
		elseif (bagsFrame.bagsType == 2) then
			local itemID = bagsFrame.dataGroup[index][2];
			SendChatMessage(bagsFrame.command..tostring(itemID), "WHISPER", nil, bagsFrame.target);
		end
	end
	return true;
end

function RemoveByIndex(bagsFrame,index)
	if (bagsFrame == nil or index < 1 or index > #(bagsFrame.dataGroup)) then
		return;
	end
	table.remove(bagsFrame.dataGroup,index);
	UpdateUnBotBagsFramePage(bagsFrame);
end

function FlushItemsToBags(bagsFrame,command)
	if (bagsFrame == nil) then
		return;
	end

	--UnBotFrame.currentRecvLinkFrame = bagsFrame:GetName();
	bagsFrame.dataGroup = {};
	if (command ~= nil) then
		bagsFrame.command = command;
	else
		bagsFrame.command = "";
	end
	UpdateUnBotBagsFramePage(bagsFrame);
	if (bagsFrame.bagsType == 1) then
		SendChatMessage(L["c"], "WHISPER", nil, bagsFrame.target);
	elseif (bagsFrame.bagsType == 2) then
		SendChatMessage(L["spells"], "WHISPER", nil, bagsFrame.target);
	end
	bagsFrame.lastFlushTick = GetTime();
end

function GetIconFunc(bagsFrame, index)
	local icon = GetIconPathByIndex(bagsFrame.dataGroup[index][1]);
	local name = GetIconPathByIndex(bagsFrame.dataGroup[index][1]);
	return icon, name;
end

function GetItemFunc(bagsFrame, index)
	if (index < 1 or index > #(bagsFrame.dataGroup)) then
		return nil,nil;
	end
	local icon = bagsFrame.dataGroup[index][4];
	local name = bagsFrame.dataGroup[index][3];
	return icon, name;
end

function IsFilterInfo(info)
	local f1,f2 = string.find(info,"equipment");
	if (f1 ~= nil or f2 ~= nil) then
		return true;
	end

	f1,f2 = string.find(info,"discard");
	if (f1 ~= nil or f2 ~= nil) then
		return true;
	end

	f1,f2 = string.find(info,"sell");
	if (f1 ~= nil or f2 ~= nil) then
		return true;
	end

	f1,f2 = string.find(info,"use");
	if (f1 ~= nil or f2 ~= nil) then
		return true;
	end

	return false;
end

function GetItemCountByLink(info)
	local x1,x2 = string.find(info,"]");
	if (x1 == nil or x2 == nil) then
		return 1;
	end
	local numIndex1,numIndex2 = string.find(info,"x",x2);
	if (numIndex1 == nil or numIndex2 == nil) then
		return 1;
	end
	local count = string.match(info,"%d+",numIndex2);
	return tonumber(count);
end

function RecvOnceItemToBags(bagsFrame,info)
	if (bagsFrame == nil) then
		return;
	end
	--if (UnBotFrame.currentRecvLinkFrame == nil or UnBotFrame.currentRecvLinkFrame ~= bagsFrame:GetName()) then
	--	return;
	--end
	
	if (IsFilterInfo(info) == true) then
		return;
	end

	local i1,i2 = string.find(info,"Hitem:");
	if (i1 == nil or i2 == nil) then
		return;
	end
	local itemCount = GetItemCountByLink(info);
	if (itemCount == nil) then
		itemCount = 1;
	end
	local itemID = tonumber(string.match(info,"%d+",i2));
	
	local texture;
	local name;
	local itemQuality;
	name,_,_,_,_,_,_,_,_,texture = GetItemInfo(itemID);
	local needQuery = false;
	if (name == nil or texture == nil) then
		YssBossLoot:QueryItemInfo(itemID);
		name = "???";
		texture = bagsFrame.normalIcon;
		needQuery = true;
	end
	local item = {[1] = 0, [2] = itemID, [3] = name, [4] = texture, [5] = needQuery, [6] = itemQuality, [7] = itemCount};
	table.insert(bagsFrame.dataGroup, item);
	item[1] = #(bagsFrame.dataGroup);
	--DisplayInfomation("Recv itemIndex "..tostring(item[1])..",item "..tostring(item[2])..",name "..tostring(item[3])..",icon "..tostring(item[4])..",itemLink "..tostring(itemLink)..",itemQuality "..tostring(itemQuality));
	
	UpdateUnBotBagsFramePage(bagsFrame);
end

function RecvMuchSpellToBags(bagsFrame,info)
	if (bagsFrame == nil) then
		return;
	end
	--item [2] = spellID
	--item [3] = name
	--item [4] = texture
	--item [6] = rankLV
	--item [7] = costType = 0,1,3
	--item [8] = costMana
	--item [9] = castTime
	--item [10] = distance
	--if (UnBotFrame.currentRecvLinkFrame == nil or UnBotFrame.currentRecvLinkFrame ~= bagsFrame:GetName()) then
	--	return;
	--end
	local i1,i2 = string.find(info,"Hspell:");
	if (i1 == nil or i2 == nil) then
		return;
	end

	local textList = UnBotSplit(string.sub(info, i2), "Hspell:");
	local ids = {};
	for i=1, #textList do
		local idText = tonumber(string.match(textList[i],"%d+"));
		if (idText ~= nil) then
			table.insert(ids, tonumber(idText));
		end
	end
	for i=1, #ids do
		local spellID = ids[i];
		local name,rankLV,texture,costMana,un3,costType,castTime,un6,distance = GetSpellInfo(spellID);
		if (name ~= nil) then
			if (texture == nil) then
				texture = bagsFrame.normalIcon;
			end
			local spell = {[1] = 0, [2] = spellID, [3] = name, [4] = texture, [5] = false, [6] = rankLV, [7] = tonumber(costType), [8] = tonumber(costMana), [9] = tonumber(castTime), [10] = tonumber(distance)};
			table.insert(bagsFrame.dataGroup, spell);
			spell[1] = #(bagsFrame.dataGroup);
		else
			DisplayInfomation(L["Recv spell id "]..tostring(spellID).." error.");
		end
	end
	
	UpdateUnBotBagsFramePage(bagsFrame);
end
