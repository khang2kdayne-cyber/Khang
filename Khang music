--// 🎶 KHANG – SERVER MUSIC PLAYER HUB
-- Tạo UI
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0,220,0,160)
Frame.Position = UDim2.new(0.4,0,0.35,0)
Frame.BackgroundColor3 = Color3.fromRGB(30,30,30)
Frame.Active = true
Frame.Draggable = true

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1,0,0,25)
Title.BackgroundTransparency = 1
Title.Text = "🎵 Khang Music Player"
Title.TextColor3 = Color3.new(1,1,1)

local Input = Instance.new("TextBox", Frame)
Input.Size = UDim2.new(1,-20,0,30)
Input.Position = UDim2.new(0,10,0,35)
Input.PlaceholderText = "Nhập ID nhạc Roblox..."
Input.Text = ""
Input.BackgroundColor3 = Color3.fromRGB(45,45,45)
Input.TextColor3 = Color3.new(1,1,1)

local VolumeSlider = Instance.new("TextBox", Frame)
VolumeSlider.Size = UDim2.new(1,-20,0,30)
VolumeSlider.Position = UDim2.new(0,10,0,70)
VolumeSlider.PlaceholderText = "Volume (0 - 10)"
VolumeSlider.Text = "5"
VolumeSlider.BackgroundColor3 = Color3.fromRGB(45,45,45)
VolumeSlider.TextColor3 = Color3.new(1,1,1)

local PlayBtn = Instance.new("TextButton", Frame)
PlayBtn.Size = UDim2.new(1,-20,0,35)
PlayBtn.Position = UDim2.new(0,10,0,110)
PlayBtn.Text = "▶ Play Music"
PlayBtn.BackgroundColor3 = Color3.fromRGB(0,150,50)
PlayBtn.TextColor3 = Color3.new(1,1,1)

--// 🎧 Phát nhạc server
local Sound = Instance.new("Sound", game.Workspace)
Sound.Looped = true

PlayBtn.MouseButton1Click:Connect(function()
    local id = tonumber(Input.Text)
    if not id then return end
    
    Sound.SoundId = "rbxassetid://"..id
    Sound.Volume = tonumber(VolumeSlider.Text) or 5
    Sound:Play()
end)
