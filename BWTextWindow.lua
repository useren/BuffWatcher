local AceGUI = LibStub("AceGUI-3.0")

BWTextWindow = {
    PartyCheckBox = {

    }
}


local SCALE_LENGTH = 10

function ChangeFontSize(fontString,size)
    local Font, Height, Flags = fontString:GetFont()
    fontString:SetFont(Font, size, Flags)
end


function BWTextWindow:CreateWindow()
    local frame = AceGUI:Create("Frame")
    frame:SetTitle("文字版")
    frame:SetLayout("List")
    frame:SetWidth(52*SCALE_LENGTH)
    frame:SetHeight(58*SCALE_LENGTH)

    -- local FlowLayout1 = AceGUI:Create("SimpleGroup")
    -- FlowLayout1:SetLayout("Flow")
    -- FlowLayout1:SetWidth(52*SCALE_LENGTH)
    -- FlowLayout1:SetHeight(20*SCALE_LENGTH)
    -- frame:AddChild(FlowLayout1)


    local editbox = AceGUI:Create("MultiLineEditBox")
    editbox:SetLabel("")
    editbox:SetText("default")
    editbox:SetWidth(50*SCALE_LENGTH)
    editbox:SetHeight(20*SCALE_LENGTH)
    frame:AddChild(editbox)

    local editboxNames = AceGUI:Create("MultiLineEditBox")
    editboxNames:SetLabel("")
    editboxNames:SetText("default")
    editboxNames:SetWidth(50*SCALE_LENGTH)
    editboxNames:SetHeight(30*SCALE_LENGTH)
    frame:AddChild(editboxNames)

    BWTextWindow.editbox = editbox
    BWTextWindow.editboxNames = editboxNames
    BWTextWindow.frame = frame
end

function BWTextWindow:Show()
    BWTextWindow.frame:Show()
end

function BWTextWindow:Hide()
    BWTextWindow.frame:Hide()
end

function BWTextWindow:SetCopiableText(text, textNames)
    BWTextWindow.editbox:SetText(text)
    BWTextWindow.editboxNames:SetText(textNames)
end