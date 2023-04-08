-- Hyper Escape v4.2 Synapse X
syn.run_on_actor(getactors()[1], [[
    game.RunService.RenderStepped:Connect(function()
        for i,v in pairs(workspace.Camera:GetChildren()) do 
            if v.Name ~= "Left Arm" and v.Name ~= "Right Arm" and v.Name ~= "neon" then 
              _G.SilentAim.GunName=v.Name
            end
        end 
    end)
    _G.SilentAim={ 
        Enabled       = false,
        Target        = {"Head"},
        Auto_Shoot    = false,
        Auto_Wall     = false,
        Fov           = 50,
        Show_Fov      = false,
        Fov_Color     = Color3.fromRGB(102, 0, 101),
        Ignore_Fov    = false,
        GunName       = "Cant Find The Gun!!!!!"--Silly Boy Fix
    }
   _G.AimAssist={ 
      Enabled      = false,
      Target       ="torso",--Head,Torso
      VisibleCheck = false,
      Smoothness   = 10,
      FOV          = 400,
      Show_FOV     = false,
      FOV_Color    = Color3.fromRGB(75,0,130), 
      Keything     = "MouseButton2"
  }
  _G.chams={
   Enabled=false,
   IsVisiblein=Color3.fromRGB(0, 255, 255),
   IsNotVisible=Color3.fromRGB(75,0,130),
}
_G.PlayerMove={ 
   Enabled=false,
   JP=false, --Jump Power
   JPV=40, -- up to 250
   GR=false, -- Gravity
   GRV=1, -- Up to 50
   WS=false,-- How fast u are
   WSV=16, -- HEHE HA HA 100
   NF=false, --No Fall Damage 
   }
   _G.GunOptins={
      Enabled=false,
      Animation=false,
      Reset=false,
      Sway=false,
      Scope=false,
      StaticX=false,
      StaticY=false,
      StaticZ=false,
      Stable=false,
  }
  _G.Worlds={
   Enabled = true,
   ColorEnable= false,
   Color=Color3.fromRGB(102, 101, 101),
   MatEnable= false,
   Mat="SmoothPlastic",
} 
_G.DrawArms={
    Enabled         = false,
 
    Arms            = false,
    ArmsColorEnable = false,
    ArmsColor       = Color3.fromRGB(102, 0, 101),
    ArmsMatEnable   = false,
    ArmsMat         = "ForceField",
 
    Gun             = false,
    GunColorEnable  = false,
    GunColor        = Color3.fromRGB(102, 0, 101),
    GunMatEnable    = false,
    GunMat          = "ForceField",

    GunName          = "ERROR"
}
_G.Ambient={
   Enabled = false,
   Color = Color3.fromRGB(102, 0, 101),
}

   
local Sense = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Sirius/request/library/sense/source.lua'))()
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()  
local Window = Rayfield:CreateWindow({
    Name = "Hyper Escape | External",
    LoadingTitle = "Your Time To Shine",
    LoadingSubtitle = "by Mick Gordon",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil,
       FileName = "Hyper Escape"
    },
    Discord = {
       Enabled = true,
       Invite = "rvjPT87hrE", 
       RememberJoins = true 
    },
    KeySystem = false,
    KeySettings = {
       Title = "Hyper Escape",
       Subtitle = "Key System",
       Note = "This Is A Dev Test",
       FileName = "Hyper Escape Key",
       SaveKey = true,
       GrabKeyFromSite = false,
       Key = "9167"
    }
})
local LegitTab = Window:CreateTab("Legit", 4483362458) 
local Section = LegitTab:CreateSection("Aim Assist") 
          local Toggle = LegitTab:CreateToggle({
            Name = "Enabled",
            CurrentValue = false,
            Flag = "ToggleAimassist1", 
            Callback = function(AssistToggle)
              _G.AimAssist.Enabled=AssistToggle
            end,
         })
        local Slider = LegitTab:CreateSlider({
           Name = "FOV",
           Range = {0, 800},
           Increment = 10,
           Suffix = "",
           CurrentValue = 400,
           Flag = "FOVAimassist1",
           Callback = function(FOVAimassistFOV)
              _G.AimAssist.FOV=FOVAimassistFOV
           end,
        })
        local Slider = LegitTab:CreateSlider({
           Name = "Smoothing",
           Range = {2, 50},
           Increment = 1,
           Suffix = "",
           CurrentValue = 10,
           Flag = "AimAssistSmooth1",
           Callback = function(SmoothingAim)
              _G.AimAssist.Smoothness=SmoothingAim
           end,
        })
        local Dropdown = LegitTab:CreateDropdown({
           Name = "Aimbot Key",
           Options = {"MouseButton1","MouseButton2"},
           CurrentOption = "MouseButton2",
           Flag = "Aimassist1", 
           Callback = function(AimassistOption)
              _G.AimAssist.Keything=AimassistOption
           end,
        })
        local Dropdown = LegitTab:CreateDropdown({
           Name = "Hitscan",
           Options = {"head","torso"},
           CurrentOption = "head",
           Flag = "Hitscanoptions", 
           Callback = function(Hitscanoptionsheh)
              _G.AimAssist.Target=Hitscanoptionsheh
           end,
        })
        local Toggle = LegitTab:CreateToggle({
           Name = "Visible Check",
           CurrentValue = false,
           Flag = "VisibleCheck1", 
           Callback = function(VisibleCheckToggle)
              _G.AimAssist.VisibleCheck=VisibleCheckToggle
           end,
        })
        local Toggle = LegitTab:CreateToggle({
           Name = "Draw FOV",
           CurrentValue = false,
           Flag = "FOVLEGITSHOW", 
           Callback = function(LegitFovToggle)
              _G.AimAssist.Show_FOV=LegitFovToggle
           end,
        })
        local ColorPicker = LegitTab:CreateColorPicker({
           Name = "FOV Color",
           Color = Color3.fromRGB(75,0,130),
           Flag = "Fov_Color1", 
           Callback = function(FOVColorAimbotToggle)
              _G.AimAssist.FOV_Color=FOVColorAimbotToggle
           end
        })
         
         local BulletSection = LegitTab:CreateSection("Bullet Redirection")  -- BulletRedirection
         local Toggle = LegitTab:CreateToggle({
            Name = "Enable",
            CurrentValue = false,
            Flag = "Toggle1BulletRedirection", 
            Callback = function(Valffsafaddue)
               _G.SilentAim.Enabled=Valffsafaddue
            end,
         })
         local Dropdown = LegitTab:CreateDropdown({
            Name = "Hit Scan",
            Options = {"All","Head","Torso","Right Arm","Left Arm","Right Leg","Left Leg"},
            CurrentOption = "Head",
            Flag = "SilentAimHitPart1", 
            Callback = function(SilentAimHitPartToggle)
                if SilentAimHitPartToggle=="All" then
                  _G.SilentAim.Target=GetR6Parts()
                else
                  _G.SilentAim.Target={SilentAimHitPartToggle}
                end
            end,
         })
         local Toggle = LegitTab:CreateToggle({
            Name = "Auto Shoot",
            CurrentValue = false,
            Flag = "AutoShootBulletRedirection", 
            Callback = function(AutoSh1oot)
               _G.SilentAim.Auto_Shoot=AutoSh1oot
            end,
         })
         local Toggle = LegitTab:CreateToggle({
            Name = "Auto Wall",
            CurrentValue = false,
            Flag = "Auto_WallBulletRedirection", 
            Callback = function(Auto1_WallBulletRedirection)
               _G.SilentAim.Auto_Wall=Auto1_WallBulletRedirection
            end,
         })
         local Slider = LegitTab:CreateSlider({
            Name = "Fov",
            Range = {0, 800},
            Increment = 10,
            Suffix = "Fov",
            CurrentValue = 50,
            Flag = "BulletRedirectionFov",
            Callback = function(BulletRedirectionFov2)
               _G.SilentAim.Fov=BulletRedirectionFov2
            end,
         })
         local Toggle = LegitTab:CreateToggle({
            Name = "Show Fov",
            CurrentValue = false,
            Flag = "ShowFovBulletRedirection", 
            Callback = function(ShowFovBu1lletRedirection)
               _G.SilentAim.Show_Fov=ShowFovBu1lletRedirection
            end,
         })
         local ColorPicker = LegitTab:CreateColorPicker({
            Name = "Fov Color",
            Color = Color3.fromRGB(102, 0, 101),
            Flag = "FovColorBulletRedirection", 
            Callback = function(FovColorBulletRedirection2)
               _G.SilentAim.Fov_Color=FovColorBulletRedirection2
            end
         })
         local Toggle = LegitTab:CreateToggle({
            Name = "Ignore Fov",
            CurrentValue = false,
            Flag = "IgnoreFovBu1lletRedirection", 
            Callback = function(Ignor1eFovBu1lletRedirection)
               _G.SilentAim.Ignore_Fov=Ignor1eFovBu1lletRedirection
            end,
         })

local VisualsTab = Window:CreateTab("Visuals", 4483362458) 
local BoxesSection = VisualsTab:CreateSection("Main")
local Toggle = VisualsTab:CreateToggle({
   Name = "Enabe",
   CurrentValue = false,
   Flag = "EnableESPToggle", 
   Callback = function(fcxvxvfdsfsdfsfsdf)
      Sense.teamSettings.enemy.enabled  = fcxvxvfdsfsdfsfsdf
   end,
})

local SharedSettingsSection = VisualsTab:CreateSection("Shared Settings")
local Slider = VisualsTab:CreateSlider({
   Name = "textSize",
   Range = {0, 100},
   Increment = 1,
   Suffix = "",
   CurrentValue = 13,
   Flag = "SizefdsvcSlider", 
   Callback = function(fsdfsfsvcvxhgh)
      Sense.sharedSettings.textSize = fsdfsfsvcvxhgh
   end,
})
local Toggle = VisualsTab:CreateToggle({
   Name = "Limit Distance",
   CurrentValue = false,
   Flag = "EnabldsfvcxveESPToggle", 
   Callback = function(fcxvxvfdsfsdfdvxcfsfsdf)
      Sense.sharedSettings.limitDistance = fcxvxvfdsfsdfdvxcfsfsdf
   end,
})
local Slider = VisualsTab:CreateSlider({
   Name = "Max Distance",
   Range = {0, 1000},
   Increment = 10,
   Suffix = "",
   CurrentValue = 150,
   Flag = "SizeffsdvcxsdsvcSlider", 
   Callback = function(ccxvvbfdhjkgh)
      Sense.sharedSettings.maxDistance = ccxvvbfdhjkgh
   end,
})

local BoxesSection = VisualsTab:CreateSection("Boxes")
local Toggle = VisualsTab:CreateToggle({
   Name = "Draw Boxes",
   CurrentValue = false,
   Flag = "BoxToggle", 
   Callback = function(fcxvxvsfsdf)
      Sense.teamSettings.enemy.box = fcxvxvsfsdf
   end,
})
local ColorPicker = VisualsTab:CreateColorPicker({
   Name = "Box Color",
   Color = Color3.fromRGB(255,255,255),
   Flag = "BoxColorDraw",
   Callback = function(fdsvsgdhvcbcb)
      Sense.teamSettings.enemy.boxColor[1] = fdsvsgdhvcbcb
   end
})
local Toggle = VisualsTab:CreateToggle({
   Name = "Boxes Outline",
   CurrentValue = true,
   Flag = "OutlineBoxToggle", 
   Callback = function(fcfdfsdfxvxvsfsdf)
      Sense.teamSettings.enemy.boxOutline = fcfdfsdfxvxvsfsdf
   end,
})

local TracersSection = VisualsTab:CreateSection("Tracers")
local Toggle = VisualsTab:CreateToggle({
   Name = "Draw Tracers",
   CurrentValue = false,
   Flag = "TracersToggle", 
   Callback = function(fcxvxddfdvsfsdf)
      Sense.teamSettings.enemy.tracer = fcxvxddfdvsfsdf
   end,
})
local ColorPicker = VisualsTab:CreateColorPicker({
   Name = "Tracers Color",
   Color = Color3.fromRGB(255,255,255),
   Flag = "TracersColorDraw",
   Callback = function(fdsvsgdhfdsfsvcbcb)
      Sense.teamSettings.enemy.tracerColor[1] = fdsvsgdhfdsfsvcbcb
   end
})
local Toggle = VisualsTab:CreateToggle({
   Name = "Boxes Outline",
   CurrentValue = true,
   Flag = "OutlineBoxToggle", 
   Callback = function(fcfdfsdfxvfdsfxvsfsdf)
      Sense.teamSettings.enemy.tracerOutline = fcfdfsdfxvfdsfxvsfsdf
   end,
})

local HealthSection = VisualsTab:CreateSection("Health")
local Toggle = VisualsTab:CreateToggle({
   Name = "Draw Health Box",
   CurrentValue = false,
   Flag = "HealthToggle", 
   Callback = function(fcxvxfsfsfddfdvsfsdf)
      Sense.teamSettings.enemy.healthBar = fcxvxfsfsfddfdvsfsdf
   end,
})
local ColorPicker = VisualsTab:CreateColorPicker({
   Name = "Health Color",
   Color = Color3.fromRGB(255,255,255),
   Flag = "HealthColorDraw",
   Callback = function(fdsvsgdhfdfdfsfsvcbcb)
      Sense.teamSettings.enemy.healthyColor[1] = fdsvsgdhfdfdfsfsvcbcb
   end
})
local Toggle = VisualsTab:CreateToggle({
   Name = "Health Outline",
   CurrentValue = true,
   Flag = "HealthToggle", 
   Callback = function(fcfdfsdfxvfdsffxvsfsdf)
      Sense.teamSettings.enemy.healthBarOutline = fcfdfsdfxvfdsffxvsfsdf
   end,
})
local Toggle = VisualsTab:CreateToggle({
   Name = "Health Text",
   CurrentValue = false,
   Flag = "HealthTextToggle", 
   Callback = function(fcfdffdsdfxvfdsffxvsfsdf)
      Sense.teamSettings.enemy.healthText = fcfdffdsdfxvfdsffxvsfsdf
   end,
})

local NameSection = VisualsTab:CreateSection("Name")
local Toggle = VisualsTab:CreateToggle({
   Name = "Draw Name",
   CurrentValue = false,
   Flag = "NameToggle", 
   Callback = function(fcxvfxddfdvsfsdf)
      Sense.teamSettings.enemy.name = fcxvfxddfdvsfsdf
   end,
})
local ColorPicker = VisualsTab:CreateColorPicker({
   Name = "Name Color",
   Color = Color3.fromRGB(255,255,255),
   Flag = "NameColorDraw",
   Callback = function(fdgdscjljhluygnv)
      Sense.teamSettings.enemy.nameColor[1] = fdgdscjljhluygnv
   end
})
local Toggle = VisualsTab:CreateToggle({
   Name = "Name Outline",
   CurrentValue = true,
   Flag = "OutlineBoxToggle", 
   Callback = function(fcfdfsdfxvffdsvcdsfxvsfsdf)
      Sense.teamSettings.enemy.nameOutline = fcfdfsdfxvffdsvcdsfxvsfsdf
   end,
})

local weaponSection = VisualsTab:CreateSection("weapon")
local Toggle = VisualsTab:CreateToggle({
   Name = "Draw weapon",
   CurrentValue = false,
   Flag = "weapon", 
   Callback = function(jhghfgvbdd)
      Sense.teamSettings.enemy.weapon = jhghfgvbdd
   end,
})
local ColorPicker = VisualsTab:CreateColorPicker({
   Name = "weapon Color",
   Color = Color3.fromRGB(255,255,255),
   Flag = "weaponColorDraw",
   Callback = function(fdgdscjljhlgfdgfduygnv)
      Sense.teamSettings.enemy.weaponColor[1] = fdgdscjljhlgfdgfduygnv
   end
})
local Toggle = VisualsTab:CreateToggle({
   Name = "weapon Outline",
   CurrentValue = true,
   Flag = "weaponBoxToggle", 
   Callback = function(gfdgdvcbjtrr)
      Sense.teamSettings.enemy.weaponOutline = gfdgdvcbjtrr
   end,
})

local distanceSection = VisualsTab:CreateSection("distance")
local Toggle = VisualsTab:CreateToggle({
   Name = "Draw distance",
   CurrentValue = false,
   Flag = "distance", 
   Callback = function(fdsfsdvcxvntj)
      Sense.teamSettings.enemy.distance = fdsfsdvcxvntj
   end,
})
local ColorPicker = VisualsTab:CreateColorPicker({
   Name = "distance Color",
   Color = Color3.fromRGB(255,255,255),
   Flag = "distanceColorDraw",
   Callback = function(fdgdscjljhlgfdgffdsfdduygnv)
      Sense.teamSettings.enemy.distanceColor[1] = fdgdscjljhlgfdgffdsfdduygnv
   end
})
local Toggle = VisualsTab:CreateToggle({
   Name = "distance Outline",
   CurrentValue = true,
   Flag = "distanceBoxToggle", 
   Callback = function(gfdgdvfdsvccbjtrr)
      Sense.teamSettings.enemy.distanceOutline = gfdgdvfdsvccbjtrr
   end,
})

local OffScreenArrowSection = VisualsTab:CreateSection("Off Screen Arrow")
local Toggle = VisualsTab:CreateToggle({
   Name = "Draw OffScreenArrow",
   CurrentValue = false,
   Flag = "OffScreenArrow", 
   Callback = function(fdsfvcbbfdg)
      Sense.teamSettings.enemy.offScreenArrow = fdsfvcbbfdg
   end,
})
local ColorPicker = VisualsTab:CreateColorPicker({
   Name = "OffScreenArrow Color",
   Color = Color3.fromRGB(255,255,255),
   Flag = "OffScreenArrowColorDraw",
   Callback = function(fdgdscjljhlgfdgfffdsvcdsfdduygnv)
      Sense.teamSettings.enemy.offScreenArrowColor[1] = fdgdscjljhlgfdgfffdsvcdsfdduygnv
   end
})
local Slider = VisualsTab:CreateSlider({
   Name = "Size",
   Range = {0, 150},
   Increment = 1,
   Suffix = "",
   CurrentValue = 15,
   Flag = "SizeSlider", 
   Callback = function(fsdvcxvsdgdsgs)
      Sense.teamSettings.enemy.offScreenArrowSize = fsdvcxvsdgdsgs
   end,
})
local Slider = VisualsTab:CreateSlider({
   Name = "Radius",
   Range = {0, 800},
   Increment = 10,
   Suffix = "",
   CurrentValue = 150,
   Flag = "RadiusSlider", 
   Callback = function(fsdvcxvsdgdsgs)
      Sense.teamSettings.enemy.offScreenArrowRadius = fsdvcxvsdgdsgs
   end,
})
local Toggle = VisualsTab:CreateToggle({
   Name = "OffScreenArrow Outline",
   CurrentValue = true,
   Flag = "OffScreenArrowBoxToggle", 
   Callback = function(gfdgdvfdsvccbjgfdgcvxtrr)
      Sense.teamSettings.enemy.offScreenArrowOutline = gfdgdvfdsvccbjgfdgcvxtrr
   end,
})
local Section = VisualsTab:CreateSection("World Color")
local Button = VisualsTab:CreateButton({
Name = "Change Color",
Callback = function()
    _G.Worlds.ColorEnable=true
end,
})
local ColorPicker = VisualsTab:CreateColorPicker({
Name = "World Color",
Color = Color3.fromRGB(102, 101, 101),
Flag = "WorldColor1",
Callback = function(WorldColorToggle)
    _G.Worlds.Color=WorldColorToggle
end
})
local Button = VisualsTab:CreateButton({
Name = "Change Material",
Callback = function()
    _G.Worlds.MatEnable=true
end,
})
local Dropdown = VisualsTab:CreateDropdown({
Name = "Material",
Options = {"Plastic", "SmoothPlastic", "Neon", "Wood", "WoodPlanks" , "Marble","Slate","Concrete","Granite","Brick","Pebble","Cobblestone","Cobblestone","CorrodedMetal","DiamondPlate","Foil","Metal","Grass","Sand","Glass","ForceField"},
CurrentOption = "SmoothPlastic",
Flag = "Material1",
Callback = function(MaterialStuff)
    _G.Worlds.Mat=MaterialStuff
end,
})

local Section = VisualsTab:CreateSection("Ambient") 
local Toggle = VisualsTab:CreateToggle({
Name = "Enable",
CurrentValue = false,
Flag = "EnableAmbient1", 
Callback = function(EnableAmbientToggle)
    _G.Ambient.Enabled=EnableAmbientToggle
end,
})
local ColorPicker = VisualsTab:CreateColorPicker({
Name = "Color",
Color = Color3.fromRGB(255,255,255),
Flag = "AmbientColorPick1", 
Callback = function(AmbientColorPickToggle)
    _G.Ambient.Color=AmbientColorPickToggle
end
})

local Section = VisualsTab:CreateSection("Arms Chams") 
local Toggle = VisualsTab:CreateToggle({
Name = "Enable",
CurrentValue = false,
Flag = "ChamsArmsAndGun1", 
Callback = function(ChamsArmsAndGunToggle)
    _G.DrawArms.Enabled=ChamsArmsAndGunToggle
end,
})

local Toggle = VisualsTab:CreateToggle({
Name = "Draw Arm Chams",
CurrentValue = false,
Flag = "DrawArmChams1", 
Callback = function(DrawArmChamsToggle)
    _G.DrawArms.Arms=DrawArmChamsToggle
end,
})
local Toggle = VisualsTab:CreateToggle({
Name = "Enable Color",
CurrentValue = false,
Flag = "DrawArmChams1", 
Callback = function(DrawArmChamsColorToggle)
    _G.DrawArms.ArmsColorEnable=DrawArmChamsColorToggle
end,
})
local ColorPicker = VisualsTab:CreateColorPicker({
Name = "Color",
Color = Color3.fromRGB(102, 0, 101),
Flag = "ArmChamsColorPick1", 
Callback = function(ArmChamsColorPickTogg)
    _G.DrawArms.ArmsColor=ArmChamsColorPickTogg
end
})
local Toggle = VisualsTab:CreateToggle({
Name = "Enable Material",
CurrentValue = false,
Flag = "DrawArmChamsMaterial1", 
Callback = function(DrawArmChamsMaterialToggle)
    _G.DrawArms.ArmsMatEnable=DrawArmChamsMaterialToggle
end,
})
local Dropdown = VisualsTab:CreateDropdown({
Name = "Material",
Options = {"Plastic", "SmoothPlastic", "Neon", "Wood", "WoodPlanks" , "Marble","Slate","Concrete","Granite","Brick","Pebble","Cobblestone","Cobblestone","CorrodedMetal","DiamondPlate","Foil","Metal","Grass","Sand","Glass","ForceField"},
CurrentOption = "ForceField",
Flag = "MaterialChamArm1",
Callback = function(MaterialChamArmToggle)
    _G.DrawArms.ArmsMat=MaterialChamArmToggle
end,
})

local Toggle = VisualsTab:CreateToggle({
Name = "Draw Gun Chams",
CurrentValue = false,
Flag = "DrawGunChams1", 
Callback = function(DrawGunChamsToggle)
    _G.DrawArms.Gun=DrawGunChamsToggle
end,
})
local Toggle = VisualsTab:CreateToggle({
Name = "Enable Color",
CurrentValue = false,
Flag = "DrawGunChams1", 
Callback = function(DrawGunChamsColorToggle)
    _G.DrawArms.GunColorEnable=DrawGunChamsColorToggle
end,
})
local ColorPicker = VisualsTab:CreateColorPicker({
Name = "Color",
Color = Color3.fromRGB(102, 0, 101),
Flag = "GunChamsColorPick1", 
Callback = function(GunChamsColorPickTogg)
    _G.DrawArms.GunColor=GunChamsColorPickTogg
end
})
local Toggle = VisualsTab:CreateToggle({
Name = "Enable Material",
CurrentValue = false,
Flag = "DrawGunChamsMaterial1", 
Callback = function(DrawGunChamsMaterialToggle)
    _G.DrawArms.GunMatEnable=DrawGunChamsMaterialToggle
end,
})
local Dropdown = VisualsTab:CreateDropdown({
Name = "Material",
Options = {"Plastic", "SmoothPlastic", "Neon", "Wood", "WoodPlanks" , "Marble","Slate","Concrete","Granite","Brick","Pebble","Cobblestone","Cobblestone","CorrodedMetal","DiamondPlate","Foil","Metal","Grass","Sand","Glass","ForceField"},
CurrentOption = "ForceField",
Flag = "MaterialChamArm1GunMat",
Callback = function(MaterialGunMatArmToggle)
    _G.DrawArms.GunMat=MaterialGunMatArmToggle
end,
})
local Section = VisualsTab:CreateSection("Chams")

local Toggle = VisualsTab:CreateToggle({
   Name = "Draw Chams",
   CurrentValue = false,
   Flag = "Chams1", 
   Callback = function(ChamsToggle1)
       _G.chams.Enabled=ChamsToggle1
   end,
})
local ColorPicker = VisualsTab:CreateColorPicker({
   Name = "Visible Color",
   Color = Color3.fromRGB(255,255,255),
   Flag = "Visible_Color1", 
   Callback = function(VisibleColortoggle)
       _G.chams.IsVisiblein=VisibleColortoggle
   end
})
local ColorPicker = VisualsTab:CreateColorPicker({
   Name = "Hidden Color",
   Color = Color3.fromRGB(255,255,255),
   Flag = "Hidden_Color1",
   Callback = function(HiddenColorToggle)
       _G.chams.IsNotVisible=HiddenColorToggle
   end
})    

local LocalPlayerTab = Window:CreateTab("Rage", 4483362458)
local Section = LocalPlayerTab:CreateSection("Player Movement Changer")
local Toggle = LocalPlayerTab:CreateToggle({
   Name = "Enable",
   CurrentValue = false,
   Flag = "EnableMovement1", 
   Callback = function(EnableMovementToggle)
       _G.PlayerMove.Enabled=EnableMovementToggle
   end,
})
local Toggle = LocalPlayerTab:CreateToggle({
   Name = "Jump Power",
   CurrentValue = false,
   Flag = "JumpPower1", 
   Callback = function(JumpPowerToggle)
       _G.PlayerMove.JP=JumpPowerToggle
   end,
})
local Slider = LocalPlayerTab:CreateSlider({
   Name = "Jump Power",
   Range = {0, 250},
   Increment = 1,
   Suffix = "",
   CurrentValue = 40,
   Flag = "JumpPowerSlider1", 
   Callback = function(JumpPowerSliderToggle)
       _G.PlayerMove.JPV=JumpPowerSliderToggle
   end,
})
local Toggle = LocalPlayerTab:CreateToggle({
   Name = "Gravity",
   CurrentValue = false,
   Flag = "Gravity1", 
   Callback = function(GravityToggle)
       _G.PlayerMove.GR=GravityToggle
   end,
})
local Slider = LocalPlayerTab:CreateSlider({
   Name = "Gravity",
   Range = {0, 50},
   Increment = 1,
   Suffix = "",
   CurrentValue = 0,
   Flag = "GravitySlider1", 
   Callback = function(GravitySliderToggle)
       _G.PlayerMove.GRV=GravitySliderToggle
   end,
})
local Toggle = LocalPlayerTab:CreateToggle({
   Name = "Walk Speed",
   CurrentValue = false,
   Flag = "WalkSpeed1",
   Callback = function(WalkSpeedToggle)
       _G.PlayerMove.WS=WalkSpeedToggle
   end,
})
local Slider = LocalPlayerTab:CreateSlider({
   Name = "Walk Speed",
   Range = {0, 100},
   Increment = 1,
   Suffix = "",
   CurrentValue = 16,
   Flag = "WalkSpeedSlider1", 
   Callback = function(WalkSpeedSliderToggle)
       _G.PlayerMove.WSV=WalkSpeedSliderToggle
   end,
})

local Section = LocalPlayerTab:CreateSection("Gun Mods")
local Toggle = LocalPlayerTab:CreateToggle({
   Name = "Enabled",
   CurrentValue = false,
   Flag = "EnabledGunstuff1",
   Callback = function(EnabledGunstuffToggle)
       _G.GunOptins.Enabled=EnabledGunstuffToggle
   end,
})
local Toggle = LocalPlayerTab:CreateToggle({
   Name = "Fast Animation",
   CurrentValue = false,
   Flag = "Animation1",
   Callback = function(AnimationToggle)
       _G.GunOptins.Animation=AnimationToggle
   end,
})
local Toggle = LocalPlayerTab:CreateToggle({
   Name = "Reset Animations",
   CurrentValue = false,
   Flag = "Reset1",
   Callback = function(ResetToggle)
       _G.GunOptins.Reset=ResetToggle
   end,
})
local Toggle = LocalPlayerTab:CreateToggle({
   Name = "No Sway",
   CurrentValue = false,
   Flag = "Sway1",
   Callback = function(SwayToggle)
       _G.GunOptins.Sway=SwayToggle
   end,
})
local Toggle = LocalPlayerTab:CreateToggle({
   Name = "Stable Gun",
   CurrentValue = false,
   Flag = "Stable1",
   Callback = function(StableToggle)
       _G.GunOptins.Stable=StableToggle
   end,
})
local Toggle = LocalPlayerTab:CreateToggle({
   Name = "StaticX",
   CurrentValue = false,
   Flag = "StaticX1",
   Callback = function(StaticXToggle)
       _G.GunOptins.StaticX=StaticXToggle
   end,
})
local Toggle = LocalPlayerTab:CreateToggle({
   Name = "StaticY",
   CurrentValue = false,
   Flag = "StaticY1",
   Callback = function(StaticYToggle)
       _G.GunOptins.StaticY=StaticYToggle
   end,
})
local Toggle = LocalPlayerTab:CreateToggle({
   Name = "StaticZ",
   CurrentValue = false,
   Flag = "StaticZ1",
   Callback = function(StaticZToggle)
       _G.GunOptins.StaticZ=StaticZToggle
   end,
})

local AntiAimTab = Window:CreateTab("Anti Aim", 4483362458) 

local SettingsTab = Window:CreateTab("Settings", 4483362458) 
local Section = SettingsTab:CreateSection("Credits")
local Dropdown = SettingsTab:CreateDropdown({
   Name = "By Sirius ",
   Options = {"Esp",},
   CurrentOption = "Esp",
   Flag = "Dropdown1",
   Callback = function(Option)

   end,
})
local Dropdown = SettingsTab:CreateDropdown({
    Name = "By The3Bakers",
    Options = {"Silent Aim", "Gun Mods", "Grenade ESP", "Movement Changer",},
    CurrentOption = "Silent Aim",
    Flag = "Dropdown1",
    Callback = function(Option)

    end,
})
local Dropdown = SettingsTab:CreateDropdown({
    Name = "By Mick Gordon",
    Options = {"Everything but The3Bakers scripts",},
    CurrentOption = "",
    Flag = "Dropdown1",
    Callback = function(Option)

    end,
})
local Section = SettingsTab:CreateSection("Other")
local Button = SettingsTab:CreateButton({
    Name = "Coppy Hyper Escape Discord",
    Callback = function()
        setclipboard("https://discord.gg/rvjPT87hrE")
    end,
})
local Label = SettingsTab:CreateLabel("Join The Hyper Escape Discord So You Can Have The Latest Version")
local Button = SettingsTab:CreateButton({
    Name = "Coppy The3Bakers Discord",
    Callback = function()
        setclipboard("https://discord.gg/vQQqcgBWCG")
    end,
})
local Label = SettingsTab:CreateLabel("Greate Guy And Is The Best Scripter I Have Met")
local Button = SettingsTab:CreateButton({
    Name = "Coppy Blackout Script Development",
    Callback = function()
        setclipboard("https://discord.gg/YcuhaRkakQ")
    end,
})
local Paragraph = SettingsTab:CreateParagraph({Title = "", Content = "Blackout Script Development Is Partners With Us And They Make Good Scripts And Have A No Key Exequtor For Free And Is Great"})
local Button = SettingsTab:CreateButton({
    Name = "Change Server",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        local data = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Dsc&limit=100")).data
        
        local c = 0
        for i = 1, #data do
            local server = data[i-c]
            if not server.playing then
                table.remove(data, i-c)
                c += 1
            end
        end
        
        local function fyshuffle( tInput )
            local tReturn = {}
            for i = #tInput, 1, -1 do
                local j = math.random(i)
                tInput[i], tInput[j] = tInput[j], tInput[i]
                table.insert(tReturn, tInput[i])
            end
            return tReturn
        end
        
        data = fyshuffle(data)
        
        
        local function randomhop(data, failed)
            failed = failed or {}
            for _, s in pairs(data) do
                local id = s.id
                if not failed[id] and id ~= game.JobId then
                    if s.playing < s.maxPlayers then
                        local connection
                        connection = TeleportService.TeleportInitFailed:Connect(function(player, teleportResult, errorMessage)
                            connection:Disconnect()
                            failed[id] = true
                            randomhop(data, failed)
                        end)
                        TeleportService:TeleportToPlaceInstance(game.PlaceId, id)
                        break
                    end
                end
            end
        end
        
        randomhop(data)
        
    end,
})
Rayfield:LoadConfiguration()
     
    



    -- game specific functions
    local replication = getrenv().shared.require("ReplicationInterface");
    
    Sense.getWeapon = function(player)
        local entry = player and replication.getEntry(player);
        local object = entry and entry:getThirdPersonObject();
        return object and object._weaponname or "Unknown";
    end

    Sense.getCharacter = function(player)
        local entry = player and replication.getEntry(player);
        local object = entry and entry:getThirdPersonObject();
        return object and object:getCharacterModel();
    end

    Sense.getHealth = function(player)
      local entry = player and replication.getEntry(player);
      if entry and entry._alive then
          return entry:getHealth();
      end
      return 0, 100;
  end
  



local players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")


local client = players.LocalPlayer
local shared = getrenv().shared
local camera = workspace.CurrentCamera
local mouseLocation = UserInputService.GetMouseLocation
local WorldToViewportPoint = camera.WorldToViewportPoint


local replicationObject = shared.require("ReplicationObject")
local replicationInterface = shared.require("ReplicationInterface")


local function isAlive(entry)
   return replicationObject.isAlive(entry)
end

local function isVisible(p, ...)
   if not _G.AimAssist.VisibleCheck then
       return true
   end

   return #camera:GetPartsObscuringTarget({ p }, { camera, client.Character, workspace.Ignore, ... }) == 0
end

local function get_closest(fov: number)
   local targetPos: Vector3 = nil
   local magnitude: number = fov or math.huge
   for _, player in pairs(players:GetPlayers()) do
       if player == client or player.Team == client.Team then
           continue
       end

       local entry = replicationInterface.getEntry(player)
       local character = entry and replicationObject.getThirdPersonObject(entry)

       if character and isAlive(entry) then
           local body_parts = character:getCharacterHash()

           local screen_pos, on_screen = WorldToViewportPoint(camera, body_parts[_G.AimAssist.Target].Position)
           local screen_pos_2D = Vector2.new(screen_pos.X, screen_pos.Y)
           local new_magnitude = (screen_pos_2D - mouseLocation(UserInputService)).Magnitude
           if
               on_screen
               and new_magnitude < magnitude
               and isVisible(body_parts[_G.AimAssist.Target].Position, body_parts.torso.Parent)
           then
               magnitude = new_magnitude
               targetPos = body_parts[_G.AimAssist.Target].Position
           end
       end
   end
   return targetPos
end
local mouse = client:GetMouse()
local function aimAt(pos, smooth)
   local targetPos = camera:WorldToScreenPoint(pos)
   local mousePos = camera:WorldToScreenPoint(mouse.Hit.p)
   mousemoverel((targetPos.X - mousePos.X) / _G.AimAssist.Smoothness, (targetPos.Y - mousePos.Y) / _G.AimAssist.Smoothness)
end

coroutine.wrap(function()
    while wait(1)do
        pcall(function()
            if _G.AimAssist.Show_FOV and _G.AimAssist.Enabled then
                local center=game.Workspace.CurrentCamera:WorldToViewportPoint(game.Workspace.CurrentCamera.CFrame.Position+game.Workspace.CurrentCamera.CFrame.LookVector)
                local a=Drawing.new("Circle")
                a.Visible=true
                a.Position=Vector2.new(center.X,center.Y)
                a.Color=_G.AimAssist.FOV_Color
                a.Thickness=2.5
                a.Transparency=1
                a.NumSides=100
                a.Radius=_G.AimAssist.FOV
                coroutine.wrap(function()
                    wait(1.1)
                    a:Remove()
                end)()
            end
        end)
    end
end)()

RunService.RenderStepped:Connect(function()
    if _G.AimAssist.Enabled then 
        if UserInputService:IsMouseButtonPressed(Enum.UserInputType[_G.AimAssist.Keything]) then
            local _pos = get_closest(_G.AimAssist.FOV)
            if _pos then
                aimAt(_pos, _G.AimAssist.Smoothness)
            end
        end
    end 
end)


local plr = game.Players.LocalPlayer

    local l_character = plr.Character or plr.CharacterAdded:wait()
    local f_team
    local e_team
    local e_plrlist
    local rs = game:GetService("RunService")
    local camera = workspace.CurrentCamera
    local pfId = 292439477
    local pId = game.PlaceId
    local is_pf = pfId == pId


    local function geteplrlist()
        local t = {}
        if is_pf then
            local team_color_to_string = tostring(game.Players.LocalPlayer.TeamColor)
            if team_color_to_string == "Bright orange" then
                t = workspace.Players["Bright blue"]:GetChildren()
            else
                t = workspace.Players["Bright orange"]:GetChildren()
            end
        elseif not is_pf then
            if #game.Teams:GetChildren() > 0 then
                for i,v in next, game.Players:GetPlayers() do
                    if v.Team~=game.Players.LocalPlayer.Team then
                        table.insert(t,v)
                    end
                end
            else
                for i,v in next, game.Players:GetPlayers() do
                    if v ~= game.Players.LocalPlayer then
                        table.insert(t,v)
                    end
                end
            end
        end
        return t
    end

    rs.Stepped:Connect(function()
        e_plrlist = geteplrlist()
    end)

    local function check_for_esp(c_model)
        if not c_model then
            return
        else
            returnv = false
            for i,v in next, c_model:GetDescendants() do
                if v:IsA("BoxHandleAdornment") then
                    returnv = true
                    break
                end
            end
            return returnv
        end
    end

    local function remove_esp(c_model)
        for i,v in next, c_model:GetDescendants() do
            if v:IsA("BoxHandleAdornment") then
                v:Destroy()
            end
        end
    end




    local function cast_ray(body_part)
        local rp = RaycastParams.new()
        rp.FilterDescendantsInstances = l_character:GetDescendants()
        rp.FilterType = Enum.RaycastFilterType.Blacklist

        local rcr = workspace:Raycast(camera.CFrame.Position, (body_part.Position - camera.CFrame.Position).Unit * 15000,rp)
        if rcr and rcr.Instance:IsDescendantOf(body_part.Parent) then
            return true
        else
            return false
        end
    end
    game.RunService.RenderStepped:Connect(function()
        if _G.chams.Enabled == true then 
            local function create_esp(c_model)
                if not c_model then
                    return
                else
                    if check_for_esp(c_model) then
                        for i,v in next, c_model:GetChildren() do
                            if v:IsA("BasePart") and v:FindFirstChild("BoxHandleAdornment") then
                                local walt = v:FindFirstChild("BoxHandleAdornment")
                                if cast_ray(v) then
                                    walt.Color3=_G.chams.IsVisiblein
                                else
                                    walt.Color3=_G.chams.IsNotVisible
                                end
                            end
                        end
                    else
                        for i,v in next, c_model:GetChildren() do
                            if v:IsA("BasePart") then
                                local b = Instance.new("BoxHandleAdornment")
                                b.Parent = v
                                b.Adornee = v
                                b.AlwaysOnTop = true
                                b.Size = v.Size
                                b.ZIndex = 2
                                b.Transparency = 0.5
                            end
                        end
                    end
                end
            end
            for i,v in next, e_plrlist do
                if is_pf then
                    create_esp(v)
                end 
            end
        end 
    end)


setfpscap(10000)

game.RunService.RenderStepped:Connect(function()
   if  _G.PlayerMove.Enabled and  _G.PlayerMove.GR then
       if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")then
           if game.Players.LocalPlayer.Character.Humanoid.FloorMaterial==Enum.Material.Air and--make sure we only apply gravity when player isnt on floor/climbing
           game.Players.LocalPlayer.Character.Humanoid:GetState()~=Enum.HumanoidStateType.Climbing then
               game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity=
               game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity-
               Vector3.new(0, _G.PlayerMove.GRV,0)
           end
       end
   end
   end)
   local mt=getrawmetatable(game)
   local oldIndex=mt.__index
   setreadonly(mt,false)
   mt.__index=newcclosure(function(obj,prop)
   if string.lower(tostring(obj))=="workspace"and prop=="Gravity"then
       if  _G.PlayerMove.NF and  _G.PlayerMove.Enabled then
           return math.huge--less gravity=more fall damage/1/11?!??!?!
       end
   end
   return oldIndex(obj,prop)
   end)
   coroutine.wrap(function()
   while wait()do
       pcall(function()
           repeat wait()until game.Players.LocalPlayer.Character--wait until we have player
           game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("WalkSpeed"):Connect(function()--wait until we have humanoid and apply walkspeed
               if  _G.PlayerMove.WS and  _G.PlayerMove.Enabled then
                   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed= _G.PlayerMove.WSV
               end
           end)
           game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()--apply jump power
               if  _G.PlayerMove.Enabled then
                   if  _G.PlayerMove.JP then
                       game.Players.LocalPlayer.Character.Humanoid.JumpPower= _G.PlayerMove.JPV--we change jump power to option
                   else
                       game.Players.LocalPlayer.Character.Humanoid.JumpPower=40--if we have jump power off we set it back to 40 (it changes with workspace gravity)
                   end
               end
           end)
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed= _G.PlayerMove.WSV--just incase pf dosent change jp
           game.Players.LocalPlayer.Character.Humanoid.JumpPower= _G.PlayerMove.JPV
           repeat wait()until not game.Players.LocalPlayer.Character
       end)
   end
   end)()
   for _,v in pairs(getgc(true))do
      if type(v)=="table"then
          if rawget(v,"walkSway")then
              print("walksway")
              local a
              a=hookfunction(v.walkSway,function(...)--was .gunbob before but now its walksway
                  if _G.GunOptins.Enabled and _G.GunOptins.Sway then
                      return CFrame.new()
                  end
                  return a(...)
              end)
          end
      elseif type(v)=="function"then
          if debug.getinfo(v).name=="player"then
              print("player")
              local an
              an=hookfunction(v,function(b,c)
                  if _G.GunOptins.Enabled and _G.GunOptins.Animation then
                      if rawget(c,"timescale")then
                          c.timescale=0--i realized the timescale was fuckin up so heres fixed one
                      end
                      if rawget(c,"stdtimescale")then
                          c.stdtimescale=0
                      end
                  end
                  if rawget(c,"resettime")and _G.GunOptins.Enabled and _G.GunOptins.Reset then
                      c.resettime=0
                  end
                  return an(b,c)
              end)
          end
      end
  end
  local ToAngles=function(cf)--bro toeuler aint workin bro
      local part=Instance.new("Part")
      part.CFrame=cf
      return part.Orientation
  end
  local ApplyAngles=function(cf,an)--pro gamer angle
      local part=Instance.new("Part")
      part.CFrame=cf
      part.Orientation=Vector3.new(an.X,an.Y,an.Z)
      return part.CFrame
  end
  local degfix=math.deg(1)--deg bugs tf out so we use fix
  local cam=Vector2.new()
  local mt=getrawmetatable(game)
  local oldNamecall=mt.__namecall
  local oldIndex=mt.__index
  setreadonly(mt,false)
  mt.__namecall=newcclosure(function(a,b,c,d,e,...)--old method but still works
      local method=getnamecallmethod()
      if tostring(method)=="FireServer"and _G.GunOptins.Enabled and c=="repupdate"then
          cam=e--camera angle (couldnt find it in getgc sorry)
      end
      return oldNamecall(a,b,c,d,e,...)
  end)
  game.Workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(function()
      if _G.GunOptins.Enabled and IsAlive()then--simple static like previous update
          local angles=ToAngles(game.Workspace.CurrentCamera.CFrame)
          if _G.GunOptins.StaticX then--more static _G.GunOptins O_o
              angles=Vector3.new(cam.X*degfix,angles.Y,angles.Z)
          end
          if _G.GunOptins.StaticY then
              angles=Vector3.new(angles.X,cam.Y*degfix,angles.Z)
          end
          if _G.GunOptins.StaticZ then
              angles=Vector3.new(angles.X,angles.Y,0)
          end
          game.Workspace.CurrentCamera.CFrame=
          ApplyAngles(game.Workspace.CurrentCamera.CFrame,angles)
      end
  end)
  local FixStuffs=function(v)
      if v.Name=="Main"and v:FindFirstChild("Trigger")then
          v.Trigger.Motor6D:GetPropertyChangedSignal("C0"):Connect(function()
              if _G.GunOptins.Enabled and _G.GunOptins.Stable then
                  if v.Trigger.Motor6D.C0~=CFrame.new(v.Trigger.Motor6D.C0.Position)*CFrame.Angles(cam.X,0,0)then
                      v.Trigger.Motor6D.C0=
                          CFrame.new(v.Trigger.Motor6D.C0.Position)*
                          CFrame.Angles(cam.X,0,0)
                  end
              end
          end)
      else
          if v:FindFirstChild("Arm")then
              v.Arm.Motor6D:GetPropertyChangedSignal("C0"):Connect(function()
                  if _G.GunOptins.Enabled and _G.GunOptins.Stable then
                      if v.Arm.Motor6D.C0~=CFrame.new(100,0,0)then
                          v.Arm.Motor6D.C0=CFrame.new(100,0,0)
                      end
                  end
              end)
          end
      end
  end
  game.RunService.RenderStepped:Connect(function()
    if _G.Worlds.Enabled == true and _G.Worlds.ColorEnable == true then 
        for I,V in pairs(workspace.Map:GetDescendants()) do
            if (V.ClassName == "Part" or V.ClassName == "MeshPart" or V.ClassName == "UnionOperation" or V.ClassName == "WedgePart") then
                if V.Color ~=_G.Worlds.Color then 
                    V.Color = _G.Worlds.Color
                end 
            end
        end
        _G.Worlds.ColorEnable=false
    end 
    if _G.Worlds.Enabled == true and _G.Worlds.MatEnable== true then 
        for I,V in pairs(workspace.Map:GetDescendants()) do
            if (V.ClassName == "Part" or V.ClassName == "MeshPart" or V.ClassName == "UnionOperation" or V.ClassName == "WedgePart") then
                if V.Material~=_G.Worlds.Mat then 
                    V.Material =_G.Worlds.Mat
                end 
            end
        end
        _G.Worlds.MatEnable=false
    end 
end)
  game.Workspace.CurrentCamera.ChildAdded:Connect(function(x)--wow im not using render stepped :!:!:>!>!>!>?!?!?!?
      FixStuffs(x)
  end)
  for _,v in pairs(game.Workspace.CurrentCamera:GetChildren())do--fix on load
      FixStuffs(v)
  end

      local IsAlive=function()--check if player is alive
         if game.Players.LocalPlayer.Character and not game.Workspace:FindFirstChild("MenuLobby")then
             return true
         end
         return false
     end
     local ModVisScope=function(x)--modify scope visibility true for invisible false for visible
         x=not x
         for _,v in pairs(game.Players.LocalPlayer.PlayerGui.UnscaledScreenGui.DisplayScope:GetChildren())do
             for _,c in pairs(v:GetChildren())do
                 if c:IsA("Frame")then
                     c.Visible=x
                 end
             end
             if v.Name=="ImageFrontLayer"then
                 v.Visible=x
             elseif v.Name=="ImageRearLayer"then
                 v.Image=x and "rbxassetid://981376749"or ""--epic id
             end
         end
     end

     game.RunService.RenderStepped:Connect(function()
        for i,v in pairs(workspace.Camera:GetChildren()) do 
            if v.Name ~= "Left Arm" and v.Name ~= "Right Arm" and v.Name ~= "neon" then 
                _G.DrawArms.GunName=v.Name 
            end
        end 
    end)
    
    game.RunService.RenderStepped:Connect(function()
     if _G.DrawArms.Enabled == true and _G.DrawArms.ArmsColorEnable == true and _G.DrawArms.Arms == true then 
         for I,V in pairs(workspace.Camera["Right Arm"]:GetDescendants()) do
             if (V.ClassName == "Part" or V.ClassName == "MeshPart" or V.ClassName == "UnionOperation" or V.ClassName == "WedgePart") then
                 if V.Color ~=_G.DrawArms.ArmsColor then 
                     V.Color = _G.DrawArms.ArmsColor
                 end 
             end
         end
     end 
     if _G.DrawArms.Enabled == true and _G.DrawArms.ArmsMatEnable == true and _G.DrawArms.Arms == true then 
         for I,V in pairs(workspace.Camera["Right Arm"]:GetDescendants()) do
             if (V.ClassName == "Part" or V.ClassName == "MeshPart" or V.ClassName == "UnionOperation" or V.ClassName == "WedgePart") then
                 if V.Material ~=_G.DrawArms.ArmsMat then 
                     V.Material = _G.DrawArms.ArmsMat
                 end 
             end
         end
     end  --Right Arm
    
     if _G.DrawArms.Enabled == true and _G.DrawArms.ArmsColorEnable == true and _G.DrawArms.Arms == true then 
         for I,V in pairs(workspace.Camera["Left Arm"]:GetDescendants()) do
             if (V.ClassName == "Part" or V.ClassName == "MeshPart" or V.ClassName == "UnionOperation" or V.ClassName == "WedgePart") then
                 if V.Color ~=_G.DrawArms.ArmsColor then 
                     V.Color = _G.DrawArms.ArmsColor
                 end 
             end
         end
     end 
     if _G.DrawArms.Enabled == true and _G.DrawArms.ArmsMatEnable == true and _G.DrawArms.Arms == true then 
         for I,V in pairs(workspace.Camera["Left Arm"]:GetDescendants()) do
             if (V.ClassName == "Part" or V.ClassName == "MeshPart" or V.ClassName == "UnionOperation" or V.ClassName == "WedgePart") then
                 if V.Material ~=_G.DrawArms.ArmsMat then 
                     V.Material = _G.DrawArms.ArmsMat
                 end 
             end
         end
     end  --Left Arm
    
     if _G.DrawArms.Enabled == true and _G.DrawArms.GunColorEnable == true and _G.DrawArms.Gun == true then 
         for I,V in pairs(workspace.Camera[_G.DrawArms.GunName]:GetDescendants()) do
             if (V.ClassName == "Part" or V.ClassName == "MeshPart" or V.ClassName == "UnionOperation" or V.ClassName == "WedgePart") then
                 if V.Color ~=_G.DrawArms.GunColor then 
                     V.Color = _G.DrawArms.GunColor
                 end 
             end
         end
     end 
     if _G.DrawArms.Enabled == true and _G.DrawArms.GunMatEnable == true and _G.DrawArms.Gun == true then 
         for I,V in pairs(workspace.Camera[_G.DrawArms.GunName]:GetDescendants()) do
             if (V.ClassName == "Part" or V.ClassName == "MeshPart" or V.ClassName == "UnionOperation" or V.ClassName == "WedgePart") then
                 if V.Material ~=_G.DrawArms.GunMat then 
                     V.Material = _G.DrawArms.GunMat
                 end 
             end
         end
     end  --Gun
    end)    

game.RunService.RenderStepped:Connect(function()
   if _G.Ambient.Enabled == true then 
       if  Game.Lighting.Ambient ~= _G.Ambient.Color then 
           Game.Lighting.Ambient = _G.Ambient.Color
       end 
       task.wait()
   end 
end)
local mouse--same old method just now in a run actor
               for _,v in pairs(getgc(true))do
                   if type(v)=="table"then
                       if rawget(v,"mouse")then
                           if rawget(v.mouse,"onmousemove")then
                               mouse=v.mouse
                               break
                           end
                       end
                   end
               end
               local GetR6Parts=function(all)--get table with r6 parts
                   local Parts
                   if all then
                       Parts={"All","Head","Torso","Right Arm","Left Arm","Right Leg","Left Leg"}
                   else
                       Parts={"Head","Torso","Right Arm","Left Arm","Right Leg","Left Leg"}
                   end
                   return Parts
               end
               local IsAlive=function()
                   if game.Players.LocalPlayer.Character and not game.Workspace:FindFirstChild("MenuLobby")then
                       return true
                   end
                   return false
               end
               local NotGuns={"ONE HAND BLUNT","TWO HAND BLADE","EQUIPMENT","FRAGMENTATION","IMPACT","ONE HAND BLADE","TWO HAND BLUNT","HIGH EXPLOSIVE"}--production folder >:)
               local guns={}--gun table
               local gunpendepths={None=0,["M14 BR"]=1.8,HK417=1.6,L22=0.9,["HECATE II"]=10,["M79 THUMPER"]=0.5,["AS VAL"]=1,MP1911=0.5,["GI M1"]=1,["TEC-9"]=0.5,GSP=0.1,["GLOCK 18"]=0.5,["GB-22"]=0.5,X95R=1,M16A3=1.2,["SCAR SSR"]=2.6,["STEYR SCOUT"]=3,K2=1,MG36=1.8,["AUTO 9"]=1,MP5SD=0.5,MAC10=0.5,UZI=0.7,["COLT MARS"]=1.5,["SAIGA-12U"]=0.4,["FAL PARA SHORTY"]=1.4,L115A3=3,MP40=1.1,["AN-94"]=1,["ARM PISTOL"]=0.9,BLOCKSON=0.5,MP5K=0.5,["MAKAROV PM"]=0.5,["L86 LSW"]=1.6,AK12=1,["BOXY BUSTER"]=0,["BEOWULF ECR"]=1.9,EXECUTIONER=1,["DRAGUNOV SVU"]=2.8,M16A4=1.2,M1903=5,["TOMMY GUN"]=0.5,["SCAR-H"]=1.5,G36K=1.1,AK74=1,JURY=1,["1858 CARBINE"]=0.5,["GLOCK 40"]=0.8,["BEOWULF TCR"]=3,["1858 NEW ARMY"]=0.5,M4=1,["NTW-20"]=20,HK51B=1,9,C8A2=0.8,MP7=1.5,AK47=1.4,MC51SD=1.5,KRINKOV=0.9,["GOLDEN ZIP 22"]=0.5,["KAC SRR"]=1,["TRG-42"]=3,["KRISS VECTOR"]=0.5,["RAMA 1130"]=0.5,["SR-3M"]=1,["SCAR PDW"]=0.9,["FAL 50.63 PARA"]=2,["E SHOTGUN"]=0.5,M1911=0.5,["AG-3"]=2,M231=1,K7=0.5,AKM=1.4,SKS=1.5,K1A=0.75,["GYROJET MARK I"]=0.5,["M14 DMR"]=2.4,["MICRO UZI"]=0.5,["PPSH-41"]=1,["REMINGTON 870"]=0.5,["VSS VINTOREZ"]=1.5,MK11=1.7,MSG90=2,["SL-8"]=1.3,M3A1=0.5,["GLOCK 17"]=0.5,["SASS 308"]=2,FT300=3,RPK74=1.6,["KS-23M"]=0.7,["AA-12"]=0.3,M7644=0.5,ALIEN=0.5,["TAR-21"]=1.2,["SCAR HAMR"]=1.4,MG3KWS=2,["GOLDEN HK51B"]=0.3,HK21=1.6,MG42=2.5,["AUG A3"]=1,["SA58 SPR"]=2,["BFG 50"]=10,["SAIGA-12"]=.5,AKU12=1,["FAL 50.00"]=2,FAMAS=1,["TYPE 88"]=.9,["REDHAWK 44"]=1,GRIZZLY=1.3,["COLT LMG"]=1.4,MP10=0.5,RAILGUN=200,["HENRY 45-70"]=2,["MP412 REX"]=.5,WA2000=2.8,["DEAGLE 44"]=1,["GLOCK 50"]=1,["GLOCK 21"]=0.7,HARDBALLER=1.2,M4A1=1,M9=0.5,["GOLDEN TOMMY GUN"]=0.5,["GOLDEN REDHAWK 45"]=0.5,["SCAR-L"]=1,["STG-44"]=1.6,P90=2,["DEAGLE 50"]=1.3,MP5=0.5,["AUG A3 PARA"]=0.5,["TOY M1911"]=0,["REMINGTON 700"]=3,["PP-2000"]=1,["MP5/10"]=0.8,AK12BR=2,["KG-99"]=0.5,UMP45=1.4,["ZIP 22"]=0.5,["GLOCK 1"]=0.5,C7A2=0.9,["SERBU SHOTGUN"]=0.6,["AUG A1"]=1,["COLT SMG 635"]=0.5,RPK12=1.6,["FIVE SEVEN"]=1.5,["DT11 PRO"]=.7,["GYROJET CARBINE"]=0.7,["OTs-126"]=1.2,M93R=0.5,DBV12=0.5,M45A1=0.5,["SAWED OFF"]=0.6,G36C=1,["SFG 50"]=10,["E GUN"]=0.5,SKORPION=0.5,OBREZ=2,RPK=1.8,["ROPOD SHOTTY"]=1.5,M41A=1,["GROZA-1"]=1.5,["GOLDEN SHORTY"]=0.1,["GROZA-4"]=1.5,M2011=0.5,["GLOCK 23"]=0.8,["KSG 12"]=0.4,["USAS-12"]=0.3,M60=3,["MOSIN NAGANT"]=4,["HONEY BADGER"]=1.3,["SPAS-12"]=0.6,["AM III"]=1.2,["STEVENS DB"]=0.5,["DRAGUNOV SVDS"]=3.2,["AUG HBAR"]=1.6,K14=3,["CAN CANNON"]=1.2,["AUG A2"]=1,AK103=1.4,AWS=2,INTERVENTION=6,["X95 SMG"]=0.7,["MATEBA 6"]=1,JUDGE=1,G36=1.3,["PP-19 BIZON"]=0.5,M107=10,G3=1.5,["GOLDEN DEAGLE 50"]=1.5,AK12C=1.2,L2A3=1.1,["GOLDEN DEAGLE 2"]=1.5,ASMI=0.5,["IZHEVSK PB"]=0.5,AK105=1,M3822=0.5,L85A2=1.2,["HOWA TYPE 20"]=1.4,HK416=1,M16A1=0.8,G11K2=2}
               local StringToTable=function(string)--string to table function used in find broken module penetratrion
                   local a={}
                   for i=1,string.len(string)do
                       a[#a+1]=string.sub(string,i,i)
                   end
                   return a
               end
               local FindBrokenModulePenetration=function(modulescript)--find broken module penetratrion used in new updates
                   local gundata=decompile(modulescript)--you cant require anymore
                   local exists,penstart=string.find(gundata,"v1.penetrationdepth = ")
                   if not exists then return 0 end
                   local pendata=string.sub(gundata,penstart,penstart+4)
                   local number=""
                   for _,v in pairs(StringToTable(pendata))do
                       if tonumber(v)or v=="."then
                           number=number..v
                       end
                   end
                   return tonumber(number)
               end
               local weapondata={}--my shitty gun detection (it works fuck u)
               for _,v in pairs(game:GetService("ReplicatedStorage").Content.ProductionContent.WeaponDatabase:GetChildren())do
                   for _,c in pairs(v:GetChildren())do
                       if c:FindFirstChild(_G.SilentAim.GunName)then
                           weapondata[c.Name]={Union={},MeshPart={}}
                           for _,x in pairs(c[_G.SilentAim.GunName]:GetChildren())do
                               if x:IsA("MeshPart")then
                                   weapondata[c.Name].MeshPart[x.MeshId]=x.MeshId
                               elseif x:IsA("Union")then
                                   weapondata[c.Name].Union[x.AssetId]=x.AssetId
                               end
                           end
                       end
                   end
                   if not table.find(NotGuns,v.Name)then
                       for _,c in pairs(v:GetChildren())do
                           guns[c]=c.Name
                       end
                   end
               end
               for i,v in pairs(guns)do--if there is a new update it will detect the weapons and try to add the new penetratrion depths
                   if not gunpendepths[v]then
                       local depth=FindBrokenModulePenetration(i[v])
                       gunpendepths[v]=depth
                       print("Error, Missing "..v..", Error Depth Recovery Found "..depth.." As Penetration, Please Contact The Dev To Fix https://discord.gg/vQQqcgBWCG")
                   end
               end
               local GetGunName=function()--get weapon from closest model from camera?! omg shut up ik its stupid but it works quit bullying me
                   if not IsAlive()then return"None"end
                   local curdata={Union={},MeshPart={}}
                   for _,v in pairs(game.Workspace.CurrentCamera[_G.SilentAim.GunName]:GetChildren())do
                       if v:IsA("MeshPart")then
                           curdata.MeshPart[v.MeshId]=v.MeshId
                       elseif v:IsA("Union")then
                           curdata.Union[v.AssetId]=v.AssetId
                       end
                   end
                   local matches={}
                   for i,v in pairs(weapondata)do
                       for i2,c in pairs(v)do
                           for _,x in pairs(c)do
                               if x==curdata[i2][x]then
                                   if matches[i]then
                                       matches[i]=matches[i]+1
                                   else
                                       matches[i]=1
                                   end
                               end
                           end
                       end
                   end
                   local a=0
                   local closest="None"
                   for i,v in pairs(matches)do
                       if v>a then
                           a=v
                           closest=i
                       end
                   end
                   return closest
               end
               local GetEnemys=function()--simple ass get enemys
                   local players={}
                   local characters={}
                   local enemyteam
                   for _,v in pairs(game.Players:GetChildren())do
                       if v.Team~=game.Players.LocalPlayer.Team then
                           enemyteam=tostring(v.TeamColor)
                           players[#players+1]=v
                       end
                   end
                   if not enemyteam then
                       enemyteam="Bright orange"
                       if game.Players.LocalPlayer.Team.Name=="Ghosts"then
                           enemyteam="Bright blue"
                       end
                   end
                   for _,v in pairs(game.Workspace.Players[enemyteam]:GetChildren())do
                       characters[#characters+1]=v
                   end
                   return{characters,players}
               end
               local GetDirChange=function()--get bullet direction changes
                   local a={}
                   if game.Workspace.CurrentCamera:FindFirstChild(_G.SilentAim.GunName)then
                       for _,v in pairs(game.Workspace.CurrentCamera[_G.SilentAim.GunName]:GetChildren())do
                           if string.find(string.lower(tostring(v)),"flame")or string.find(string.lower(tostring(v)),"sightmark")then
                               a[#a+1]=v
                           end
                       end
                   end
                   return a
               end
               local Ignore={game.Workspace.CurrentCamera,game.Workspace.Ignore}--old ignore stuff (still works lul)
               local function CanSee(Target,Penetrate,PenDepth)
                   if not Penetrate then PenDepth=0 end
                   local Dir=Target.Position-game.Workspace.CurrentCamera.CFrame.Position
                   local InitCast=game.Workspace:FindPartOnRayWithIgnoreList(Ray.new(game.Workspace.CurrentCamera.CFrame.Position,Dir),Ignore,false,true)
                   if not InitCast then
                       return true
                   end
                   local Penetrated=0
                   for _,v in pairs(game.Workspace.CurrentCamera:GetPartsObscuringTarget({Target.Position},Ignore))do
                       if v.CanCollide and v.Transparency~=1 and v.Name~="Window"then
                           local MaxExtent=v.Size.Magnitude*Dir.Unit;
                           local _,Enter=game.Workspace:FindPartOnRayWithWhitelist(Ray.new(game.Workspace.CurrentCamera.CFrame.Position,Dir),{v},true)
                           local _,Exit=game.Workspace:FindPartOnRayWithWhitelist(Ray.new(Enter+MaxExtent,-MaxExtent),{v},true)
                           local Depth=(Exit-Enter).Magnitude;
                           if Depth>PenDepth then
                               return false;
                           else
                               Penetrated=Penetrated+Depth;
                           end
                       else
                           table.insert(Ignore,v)
                       end
                   end
                   return Penetrated<PenDepth
               end
               local target
               game.RunService.RenderStepped:Connect(function()
                   target=nil--reset targets
                   if _G.SilentAim.Enabled and IsAlive()then--are we alive and enabled?
                       local a=math.huge
                       local penetratrion=gunpendepths[GetGunName()]
                       for _,v in pairs(GetEnemys()[1])do--get characters
                           for _,c in pairs(_G.SilentAim.Target)do--get part target list
                               local main=v[c]--part to detect
                               local mainmag=(main.Position-game.Workspace.CurrentCamera.CFrame.Position).Magnitude--distance between us
                               if _G.SilentAim.Ignore_Fov then--is ignoring fov
                                   if mainmag<a and CanSee(main,_G.SilentAim.Auto_Wall,penetratrion)then
                                       a=mainmag
                                       target=main
                                   end
                               else--i dont wanna explain the lower part just figure it out
                                   local center=game.Workspace.CurrentCamera:WorldToViewportPoint(game.Workspace.CurrentCamera.CFrame.Position+game.Workspace.CurrentCamera.CFrame.LookVector)
                                   local partloc,isvisible=game.Workspace.CurrentCamera:WorldToScreenPoint(main.Position)
                                   if(Vector2.new(partloc.X,partloc.Y)-Vector2.new(center.X,center.Y)).Magnitude<=_G.SilentAim.Fov then
                                       if mainmag<a and CanSee(main,_G.SilentAim.Auto_Wall,penetratrion)then
                                           target=main
                                           a=mainmag
                                       end
                                   end
                               end
                           end
                       end
                       if target then--have we has target :D
                           for _,v in pairs(GetDirChange())do--our direction changes >:)
                               v.Position=game.Workspace.CurrentCamera.CFrame.Position
                               v.Velocity=Vector3.new()--because we remove welds later >:)
                               local weld=v:FindFirstChildWhichIsA("Weld")or v:FindFirstChildWhichIsA("WeldConstraint")
                               if weld then
                                   weld:Destroy()--remove weld to remove swat to affecte accuracy
                               end
                               local x,y,z=CFrame.new(v.Position,target.Position+Vector3.new(0,.45,0)):ToEulerAnglesYXZ()
                               v.Orientation=Vector3.new(math.deg(x),math.deg(y),math.deg(z))--my very first silent aim i made came in handy LOL
                           end
                       else
                           local straight=game.Workspace.CurrentCamera.CFrame.LookVector*100000
                           for _,v in pairs(GetDirChange())do--fix bullet angle if we nolonger has target
                               v.Position=game.Workspace.CurrentCamera.CFrame.Position
                               v.Velocity=Vector3.new()--because we remove welds later >:)
                               local weld=v:FindFirstChildWhichIsA("Weld")or v:FindFirstChildWhichIsA("WeldConstraint")
                               if weld then
                                   weld:Destroy()
                               end
                               local x,y,z=CFrame.new(v.Position,straight):ToEulerAnglesYXZ()
                               v.Orientation=Vector3.new(math.deg(x),math.deg(y),math.deg(z))
                           end
                       end
                   end
               end)
               coroutine.wrap(function()--our fov circle fuck you figure it out urself
                   while game.RunService.RenderStepped:Wait()do
                       pcall(function()
                           if _G.SilentAim.Auto_Shoot and target then
                               for i,v in pairs(mouse.onbuttondown._connections[1])do
                                   if type(v)=="function"then
                                       v("left")break--wow pf really steppin up the anti cheat for this shit
                                   end
                               end
                               wait()
                               for i,v in pairs(mouse.onbuttonup._connections[1])do
                                   if type(v)=="function"then
                                       v("left")break--same thing but undo
                                   end
                               end
                           end
                       end)
                   end
               end)()
               coroutine.wrap(function()--our fov circle fuck you figure it out urself
                   while wait(1)do
                       pcall(function()
                           if _G.SilentAim.Enabled and _G.SilentAim.Show_Fov and not _G.SilentAim.Ignore_Fov then
                               local center=game.Workspace.CurrentCamera:WorldToViewportPoint(game.Workspace.CurrentCamera.CFrame.Position+game.Workspace.CurrentCamera.CFrame.LookVector)
                               local a=Drawing.new("Circle")
                               a.Visible=true
                               a.Position=Vector2.new(center.X,center.Y)
                               a.Color=_G.SilentAim.Fov_Color
                               a.Thickness=2.5
                               a.Transparency=1
                               a.NumSides=100
                               a.Radius=_G.SilentAim.Fov
                               coroutine.wrap(function()
                                   wait(1.1)
                                   a:Remove()
                               end)()
                           end
                       end)
                   end
               end)()
Sense.Load()
]])
