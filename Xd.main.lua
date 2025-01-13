--//Leaked by darksoldierzzzz\\--








--fly module

local flySettings={fly=false,flyspeed=50}

local c local h local bv local bav local cam local flying local p=game.Players.LocalPlayer

local buttons={W=false,S=false,A=false,D=false,Moving=false}

local startFly=function()if not p.Character or not p.Character.Head or flying then return end c=p.Character h=c.Humanoid h.PlatformStand=true cam=workspace:WaitForChild('Camera') bv=Instance.new("BodyVelocity") bav=Instance.new("BodyAngularVelocity") bv.Velocity,bv.MaxForce,bv.P=Vector3.new(0,0,0),Vector3.new(10000,10000,10000),1000 bav.AngularVelocity,bav.MaxTorque,bav.P=Vector3.new(0,0,0),Vector3.new(10000,10000,10000),1000 bv.Parent=c.Head bav.Parent=c.Head flying=true h.Died:connect(function()flying=false end)end

local endFly=function()if not p.Character or not flying then return end h.PlatformStand=false bv:Destroy() bav:Destroy() flying=false end

game:GetService("UserInputService").InputBegan:connect(function(input,GPE)if GPE then return end for i,e in pairs(buttons)do if i~="Moving" and input.KeyCode==Enum.KeyCode[i]then buttons[i]=true buttons.Moving=true end end end)

game:GetService("UserInputService").InputEnded:connect(function(input,GPE)if GPE then return end local a=false for i,e in pairs(buttons)do if i~="Moving"then if input.KeyCode==Enum.KeyCode[i]then buttons[i]=false end if buttons[i]then a=true end end end buttons.Moving=a end)

local setVec=function(vec)return vec*(flySettings.flyspeed/vec.Magnitude)end

game:GetService("RunService").Heartbeat:connect(function(step)if flying and c and c.PrimaryPart then local p=c.PrimaryPart.Position local cf=cam.CFrame local ax,ay,az=cf:toEulerAnglesXYZ()c:SetPrimaryPartCFrame(CFrame.new(p.x,p.y,p.z)*CFrame.Angles(ax,ay,az))if buttons.Moving then local t=Vector3.new()if buttons.W then t=t+(setVec(cf.lookVector))end if buttons.S then t=t-(setVec(cf.lookVector))end if buttons.A then t=t-(setVec(cf.rightVector))end if buttons.D then t=t+(setVec(cf.rightVector))end c:TranslateBy(t*step)end end end)















Client = {

	Modules = {

		ClientEnvoirment,

		ClientMain,

		CreateProj,

		CretTrail,

		ModsShit

	},

	Toggles = {

		BHop = false,

		Infammo = false,

		Automtatic = false,

		FireRate = false,

		NoRecoil = false,

		NoSpread = false,

		WallBang = false,

		InstantRespawn = false,

		AntiAim = false,

		AutoAmmo = false,

		AutoHealth = false,

		Trac = false,

		Sight = false,

		FOV = false,

		Golden = true,

		Visiblecheck = false,

		SilentAim = false,



	},

	Values = {

		JumpPower = 50,

		LookMeth = 'Look Up',                                                                                                                                                                                                                                                 

		Test = '',

		FOV = 150,

		ChatMsg = 'Onetap v2 Winning always',

		AimPart = 'Head'





	}

}


NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/Main/Library.lua"))()



if game:IsLoaded() then

	NotificationLibrary:SendNotification("Success", "Onetap Has Been Loaded! Executor Support!", 3)

end



wait(0.5) 



if not game:IsLoaded() then

 game.Players.LocalPlayer:Kick("Contact with : aidar#2500 Code Error 682")

end

wait(0.5) 

if game.Players then

	NotificationLibrary:SendNotification("Success", "Success! Players Loaded esp work!", 3)

end

wait(0.5) 

if not game.Players.LocalPlayer then

	NotificationLibrary:SendNotification("Error", "Error Players not loaded esp not work", 3)

end





NotificationLibrary:SendNotification("Success", "Game : Arsenal", 3)



local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()



local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()

local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()





warn("Onetap Loaded Enjoy")







local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/linemaster2/esp-library/main/library.lua"))();











ESP.Enabled = false;



ESP.ShowBox = false;



ESP.ShowName = false;



ESP.ShowHealth = false;



ESP.ShowTracer = false;



ESP.ShowDistance = false;



ESP.ShowSkeletons = false;







    local ESP_SETTINGS = {



        BoxOutlineColor = Color3.new(1, 1, 1),



        BoxColor = Color3.new(1, 1, 1),



        NameColor = Color3.new(1, 1, 1),



        HealthOutlineColor = Color3.new(0, 0, 0),



        HealthHighColor = Color3.new(0, 1, 0),



        HealthLowColor = Color3.new(1, 0, 0),



        CharSize = Vector2.new(4, 6),



        Teamcheck = false,



        WallCheck = false,



        Enabled = false,



        ShowBox = false,



        BoxType = "2D",



        ShowName = false,



        ShowHealth = false,



        ShowDistance = false,



        ShowSkeletons = false,



        ShowTracer = false,



        TracerColor = Color3.new(1, 1, 1), 



        TracerThickness = 2,



        SkeletonsColor = Color3.new(1, 1, 1),



        TracerPosition = "Bottom",



    }







local fov = 100

local RunService = game:GetService("RunService")

local UserInputService = game:GetService("UserInputService")

local Players = game:GetService("Players")

local Cam = game.Workspace.CurrentCamera



local FOVring = Drawing.new("Circle")

FOVring.Visible = false

FOVring.Thickness = 2

FOVring.Color = Color3.fromRGB(255, 0, 0) 

FOVring.Filled = false 

FOVring.Radius = fov

FOVring.Position = Cam.ViewportSize / 2



local function updateDrawings()

    local camViewportSize = Cam.ViewportSize

    FOVring.Position = camViewportSize / 2

end



local function onKeyDown(input)

    if input.KeyCode == Enum.KeyCode.Delete then

        RunService:UnbindFromRenderStep("FOVUpdate")

        FOVring:Remove()

    end

end


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/aidarkunakbaev02/AllScripts/refs/heads/main/orion%20library.txt')))()

spawn(function()
	while true do
		wait()
		if Client.Toggles.BHop == true then
			game.Players.LocalPlayer.Character.Humanoid.Jump = true
		end
		if Client.Toggles.JumpPower == true then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = Client.Values.JumpPower
		end
		if Client.Toggles.InstantRespawn == true then
			if not game.Players.LocalPlayer.Character:FindFirstChild('Spawned') and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cam") then
				if game.Players.LocalPlayer.PlayerGui.Menew.Enabled == false then
					game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
					wait()
				end
			end
		end
	end
end)


Library:Notify('Loading onetap...')
wait(0.1)
Library:Notify('Loading onetap...')
wait(0.1)
Library:Notify('Loading onetap...')
Library:Notify('Loading onetap...')
wait(0.1)
Library:Notify('Loading onetap...')
wait(0.1)
Library:Notify('Loading onetap...')

Library:Notify('Loading onetap...')
wait(0.1)
Library:Notify('Loading onetap...')
wait(0.1)
Library:Notify('Loading onetap...')

Library:Notify('Loading onetap...')
wait(0.1)
Library:Notify('Loading onetap...')
wait(0.1)
Library:Notify('Loading onetap...')

Library:Notify('Loading onetap...')
wait(0.1)
Library:Notify('Loading onetap...')
wait(0.1)
Library:Notify('Loading onetap...')

Library:Notify('Loading onetap...')
wait(0.1)
Library:Notify('Loading onetap...')
wait(0.1)
Library:Notify('Loading onetap...')

Library:Notify('Loading onetap...')
wait(0.1)
Library:Notify('Loading onetap...')
wait(0.1)
Library:Notify('Loading onetap...')

wait(6)





local Window = OrionLib:MakeWindow({IntroText = "IS NOT KEY SYSTEM! ", IntroIcon = "rbxassetid://15315284749",Name = ("Onetap.su V2.8".." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://", HidePremium = false, SaveConfig = true, IntroEnabled = false, ConfigFolder = "Onetap Saver"})



wait(0.9)

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://7733964719",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Ddossssssss"
})

Tab:AddLabel("Status : Detected")

Tab:AddLabel("Place Name : Arsenal")

Library:SetWatermarkVisibility(true)

-- Example of dynamically-updating watermark with common traits (fps and ping)
local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 60;

local WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter += 1;

    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;

    Library:SetWatermark(('Onetap.su | %s fps | %s ms'):format(
        math.floor(FPS),
        math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    ));
end);


local Tab = Window:MakeTab({
	Name = "Chat Fe",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Admin",
	Default = false,
	Callback = function(x)
		if game.Players.LocalPlayer:FindFirstChild('IsAdmin') then
      game.Players.LocalPlayer.IsAdmin:Destroy()
      return
  end
      if x then
  local IsAdmin = Instance.new('IntValue', game.Players.LocalPlayer)
  IsAdmin.Name = "IsAdmin"
  end
	end    
})

Tab:AddToggle({
	Name = "vip",
	Default = false,
	Callback = function(x)
		if game.Players.LocalPlayer:FindFirstChild('OldVIP') then
      game.Players.LocalPlayer.OldVIP:Destroy()
      return
  end
      if x then
  local IsMod = Instance.new('IntValue', game.Players.LocalPlayer)
  IsMod.Name = "OldVIP"
  end
	end    
})


Tab:AddToggle({
	Name = "Mod",
	Default = false,
	Callback = function(x)
		if game.Players.LocalPlayer:FindFirstChild('IsChad') then
      game.Players.LocalPlayer.IsChad:Destroy()
      return
  end
      if x then
  local IsMod = Instance.new('IntValue', game.Players.LocalPlayer)
  IsMod.Name = "IsChad"
  end
	end    
})

Tab:AddToggle({
	Name = "That cool",
	Default = false,
	Callback = function(x)
		if game.Players.LocalPlayer:FindFirstChild('Romin') then
      game.Players.LocalPlayer.Romin:Destroy()
      return
  end
      if x then
  local IsAdmin = Instance.new('IntValue', game.Players.LocalPlayer)
  IsAdmin.Name = "Romin"
  end
	end    
})


local Tab = Window:MakeTab({
	Name = "Aimbot",
	Icon = "rbxassetid://7733765307",
	PremiumOnly = false
})



local Section = Tab:AddSection({
	Name = "Aim"
})




Tab:AddButton({
	Name = "Silent Aim",
	Callback = function()
      		function getplrsname() for i,v in pairs(game:GetChildren()) do if v.ClassName == "Players" then return v.Name end end end local players = getplrsname() local plr = game[players].LocalPlayer coroutine.resume(coroutine.create(function() while wait(1) do coroutine.resume(coroutine.create(function() for _,v in pairs(game[players]:GetPlayers()) do if v.Name ~= plr.Name and v.Character then v.Character.RightUpperLeg.CanCollide = false v.Character.RightUpperLeg.Transparency = 75 v.Character.RightUpperLeg.Size = Vector3.new(21,21,21) v.Character.LeftUpperLeg.CanCollide = false v.Character.LeftUpperLeg.Transparency = 75 v.Character.LeftUpperLeg.Size = Vector3.new(21,21,21) v.Character.HeadHB.CanCollide = false v.Character.HeadHB.Transparency = 75 v.Character.HeadHB.Size = Vector3.new(21,21,21) v.Character.HumanoidRootPart.CanCollide = false v.Character.HumanoidRootPart.Transparency = 75 v.Character.HumanoidRootPart.Size = Vector3.new(21,21,21) end end end)) end end))
  	end    
})






Tab:AddButton({
	Name = "Infinite Ammo",
	Callback = function()
      		while wait() do	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 100	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 100
end
  	end    
})

local replicationstorage = game.ReplicatedStorage

Tab:AddButton({
	Name = "Fast fire",
	Callback = function()
    for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
 if v.Name == "FireRate" then
       v.Value = 0.05
   end
end
  	end    
})




local Tab = Window:MakeTab({
	Name = "Movement",
	Icon = "rbxassetid://136136009702597",
	PremiumOnly = false
})



Tab:AddToggle({
	Name = "Fly",
	Default = false,
	Callback = function(state)
		  if state then
    startFly()
  else
    endFly()
  end
	end    
})

Tab:AddSlider({
	Name = "Fly Speed",
	Min = 0,
	Max = 300,
	Default = 0,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(s)
		  flySettings.flyspeed = s
	end    
})

Tab:AddToggle({
	Name = "Bhop",
	Default = false,
	Callback = function(state)
		Client.Toggles.BHop = state
	end    
})

Tab:AddToggle({
	Name = "Teleport Aura",
	Default = false,
	Callback = function(bool)
		getgenv().AutoFarm = bool

    local runServiceConnection
    local mouseDown = false
    local player = game.Players.LocalPlayer
    local camera = game.Workspace.CurrentCamera

    game:GetService("ReplicatedStorage").wkspc.CurrentCurse.Value = bool and "Infinite Ammo" or ""

    function getClosestEnemyPlayer()
        local closestDistance = math.huge
        local closestPlayer = nil

        for _, enemyPlayer in pairs(game.Players:GetPlayers()) do
            if enemyPlayer ~= player and enemyPlayer.TeamColor ~= player.TeamColor and enemyPlayer.Character then
                local character = enemyPlayer.Character
                local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                local humanoid = character:FindFirstChild("Humanoid")
                if humanoidRootPart and humanoid and humanoid.Health > 0 then
                    local distance = (player.Character.HumanoidRootPart.Position - humanoidRootPart.Position).Magnitude
                    if distance < closestDistance and humanoidRootPart.Position.Y >= 0 then
                        closestDistance = distance
                        closestPlayer = enemyPlayer
                    end
                end
            end
        end

        return closestPlayer
    end

    local function startAutoFarm()
        game:GetService("ReplicatedStorage").wkspc.TimeScale.Value = 12

        runServiceConnection = game:GetService("RunService").Stepped:Connect(function()
            if getgenv().AutoFarm then
                local closestPlayer = getClosestEnemyPlayer()
                if closestPlayer then
                    local targetPosition = closestPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, -4)
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                        camera.CFrame = CFrame.new(camera.CFrame.Position, closestPlayer.Character.Head.Position)

                        if not mouseDown then
                            mouse1press()
                            mouseDown = true
                        end
                    end
                else
                    if mouseDown then
                        mouse1release()
                        mouseDown = false
                    end
                end
            else
                if runServiceConnection then
                    runServiceConnection:Disconnect()
                    runServiceConnection = nil
                end
                if mouseDown then
                    mouse1release()
                    mouseDown = false
                end
            end
        end)
    end

    local function onCharacterAdded(character)
        wait(0.5)
        startAutoFarm()
    end

    player.CharacterAdded:Connect(onCharacterAdded)

    if bool then
        wait(0.5)
        startAutoFarm()
    else
        game:GetService("ReplicatedStorage").wkspc.CurrentCurse.Value = ""
        getgenv().AutoFarm = false
        game:GetService("ReplicatedStorage").wkspc.TimeScale.Value = 1
        if runServiceConnection then
            runServiceConnection:Disconnect()
            runServiceConnection = nil
        end
        if mouseDown then
            mouse1release()
            mouseDown = false
        end
    end
	end    
})


Tab:AddButton({
	Name = "Speed Hack (50)",
	Callback = function()
      		_G.WS = "50";
        local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
        Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        Humanoid.WalkSpeed = _G.WS;
        end)
        Humanoid.WalkSpeed = _G.WS;
  	end    
})

Tab:AddButton({
	Name = "Speed Hack (100)",
	Callback = function()
      		_G.WS = "100";
        local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
        Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        Humanoid.WalkSpeed = _G.WS;
        end)
        Humanoid.WalkSpeed = _G.WS;
  	end    
})

local Tab = Window:MakeTab({
	Name = "Visual",
	Icon = "rbxassetid://7733954403",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Enable Esp",
	Default = false,
	Callback = function(Value)
		ESP.Enabled = Value;
	end    
})

Tab:AddToggle({
	Name = "Show Name Enemy",
	Default = false,
	Callback = function(Value)
		ESP.ShowName = Value;
	end    
})

Tab:AddToggle({
	Name = "Show Box Enemy",
	Default = false,
	Callback = function(Value)
		ESP.ShowBox = Value;
	end    
})

Tab:AddToggle({
	Name = "Show Tracers Enemy",
	Default = false,
	Callback = function(Value)
		ESP.ShowTracer = Value;
	end    
})

Tab:AddToggle({
	Name = "Show Health Enemy",
	Default = false,
	Callback = function(Value)
		ESP.ShowHealth = Value;
	end    
})

Tab:AddToggle({
	Name = "Show Enemy Skeleton",
	Default = false,
	Callback = function(Value)
		ESP.ShowSkeletons = Value;
	end    
})


Tab:AddToggle({
	Name = "TeamCheck",
	Default = false,
	Callback = function(Value)
		ESP.Teamcheck = Value;	
	end    
})




Tab:AddDropdown({
	Name = "Esp box Type",
	Default = "2D",
	Options = {"2D", "Corner Box Esp"},
	Callback = function(Value)
		 ESP.BoxType = Value
	end    
})

Tab:AddDropdown({
	Name = "Tracer position",
	Default = "Bottom",
	Options = {"Bottom", "Top", "Middle"},
	Callback = function(Value)
		ESP.TracerPosition = Value;
	end    
})



local Section = Tab:AddSection({
	Name = "POV fov"
})



Tab:AddToggle({
	Name = "Draw fov",
	Default = false,
	Callback = function(Value)
		FOVring.Visible = Value
	end    
})

Tab:AddToggle({
	Name = "Filled fov",
	Default = false,
	Callback = function(Value)
		FOVring.Filled = Value
	end    
})

Tab:AddSlider({
	Name = "fov Radius/Size",
	Min = 40,
	Max = 300,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Radius",
	Callback = function(Value)
	FOVring.Radius = Value
	end    
})




Tab:AddColorpicker({
	Name = "fov Color",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		FOVring.Color = Value
	end	  
})

Tab:AddSlider({
	Name = "Arsenal Fov",
	Min = 1,
	Max = 200,
	Default = 70,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Radius",
	Callback = function(num)
	game:GetService("Players").LocalPlayer.Settings.FOV.Value = num
	end    
})

local Tab = Window:MakeTab({
	Name = "More",
	Icon = "rbxassetid://7734053426",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Rainbow Gun (Skin FE)",
	Callback = function()
      		local c = 1 function zigzag(X)  return math.acos(math.cos(X * math.pi)) / math.pi end game:GetService("RunService").RenderStepped:Connect(function()  if game.Workspace.Camera:FindFirstChild('Arms') then   for i,v in pairs(game.Workspace.Camera.Arms:GetDescendants()) do    if v.ClassName == 'MeshPart' then      v.Color = Color3.fromHSV(zigzag(c),1,1)     c = c + .0001    end   end  end end)
  	end    
})





Tab:AddButton({
	Name = "kill all not my script",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/MisterGunXD/yes/main/rolve%3C3.lua"))();
  	end    
})



Tab:AddButton({
	Name = "Small Server",
	Callback = function()
      		local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"
local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
end
local Server, Next; repeat
   local Servers = ListServers(Next)
   Server = Servers.data[1]
   Next = Servers.nextPageCursor
until Server
TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
end    
})

Tab:AddButton({
	Name = "ReJoin",
	Callback = function()
      		local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(game.PlaceId, p)
end    
})

local Fi = Window:MakeTab({
	Name = "Links",
	Icon = "rbxassetid://7733978098",
	PremiumOnly = false
})


Fi:AddLabel("Made By aidar#2500")

Fi:AddButton({
	Name = "copy discord (pls join) ",
	Callback = function()
      		setclipboard("https://discord.gg/R4bPMdUsP7")
  	end    
})

Fi:AddButton({
	Name = "Destroy gui",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})


OrionLib:Init()







