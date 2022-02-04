-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local menu = library.new("ZENITSU MENU", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

--vars
local plrselected = ""
local chattospam = "zenitsu menu"
local spammingchat = false
local velocidade = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
local playerlist = {}
local localplayer = game.Players.LocalPlayer
--end vars

--funcoes
function updateplrlist()
    --apaga tudo na lista playerlist
    for player in pairs(playerlist) do
        if player then
			table.remove(playerlist,player)
		end
    end
    --adiciona todos os jogadores do jogo na lista playerlist
    for i, player in pairs(game.Players:GetChildren()) do
        table.insert(playerlist, player.Name)
    end
end

function refresh()
	local oldpos = localplayer.Character.HumanoidRootPart.CFrame
	localplayer.Character.Humanoid.Health = 0
	if localplayer.Character:FindFirstChild("Head") then localplayer.Character.Head:Destroy() end
	localplayer.CharacterAdded:Wait()
	localplayer.Character:WaitForChild("HumanoidRootPart")
	localplayer.Character.HumanoidRootPart.CFrame = oldpos
end
--end funcoes

-- first page
local localplrpage = menu:addPage("LocalPlayer", 5012544693)
local localplrsec = localplrpage:addSection("LocalPlayer")
local plrspage = menu:addPage("Players", 5012544693)
local plrssec = plrspage:addSection("Players")

localplrsec:addButton("Infinite Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

localplrsec:addButton("Refresh", function()
    refresh()
end)

localplrsec:addButton("Invisfling", function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "FE Invisible Fling";
        Text = "hehe boi get load'd";
        Duration = 3;
        })
        
        spawn(function()
        local message = Instance.new("Message",workspace)
        message.Text = "Press z to execute or X to respawn."
        wait(0.5)
        message:Destroy()
        end)
        
        
        local mouse = game.Players.LocalPlayer:GetMouse()
        
        local groot = nil
        
        mouse.KeyDown:connect(function(k)
            
            if k == "z" then
                
                
                
        spawn(function()
        local message = Instance.new("Message",workspace)
        message.Text = "Fe Invisible Fling feito por ZENITSU MENU Loaded (wait 2 seconds to load)" -- he changed this text to make the script say that was made by him, but it was not, he is just a skidder... | ele mudou esse texto para fazer o código dizer que foi feito por ele, mas não foi, ele é apenas um skidder...
        wait(2)
        message:Destroy()
        end)
        
        
        local ch = game.Players.LocalPlayer.Character
        local prt=Instance.new("Model", workspace)
        local z1 =  Instance.new("Part", prt)
        z1.Name="Torso"
        z1.CanCollide = false
        z1.Anchored = true
        local z2  =Instance.new("Part", prt)
        z2.Name="Head"
        z2.Anchored = true
        z2.CanCollide = false
        local z3 =Instance.new("Humanoid", prt)
        z3.Name="Humanoid"
        z1.Position = Vector3.new(0,9999,0)
        z2.Position = Vector3.new(0,9991,0)
         game.Players.LocalPlayer.Character=prt
        wait(5)
        game.Players.LocalPlayer.Character=ch
        wait(6)
        
        
        local plr = game.Players.LocalPlayer
        mouse = plr:GetMouse()
        
        local Hum = Instance.new("Humanoid")
        Hum.Parent = game.Players.LocalPlayer.Character
        
        
        local root =  game.Players.LocalPlayer.Character.HumanoidRootPart
        
        
        for i,v in pairs(plr.Character:GetChildren()) do
            
            if v ~= root and  v.Name ~= "Humanoid" then
                
                v:Destroy()
                
            end
            
            
        end
                   
        workspace.CurrentCamera.CameraSubject = root
        
        local se = Instance.new("SelectionBox",root)
        se.Adornee = root
        
        
        game:GetService('RunService').Stepped:connect(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
        end)
        game:GetService('RunService').RenderStepped:connect(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
        end)
        
        
        power = 999999 -- change this to make it more or less powerful
        
        power = power*10
        
        ---
        wait(.1)
        local bambam = Instance.new("BodyThrust")
        bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        bambam.Force = Vector3.new(power,0,power)
        bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position 
        
        
        
        
        
        local plr = game.Players.LocalPlayer
        local torso = root
        local flying = true
        local deb = true
        local ctrl = {f = 0, b = 0, l = 0, r = 0}
        local lastctrl = {f = 0, b = 0, l = 0, r = 0}
        local maxspeed = 120
        local speed = 15
        
        
        ---local bambam = Instance.new("BodyThrust")
        ---bambam.Parent = torso
        --bambam.Force = Vector3.new(9999999,0,9999999)
        --bambam.Location = torso.Position
        
        
        ---
        groot = root
         
        function Fly()
        local bg = Instance.new("BodyGyro", torso)
        bg.P = 9e4
        bg.maxTorque = Vector3.new(0, 0, 0)
        bg.cframe = torso.CFrame
        local bv = Instance.new("BodyVelocity", torso)
        bv.velocity = Vector3.new(0,0,0)
        bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
        repeat wait()
        
        if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
        speed = speed+.2
        if speed > maxspeed then
        speed = maxspeed
        end
        elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
        speed = speed-1
        if speed < 0 then
        speed = 0
        end
        end
        if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
        bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
        lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
        elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
        bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
        else
        bv.velocity = Vector3.new(0,0.1,0)
        end
        
        until not flying
        ctrl = {f = 0, b = 0, l = 0, r = 0}
        lastctrl = {f = 0, b = 0, l = 0, r = 0}
        speed = 0
        bg:Destroy()
        bv:Destroy()
        
        end
        mouse.KeyDown:connect(function(key)
        if key:lower() == "e" then
        if flying then flying = false
        else
        flying = true
        Fly()
        end
        elseif key:lower() == "w" then
        ctrl.f = 1
        elseif key:lower() == "s" then
        ctrl.b = -1
        elseif key:lower() == "a" then
        ctrl.l = -1
        elseif key:lower() == "d" then
        ctrl.r = 1
        end
        end)
        mouse.KeyUp:connect(function(key)
        if key:lower() == "w" then
        ctrl.f = 0
        elseif key:lower() == "s" then
        ctrl.b = 0
        elseif key:lower() == "a" then
        ctrl.l = 0
        elseif key:lower() == "d" then
        ctrl.r = 0
        elseif key:lower() == "r" then
        
        end
        end)
        Fly()
        
                
                
            elseif k == "x" then
                
                
                spawn(function()
        local message = Instance.new("Message",workspace)
        message.Text = "Respawning dont spam"
        wait(1)
        message:Destroy()
        end)
                
                local saved = groot.Position
                
        local ch = game.Players.LocalPlayer.Character
        local prt=Instance.new("Model", workspace)
        local z1 =  Instance.new("Part", prt)
        z1.Name="Torso"
        z1.CanCollide = false
        z1.Anchored = true
        local z2  =Instance.new("Part", prt)
        z2.Name="Head"
        z2.Anchored = true
        z2.CanCollide = false
        local z3 =Instance.new("Humanoid", prt)
        z3.Name="Humanoid"
        z1.Position = Vector3.new(0,9999,0)
        z2.Position = Vector3.new(0,9991,0)
         game.Players.LocalPlayer.Character=prt
        wait(5)
         game.Players.LocalPlayer.Character=ch
        local poop = nil
                repeat wait() poop = game.Players.LocalPlayer.Character:FindFirstChild("Head") until poop ~= nil
                wait(1)
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(saved)
                
            end
            
            
        end)
end)


localplrsec:addTextbox("Spam Text", "zenitsu menu", function(value, focusLost)
	if focusLost then
		chattospam = value
	end
end)

localplrsec:addToggle("Spam Chat", nil, function(value)
    if value then
		spammingchat = true
        while wait() do
			if spammingchat then
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chattospam, "All")
			else
				break
			end
		end
    else
        spammingchat = false
    end
end)

localplrsec:addSlider("Walkspeed", velocidade, 0, 1000, function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

updateplrlist()
plrdrop = plrssec:addDropdown("Player Name",playerlist, function(plrname)
    plrselected = plrname
end)

plrssec:addButton("Update Player List", function()
    local success, error = pcall(function()
		updateplrlist()
		wait(0.2)
		plrssec:updateDropdown(plrdrop, "Player Name", playerlist)
	end)
	print(error)
end)

plrssec:addButton("Teleport", function()
    local success, error = pcall(function()
        if plrselected == "" then
            menu:Notify("ZENITSU MENU", "Selecione um player!")
        else
            if game.Players:FindFirstChild(plrselected) then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(plrselected).Character.HumanoidRootPart.CFrame
            end
        end
    end)
    print(error)
end)

plrssec:addToggle("Loop Teleport", nil, function(value)
    if value then
		loopteleport = true
        while wait() do
			if loopteleport then
				pcall(function()
					if loopteleport then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(plrselected).Character.HumanoidRootPart.CFrame
					end
				end)
			else
				break
			end
		end
    else
        loopteleport = false
    end
end)

local settingspage = menu:addPage("Settings", 5012544693)
local settingssection = settingspage:addSection("Settings")

settingssection:addKeybind("Open/Close Keybind", Enum.KeyCode.F4, function()
    menu:toggle()
    end, function()
end)
for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
	settingssection:addColorPicker(theme, color, function(color3)
		menu:setTheme(theme, color3)
	end)
end

menu:SelectPage(menu.pages[1], true)
