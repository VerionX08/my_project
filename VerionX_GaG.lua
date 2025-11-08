local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local Window = WindUI:CreateWindow({
    Title = "Verion Hub",
    Icon = "moon", -- lucide icon. optional
    Author = "by VerionX", -- optional
   Size = UDim2.fromOffset(580, 460),
   Resizable = true,
Transparent = true,
BackgroundImageTransparency = 0.42,
  
})

Window:EditOpenButton({
    Title = "Open VerionHub",
    Icon = "moon",
    CornerRadius = UDim.new(0,4),
    StrokeThickness = 2,
    Color = ColorSequence.new( -- gradient
        Color3.fromHex("0066CC"), 
        Color3.fromHex("FFFFFF")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})

local MainTab = Window:Tab({
Title = "Main",
Icon = "app-window",
})

local Section1 = MainTab:Section({
Title = "Section1",
Icon = "logs",
})

_G.sword = false

MainTab:Toggle({
    Title = "Auto Giant Sword",
    Icon = "sword",
Desc = "Auto Admin Weather",
    Default = false,
    Callback = function(state)
        _G.sword = state

        while _G.sword do
coroutine.wrap(function()
            game:GetService("ReplicatedStorage")
                :WaitForChild("GameEvents")
                :WaitForChild("GiantSwordPull")
                :InvokeServer()
end)()
task.wait(0.05)
        end
    end,
})
_G.seed = false
local Toggle = MainTab:Toggle({
    Title = "Auto unfreeze green bean guy",
    Desc = "idk why I created this",
    Icon = "snowflake",
    Value = false, -- default value
    Callback = function(state) 
        _G.seed = state

while _G.seed do
local prompt1 = workspace.WeatherVisuals.Pillars.Pillar_1.Offering.ProximityPrompt
local prompt2 = workspace.WeatherVisuals.Pillars.Pillar_2.Offering.ProximityPrompt
local prompt3 = workspace.WeatherVisuals.Pillars.Pillar_3.Offering.ProximityPrompt
local prompt4 = workspace.WeatherVisuals.Pillars.Pillar_4.Offering.ProximityPrompt
local prompt5 = workspace.WeatherVisuals.Pillars.Pillar_5.Offering.ProximityPrompt

fireproximityprompt(prompt1)
task.wait(0.5)
fireproximityprompt(prompt2)
task.wait(0.5)
fireproximityprompt(prompt3)
task.wait(0.5)
fireproximityprompt(prompt4)
task.wait(0.5)
fireproximityprompt(prompt5)
    end
end,
})
