local SG = game:GetService("StarterGui")

SG:SetCore("SendNotification", {
	Title = "UTD Hub";
	Text = "Credits: SattTheDeveloper (roblox)឵";
	Duration = 5;
	Button1 = "OK";
})

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local General = Instance.new("TextButton")
local br01 = Instance.new("TextButton")
local none = Instance.new("TextButton")
local none2 = Instance.new("TextButton")
local close = Instance.new("TextButton")
local open = Instance.new("TextButton")


ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.Position = UDim2.new(0, 0, 0.77, 0)
main.Size = UDim2.new(0, 800, 0, 400)
main.Active = true
main.Draggable = true
main.BorderColor3 = Color3.new(255,255,255)
main.BorderSizePixel = 7.5

Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(0,0,0)
Title.Size = UDim2.new(0, 800, 0, 75)
Title.Font = Enum.Font.Arcade
Title.Text = "UTD Hub"
Title.TextColor3 = Color3.fromRGB(255, 0, 0)
Title.TextSize = 17.000
Title.TextScaled = true
Title.BorderColor3 = Color3.new(255,255,255)
Title.BorderSizePixel = 7.5

General.Parent = main
General.BackgroundColor3 = Color3.fromRGB(0,0,0)
General.Position = UDim2.new(0.025, 0, 0.25, 0)
General.Size = UDim2.new(0, 150, 0, 50)
General.Font = Enum.Font.Arcade
General.Text = "General Battles"
General.TextColor3 = Color3.fromRGB(255,255,255)
General.TextSize = 40.000
General.TextScaled = true
General.BorderColor3 = Color3.new(255,255,255)
General.BorderSizePixel = 7.5

br01.Parent = main
br01.BackgroundColor3 = Color3.fromRGB(0,0,0)
br01.Position = UDim2.new(0.275, 0, 0.25, 0)
br01.Size = UDim2.new(0, 150, 0, 50)
br01.Font = Enum.Font.Arcade
br01.Text = "Boss Raid 0-1"
br01.TextColor3 = Color3.fromRGB(255,255,255)
br01.TextSize = 40.000
br01.TextScaled = true
br01.BorderColor3 = Color3.new(255,255,255)
br01.BorderSizePixel = 7.5

none.Parent = main
none.BackgroundColor3 = Color3.fromRGB(0,0,0)
none.Position = UDim2.new(0.525, 0, 0.25, 0)
none.Size = UDim2.new(0, 150, 0, 50)
none.Font = Enum.Font.Arcade
none.Text = "Coming Soon"
none.TextColor3 = Color3.fromRGB(255,255,255)
none.TextSize = 40.000
none.TextScaled = true
none.BorderColor3 = Color3.new(255,255,255)
none.BorderSizePixel = 7.50

none2.Parent = main
none2.BackgroundColor3 = Color3.fromRGB(0,0,0)
none2.Position = UDim2.new(0.775, 0, 0.25, 0)
none2.Size = UDim2.new(0, 150, 0, 50)
none2.Font = Enum.Font.Arcade
none2.Text = "Coming Soon"
none2.TextColor3 = Color3.fromRGB(255,255,255)
none2.TextSize = 40.000
none2.TextScaled = true
none2.BorderColor3 = Color3.new(255,255,255)
none2.BorderSizePixel = 7.5

close.Parent = main
close.BackgroundColor3 = Color3.fromRGB(0,0,0)
close.Position = UDim2.new(0.905, 0, 0, 0)
close.Size = UDim2.new(0, 75, 0, 75)
close.Font = Enum.Font.Arcade
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255,0,0)
close.TextSize = 40.000
close.TextScaled = true
close.BorderColor3 = Color3.new(255,255,255)
close.BorderSizePixel = 7.5


open.Name = "open"
open.Parent = ScreenGui
open.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
open.Position = UDim2.new(0, 0, 0.77, 0)
open.Size = UDim2.new(0, 150, 0, 65)
open.Visible = false
open.Font = Enum.Font.Arcade
open.Text = "Open"
open.TextColor3 = Color3.fromRGB(255, 0, 0)
open.TextScaled = true
open.BorderColor3 = Color3.new(255,255,255)
open.BorderSizePixel = 7.5

--Close/Open Functions
function Close()
    if main.Visible == true and open.Visible == false then
main.Visible = false
open.Visible = true
end
end

function Open()
if main.Visible == false and open.Visible == true then
main.Visible = true
open.Visible = false
end
end

--Gui Functions

close.MouseButton1Down:connect(function()
Close()
end)

open.MouseButton1Down:connect(function()
Open()
end)

General.MouseButton1Down:connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/MCUsers/UTDHub/main/general.lua'))()

br01.MouseButton1Down:connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/MCUsers/UTDHub/main/br0-1.lua'))()
end)

local speed = 5

while wait(0.05) do
for i = 0,1,0.001*speed do
Title.TextColor3 = Color3.fromHSV(i,1,1)
open.TextColor3 = Color3.fromHSV(i,1,1)
wait()
end
end
