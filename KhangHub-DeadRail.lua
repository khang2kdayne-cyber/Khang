--// 🚂 DEAD RAIL + TELEKINESIS TOOL CONTROL – by KhangHub
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService")
local LP = Players.LocalPlayer

local DeadRail = false
local ControlTarget = nil
local speed = 4

--// Tạo tool Telekinesis
local Tool = Instance.new("Tool")
Tool.RequiresHandle = false
Tool.Name = "Telekinesis"
Tool.Parent = LP.Backpack

-- Khi click sẽ chọn object
Tool.Activated:Connect(function()
    local mouse = LP:GetMouse()
    if mouse.Target then
        ControlTarget = mouse.Target
        ControlTarget.Anchored = false
    end
end)

-- DEAD RAIL Toggle
function ToggleDeadRail()
    DeadRail = not DeadRail
    if DeadRail then
        LP.Character.HumanoidRootPart.Anchored = true
    else
        LP.Character.HumanoidRootPart.Anchored = false
    end
end

-- Phím điều khiển
UIS.InputBegan:Connect(function(k,gpe)
    if gpe then return end
    if k.KeyCode == Enum.KeyCode.F then
        ToggleDeadRail()
    end

    if ControlTarget then
        if k.KeyCode == Enum.KeyCode.I then ControlTarget.CFrame = ControlTarget.CFrame * CFrame.new(0, speed, 0) end
        if k.KeyCode == Enum.KeyCode.K then ControlTarget.CFrame = ControlTarget.CFrame * CFrame.new(0, -speed, 0) end
        if k.KeyCode == Enum.KeyCode.J then ControlTarget.CFrame = ControlTarget.CFrame * CFrame.new(-speed, 0, 0) end
        if k.KeyCode == Enum.KeyCode.L then ControlTarget.CFrame = ControlTarget.CFrame * CFrame.new(speed, 0, 0) end
        if k.KeyCode == Enum.KeyCode.O then ControlTarget.Velocity = Vector3.new(0,0,0) end
    end
end)

game.StarterGui:SetCore("SendNotification",{
    Title="KhangHub – Dead Rail";
    Text="[F] bật đứng im\nDùng tool nhấn vào zombie để điều khiển";
})
