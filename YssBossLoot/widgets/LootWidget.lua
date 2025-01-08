local AceGUI = LibStub("AceGUI-3.0")

--------------------------
-- Button		        --
--------------------------
do
	local Type = "YssBossLoot_LootWidget"
	local Version = 1
	local defaultHeight = 28
	local defaultWidth = 250
	
	local function OnAcquire(self)
		-- restore default values
		self:SetHeight(defaultHeight)
		self:SetWidth(defaultWidth)
	end
	
	local function OnRelease(self)
		self.frame:ClearAllPoints()
		self.item = nil
		self.rate = nil
		self.frame:Hide()
	end
	
	local function Button_OnClick(this)
		this.obj:Fire("OnClick", this.obj.link)
		AceGUI:ClearFocus()
	end
	
	local function Button_OnEnter(this)
		this.obj:Fire("OnEnter", this, this.obj.link)
	end
	
	local function Button_OnLeave(this)
		this.obj:Fire("OnLeave", this, this.obj.link)
	end
	
	local function Button_OnSizeChanged(this)
		this.obj.icon:SetWidth(this:GetHeight())
	end
	
	local function SetItem(self, item, rate)
		local itemName, itemLink, itemRarity , _, _, itemType, itemSubType, _, itemEquipLoc = GetItemInfo(item)
		local hex
		self.link = itemLink
		self.item = item
		self.rate = rate
		if itemLink then
			_, _, _, hex = GetItemQualityColor(itemRarity or 1)
			hex = hex.."%s"
			else
			hex = '|cffff2222%s not cached!'
			itemName = item
			--need to add a way to query the info
		end
		if _G[itemEquipLoc] then
			if itemType == ENCHSLOT_WEAPON then
				itemSubType = itemType..'/'..itemSubType
			else
				itemSubType = itemSubType..'/'.._G[itemEquipLoc]
			end
		elseif itemSubType and string.find(itemSubType, MONEY) then -- stupid hack to remoce the (OBSOLETE) tag from bad types
			itemSubType = MONEY
		end
		if tonumber(rate) then
			rate = string.format("%.1f%%", tonumber(rate))
		else
			rate = ''
		end
		self.itemName:SetText(string.format(hex, itemName))
		self.itemDropRate:SetText(rate)
		self.itemType:SetText(itemSubType or '')
		self.icon:SetTexture(GetItemIcon(item))
		return itemLink
	end
	
	local function UpdateItem(self)
		if self.item then
			SetItem(self, self.item, self.rate)
		end
	end

	local function Constructor()
		local self = {}
		self.type = Type
		local frame = CreateFrame("Button",nil,UIParent)
			frame:EnableMouse(true)
			frame:SetHeight(defaultHeight)
			frame:SetWidth(defaultWidth)
			frame:SetScript("OnClick",Button_OnClick)
			frame:SetScript("OnEnter",Button_OnEnter)
			frame:SetScript("OnLeave",Button_OnLeave)
			frame:SetScript("OnSizeChanged",Button_OnSizeChanged)
			frame:SetHighlightTexture([[Interface\QuestFrame\UI-QuestTitleHighlight]])
			
			local icon = frame:CreateTexture()
				icon:SetWidth(defaultHeight-2)
				icon:SetPoint("TOPLEFT", frame, "TOPLEFT",1,-1)
				icon:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT",1,1)
			self.icon = icon
			local itemName = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLeft")
				itemName:SetPoint("TOPLEFT", icon, "TOPRIGHT",3,-1)
				itemName:SetPoint("TOPRIGHT", frame, "TOPRIGHT",-1,-1)
				itemName:SetText("Item Link Here")
			self.itemName = itemName
			local itemDropRate = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
				itemDropRate:SetJustifyH("RIGHT")
				itemDropRate:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT",-3,3)
				itemDropRate:SetWidth(40)
				itemDropRate:SetText("88.88%")
			self.itemDropRate = itemDropRate
			local itemType = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmallLeft")
				itemType:SetPoint("LEFT", icon, "RIGHT",6,0)
				itemType:SetPoint("BOTTOM", frame, "BOTTOM",0,3)
				itemType:SetText("itemTypeHere")
			self.itemType = itemType
			
		self.SetItem = SetItem
		self.UpdateItem = UpdateItem
		
		self.OnRelease = OnRelease
		self.OnAcquire = OnAcquire
		
		self.frame = frame
		frame.obj = self

		AceGUI:RegisterAsWidget(self)
		return self
	end
	
	AceGUI:RegisterWidgetType(Type,Constructor,Version)
end
