-- Copy paste of the search box code from retail. Put into a hooksecurefunc to make it compatible.

hooksecurefunc("ContainerFrame_Update", function( self )
	if self:GetID() == 0 then
		BagItemSearchBox:SetParent(self)
		BagItemSearchBox:SetPoint("TOPLEFT", self, "TOPLEFT", 55, -29)
		BagItemSearchBox.anchorBag = self
		BagItemSearchBox:Show()
	elseif BagItemSearchBox.anchorBag == self then
		BagItemSearchBox:ClearAllPoints()
		BagItemSearchBox:Hide()
		BagItemSearchBox.anchorBag = nil
	end
end)