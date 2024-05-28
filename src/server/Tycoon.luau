local template = game:GetService("ServerStorage").Template 

local function NewModel(model, cframe)
    local NewModel = model:Clone()
    NewModel:setPrimaryPartCFrame(cframe)
    NewModel.Parent = workspace 
    return NewModel
end
 
local Tycoon = {}
Tycoon.__index = Tycoon

function Tycoon.new()
    local self =  setmetatable({}, Tycoon)
    self.Owner = player

    return self
end

function Tycoon:Init()
    self.model = NewModel(template, CFrame.new())
end

function Tycoon:Destroy()
    
end

 return Tycoon
 
 