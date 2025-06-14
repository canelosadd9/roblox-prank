local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "PrankGUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local background = Instance.new("Frame")
background.Size = UDim2.new(1, 0, 1, 0)
background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
background.Parent = gui

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 1, 0)
label.BackgroundTransparency = 1
label.TextColor3 = Color3.fromRGB(255, 0, 0)
label.Font = Enum.Font.Code
label.TextScaled = true
label.Text = "HACKING IN PROGRESS...\nDO NOT CLOSE THE GAME"
label.Parent = background

spawn(function()
	while true do
		label.Visible = not label.Visible
		wait(0.5)
	end
end)

local sound = Instance.new("Sound", gui)
sound.SoundId = "rbxassetid://9118823105"
sound.Looped = true
sound.Volume = 0.5
sound:Play()

local loadingBar = Instance.new("Frame", background)
loadingBar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
loadingBar.Size = UDim2.new(0, 0, 0.05, 0)
loadingBar.Position = UDim2.new(0.25, 0, 0.75, 0)

for i = 1, 100 do
	loadingBar.Size = UDim2.new(i / 2 / 100, 0, 0.05, 0)
	wait(0.05)
end

wait(1)
label.Text = "ACCESS GRANTED... WELCOME BACK, AGENT."
wait(2)
label.Text = "Just kidding! 😂"
label.TextColor3 = Color3.fromRGB(0, 255, 0)
sound:Stop()
wait(2)
gui:Destroy()
