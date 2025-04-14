for _, g in pairs({MainMenuBarTexture1, MainMenuBarTexture0, BonusActionBarTexture1, BonusActionBarTexture0, BonusActionBarTexture2}) do
    if g then
        g:SetTexture("")
    end
end

local function processActionBarButtons(barName, buttonPrefix, xOffset)
    local bar = getglobal(barName)
    if not bar then return end

    for i = 1, 12 do
        local button = getglobal(buttonPrefix .. i)
        if button then
            button:SetWidth(36)
            button:SetHeight(36)
            button:SetNormalTexture("Interface\\Addons\\Turtle-Dragonflight\\img\\uiactionbariconframe.tga")
            button:SetHighlightTexture("Interface\\Addons\\Turtle-Dragonflight\\img\\uiactionbariconframehighlight.tga")
            button:SetFrameStrata("MEDIUM")
        end
    end
end

processActionBarButtons("MultiBarBottomLeft", "MultiBarBottomLeftButton", -125)
processActionBarButtons("MultiBarRight", "MultiBarRightButton", 127)
processActionBarButtons("MultiBarLeft", "MultiBarLeftButton", -380)
processActionBarButtons("MultiBarBottomRight", "MultiBarBottomRightButton", 380)

local rightActionBar = MultiBarRight
if rightActionBar then
    local point, relativeTo, relativePoint, xOfs, yOfs = rightActionBar:GetPoint()
    rightActionBar:ClearAllPoints()
    rightActionBar:SetPoint(point, relativeTo, relativePoint, xOfs, yOfs + 10);
end
