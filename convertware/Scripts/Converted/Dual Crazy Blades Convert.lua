print("> Running Dual Crazy Blades by ???")
loadstring(game:HttpGet('https://raw.githubusercontent.com/GelatekWasTaken/GelatekV2/main/LoadLibrary.lua',true))()
wait(0.05)

local Module_Id = 0
local Player = Game:GetService("Players").LocalPlayer
local Character = Player.Character.Dummy.Dummy
local Char, Plr = Character, Player
local Mouse = Player:GetMouse()
local height = 0
local IsLanded = false
local NotifyKeyPresses = false
local CanRun = false
local CanJump = true
local Torso = Char:WaitForChild("Torso")
Instance.new("ForceField",char).Visible = false
Instance.new("ForceField",char).Visible = false
Instance.new("ForceField",char).Visible = false		
z = Instance.new("Sound", Torso)
z.SoundId = "rbxassetid://143521584" -- Put Music ID Here.
z.Looped = true
z.Pitch = 1
z.Volume = 5
wait(.1)
z:Play()
local Head = Char:WaitForChild("Head")
local Left_Arm = Char:WaitForChild("Left Arm")
local Right_Arm = Char:WaitForChild("Right Arm")
local Left_Leg = Char:WaitForChild("Left Leg")
local Right_Leg = Char:WaitForChild("Right Leg")
local HumanoidRootPart = Char:WaitForChild("HumanoidRootPart")
local Humanoid = Char:WaitForChild("Humanoid")
local DebounceKeyDown, DebounceState = false, false
local DebounceAFKAnimations = false
local sp = Torso
local State, LastState, Mode = "Idle", "Normal", nil
local AFKAnimSequenceCount, MaxSequenceCount = 0, 500
local char, Char, plr, Plr = Character, Character, Player, Player
local mouse, ms = Mouse, Mouse
local dkd, debkd = DebounceKeyDown, DebounceKeyDown
local dst, debst, ds, debs = DebounceState, DebounceState, DebounceState, DebounceState
local daa, dafk, debafk = DebounceAFKAnimations, DebounceAFKAnimations, DebounceAFKAnimations
local rs = game:service("RunService")
local lrs = rs.RenderStepped
local srs = rs.Heartbeat
local lleg, rleg = Left_Leg, Right_Leg
local larm, rarm = Left_Arm, Right_Arm
local hed, torr, torso = Head, Torso, Torso
local hum, root = Humanoid, HumanoidRootPart
local vec3, vec2 = Vector3.new, Vector2.new
local sin, cos, atan, rad, rand, rands = math.sin, math.cos, math.atan, math.rad, math.random, math.randomseed
local cf, ang, eu = CFrame.new, CFrame.Angles, CFrame.fromEulerAnglesXYZ
local bc, bcr, c3 = BrickColor.new, BrickColor.Random, Color3.new
if hed:FindFirstChild("Running") then
  hed:WaitForChild("Running").Volume = 0
end
if Char:FindFirstChild("Animate") then
  local Anim = Char:WaitForChild("Animate")
  local Anim_2 = Anim:Clone()
  Anim_2.Disabled = true
  Anim_2.Parent = Char
  Anim.Disabled = true
  Anim_2.Disabled = false
end
do
  if Char:FindFirstChild("Health") then
    ypcall(game.Destroy, Char.Health)
  end
  Weld = function(to, from, c1)
  
  local New_Weld = Instance.new("Weld", to)
  New_Weld.Part0 = from
  New_Weld.Part1 = to
  New_Weld.C1 = c1
  return New_Weld
end

  clerp = function(c1, c2, al)
  
  local com1 = {c1.X, c1.Y, c1.Z, c1:toEulerAnglesXYZ()}
  local com2 = {c2.X, c2.Y, c2.Z, c2:toEulerAnglesXYZ()}
  for i,v in pairs(com1) do
    com1[i] = v + (com2[i] - v) * al
  end
  return cf(com1[1], com1[2], com1[3]) * ang(select(4, unpack(com1)))
end

  lerp = function(c1, c2, al)
  
  return c1:lerp(c2, al)
end

  snd = function(Id, Parent)
  
  local Sound = Instance.new("Sound", Parent)
  Sound.Pitch = 1
  Sound.Volume = 0.25
  Sound.Looped = false
  return Sound
end

  local sine, change = 0, 1
  local m = Instance.new("Model")
  m.Name = "Blade_"
  p1 = Instance.new("Part", m)
  p1.BrickColor = bc("Mulberry")
  p1.Material = Enum.Material.Ice
  p1.CFrame = cf(-7.75327206, 0.249948442, 23.8050709, 8.42213703e-05, -1.84584439e-06, 1, 8.27520998e-05, -1, -1.85281419e-06, 1, 8.27522599e-05, -8.42212103e-05)
  p1.CanCollide = false
  p1.FormFactor = Enum.FormFactor.Custom
  p1.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b1 = Instance.new("SpecialMesh", p1)
  b1.MeshId = "http://www.roblox.com/Asset/?id=9756362"
  b1.TextureId = ""
  b1.MeshType = Enum.MeshType.FileMesh
  b1.Name = "Mesh"
  b1.Scale = vec3(0.300000012, 0.200000003, 0.600000024)
  p2 = Instance.new("Part", m)
  p2.BrickColor = bc("Mulberry")
  p2.Material = Enum.Material.Ice
  p2.CFrame = cf(-7.75327206, 0.249948442, 23.8050709, -1, -4.1876061e-05, 0.000126350584, 4.18869386e-05, -1, 8.60874643e-05, 0.00012634696, 8.60927539e-05, 1)
  p2.CanCollide = false
  p2.FormFactor = Enum.FormFactor.Custom
  p2.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b2 = Instance.new("SpecialMesh", p2)
  b2.MeshId = "http://www.roblox.com/Asset/?id=9756362"
  b2.TextureId = ""
  b2.MeshType = Enum.MeshType.FileMesh
  b2.Name = "Mesh"
  b2.Scale = vec3(0.300000012, 0.200000003, 0.600000024)
  p3 = Instance.new("Part", m)
  p3.BrickColor = bc("Mulberry")
  p3.Material = Enum.Material.Ice
  p3.CFrame = cf(-7.75324965, 0.44994536, 23.8050613, 8.42213703e-05, -1.84584439e-06, 1, 8.27520998e-05, -1, -1.85281419e-06, 1, 8.27522599e-05, -8.42212103e-05)
  p3.CanCollide = false
  p3.FormFactor = Enum.FormFactor.Custom
  p3.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b3 = Instance.new("SpecialMesh", p3)
  b3.MeshId = "http://www.roblox.com/Asset/?id=9756362"
  b3.TextureId = ""
  b3.MeshType = Enum.MeshType.FileMesh
  b3.Name = "Mesh"
  b3.Scale = vec3(0.300000012, 0.200000003, 0.600000024)
  p4 = Instance.new("Part", m)
  p4.BrickColor = bc("Really black")
  p4.Material = Enum.Material.SmoothPlastic
  p4.CFrame = cf(-7.75311041, 0.10003978, 26.0050869, 1, 1.71142547e-05, -3.41671621e-05, 1.71118536e-05, -1, -7.0290509e-05, -3.4168359e-05, 7.0289927e-05, -1)
  p4.CanCollide = false
  p4.FormFactor = Enum.FormFactor.Custom
  p4.Size = vec3(0.200000003, 0.200000003, 0.600000024)
  p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b4 = Instance.new("SpecialMesh", p4)
  b4.MeshType = Enum.MeshType.Wedge
  b4.Name = "Mesh"
  b4.Scale = vec3(0.5, 1, 1)
  p5 = Instance.new("Part", m)
  p5.BrickColor = bc("Really black")
  p5.Material = Enum.Material.SmoothPlastic
  p5.CFrame = cf(-8.00326824, 0.349939257, 23.5050945, 9.51142374e-06, -1, 2.92663335e-05, 1, 9.51279071e-06, 4.67159698e-05, -4.67162536e-05, 2.92658788e-05, 1)
  p5.CanCollide = false
  p5.FormFactor = Enum.FormFactor.Custom
  p5.Size = vec3(0.300000012, 0.5, 0.800000012)
  p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b5 = Instance.new("SpecialMesh", p5)
  b5.MeshType = Enum.MeshType.Wedge
  b5.Name = "Mesh"
  p6 = Instance.new("Part", m)
  p6.BrickColor = bc("Mulberry")
  p6.Material = Enum.Material.Ice
  p6.CFrame = cf(-7.75324965, 0.44994536, 23.8050613, -1, -4.1876061e-05, 0.000126350584, 4.18869386e-05, -1, 8.60874643e-05, 0.00012634696, 8.60927539e-05, 1)
  p6.CanCollide = false
  p6.FormFactor = Enum.FormFactor.Custom
  p6.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b6 = Instance.new("SpecialMesh", p6)
  b6.MeshId = "http://www.roblox.com/Asset/?id=9756362"
  b6.TextureId = ""
  b6.MeshType = Enum.MeshType.FileMesh
  b6.Name = "Mesh"
  b6.Scale = vec3(0.300000012, 0.200000003, 0.600000024)
  p7 = Instance.new("Part", m)
  p7.BrickColor = bc("Really black")
  p7.Material = Enum.Material.Sand
  p7.Name = "Handle"
  p7.CFrame = cf(-7.75322247, 0.350003362, 24.805069, -3.06218935e-05, 1.84542239e-06, 1, -8.27810727e-05, 1, -1.84795761e-06, -1, -8.27811309e-05, -3.06217335e-05)
  p7.CanCollide = false
  p7.FormFactor = Enum.FormFactor.Custom
  p7.Size = vec3(1.80000019, 0.300000012, 0.300000012)
  p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b7 = Instance.new("SpecialMesh", p7)
  b7.MeshType = Enum.MeshType.Cylinder
  b7.Name = "Mesh"
  p8 = Instance.new("Part", m)
  p8.BrickColor = bc("Mulberry")
  p8.Material = Enum.Material.Ice
  p8.CFrame = cf(-7.75307512, 0.350043178, 26.3050995, -1, -4.1876061e-05, 0.000126350584, 4.18869386e-05, -1, 8.60874643e-05, 0.00012634696, 8.60927539e-05, 1)
  p8.CanCollide = false
  p8.FormFactor = Enum.FormFactor.Custom
  p8.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b8 = Instance.new("SpecialMesh", p8)
  b8.MeshId = "http://www.roblox.com/Asset/?id=9756362"
  b8.TextureId = ""
  b8.MeshType = Enum.MeshType.FileMesh
  b8.Name = "Mesh"
  b8.Scale = vec3(0.219999999, 0.219999999, 0.5)
  p9 = Instance.new("Part", m)
  p9.BrickColor = bc("Really black")
  p9.Material = Enum.Material.SmoothPlastic
  p9.CFrame = cf(-7.50327206, 0.349928707, 23.5050468, -7.36239599e-05, 1, 8.20992573e-05, -1, -7.36337388e-05, 0.000119003467, 0.000119009514, -8.2090497e-05, 1)
  p9.CanCollide = false
  p9.FormFactor = Enum.FormFactor.Custom
  p9.Size = vec3(0.300000012, 0.5, 0.800000012)
  p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b9 = Instance.new("SpecialMesh", p9)
  b9.MeshType = Enum.MeshType.Wedge
  b9.Name = "Mesh"
  p10 = Instance.new("Part", m)
  p10.BrickColor = bc("Really black")
  p10.Material = Enum.Material.SmoothPlastic
  p10.CFrame = cf(-7.75313997, 0.600024462, 25.6050415, 1, 4.18487289e-05, 4.77320209e-05, -4.18528361e-05, 1, 8.60911168e-05, -4.7728412e-05, -8.60931177e-05, 1)
  p10.CanCollide = false
  p10.FormFactor = Enum.FormFactor.Custom
  p10.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b10 = Instance.new("SpecialMesh", p10)
  b10.MeshType = Enum.MeshType.Wedge
  b10.Name = "Mesh"
  b10.Scale = vec3(0.5, 1, 1)
  p11 = Instance.new("Part", m)
  p11.BrickColor = bc("Really black")
  p11.Material = Enum.Material.SmoothPlastic
  p11.CFrame = cf(-8.00310135, 0.350052655, 26.0050964, 9.95122991e-06, -1, -8.21789436e-05, -1, -9.94328821e-06, -9.66310618e-05, 9.66302468e-05, 8.2179904e-05, -1)
  p11.CanCollide = false
  p11.FormFactor = Enum.FormFactor.Custom
  p11.Size = vec3(0.200000003, 0.200000003, 0.600000024)
  p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b11 = Instance.new("SpecialMesh", p11)
  b11.MeshType = Enum.MeshType.Wedge
  b11.Name = "Mesh"
  b11.Scale = vec3(0.5, 1, 1)
  p12 = Instance.new("Part", m)
  p12.BrickColor = bc("Really black")
  p12.Material = Enum.Material.SmoothPlastic
  p12.CFrame = cf(-8.00315189, 0.350035429, 25.6050777, 9.51142374e-06, -1, 2.92663335e-05, 1, 9.51279071e-06, 4.67159698e-05, -4.67162536e-05, 2.92658788e-05, 1)
  p12.CanCollide = false
  p12.FormFactor = Enum.FormFactor.Custom
  p12.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b12 = Instance.new("SpecialMesh", p12)
  b12.MeshType = Enum.MeshType.Wedge
  b12.Name = "Mesh"
  b12.Scale = vec3(0.5, 1, 1)
  p13 = Instance.new("Part", m)
  p13.BrickColor = bc("Really black")
  p13.Material = Enum.Material.SmoothPlastic
  p13.CFrame = cf(-7.75314856, 0.35003832, 25.7050858, -3.06218935e-05, 1.84542239e-06, 1, -8.27810727e-05, 1, -1.84795761e-06, -1, -8.27811309e-05, -3.06217335e-05)
  p13.CanCollide = false
  p13.FormFactor = Enum.FormFactor.Custom
  p13.Size = vec3(0.400000006, 0.400000006, 0.400000006)
  p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b13 = Instance.new("SpecialMesh", p13)
  b13.MeshType = Enum.MeshType.Cylinder
  b13.Name = "Mesh"
  p14 = Instance.new("Part", m)
  p14.BrickColor = bc("Eggplant")
  p14.Material = Enum.Material.SmoothPlastic
  p14.CFrame = cf(-7.75314379, 0.350039691, 25.6050682, -0.258816183, -0.965926707, 1.57904815e-05, -6.06896647e-05, 3.26090558e-05, 1, -0.965926707, 0.258816183, -6.70615118e-05)
  p14.CanCollide = false
  p14.FormFactor = Enum.FormFactor.Custom
  p14.Size = vec3(0.200000003, 0.400000006, 0.400000006)
  p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b14 = Instance.new("SpecialMesh", p14)
  b14.MeshType = Enum.MeshType.Cylinder
  b14.Name = "Mesh"
  b14.Scale = vec3(0.200000003, 0.800000012, 0.800000012)
  p15 = Instance.new("Part", m)
  p15.BrickColor = bc("Really black")
  p15.Material = Enum.Material.SmoothPlastic
  p15.CFrame = cf(-7.5031414, 0.350024939, 25.6050282, 4.12494637e-06, 1, 7.09887754e-05, -1, 4.11876863e-06, 8.70211079e-05, 8.70208169e-05, -7.09891247e-05, 1)
  p15.CanCollide = false
  p15.FormFactor = Enum.FormFactor.Custom
  p15.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b15 = Instance.new("SpecialMesh", p15)
  b15.MeshType = Enum.MeshType.Wedge
  b15.Name = "Mesh"
  b15.Scale = vec3(0.5, 1, 1)
  p16 = Instance.new("Part", m)
  p16.BrickColor = bc("Really black")
  p16.Material = Enum.Material.SmoothPlastic
  p16.CFrame = cf(-7.50310516, 0.350042135, 26.0050392, -6.84391198e-05, 1, -4.03960548e-05, 1, 6.84385304e-05, -1.46136626e-05, -1.46109032e-05, -4.0397048e-05, -1)
  p16.CanCollide = false
  p16.FormFactor = Enum.FormFactor.Custom
  p16.Size = vec3(0.200000003, 0.200000003, 0.600000024)
  p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b16 = Instance.new("SpecialMesh", p16)
  b16.MeshType = Enum.MeshType.Wedge
  b16.Name = "Mesh"
  b16.Scale = vec3(0.5, 1, 1)
  p17 = Instance.new("Part", m)
  p17.BrickColor = bc("Dark indigo")
  p17.Material = Enum.Material.Neon
  p17.CFrame = cf(-7.48066139, 0.349874318, 22.2413902, -4.01375701e-06, 1.83283555e-06, -1, 1, -3.89064116e-05, -4.01382795e-06, -3.89064262e-05, -1, -1.83268639e-06)
  p17.CanCollide = false
  p17.FormFactor = Enum.FormFactor.Custom
  p17.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b17 = Instance.new("SpecialMesh", p17)
  b17.MeshType = Enum.MeshType.Wedge
  b17.Name = "Mesh"
  b17.Scale = vec3(0.250003815, 1, 1)
  p18 = Instance.new("Part", m)
  p18.BrickColor = bc("Really black")
  p18.Material = Enum.Material.SmoothPlastic
  p18.CFrame = cf(-7.7531147, 0.600037873, 26.0050888, -1, 5.76474013e-05, -7.5282238e-05, 5.76494494e-05, 1, -2.71398258e-05, 7.52806664e-05, -2.71441659e-05, -1)
  p18.CanCollide = false
  p18.FormFactor = Enum.FormFactor.Custom
  p18.Size = vec3(0.200000003, 0.200000003, 0.600000024)
  p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b18 = Instance.new("SpecialMesh", p18)
  b18.MeshType = Enum.MeshType.Wedge
  b18.Name = "Mesh"
  b18.Scale = vec3(0.5, 1, 1)
  p19 = Instance.new("Part", m)
  p19.BrickColor = bc("Really black")
  p19.Material = Enum.Material.SmoothPlastic
  p19.CFrame = cf(-7.75312138, 0.100024462, 25.6050739, -1, -4.1876061e-05, 0.000126350584, 4.18869386e-05, -1, 8.60874643e-05, 0.00012634696, 8.60927539e-05, 1)
  p19.CanCollide = false
  p19.FormFactor = Enum.FormFactor.Custom
  p19.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b19 = Instance.new("SpecialMesh", p19)
  b19.MeshType = Enum.MeshType.Wedge
  b19.Name = "Mesh"
  b19.Scale = vec3(0.5, 1, 1)
  p20 = Instance.new("Part", m)
  p20.BrickColor = bc("Really black")
  p20.Material = Enum.Material.SmoothPlastic
  p20.CFrame = cf(-7.50325012, 0.34996599, 24.1050472, -6.28492053e-05, 1, -5.15577158e-05, 1, 6.28489579e-05, -4.93691687e-06, -4.93368634e-06, -5.15580177e-05, -1)
  p20.CanCollide = false
  p20.FormFactor = Enum.FormFactor.Custom
  p20.Size = vec3(0.300000012, 0.5, 0.400000006)
  p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b20 = Instance.new("SpecialMesh", p20)
  b20.MeshType = Enum.MeshType.Wedge
  b20.Name = "Mesh"
  p21 = Instance.new("Part", m)
  p21.BrickColor = bc("Really black")
  p21.Material = Enum.Material.SmoothPlastic
  p21.CFrame = cf(-8.00323772, 0.349970788, 24.105072, -9.59882018e-05, -1, -8.21833164e-05, -1, 9.59911267e-05, -3.54550102e-05, 3.54628974e-05, 8.2179904e-05, -1)
  p21.CanCollide = false
  p21.FormFactor = Enum.FormFactor.Custom
  p21.Size = vec3(0.300000012, 0.5, 0.400000006)
  p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b21 = Instance.new("SpecialMesh", p21)
  b21.MeshType = Enum.MeshType.Wedge
  b21.Name = "Mesh"
  p22 = Instance.new("Part", m)
  p22.BrickColor = bc("Dark indigo")
  p22.Material = Enum.Material.Neon
  p22.CFrame = cf(-8.02601433, 0.349957824, 23.6959991, -5.19071705e-07, -5.73098732e-05, 1, -1, -0.000109730514, -5.25360747e-07, 0.000109730543, -1, -5.73098077e-05)
  p22.CanCollide = false
  p22.FormFactor = Enum.FormFactor.Custom
  p22.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b22 = Instance.new("SpecialMesh", p22)
  b22.MeshType = Enum.MeshType.Wedge
  b22.Name = "Mesh"
  b22.Scale = vec3(0.250003815, 1, 1)
  p23 = Instance.new("Part", m)
  p23.BrickColor = bc("Really black")
  p23.Material = Enum.Material.Ice
  p23.CFrame = cf(-7.52600813, 0.349938989, 23.5595779, -6.28492053e-05, 1, -5.15577158e-05, 1, 6.28489579e-05, -4.93691687e-06, -4.93368634e-06, -5.15580177e-05, -1)
  p23.CanCollide = false
  p23.FormFactor = Enum.FormFactor.Custom
  p23.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b23 = Instance.new("SpecialMesh", p23)
  b23.MeshType = Enum.MeshType.Wedge
  b23.Name = "Mesh"
  b23.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p24 = Instance.new("Part", m)
  p24.BrickColor = bc("Really black")
  p24.Material = Enum.Material.Ice
  p24.CFrame = cf(-7.98062706, 0.349924982, 22.6505337, -5.19071705e-07, -5.73098732e-05, 1, -1, -0.000109730514, -5.25360747e-07, 0.000109730543, -1, -5.73098077e-05)
  p24.CanCollide = false
  p24.FormFactor = Enum.FormFactor.Custom
  p24.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b24 = Instance.new("SpecialMesh", p24)
  b24.MeshType = Enum.MeshType.Wedge
  b24.Name = "Mesh"
  b24.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p25 = Instance.new("Part", m)
  p25.BrickColor = bc("Really black")
  p25.Material = Enum.Material.Ice
  p25.CFrame = cf(-7.5260458, 0.349902958, 22.8322964, -6.28492053e-05, 1, -5.15577158e-05, 1, 6.28489579e-05, -4.93691687e-06, -4.93368634e-06, -5.15580177e-05, -1)
  p25.CanCollide = false
  p25.FormFactor = Enum.FormFactor.Custom
  p25.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b25 = Instance.new("SpecialMesh", p25)
  b25.MeshType = Enum.MeshType.Wedge
  b25.Name = "Mesh"
  b25.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p26 = Instance.new("Part", m)
  p26.BrickColor = bc("Really black")
  p26.Material = Enum.Material.Ice
  p26.CFrame = cf(-7.9806242, 0.34990871, 22.8323402, -9.59882018e-05, -1, -8.21833164e-05, -1, 9.59911267e-05, -3.54550102e-05, 3.54628974e-05, 8.2179904e-05, -1)
  p26.CanCollide = false
  p26.FormFactor = Enum.FormFactor.Custom
  p26.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b26 = Instance.new("SpecialMesh", p26)
  b26.MeshType = Enum.MeshType.Wedge
  b26.Name = "Mesh"
  b26.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p27 = Instance.new("Part", m)
  p27.BrickColor = bc("Really black")
  p27.Material = Enum.Material.Ice
  p27.CFrame = cf(-7.52608395, 0.349913508, 22.6504936, -4.01375701e-06, 1.83283555e-06, -1, 1, -3.89064116e-05, -4.01382795e-06, -3.89064262e-05, -1, -1.83268639e-06)
  p27.CanCollide = false
  p27.FormFactor = Enum.FormFactor.Custom
  p27.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b27 = Instance.new("SpecialMesh", p27)
  b27.MeshType = Enum.MeshType.Wedge
  b27.Name = "Mesh"
  b27.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p28 = Instance.new("Part", m)
  p28.BrickColor = bc("Really black")
  p28.Material = Enum.Material.Ice
  p28.CFrame = cf(-7.98055124, 0.349968553, 23.7414322, -5.19071705e-07, -5.73098732e-05, 1, -1, -0.000109730514, -5.25360747e-07, 0.000109730543, -1, -5.73098077e-05)
  p28.CanCollide = false
  p28.FormFactor = Enum.FormFactor.Custom
  p28.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b28 = Instance.new("SpecialMesh", p28)
  b28.MeshType = Enum.MeshType.Wedge
  b28.Name = "Mesh"
  b28.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p29 = Instance.new("Part", m)
  p29.BrickColor = bc("Really black")
  p29.Material = Enum.Material.Ice
  p29.CFrame = cf(-7.98051929, 0.349963725, 23.9232483, -9.59882018e-05, -1, -8.21833164e-05, -1, 9.59911267e-05, -3.54550102e-05, 3.54628974e-05, 8.2179904e-05, -1)
  p29.CanCollide = false
  p29.FormFactor = Enum.FormFactor.Custom
  p29.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b29 = Instance.new("SpecialMesh", p29)
  b29.MeshType = Enum.MeshType.Wedge
  b29.Name = "Mesh"
  b29.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p30 = Instance.new("Part", m)
  p30.BrickColor = bc("Really black")
  p30.Material = Enum.Material.Ice
  p30.CFrame = cf(-7.5260582, 0.349928647, 23.0141258, -4.01375701e-06, 1.83283555e-06, -1, 1, -3.89064116e-05, -4.01382795e-06, -3.89064262e-05, -1, -1.83268639e-06)
  p30.CanCollide = false
  p30.FormFactor = Enum.FormFactor.Custom
  p30.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b30 = Instance.new("SpecialMesh", p30)
  b30.MeshType = Enum.MeshType.Wedge
  b30.Name = "Mesh"
  b30.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p31 = Instance.new("Part", m)
  p31.BrickColor = bc("Really black")
  p31.Material = Enum.Material.Ice
  p31.CFrame = cf(-7.52605438, 0.349933356, 23.1959419, -6.28492053e-05, 1, -5.15577158e-05, 1, 6.28489579e-05, -4.93691687e-06, -4.93368634e-06, -5.15580177e-05, -1)
  p31.CanCollide = false
  p31.FormFactor = Enum.FormFactor.Custom
  p31.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b31 = Instance.new("SpecialMesh", p31)
  b31.MeshType = Enum.MeshType.Wedge
  b31.Name = "Mesh"
  b31.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p32 = Instance.new("Part", m)
  p32.BrickColor = bc("Really black")
  p32.Material = Enum.Material.Ice
  p32.CFrame = cf(-7.98059559, 0.349938273, 23.0141697, -5.19071705e-07, -5.73098732e-05, 1, -1, -0.000109730514, -5.25360747e-07, 0.000109730543, -1, -5.73098077e-05)
  p32.CanCollide = false
  p32.FormFactor = Enum.FormFactor.Custom
  p32.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b32 = Instance.new("SpecialMesh", p32)
  b32.MeshType = Enum.MeshType.Wedge
  b32.Name = "Mesh"
  b32.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p33 = Instance.new("Part", m)
  p33.BrickColor = bc("Really black")
  p33.Material = Enum.Material.Ice
  p33.CFrame = cf(-7.98059845, 0.34994489, 23.1959801, -9.59882018e-05, -1, -8.21833164e-05, -1, 9.59911267e-05, -3.54550102e-05, 3.54628974e-05, 8.2179904e-05, -1)
  p33.CanCollide = false
  p33.FormFactor = Enum.FormFactor.Custom
  p33.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b33 = Instance.new("SpecialMesh", p33)
  b33.MeshType = Enum.MeshType.Wedge
  b33.Name = "Mesh"
  b33.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p34 = Instance.new("Part", m)
  p34.BrickColor = bc("Really black")
  p34.Material = Enum.Material.Ice
  p34.CFrame = cf(-7.52599716, 0.349962771, 23.7413921, -4.01375701e-06, 1.83283555e-06, -1, 1, -3.89064116e-05, -4.01382795e-06, -3.89064262e-05, -1, -1.83268639e-06)
  p34.CanCollide = false
  p34.FormFactor = Enum.FormFactor.Custom
  p34.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b34 = Instance.new("SpecialMesh", p34)
  b34.MeshType = Enum.MeshType.Wedge
  b34.Name = "Mesh"
  b34.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p35 = Instance.new("Part", m)
  p35.BrickColor = bc("Really black")
  p35.Material = Enum.Material.Ice
  p35.CFrame = cf(-7.5259881, 0.349954128, 23.9232235, -6.28492053e-05, 1, -5.15577158e-05, 1, 6.28489579e-05, -4.93691687e-06, -4.93368634e-06, -5.15580177e-05, -1)
  p35.CanCollide = false
  p35.FormFactor = Enum.FormFactor.Custom
  p35.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b35 = Instance.new("SpecialMesh", p35)
  b35.MeshType = Enum.MeshType.Wedge
  b35.Name = "Mesh"
  b35.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p36 = Instance.new("Part", m)
  p36.BrickColor = bc("Really black")
  p36.Material = Enum.Material.Ice
  p36.CFrame = cf(-8.02608013, 0.349911034, 22.3323441, 9.51142374e-06, -1, 2.92663335e-05, 1, 9.51279071e-06, 4.67159698e-05, -4.67162536e-05, 2.92658788e-05, 1)
  p36.CanCollide = false
  p36.FormFactor = Enum.FormFactor.Custom
  p36.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b36 = Instance.new("SpecialMesh", p36)
  b36.MeshType = Enum.MeshType.Wedge
  b36.Name = "Mesh"
  b36.Scale = vec3(0.500007629, 0.454546124, 0.454546481)
  p37 = Instance.new("Part", m)
  p37.BrickColor = bc("Really black")
  p37.Material = Enum.Material.Ice
  p37.CFrame = cf(-7.48064137, 0.349888116, 22.332283, -7.36239599e-05, 1, 8.20992573e-05, -1, -7.36337388e-05, 0.000119003467, 0.000119009514, -8.2090497e-05, 1)
  p37.CanCollide = false
  p37.FormFactor = Enum.FormFactor.Custom
  p37.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b37 = Instance.new("SpecialMesh", p37)
  b37.MeshType = Enum.MeshType.Wedge
  b37.Name = "Mesh"
  b37.Scale = vec3(0.500007629, 0.454546124, 0.454546481)
  p38 = Instance.new("Part", m)
  p38.BrickColor = bc("Really black")
  p38.Material = Enum.Material.Ice
  p38.CFrame = cf(-7.93526602, 0.34984082, 21.241415, -9.59882018e-05, -1, -8.21833164e-05, -1, 9.59911267e-05, -3.54550102e-05, 3.54628974e-05, 8.2179904e-05, -1)
  p38.CanCollide = false
  p38.FormFactor = Enum.FormFactor.Custom
  p38.Size = vec3(0.200000003, 0.200000003, 2.27273226)
  p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b38 = Instance.new("BlockMesh", p38)
  b38.Name = "Mesh"
  b38.Scale = vec3(0.500007629, 0.454546124, 1)
  p39 = Instance.new("Part", m)
  p39.BrickColor = bc("Really black")
  p39.Material = Enum.Material.Ice
  p39.CFrame = cf(-7.57164097, 0.349846482, 21.241394, -6.28492053e-05, 1, -5.15577158e-05, 1, 6.28489579e-05, -4.93691687e-06, -4.93368634e-06, -5.15580177e-05, -1)
  p39.CanCollide = false
  p39.FormFactor = Enum.FormFactor.Custom
  p39.Size = vec3(0.200000003, 0.200000003, 2.27273226)
  p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b39 = Instance.new("BlockMesh", p39)
  b39.Name = "Mesh"
  b39.Scale = vec3(0.500007629, 0.454546124, 1)
  p40 = Instance.new("Part", m)
  p40.BrickColor = bc("Really black")
  p40.Material = Enum.Material.Ice
  p40.CFrame = cf(-7.52610397, 0.349906892, 22.4686661, -6.28492053e-05, 1, -5.15577158e-05, 1, 6.28489579e-05, -4.93691687e-06, -4.93368634e-06, -5.15580177e-05, -1)
  p40.CanCollide = false
  p40.FormFactor = Enum.FormFactor.Custom
  p40.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b40 = Instance.new("SpecialMesh", p40)
  b40.MeshType = Enum.MeshType.Wedge
  b40.Name = "Mesh"
  b40.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p41 = Instance.new("Part", m)
  p41.BrickColor = bc("Really black")
  p41.Material = Enum.Material.Ice
  p41.CFrame = cf(-7.98055553, 0.349950492, 23.5596161, -9.59882018e-05, -1, -8.21833164e-05, -1, 9.59911267e-05, -3.54550102e-05, 3.54628974e-05, 8.2179904e-05, -1)
  p41.CanCollide = false
  p41.FormFactor = Enum.FormFactor.Custom
  p41.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b41 = Instance.new("SpecialMesh", p41)
  b41.MeshType = Enum.MeshType.Wedge
  b41.Name = "Mesh"
  b41.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p42 = Instance.new("Part", m)
  p42.BrickColor = bc("Really black")
  p42.Material = Enum.Material.Ice
  p42.CFrame = cf(-7.98056698, 0.349928617, 23.3778133, -5.19071705e-07, -5.73098732e-05, 1, -1, -0.000109730514, -5.25360747e-07, 0.000109730543, -1, -5.73098077e-05)
  p42.CanCollide = false
  p42.FormFactor = Enum.FormFactor.Custom
  p42.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b42 = Instance.new("SpecialMesh", p42)
  b42.MeshType = Enum.MeshType.Wedge
  b42.Name = "Mesh"
  b42.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p43 = Instance.new("Part", m)
  p43.BrickColor = bc("Really black")
  p43.Material = Enum.Material.Ice
  p43.CFrame = cf(-7.75338221, 0.34988299, 22.059576, -1, -4.1876061e-05, 0.000126350584, 4.18869386e-05, -1, 8.60874643e-05, 0.00012634696, 8.60927539e-05, 1)
  p43.CanCollide = false
  p43.FormFactor = Enum.FormFactor.Custom
  p43.Size = vec3(0.300004601, 0.200000003, 3.90909958)
  p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b43 = Instance.new("BlockMesh", p43)
  b43.Name = "Mesh"
  b43.Scale = vec3(1, 0.454546124, 1)
  p44 = Instance.new("Part", m)
  p44.BrickColor = bc("Bright violet")
  p44.Material = Enum.Material.Ice
  p44.CFrame = cf(-7.75330973, 0.299918205, 23.2414284, -1, -4.1876061e-05, 0.000126350584, 4.18869386e-05, -1, 8.60874643e-05, 0.00012634696, 8.60927539e-05, 1)
  p44.CanCollide = false
  p44.FormFactor = Enum.FormFactor.Custom
  p44.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b44 = Instance.new("SpecialMesh", p44)
  b44.MeshId = "http://www.roblox.com/Asset/?id=9756362"
  b44.TextureId = ""
  b44.MeshType = Enum.MeshType.FileMesh
  b44.Name = "Mesh"
  b44.Scale = vec3(0.150002301, 0.0909092277, 0.909092903)
  p45 = Instance.new("Part", m)
  p45.BrickColor = bc("Bright violet")
  p45.Material = Enum.Material.Ice
  p45.CFrame = cf(-7.75330544, 0.399947196, 23.241436, -1, -4.1876061e-05, 0.000126350584, 4.18869386e-05, -1, 8.60874643e-05, 0.00012634696, 8.60927539e-05, 1)
  p45.CanCollide = false
  p45.FormFactor = Enum.FormFactor.Custom
  p45.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b45 = Instance.new("SpecialMesh", p45)
  b45.MeshId = "http://www.roblox.com/Asset/?id=9756362"
  b45.TextureId = ""
  b45.MeshType = Enum.MeshType.FileMesh
  b45.Name = "Mesh"
  b45.Scale = vec3(0.150002301, 0.0909092277, 0.909092903)
  p46 = Instance.new("Part", m)
  p46.BrickColor = bc("Bright violet")
  p46.Material = Enum.Material.Ice
  p46.CFrame = cf(-7.75333023, 0.399924815, 22.9686947, -1, -4.1876061e-05, 0.000126350584, 4.18869386e-05, -1, 8.60874643e-05, 0.00012634696, 8.60927539e-05, 1)
  p46.CanCollide = false
  p46.FormFactor = Enum.FormFactor.Custom
  p46.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b46 = Instance.new("SpecialMesh", p46)
  b46.MeshId = "http://www.roblox.com/Asset/?id=9756362"
  b46.TextureId = ""
  b46.MeshType = Enum.MeshType.FileMesh
  b46.Name = "Mesh"
  b46.Scale = vec3(0.150002301, 0.0909092277, 0.909092903)
  p47 = Instance.new("Part", m)
  p47.BrickColor = bc("Bright violet")
  p47.Material = Enum.Material.Ice
  p47.CFrame = cf(-7.75332451, 0.299913019, 22.9686737, -1, -4.1876061e-05, 0.000126350584, 4.18869386e-05, -1, 8.60874643e-05, 0.00012634696, 8.60927539e-05, 1)
  p47.CanCollide = false
  p47.FormFactor = Enum.FormFactor.Custom
  p47.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b47 = Instance.new("SpecialMesh", p47)
  b47.MeshId = "http://www.roblox.com/Asset/?id=9756362"
  b47.TextureId = ""
  b47.MeshType = Enum.MeshType.FileMesh
  b47.Name = "Mesh"
  b47.Scale = vec3(0.150002301, 0.0909092277, 0.909092903)
  p48 = Instance.new("Part", m)
  p48.BrickColor = bc("Bright violet")
  p48.Material = Enum.Material.Ice
  p48.CFrame = cf(-7.75334263, 0.299892604, 22.6959686, -1, -4.1876061e-05, 0.000126350584, 4.18869386e-05, -1, 8.60874643e-05, 0.00012634696, 8.60927539e-05, 1)
  p48.CanCollide = false
  p48.FormFactor = Enum.FormFactor.Custom
  p48.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b48 = Instance.new("SpecialMesh", p48)
  b48.MeshId = "http://www.roblox.com/Asset/?id=9756362"
  b48.TextureId = ""
  b48.MeshType = Enum.MeshType.FileMesh
  b48.Name = "Mesh"
  b48.Scale = vec3(0.150002301, 0.0909092277, 0.909092903)
  p49 = Instance.new("Part", m)
  p49.BrickColor = bc("Bright violet")
  p49.Material = Enum.Material.Ice
  p49.CFrame = cf(-7.75335121, 0.399919689, 22.6959419, -1, -4.1876061e-05, 0.000126350584, 4.18869386e-05, -1, 8.60874643e-05, 0.00012634696, 8.60927539e-05, 1)
  p49.CanCollide = false
  p49.FormFactor = Enum.FormFactor.Custom
  p49.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b49 = Instance.new("SpecialMesh", p49)
  b49.MeshId = "http://www.roblox.com/Asset/?id=9756362"
  b49.TextureId = ""
  b49.MeshType = Enum.MeshType.FileMesh
  b49.Name = "Mesh"
  b49.Scale = vec3(0.150002301, 0.0909092277, 0.909092903)
  p50 = Instance.new("Part", m)
  p50.BrickColor = bc("Bright violet")
  p50.Material = Enum.Material.Ice
  p50.CFrame = cf(-7.75338411, 0.399899274, 22.423233, -1, -4.1876061e-05, 0.000126350584, 4.18869386e-05, -1, 8.60874643e-05, 0.00012634696, 8.60927539e-05, 1)
  p50.CanCollide = false
  p50.FormFactor = Enum.FormFactor.Custom
  p50.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b50 = Instance.new("SpecialMesh", p50)
  b50.MeshId = "http://www.roblox.com/Asset/?id=9756362"
  b50.TextureId = ""
  b50.MeshType = Enum.MeshType.FileMesh
  b50.Name = "Mesh"
  b50.Scale = vec3(0.150002301, 0.0909092277, 0.909092903)
  p51 = Instance.new("Part", m)
  p51.BrickColor = bc("Bright violet")
  p51.Material = Enum.Material.Ice
  p51.CFrame = cf(-7.75336504, 0.299874097, 22.4232197, -1, -4.1876061e-05, 0.000126350584, 4.18869386e-05, -1, 8.60874643e-05, 0.00012634696, 8.60927539e-05, 1)
  p51.CanCollide = false
  p51.FormFactor = Enum.FormFactor.Custom
  p51.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b51 = Instance.new("SpecialMesh", p51)
  b51.MeshId = "http://www.roblox.com/Asset/?id=9756362"
  b51.TextureId = ""
  b51.MeshType = Enum.MeshType.FileMesh
  b51.Name = "Mesh"
  b51.Scale = vec3(0.150002301, 0.0909092277, 0.909092903)
  p52 = Instance.new("Part", m)
  p52.BrickColor = bc("Really black")
  p52.Material = Enum.Material.Ice
  p52.CFrame = cf(-7.86718607, 0.349782139, 19.6959324, 9.51142556e-06, -1, 2.92663335e-05, 1, 9.51279344e-06, 4.67159698e-05, -4.67162536e-05, 2.92658715e-05, 1)
  p52.CanCollide = false
  p52.FormFactor = Enum.FormFactor.Custom
  p52.Size = vec3(0.200000003, 0.227273062, 0.818183661)
  p52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b52 = Instance.new("SpecialMesh", p52)
  b52.MeshType = Enum.MeshType.Wedge
  b52.Name = "Mesh"
  b52.Scale = vec3(0.500007629, 1, 1)
  p53 = Instance.new("Part", m)
  p53.BrickColor = bc("Really black")
  p53.Material = Enum.Material.Ice
  p53.CFrame = cf(-7.63989449, 0.349779248, 19.6959114, -7.36239672e-05, 1, 8.20992573e-05, -1, -7.36337388e-05, 0.000119003467, 0.000119009514, -8.20904825e-05, 1)
  p53.CanCollide = false
  p53.FormFactor = Enum.FormFactor.Custom
  p53.Size = vec3(0.200000003, 0.227273062, 0.818183601)
  p53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b53 = Instance.new("SpecialMesh", p53)
  b53.MeshType = Enum.MeshType.Wedge
  b53.Name = "Mesh"
  b53.Scale = vec3(0.500007629, 1, 1)
  p54 = Instance.new("Part", m)
  p54.BrickColor = bc("Dark indigo")
  p54.Material = Enum.Material.Neon
  p54.CFrame = cf(-7.59446192, 0.349770248, 19.6049919, -7.36239672e-05, 1, 8.20992573e-05, -1, -7.36337388e-05, 0.000119003467, 0.000119009514, -8.20904825e-05, 1)
  p54.CanCollide = false
  p54.FormFactor = Enum.FormFactor.Custom
  p54.Size = vec3(0.200000003, 0.31818229, 1.00000226)
  p54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b54 = Instance.new("SpecialMesh", p54)
  b54.MeshType = Enum.MeshType.Wedge
  b54.Name = "Mesh"
  b54.Scale = vec3(0.250003815, 1, 1)
  p55 = Instance.new("Part", m)
  p55.BrickColor = bc("Dark indigo")
  p55.Material = Enum.Material.Neon
  p55.CFrame = cf(-7.91264153, 0.349778861, 19.6050339, 9.51142556e-06, -1, 2.92663335e-05, 1, 9.51279344e-06, 4.67159698e-05, -4.67162536e-05, 2.92658715e-05, 1)
  p55.CanCollide = false
  p55.FormFactor = Enum.FormFactor.Custom
  p55.Size = vec3(0.200000003, 0.31818229, 1.00000226)
  p55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b55 = Instance.new("SpecialMesh", p55)
  b55.MeshType = Enum.MeshType.Wedge
  b55.Name = "Mesh"
  b55.Scale = vec3(0.250003815, 1, 1)
  p56 = Instance.new("Part", m)
  p56.BrickColor = bc("Really black")
  p56.Material = Enum.Material.Ice
  p56.CFrame = cf(-7.98063278, 0.349910736, 22.4687004, -9.59882091e-05, -1, -8.21833164e-05, -1, 9.59911267e-05, -3.54550102e-05, 3.54628974e-05, 8.21798967e-05, -1)
  p56.CanCollide = false
  p56.FormFactor = Enum.FormFactor.Custom
  p56.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b56 = Instance.new("SpecialMesh", p56)
  b56.MeshType = Enum.MeshType.Wedge
  b56.Name = "Mesh"
  b56.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p57 = Instance.new("Part", m)
  p57.BrickColor = bc("Really black")
  p57.Material = Enum.Material.Ice
  p57.CFrame = cf(-7.52603769, 0.349922836, 23.3777695, -4.01375519e-06, 1.83283555e-06, -1, 1, -3.89064116e-05, -4.01382567e-06, -3.89064262e-05, -1, -1.83269367e-06)
  p57.CanCollide = false
  p57.FormFactor = Enum.FormFactor.Custom
  p57.Size = vec3(0.200000003, 0.200000003, 0.200000003)
  p57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b57 = Instance.new("SpecialMesh", p57)
  b57.MeshType = Enum.MeshType.Wedge
  b57.Name = "Mesh"
  b57.Scale = vec3(0.500007629, 0.909092247, 0.909092963)
  p58 = Instance.new("Part", m)
  p58.BrickColor = bc("Dark indigo")
  p58.Material = Enum.Material.Neon
  p58.CFrame = cf(-8.02618599, 0.349850088, 21.1959724, -5.19073751e-07, -5.73098732e-05, 1, -1, -0.000109730514, -5.25363021e-07, 0.000109730543, -1, -5.73098005e-05)
  p58.CanCollide = false
  p58.FormFactor = Enum.FormFactor.Custom
  p58.Size = vec3(0.200000003, 2.18182158, 0.200000003)
  p58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b58 = Instance.new("SpecialMesh", p58)
  b58.MeshType = Enum.MeshType.Brick
  b58.Name = "Mesh"
  b58.Scale = vec3(0.250003815, 1, 0.454546511)
  p59 = Instance.new("Part", m)
  p59.BrickColor = bc("Dark indigo")
  p59.Material = Enum.Material.Neon
  p59.CFrame = cf(-7.52618933, 0.349854857, 21.1959248, -4.01375519e-06, 1.83283555e-06, -1, 1, -3.89064116e-05, -4.01382567e-06, -3.89064262e-05, -1, -1.83269367e-06)
  p59.CanCollide = false
  p59.FormFactor = Enum.FormFactor.Custom
  p59.Size = vec3(0.200000003, 2.18182158, 0.200000003)
  p59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b59 = Instance.new("SpecialMesh", p59)
  b59.MeshType = Enum.MeshType.Brick
  b59.Name = "Mesh"
  b59.Scale = vec3(0.250003815, 1, 0.909092963)
  p60 = Instance.new("Part", m)
  p60.BrickColor = bc("Dark indigo")
  p60.Material = Enum.Material.Neon
  p60.CFrame = cf(-8.02598763, 0.349980175, 23.9687328, 6.09254312e-05, 4.14997376e-05, 1, 1, 7.6401062e-05, -6.09286035e-05, -7.6403594e-05, 1, -4.14950664e-05)
  p60.CanCollide = false
  p60.FormFactor = Enum.FormFactor.Custom
  p60.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b60 = Instance.new("SpecialMesh", p60)
  b60.MeshType = Enum.MeshType.Wedge
  b60.Name = "Mesh"
  b60.Scale = vec3(0.250003815, 1, 1)
  p61 = Instance.new("Part", m)
  p61.BrickColor = bc("Dark indigo")
  p61.Material = Enum.Material.Neon
  p61.CFrame = cf(-7.48053026, 0.349959135, 23.9686871, 4.27772102e-05, 5.73098732e-05, -1, -1, 3.47651221e-05, -4.27752166e-05, 3.47626737e-05, 1, 5.73113502e-05)
  p61.CanCollide = false
  p61.FormFactor = Enum.FormFactor.Custom
  p61.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b61 = Instance.new("SpecialMesh", p61)
  b61.MeshType = Enum.MeshType.Wedge
  b61.Name = "Mesh"
  b61.Scale = vec3(0.250003815, 1, 1)
  p62 = Instance.new("Part", m)
  p62.BrickColor = bc("Dark indigo")
  p62.Material = Enum.Material.Neon
  p62.CFrame = cf(-7.48055792, 0.349948227, 23.6959743, -4.01375519e-06, 1.83283555e-06, -1, 1, -3.89064116e-05, -4.01382567e-06, -3.89064262e-05, -1, -1.83269367e-06)
  p62.CanCollide = false
  p62.FormFactor = Enum.FormFactor.Custom
  p62.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b62 = Instance.new("SpecialMesh", p62)
  b62.MeshType = Enum.MeshType.Wedge
  b62.Name = "Mesh"
  b62.Scale = vec3(0.250003815, 1, 1)
  p63 = Instance.new("Part", m)
  p63.BrickColor = bc("Dark indigo")
  p63.Material = Enum.Material.Neon
  p63.CFrame = cf(-8.02604008, 0.349936932, 23.3323536, -5.19073751e-07, -5.73098732e-05, 1, -1, -0.000109730514, -5.25363021e-07, 0.000109730543, -1, -5.73098005e-05)
  p63.CanCollide = false
  p63.FormFactor = Enum.FormFactor.Custom
  p63.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p63.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b63 = Instance.new("SpecialMesh", p63)
  b63.MeshType = Enum.MeshType.Wedge
  b63.Name = "Mesh"
  b63.Scale = vec3(0.250003815, 1, 1)
  p64 = Instance.new("Part", m)
  p64.BrickColor = bc("Dark indigo")
  p64.Material = Enum.Material.Neon
  p64.CFrame = cf(-8.02602291, 0.349961221, 23.6050816, 6.09254312e-05, 4.14997376e-05, 1, 1, 7.6401062e-05, -6.09286035e-05, -7.6403594e-05, 1, -4.14950664e-05)
  p64.CanCollide = false
  p64.FormFactor = Enum.FormFactor.Custom
  p64.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b64 = Instance.new("SpecialMesh", p64)
  b64.MeshType = Enum.MeshType.Wedge
  b64.Name = "Mesh"
  b64.Scale = vec3(0.250003815, 1, 1)
  p65 = Instance.new("Part", m)
  p65.BrickColor = bc("Dark indigo")
  p65.Material = Enum.Material.Neon
  p65.CFrame = cf(-7.48055267, 0.349930644, 23.6050472, 4.27772102e-05, 5.73098732e-05, -1, -1, 3.47651221e-05, -4.27752166e-05, 3.47626737e-05, 1, 5.73113502e-05)
  p65.CanCollide = false
  p65.FormFactor = Enum.FormFactor.Custom
  p65.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b65 = Instance.new("SpecialMesh", p65)
  b65.MeshType = Enum.MeshType.Wedge
  b65.Name = "Mesh"
  b65.Scale = vec3(0.250003815, 1, 1)
  p66 = Instance.new("Part", m)
  p66.BrickColor = bc("Dark indigo")
  p66.Material = Enum.Material.Neon
  p66.CFrame = cf(-7.48057842, 0.349927366, 23.3323174, -4.01375519e-06, 1.83283555e-06, -1, 1, -3.89064116e-05, -4.01382567e-06, -3.89064262e-05, -1, -1.83269367e-06)
  p66.CanCollide = false
  p66.FormFactor = Enum.FormFactor.Custom
  p66.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b66 = Instance.new("SpecialMesh", p66)
  b66.MeshType = Enum.MeshType.Wedge
  b66.Name = "Mesh"
  b66.Scale = vec3(0.250003815, 1, 1)
  p67 = Instance.new("Part", m)
  p67.BrickColor = bc("Dark indigo")
  p67.Material = Enum.Material.Neon
  p67.CFrame = cf(-8.02605343, 0.349935144, 22.9687195, -5.19073751e-07, -5.73098732e-05, 1, -1, -0.000109730514, -5.25363021e-07, 0.000109730543, -1, -5.73098005e-05)
  p67.CanCollide = false
  p67.FormFactor = Enum.FormFactor.Custom
  p67.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p67.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b67 = Instance.new("SpecialMesh", p67)
  b67.MeshType = Enum.MeshType.Wedge
  b67.Name = "Mesh"
  b67.Scale = vec3(0.250003815, 1, 1)
  p68 = Instance.new("Part", m)
  p68.BrickColor = bc("Dark indigo")
  p68.Material = Enum.Material.Neon
  p68.CFrame = cf(-8.02603722, 0.349947959, 23.2414474, 6.09254312e-05, 4.14997376e-05, 1, 1, 7.6401062e-05, -6.09286035e-05, -7.6403594e-05, 1, -4.14950664e-05)
  p68.CanCollide = false
  p68.FormFactor = Enum.FormFactor.Custom
  p68.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b68 = Instance.new("SpecialMesh", p68)
  b68.MeshType = Enum.MeshType.Wedge
  b68.Name = "Mesh"
  b68.Scale = vec3(0.250003815, 1, 1)
  p69 = Instance.new("Part", m)
  p69.BrickColor = bc("Dark indigo")
  p69.Material = Enum.Material.Neon
  p69.CFrame = cf(-7.48058844, 0.349928856, 23.241396, 4.27772102e-05, 5.73098732e-05, -1, -1, 3.47651221e-05, -4.27752166e-05, 3.47626737e-05, 1, 5.73113502e-05)
  p69.CanCollide = false
  p69.FormFactor = Enum.FormFactor.Custom
  p69.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b69 = Instance.new("SpecialMesh", p69)
  b69.MeshType = Enum.MeshType.Wedge
  b69.Name = "Mesh"
  b69.Scale = vec3(0.250003815, 1, 1)
  p70 = Instance.new("Part", m)
  p70.BrickColor = bc("Dark indigo")
  p70.Material = Enum.Material.Neon
  p70.CFrame = cf(-7.48060369, 0.349908412, 22.9686832, -4.01375519e-06, 1.83283555e-06, -1, 1, -3.89064116e-05, -4.01382567e-06, -3.89064262e-05, -1, -1.83269367e-06)
  p70.CanCollide = false
  p70.FormFactor = Enum.FormFactor.Custom
  p70.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b70 = Instance.new("SpecialMesh", p70)
  b70.MeshType = Enum.MeshType.Wedge
  b70.Name = "Mesh"
  b70.Scale = vec3(0.250003815, 1, 1)
  p71 = Instance.new("Part", m)
  p71.BrickColor = bc("Dark indigo")
  p71.Material = Enum.Material.Neon
  p71.CFrame = cf(-8.02607059, 0.34991619, 22.6050758, -5.19073751e-07, -5.73098732e-05, 1, -1, -0.000109730514, -5.25363021e-07, 0.000109730543, -1, -5.73098005e-05)
  p71.CanCollide = false
  p71.FormFactor = Enum.FormFactor.Custom
  p71.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b71 = Instance.new("SpecialMesh", p71)
  b71.MeshType = Enum.MeshType.Wedge
  b71.Name = "Mesh"
  b71.Scale = vec3(0.250003815, 1, 1)
  p72 = Instance.new("Part", m)
  p72.BrickColor = bc("Dark indigo")
  p72.Material = Enum.Material.Neon
  p72.CFrame = cf(-8.02606297, 0.349921376, 22.8778057, 6.09254312e-05, 4.14997376e-05, 1, 1, 7.6401062e-05, -6.09286035e-05, -7.6403594e-05, 1, -4.14950664e-05)
  p72.CanCollide = false
  p72.FormFactor = Enum.FormFactor.Custom
  p72.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b72 = Instance.new("SpecialMesh", p72)
  b72.MeshType = Enum.MeshType.Wedge
  b72.Name = "Mesh"
  b72.Scale = vec3(0.250003815, 1, 1)
  p73 = Instance.new("Part", m)
  p73.BrickColor = bc("Dark indigo")
  p73.Material = Enum.Material.Neon
  p73.CFrame = cf(-7.48059034, 0.349900365, 22.8777714, 4.27772102e-05, 5.73098732e-05, -1, -1, 3.47651221e-05, -4.27752166e-05, 3.47626737e-05, 1, 5.73113502e-05)
  p73.CanCollide = false
  p73.FormFactor = Enum.FormFactor.Custom
  p73.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b73 = Instance.new("SpecialMesh", p73)
  b73.MeshType = Enum.MeshType.Wedge
  b73.Name = "Mesh"
  b73.Scale = vec3(0.250003815, 1, 1)
  p74 = Instance.new("Part", m)
  p74.BrickColor = bc("Dark indigo")
  p74.Material = Enum.Material.Neon
  p74.CFrame = cf(-7.48063612, 0.349904716, 22.6050358, -4.01375519e-06, 1.83283555e-06, -1, 1, -3.89064116e-05, -4.01382567e-06, -3.89064262e-05, -1, -1.83269367e-06)
  p74.CanCollide = false
  p74.FormFactor = Enum.FormFactor.Custom
  p74.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b74 = Instance.new("SpecialMesh", p74)
  b74.MeshType = Enum.MeshType.Wedge
  b74.Name = "Mesh"
  b74.Scale = vec3(0.250003815, 1, 1)
  p75 = Instance.new("Part", m)
  p75.BrickColor = bc("Dark indigo")
  p75.Material = Enum.Material.Neon
  p75.CFrame = cf(-8.02609253, 0.349906802, 22.2414341, -5.19073751e-07, -5.73098732e-05, 1, -1, -0.000109730514, -5.25363021e-07, 0.000109730543, -1, -5.73098005e-05)
  p75.CanCollide = false
  p75.FormFactor = Enum.FormFactor.Custom
  p75.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p75.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b75 = Instance.new("SpecialMesh", p75)
  b75.MeshType = Enum.MeshType.Wedge
  b75.Name = "Mesh"
  b75.Scale = vec3(0.250003815, 1, 1)
  p76 = Instance.new("Part", m)
  p76.BrickColor = bc("Dark indigo")
  p76.Material = Enum.Material.Neon
  p76.CFrame = cf(-8.02607727, 0.349911958, 22.5141621, 6.09254312e-05, 4.14997376e-05, 1, 1, 7.6401062e-05, -6.09286035e-05, -7.6403594e-05, 1, -4.14950664e-05)
  p76.CanCollide = false
  p76.FormFactor = Enum.FormFactor.Custom
  p76.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b76 = Instance.new("SpecialMesh", p76)
  b76.MeshType = Enum.MeshType.Wedge
  b76.Name = "Mesh"
  b76.Scale = vec3(0.250003815, 1, 1)
  p77 = Instance.new("Part", m)
  p77.BrickColor = bc("Dark indigo")
  p77.Material = Enum.Material.Neon
  p77.CFrame = cf(-7.48062325, 0.349887103, 22.5141106, 4.27772102e-05, 5.73098732e-05, -1, -1, 3.47651221e-05, -4.27752166e-05, 3.47626737e-05, 1, 5.73113502e-05)
  p77.CanCollide = false
  p77.FormFactor = Enum.FormFactor.Custom
  p77.Size = vec3(0.200000003, 0.272727698, 0.272727877)
  p77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b77 = Instance.new("SpecialMesh", p77)
  b77.MeshType = Enum.MeshType.Wedge
  b77.Name = "Mesh"
  b77.Scale = vec3(0.250003815, 1, 1)
  p78 = Instance.new("Part", m)
  p78.BrickColor = bc("Eggplant")
  p78.Material = Enum.Material.SmoothPlastic
  p78.CFrame = cf(-7.75317383, 0.350023478, 25.4050617, 0.258784294, -0.965935171, -4.55241388e-05, -7.79460024e-05, -6.80121666e-05, 1, -0.965935111, -0.258784324, -9.28912705e-05)
  p78.CanCollide = false
  p78.FormFactor = Enum.FormFactor.Custom
  p78.Size = vec3(0.200000003, 0.400000006, 0.400000006)
  p78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b78 = Instance.new("SpecialMesh", p78)
  b78.MeshType = Enum.MeshType.Cylinder
  b78.Name = "Mesh"
  b78.Scale = vec3(0.200000003, 0.800000012, 0.800000012)
  p79 = Instance.new("Part", m)
  p79.BrickColor = bc("Eggplant")
  p79.Material = Enum.Material.SmoothPlastic
  p79.CFrame = cf(-7.75317383, 0.350023478, 25.4050617, -0.258816183, -0.965926707, 1.57904833e-05, -6.06896647e-05, 3.26090558e-05, 1, -0.965926707, 0.258816183, -6.70615118e-05)
  p79.CanCollide = false
  p79.FormFactor = Enum.FormFactor.Custom
  p79.Size = vec3(0.200000003, 0.400000006, 0.400000006)
  p79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b79 = Instance.new("SpecialMesh", p79)
  b79.MeshType = Enum.MeshType.Cylinder
  b79.Name = "Mesh"
  b79.Scale = vec3(0.200000003, 0.800000012, 0.800000012)
  p80 = Instance.new("Part", m)
  p80.BrickColor = bc("Eggplant")
  p80.Material = Enum.Material.SmoothPlastic
  p80.CFrame = cf(-7.75318909, 0.350022495, 25.2050705, 0.258784294, -0.965935171, -4.55241388e-05, -7.79460024e-05, -6.80121666e-05, 1, -0.965935111, -0.258784324, -9.28912705e-05)
  p80.CanCollide = false
  p80.FormFactor = Enum.FormFactor.Custom
  p80.Size = vec3(0.200000003, 0.400000006, 0.400000006)
  p80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b80 = Instance.new("SpecialMesh", p80)
  b80.MeshType = Enum.MeshType.Cylinder
  b80.Name = "Mesh"
  b80.Scale = vec3(0.200000003, 0.800000012, 0.800000012)
  p81 = Instance.new("Part", m)
  p81.BrickColor = bc("Eggplant")
  p81.Material = Enum.Material.SmoothPlastic
  p81.CFrame = cf(-7.75318909, 0.350022495, 25.2050705, -0.258816183, -0.965926707, 1.57904833e-05, -6.06896647e-05, 3.26090558e-05, 1, -0.965926707, 0.258816183, -6.70615118e-05)
  p81.CanCollide = false
  p81.FormFactor = Enum.FormFactor.Custom
  p81.Size = vec3(0.200000003, 0.400000006, 0.400000006)
  p81.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p81.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p81.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p81.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b81 = Instance.new("SpecialMesh", p81)
  b81.MeshType = Enum.MeshType.Cylinder
  b81.Name = "Mesh"
  b81.Scale = vec3(0.200000003, 0.800000012, 0.800000012)
  p82 = Instance.new("Part", m)
  p82.BrickColor = bc("Eggplant")
  p82.Material = Enum.Material.SmoothPlastic
  p82.CFrame = cf(-7.75321913, 0.350011975, 25.0050659, 0.258784294, -0.965935171, -4.55241388e-05, -7.79460024e-05, -6.80121666e-05, 1, -0.965935111, -0.258784324, -9.28912705e-05)
  p82.CanCollide = false
  p82.FormFactor = Enum.FormFactor.Custom
  p82.Size = vec3(0.200000003, 0.400000006, 0.400000006)
  p82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b82 = Instance.new("SpecialMesh", p82)
  b82.MeshType = Enum.MeshType.Cylinder
  b82.Name = "Mesh"
  b82.Scale = vec3(0.200000003, 0.800000012, 0.800000012)
  p83 = Instance.new("Part", m)
  p83.BrickColor = bc("Eggplant")
  p83.Material = Enum.Material.SmoothPlastic
  p83.CFrame = cf(-7.75321913, 0.350011975, 25.0050659, -0.258816183, -0.965926707, 1.57904833e-05, -6.06896647e-05, 3.26090558e-05, 1, -0.965926707, 0.258816183, -6.70615118e-05)
  p83.CanCollide = false
  p83.FormFactor = Enum.FormFactor.Custom
  p83.Size = vec3(0.200000003, 0.400000006, 0.400000006)
  p83.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p83.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p83.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p83.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p83.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p83.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b83 = Instance.new("SpecialMesh", p83)
  b83.MeshType = Enum.MeshType.Cylinder
  b83.Name = "Mesh"
  b83.Scale = vec3(0.200000003, 0.800000012, 0.800000012)
  p84 = Instance.new("Part", m)
  p84.BrickColor = bc("Eggplant")
  p84.Material = Enum.Material.SmoothPlastic
  p84.CFrame = cf(-7.75322247, 0.350003362, 24.805069, -0.258816183, -0.965926707, 1.57904833e-05, -6.06896647e-05, 3.26090558e-05, 1, -0.965926707, 0.258816183, -6.70615118e-05)
  p84.CanCollide = false
  p84.FormFactor = Enum.FormFactor.Custom
  p84.Size = vec3(0.200000003, 0.400000006, 0.400000006)
  p84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b84 = Instance.new("SpecialMesh", p84)
  b84.MeshType = Enum.MeshType.Cylinder
  b84.Name = "Mesh"
  b84.Scale = vec3(0.200000003, 0.800000012, 0.800000012)
  p85 = Instance.new("Part", m)
  p85.BrickColor = bc("Eggplant")
  p85.Material = Enum.Material.SmoothPlastic
  p85.CFrame = cf(-7.75322247, 0.350003362, 24.805069, 0.258784294, -0.965935171, -4.55241388e-05, -7.79460024e-05, -6.80121666e-05, 1, -0.965935111, -0.258784324, -9.28912705e-05)
  p85.CanCollide = false
  p85.FormFactor = Enum.FormFactor.Custom
  p85.Size = vec3(0.200000003, 0.400000006, 0.400000006)
  p85.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p85.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p85.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p85.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p85.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p85.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b85 = Instance.new("SpecialMesh", p85)
  b85.MeshType = Enum.MeshType.Cylinder
  b85.Name = "Mesh"
  b85.Scale = vec3(0.200000003, 0.800000012, 0.800000012)
  p86 = Instance.new("Part", m)
  p86.BrickColor = bc("Eggplant")
  p86.Material = Enum.Material.SmoothPlastic
  p86.CFrame = cf(-7.75320053, 0.349996626, 24.6050606, 0.258784294, -0.965935171, -4.55241388e-05, -7.79460024e-05, -6.80121666e-05, 1, -0.965935111, -0.258784324, -9.28912705e-05)
  p86.CanCollide = false
  p86.FormFactor = Enum.FormFactor.Custom
  p86.Size = vec3(0.200000003, 0.400000006, 0.400000006)
  p86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b86 = Instance.new("SpecialMesh", p86)
  b86.MeshType = Enum.MeshType.Cylinder
  b86.Name = "Mesh"
  b86.Scale = vec3(0.200000003, 0.800000012, 0.800000012)
  p87 = Instance.new("Part", m)
  p87.BrickColor = bc("Eggplant")
  p87.Material = Enum.Material.SmoothPlastic
  p87.CFrame = cf(-7.75320053, 0.349996626, 24.6050606, -0.258816183, -0.965926707, 1.57904833e-05, -6.06896647e-05, 3.26090558e-05, 1, -0.965926707, 0.258816183, -6.70615118e-05)
  p87.CanCollide = false
  p87.FormFactor = Enum.FormFactor.Custom
  p87.Size = vec3(0.200000003, 0.400000006, 0.400000006)
  p87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b87 = Instance.new("SpecialMesh", p87)
  b87.MeshType = Enum.MeshType.Cylinder
  b87.Name = "Mesh"
  b87.Scale = vec3(0.200000003, 0.800000012, 0.800000012)
  p88 = Instance.new("Part", m)
  p88.BrickColor = bc("Eggplant")
  p88.Material = Enum.Material.SmoothPlastic
  p88.CFrame = cf(-7.75323677, 0.349980384, 24.4050598, -0.258816183, -0.965926707, 1.57904833e-05, -6.06896647e-05, 3.26090558e-05, 1, -0.965926707, 0.258816183, -6.70615118e-05)
  p88.CanCollide = false
  p88.FormFactor = Enum.FormFactor.Custom
  p88.Size = vec3(0.200000003, 0.400000006, 0.400000006)
  p88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p88.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b88 = Instance.new("SpecialMesh", p88)
  b88.MeshType = Enum.MeshType.Cylinder
  b88.Name = "Mesh"
  b88.Scale = vec3(0.200000003, 0.800000012, 0.800000012)
  p89 = Instance.new("Part", m)
  p89.BrickColor = bc("Eggplant")
  p89.Material = Enum.Material.SmoothPlastic
  p89.CFrame = cf(-7.75323677, 0.349980384, 24.4050598, 0.258784294, -0.965935171, -4.55241388e-05, -7.79460024e-05, -6.80121666e-05, 1, -0.965935111, -0.258784324, -9.28912705e-05)
  p89.CanCollide = false
  p89.FormFactor = Enum.FormFactor.Custom
  p89.Size = vec3(0.200000003, 0.400000006, 0.400000006)
  p89.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p89.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p89.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p89.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p89.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b89 = Instance.new("SpecialMesh", p89)
  b89.MeshType = Enum.MeshType.Cylinder
  b89.Name = "Mesh"
  b89.Scale = vec3(0.200000003, 0.800000012, 0.800000012)
  p90 = Instance.new("Part", m)
  p90.BrickColor = bc("Eggplant")
  p90.Material = Enum.Material.SmoothPlastic
  p90.CFrame = cf(-7.75314379, 0.350039691, 25.6050682, 0.258784294, -0.965935171, -4.55241388e-05, -7.79460024e-05, -6.80121666e-05, 1, -0.965935111, -0.258784324, -9.28912705e-05)
  p90.CanCollide = false
  p90.FormFactor = Enum.FormFactor.Custom
  p90.Size = vec3(0.200000003, 0.400000006, 0.400000006)
  p90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  b90 = Instance.new("SpecialMesh", p90)
  b90.MeshType = Enum.MeshType.Cylinder
  b90.Name = "Mesh"
  b90.Scale = vec3(0.200000003, 0.800000012, 0.800000012)
  p91 = Instance.new("Part", m)
  p91.BrickColor = bc("Really black")
  p91.Material = Enum.Material.Sand
  p91.Transparency = 1
  p91.Name = "HitBox"
  p91.CFrame = cf(-7.75318241, 0.350110948, 21.305069, -3.06218863e-05, 1.84542478e-06, 1, -8.27810727e-05, 1, -1.84795965e-06, -1, -8.27811309e-05, -3.06217335e-05)
  p91.CanCollide = false
  p91.FormFactor = Enum.FormFactor.Custom
  p91.Size = vec3(5.20000029, 0.300000012, 1.5)
  p91.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p91.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p91.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p91.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p91.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p91.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  p92 = Instance.new("Part", m)
  p92.BrickColor = bc("Really black")
  p92.Material = Enum.Material.Sand
  p92.Transparency = 1
  p92.Name = "TrailBox"
  p92.CFrame = cf(-7.75318193, 0.350110888, 21.305069, -3.06218935e-05, 1.84542444e-06, 1, -8.27810727e-05, 1, -1.84795999e-06, -1, -8.27811309e-05, -3.06217262e-05)
  p92.CanCollide = false
  p92.FormFactor = Enum.FormFactor.Custom
  p92.Size = vec3(4.4000001, 0.300000012, 0.699999988)
  p92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  p92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  p92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  p92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  p92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  p92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  w1 = Instance.new("Weld", p1)
  w1.Name = "PartW"
  w1.Part0 = p1
  w1.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w1.Part1 = p7
  w1.C1 = cf(1.00000572, -0.0999721438, -1.85966492e-05, -1, 2.88709998e-08, 5.35994768e-05, -2.88709998e-08, -1, -4.19536406e-10, 5.35994768e-05, -4.21147783e-10, 1)
  w2 = Instance.new("Weld", p2)
  w2.Name = "PartW"
  w2.Part0 = p2
  w2.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w2.Part1 = p7
  w2.C1 = cf(1.00000572, -0.0999721438, -1.85966492e-05, -9.57285374e-05, -3.31040064e-06, -1, 4.00310564e-05, -1, 3.30656621e-06, -1, -4.00307399e-05, 9.57286757e-05)
  w3 = Instance.new("Weld", p3)
  w3.Name = "PartW"
  w3.Part0 = p3
  w3.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w3.Part1 = p7
  w3.C1 = cf(1, 0.10002479, 3.33786011e-06, -1, 2.88709998e-08, 5.35994768e-05, -2.88709998e-08, -1, -4.19536406e-10, 5.35994768e-05, -4.21147783e-10, 1)
  w4 = Instance.new("Weld", p4)
  w4.Name = "PartW"
  w4.Part0 = p4
  w4.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w4.Part1 = p7
  w4.C1 = cf(-1.19999695, -0.250062913, 7.58171082e-05, 3.54505755e-06, 1.24906219e-05, 1, 1.89601033e-05, -1, 1.24905564e-05, 1, 1.89600596e-05, -3.54529038e-06)
  w5 = Instance.new("Weld", p5)
  w5.Name = "PartW"
  w5.Part0 = p5
  w5.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w5.Part1 = p7
  w5.C1 = cf(1.29998207, 4.30345535e-05, -0.250005722, -3.60651138e-05, 1.35521987e-06, -1, 1, 7.66494486e-06, -3.60651065e-05, 7.66489666e-06, -1, -1.35549453e-06)
  w6 = Instance.new("Weld", p6)
  w6.Name = "PartW"
  w6.Part0 = p6
  w6.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w6.Part1 = p7
  w6.C1 = cf(1, 0.10002479, 3.33786011e-06, -9.57285374e-05, -3.31040064e-06, -1, 4.00310564e-05, -1, 3.30656621e-06, -1, -4.00307399e-05, 9.57286757e-05)
  w7 = Instance.new("Weld", p7)
  w7.Name = "HandleW"
  w7.Part0 = p7
  w7.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w7.Part1 = p7
  w7.C1 = cf(0, 0, 0, 1, 0, 0, 0, 1, 2.62012634e-14, 0, 2.62012634e-14, 1)
  w8 = Instance.new("Weld", p8)
  w8.Name = "PartW"
  w8.Part0 = p8
  w8.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w8.Part1 = p7
  w8.C1 = cf(-1.50003052, -8.43703747e-05, 0.000101566315, -9.57285374e-05, -3.31040064e-06, -1, 4.00310564e-05, -1, 3.30656621e-06, -1, -4.00307399e-05, 9.57286757e-05)
  w9 = Instance.new("Weld", p9)
  w9.Name = "PartW"
  w9.Part0 = p9
  w9.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w9.Part1 = p7
  w9.C1 = cf(1.3000145, 3.34382057e-05, 0.249989986, -3.62261853e-05, 5.14747007e-05, -1, -1, -7.17815201e-05, 3.62224891e-05, -7.17796502e-05, 1, 5.14772983e-05)
  w10 = Instance.new("Weld", p10)
  w10.Name = "PartW"
  w10.Part0 = p10
  w10.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w10.Part1 = p7
  w10.C1 = cf(-0.799993515, 0.249954909, 5.76972961e-05, 1.71099891e-05, 3.31076444e-06, -1, -4.00034623e-05, 1, 3.31007323e-06, 1, 4.00034078e-05, 1.71101201e-05)
  w11 = Instance.new("Weld", p11)
  w11.Name = "PartW"
  w11.Part0 = p11
  w11.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w11.Part1 = p7
  w11.C1 = cf(-1.20001984, -5.05149364e-05, -0.249916077, -1.38494797e-05, -5.15571955e-05, 1, -1, -1.17955142e-05, -1.38500836e-05, 1.17962281e-05, -1, -5.15570282e-05)
  w12 = Instance.new("Weld", p12)
  w12.Name = "PartW"
  w12.Part0 = p12
  w12.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w12.Part1 = p7
  w12.C1 = cf(-0.800001144, -3.46302986e-05, -0.249954224, -3.60651138e-05, 1.35521987e-06, -1, 1, 7.66494486e-06, -3.60651065e-05, 7.66489666e-06, -1, -1.35549453e-06)
  w13 = Instance.new("Weld", p13)
  w13.Name = "PartW"
  w13.Part0 = p13
  w13.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w13.Part1 = p7
  w13.C1 = cf(-0.900016785, -3.95476818e-05, 4.62532043e-05, 1, 0, 0, 0, 1, 2.62012634e-14, 0, 2.62012634e-14, 1)
  w14 = Instance.new("Weld", p14)
  w14.Name = "PartW"
  w14.Part0 = p14
  w14.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w14.Part1 = p7
  w14.C1 = cf(-0.799999237, -2.98917294e-05, 5.4359436e-05, 0.965934634, -0.258786619, -1.57200484e-05, 1.87932164e-05, 9.40141217e-06, 1, -0.258786619, -0.965934634, 1.39445774e-05)
  w15 = Instance.new("Weld", p15)
  w15.Name = "PartW"
  w15.Part0 = p15
  w15.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w15.Part1 = p7
  w15.C1 = cf(-0.799966812, -4.41968441e-05, 0.250056744, -4.23986785e-06, 4.03668964e-05, -1, -1, 5.97006783e-06, 4.24010796e-06, 5.97023882e-06, 1, 4.03668746e-05)
  w16 = Instance.new("Weld", p16)
  w16.Name = "PartW"
  w16.Part0 = p16
  w16.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w16.Part1 = p7
  w16.C1 = cf(-1.19997787, -6.01112843e-05, 0.250080585, -6.81680758e-05, 9.76949741e-06, 1, 1, 7.02872931e-05, 6.81673919e-05, -7.02866309e-05, 1, -9.77428863e-06)
  w17 = Instance.new("Weld", p17)
  w17.Name = "PartW"
  w17.Part0 = p17
  w17.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w17.Part1 = p7
  w17.C1 = cf(2.56367111, 8.36849213e-05, 0.272639751, -4.38745265e-05, 1, 3.24549037e-05, 1, 4.38747193e-05, -5.85909902e-06, -5.86052283e-06, 3.2454649e-05, -1)
  w18 = Instance.new("Weld", p18)
  w18.Name = "PartW"
  w18.Part0 = p18
  w18.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w18.Part1 = p7
  w18.C1 = cf(-1.20004082, 0.24993518, 7.05718994e-05, -4.46635531e-05, -5.56386731e-05, 1, 5.57977946e-05, 1, 5.56411651e-05, -1, 5.58002757e-05, -4.46604463e-05)
  w19 = Instance.new("Weld", p19)
  w19.Name = "PartW"
  w19.Part0 = p19
  w19.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w19.Part1 = p7
  w19.C1 = cf(-0.799983978, -0.250045121, 7.72476196e-05, -9.57285374e-05, -3.31040064e-06, -1, 4.00310564e-05, -1, 3.30656621e-06, -1, -4.00307399e-05, 9.57286757e-05)
  w20 = Instance.new("Weld", p20)
  w20.Name = "PartW"
  w20.Part0 = p20
  w20.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w20.Part1 = p7
  w20.C1 = cf(0.700014114, 2.10404396e-05, 0.249993801, -7.78454632e-05, 2.09309292e-05, 1, 1, 6.46986446e-05, 7.78441172e-05, -6.46970147e-05, 1, -2.09359641e-05)
  w21 = Instance.new("Weld", p21)
  w21.Name = "PartW"
  w21.Part0 = p21
  w21.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w21.Part1 = p7
  w21.C1 = cf(0.700004578, 2.49147415e-05, -0.249994278, 4.73211148e-05, -5.15659631e-05, 1, -1, 9.41389007e-05, 4.73259679e-05, -9.41413309e-05, -1, -5.15615102e-05)
  w22 = Instance.new("Weld", p22)
  w22.Name = "PartW"
  w22.Part0 = p22
  w22.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w22.Part1 = p7
  w22.C1 = cf(1.10907745, 4.57763672e-05, -0.27275753, -2.69494558e-05, 1, 2.66879651e-05, -1, -2.69494922e-05, 1.32480614e-06, 1.32552543e-06, -2.66879288e-05, 1)
  w23 = Instance.new("Weld", p23)
  w23.Name = "PartW"
  w23.Part0 = p23
  w23.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w23.Part1 = p7
  w23.C1 = cf(1.2454834, 3.91602516e-05, 0.227252483, -7.78454632e-05, 2.09309292e-05, 1, 1, 6.46986446e-05, 7.78441172e-05, -6.46970147e-05, 1, -2.09359641e-05)
  w24 = Instance.new("Weld", p24)
  w24.Name = "PartW"
  w24.Part0 = p24
  w24.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w24.Part1 = p7
  w24.C1 = cf(2.15454292, 9.95695591e-05, -0.227338791, -2.69494558e-05, 1, 2.66879651e-05, -1, -2.69494922e-05, 1.32480614e-06, 1.32552543e-06, -2.66879288e-05, 1)
  w25 = Instance.new("Weld", p25)
  w25.Name = "PartW"
  w25.Part0 = p25
  w25.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w25.Part1 = p7
  w25.C1 = cf(1.97276497, 6.33299351e-05, 0.227237225, -7.78454632e-05, 2.09309292e-05, 1, 1, 6.46986446e-05, 7.78441172e-05, -6.46970147e-05, 1, -2.09359641e-05)
  w26 = Instance.new("Weld", p26)
  w26.Name = "PartW"
  w26.Part0 = p26
  w26.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w26.Part1 = p7
  w26.C1 = cf(1.97273636, 6.82473183e-05, -0.227341175, 4.73211148e-05, -5.15659631e-05, 1, -1, 9.41389007e-05, 4.73259679e-05, -9.41413309e-05, -1, -5.15615102e-05)
  w27 = Instance.new("Weld", p27)
  w27.Name = "PartW"
  w27.Part0 = p27
  w27.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w27.Part1 = p7
  w27.C1 = cf(2.15456772, 8.893013e-05, 0.227204323, -4.38745265e-05, 1, 3.24549037e-05, 1, 4.38747193e-05, -5.85909902e-06, -5.86052283e-06, 3.2454649e-05, -1)
  w28 = Instance.new("Weld", p28)
  w28.Name = "PartW"
  w28.Part0 = p28
  w28.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w28.Part1 = p7
  w28.C1 = cf(1.06364441, 5.28097153e-05, -0.227296352, -2.69494558e-05, 1, 2.66879651e-05, -1, -2.69494922e-05, 1.32480614e-06, 1.32552543e-06, -2.66879288e-05, 1)
  w29 = Instance.new("Weld", p29)
  w29.Name = "PartW"
  w29.Part0 = p29
  w29.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w29.Part1 = p7
  w29.C1 = cf(0.881828308, 3.29315662e-05, -0.22726965, 4.73211148e-05, -5.15659631e-05, 1, -1, 9.41389007e-05, 4.73259679e-05, -9.41413309e-05, -1, -5.15615102e-05)
  w30 = Instance.new("Weld", p30)
  w30.Name = "PartW"
  w30.Part0 = p30
  w30.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w30.Part1 = p7
  w30.C1 = cf(1.79093552, 7.39693642e-05, 0.227219105, -4.38745265e-05, 1, 3.24549037e-05, 1, 4.38747193e-05, -5.85909902e-06, -5.86052283e-06, 3.2454649e-05, -1)
  w31 = Instance.new("Weld", p31)
  w31.Name = "PartW"
  w31.Part0 = p31
  w31.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w31.Part1 = p7
  w31.C1 = cf(1.60911942, 6.36279583e-05, 0.227217197, -7.78454632e-05, 2.09309292e-05, 1, 1, 6.46986446e-05, 7.78441172e-05, -6.46970147e-05, 1, -2.09359641e-05)
  w32 = Instance.new("Weld", p32)
  w32.Name = "PartW"
  w32.Part0 = p32
  w32.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w32.Part1 = p7
  w32.C1 = cf(1.79090691, 8.27312469e-05, -0.227318287, -2.69494558e-05, 1, 2.66879651e-05, -1, -2.69494922e-05, 1.32480614e-06, 1.32552543e-06, -2.66879288e-05, 1)
  w33 = Instance.new("Weld", p33)
  w33.Name = "PartW"
  w33.Part0 = p33
  w33.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w33.Part1 = p7
  w33.C1 = cf(1.60909653, 7.42971897e-05, -0.22732687, 4.73211148e-05, -5.15659631e-05, 1, -1, 9.41389007e-05, 4.73259679e-05, -9.41413309e-05, -1, -5.15615102e-05)
  w34 = Instance.new("Weld", p34)
  w34.Name = "PartW"
  w34.Part0 = p34
  w34.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w34.Part1 = p7
  w34.C1 = cf(1.0636692, 4.78923321e-05, 0.227257729, -4.38745265e-05, 1, 3.24549037e-05, 1, 4.38747193e-05, -5.85909902e-06, -5.86052283e-06, 3.2454649e-05, -1)
  w35 = Instance.new("Weld", p35)
  w35.Name = "PartW"
  w35.Part0 = p35
  w35.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w35.Part1 = p7
  w35.C1 = cf(0.881837845, 2.41994858e-05, 0.227261543, -7.78454632e-05, 2.09309292e-05, 1, 1, 6.46986446e-05, 7.78441172e-05, -6.46970147e-05, 1, -2.09359641e-05)
  w36 = Instance.new("Weld", p36)
  w36.Name = "PartW"
  w36.Part0 = p36
  w36.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w36.Part1 = p7
  w36.C1 = cf(2.47273254, 0.000111877918, -0.272782326, -3.60651138e-05, 1.35521987e-06, -1, 1, 7.66494486e-06, -3.60651065e-05, 7.66489666e-06, -1, -1.35549453e-06)
  w37 = Instance.new("Weld", p37)
  w37.Name = "PartW"
  w37.Part0 = p37
  w37.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w37.Part1 = p7
  w37.C1 = cf(2.47277832, 8.9943409e-05, 0.272656918, -3.62261853e-05, 5.14747007e-05, -1, -1, -7.17815201e-05, 3.62224891e-05, -7.17796502e-05, 1, 5.14772983e-05)
  w38 = Instance.new("Weld", p38)
  w38.Name = "PartW"
  w38.Part0 = p38
  w38.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w38.Part1 = p7
  w38.C1 = cf(3.56365967, 0.000132113695, -0.181934357, 4.73211148e-05, -5.15659631e-05, 1, -1, 9.41389007e-05, 4.73259679e-05, -9.41413309e-05, -1, -5.15615102e-05)
  w39 = Instance.new("Weld", p39)
  w39.Name = "PartW"
  w39.Part0 = p39
  w39.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w39.Part1 = p7
  w39.C1 = cf(3.5636692, 0.00013846159, 0.181690693, -7.78454632e-05, 2.09309292e-05, 1, 1, 6.46986446e-05, 7.78441172e-05, -6.46970147e-05, 1, -2.09359641e-05)
  w40 = Instance.new("Weld", p40)
  w40.Name = "PartW"
  w40.Part0 = p40
  w40.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w40.Part1 = p7
  w40.C1 = cf(2.33639526, 9.73641872e-05, 0.227190018, -7.78454632e-05, 2.09309292e-05, 1, 1, 6.46986446e-05, 7.78441172e-05, -6.46970147e-05, 1, -2.09359641e-05)
  w41 = Instance.new("Weld", p41)
  w41.Name = "PartW"
  w41.Part0 = p41
  w41.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w41.Part1 = p7
  w41.C1 = cf(1.24546051, 4.97996807e-05, -0.227294922, 4.73211148e-05, -5.15659631e-05, 1, -1, 9.41389007e-05, 4.73259679e-05, -9.41413309e-05, -1, -5.15615102e-05)
  w42 = Instance.new("Weld", p42)
  w42.Name = "PartW"
  w42.Part0 = p42
  w42.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w42.Part1 = p7
  w42.C1 = cf(1.42726326, 4.29749489e-05, -0.227300644, -2.69494558e-05, 1, 2.66879651e-05, -1, -2.69494922e-05, 1.32480614e-06, 1.32552543e-06, -2.66879288e-05, 1)
  w43 = Instance.new("Weld", p43)
  w43.Name = "PartW"
  w43.Part0 = p43
  w43.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w43.Part1 = p7
  w43.C1 = cf(2.74549294, 0.00010690093, -7.58171082e-05, -9.57285374e-05, -3.31040064e-06, -1, 4.00310564e-05, -1, 3.30656621e-06, -1, -4.00307399e-05, 9.57286757e-05)
  w44 = Instance.new("Weld", p44)
  w44.Name = "PartW"
  w44.Part0 = p44
  w44.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w44.Part1 = p7
  w44.C1 = cf(1.56364441, -0.0499557257, -3.9100647e-05, -9.57285374e-05, -3.31040064e-06, -1, 4.00310564e-05, -1, 3.30656621e-06, -1, -4.00307399e-05, 9.57286757e-05)
  w45 = Instance.new("Weld", p45)
  w45.Name = "PartW"
  w45.Part0 = p45
  w45.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w45.Part1 = p7
  w45.C1 = cf(1.56362915, 0.050073266, -3.52859497e-05, -9.57285374e-05, -3.31040064e-06, -1, 4.00310564e-05, -1, 3.30656621e-06, -1, -4.00307399e-05, 9.57286757e-05)
  w46 = Instance.new("Weld", p46)
  w46.Name = "PartW"
  w46.Part0 = p46
  w46.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w46.Part1 = p7
  w46.C1 = cf(1.83637047, 0.0500734746, -5.14984131e-05, -9.57285374e-05, -3.31040064e-06, -1, 4.00310564e-05, -1, 3.30656621e-06, -1, -4.00307399e-05, 9.57286757e-05)
  w47 = Instance.new("Weld", p47)
  w47.Name = "PartW"
  w47.Part0 = p47
  w47.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w47.Part1 = p7
  w47.C1 = cf(1.83639908, -0.0499383211, -4.57763672e-05, -9.57285374e-05, -3.31040064e-06, -1, 4.00310564e-05, -1, 3.30656621e-06, -1, -4.00307399e-05, 9.57286757e-05)
  w48 = Instance.new("Weld", p48)
  w48.Name = "PartW"
  w48.Part0 = p48
  w48.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w48.Part1 = p7
  w48.C1 = cf(2.10910416, -0.0499361753, -5.53131104e-05, -9.57285374e-05, -3.31040064e-06, -1, 4.00310564e-05, -1, 3.30656621e-06, -1, -4.00307399e-05, 9.57286757e-05)
  w49 = Instance.new("Weld", p49)
  w49.Name = "PartW"
  w49.Part0 = p49
  w49.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w49.Part1 = p7
  w49.C1 = cf(2.10912323, 0.050090909, -6.43730164e-05, -9.57285374e-05, -3.31040064e-06, -1, 4.00310564e-05, -1, 3.30656621e-06, -1, -4.00307399e-05, 9.57286757e-05)
  w50 = Instance.new("Weld", p50)
  w50.Name = "PartW"
  w50.Part0 = p50
  w50.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w50.Part1 = p7
  w50.C1 = cf(2.38183212, 0.0500930846, -8.86917114e-05, -9.57285374e-05, -3.31040064e-06, -1, 4.00310564e-05, -1, 3.30656621e-06, -1, -4.00307399e-05, 9.57286757e-05)
  w51 = Instance.new("Weld", p51)
  w51.Name = "PartW"
  w51.Part0 = p51
  w51.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w51.Part1 = p7
  w51.C1 = cf(2.3818531, -0.0499320924, -6.96182251e-05, -9.57285374e-05, -3.31040064e-06, -1, 4.00310564e-05, -1, 3.30656621e-06, -1, -4.00307399e-05, 9.57286757e-05)
  w52 = Instance.new("Weld", p52)
  w52.Name = "PartW"
  w52.Part0 = p52
  w52.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w52.Part1 = p7
  w52.C1 = cf(5.1091404, 0.000201493502, -0.113807201, -3.60651138e-05, 1.35522714e-06, -1, 1, 7.66494759e-06, -3.60651065e-05, 7.66489848e-06, -1, -1.35549453e-06)
  w53 = Instance.new("Weld", p53)
  w53.Name = "PartW"
  w53.Part0 = p53
  w53.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w53.Part1 = p7
  w53.C1 = cf(5.10915375, 0.000199049711, 0.113484383, -3.62261853e-05, 5.14746935e-05, -1, -1, -7.17815201e-05, 3.62224891e-05, -7.17796574e-05, 1, 5.14772983e-05)
  w54 = Instance.new("Weld", p54)
  w54.Name = "PartW"
  w54.Part0 = p54
  w54.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w54.Part1 = p7
  w54.C1 = cf(5.20007133, 0.000197649002, 0.158919811, -3.62261853e-05, 5.14746935e-05, -1, -1, -7.17815201e-05, 3.62224891e-05, -7.17796574e-05, 1, 5.14772983e-05)
  w55 = Instance.new("Weld", p55)
  w55.Name = "PartW"
  w55.Part0 = p55
  w55.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w55.Part1 = p7
  w55.C1 = cf(5.20004082, 0.000205665827, -0.159259796, -3.60651138e-05, 1.35522714e-06, -1, 1, 7.66494759e-06, -3.60651065e-05, 7.66489848e-06, -1, -1.35549453e-06)
  w56 = Instance.new("Weld", p56)
  w56.Name = "PartW"
  w56.Part0 = p56
  w56.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w56.Part1 = p7
  w56.C1 = cf(2.33637619, 0.000100374222, -0.227338791, 4.73211148e-05, -5.15659558e-05, 1, -1, 9.41389007e-05, 4.73259679e-05, -9.41413382e-05, -1, -5.15615102e-05)
  w57 = Instance.new("Weld", p57)
  w57.Name = "PartW"
  w57.Part0 = p57
  w57.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w57.Part1 = p7
  w57.C1 = cf(1.42729187, 3.80575657e-05, 0.227228642, -4.38745265e-05, 1, 3.2454911e-05, 1, 4.38747193e-05, -5.85909675e-06, -5.86052101e-06, 3.2454649e-05, -1)
  w58 = Instance.new("Weld", p58)
  w58.Name = "PartW"
  w58.Part0 = p58
  w58.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w58.Part1 = p7
  w58.C1 = cf(3.60910416, 0.000144988298, -0.272852898, -2.69494558e-05, 1, 2.66879579e-05, -1, -2.69494922e-05, 1.32480386e-06, 1.32552339e-06, -2.66879288e-05, 1)
  w59 = Instance.new("Weld", p59)
  w59.Name = "PartW"
  w59.Part0 = p59
  w59.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w59.Part1 = p7
  w59.C1 = cf(3.60913658, 0.000150680542, 0.227143764, -4.38745265e-05, 1, 3.2454911e-05, 1, 4.38747193e-05, -5.85909675e-06, -5.86052101e-06, 3.2454649e-05, -1)
  w60 = Instance.new("Weld", p60)
  w60.Name = "PartW"
  w60.Part0 = p60
  w60.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w60.Part1 = p7
  w60.C1 = cf(0.836343765, 4.55379486e-05, -0.27273941, -6.37934863e-06, -1, 1.08782224e-05, 1, -6.37998892e-06, -5.90797426e-05, 5.90798118e-05, 1.08778549e-05, 1)
  w61 = Instance.new("Weld", p61)
  w61.Name = "PartW"
  w61.Part0 = p61
  w61.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w61.Part1 = p7
  w61.C1 = cf(0.836374283, 2.5510788e-05, 0.272717953, 4.80170893e-05, -1, -2.66859206e-05, -1, -4.80158997e-05, -4.46253835e-05, 4.46241029e-05, 2.6688067e-05, -1)
  w62 = Instance.new("Weld", p62)
  w62.Name = "PartW"
  w62.Part0 = p62
  w62.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w62.Part1 = p7
  w62.C1 = cf(1.10908699, 3.71932983e-05, 0.272698402, -4.38745265e-05, 1, 3.2454911e-05, 1, 4.38747193e-05, -5.85909675e-06, -5.86052101e-06, 3.2454649e-05, -1)
  w63 = Instance.new("Weld", p63)
  w63.Name = "PartW"
  w63.Part0 = p63
  w63.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w63.Part1 = p7
  w63.C1 = cf(1.47272301, 5.49852848e-05, -0.272772789, -2.69494558e-05, 1, 2.66879579e-05, -1, -2.69494922e-05, 1.32480386e-06, 1.32552339e-06, -2.66879288e-05, 1)
  w64 = Instance.new("Weld", p64)
  w64.Name = "PartW"
  w64.Part0 = p64
  w64.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w64.Part1 = p7
  w64.C1 = cf(1.19999504, 5.66840172e-05, -0.272763252, -6.37934863e-06, -1, 1.08782224e-05, 1, -6.37998892e-06, -5.90797426e-05, 5.90798118e-05, 1.08778549e-05, 1)
  w65 = Instance.new("Weld", p65)
  w65.Name = "PartW"
  w65.Part0 = p65
  w65.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w65.Part1 = p7
  w65.C1 = cf(1.20001411, 2.71201134e-05, 0.272706509, 4.80170893e-05, -1, -2.66859206e-05, -1, -4.80158997e-05, -4.46253835e-05, 4.46241029e-05, 2.6688067e-05, -1)
  w66 = Instance.new("Weld", p66)
  w66.Name = "PartW"
  w66.Part0 = p66
  w66.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w66.Part1 = p7
  w66.C1 = cf(1.47274399, 4.64320183e-05, 0.272689342, -4.38745265e-05, 1, 3.2454911e-05, 1, 4.38747193e-05, -5.85909675e-06, -5.86052101e-06, 3.2454649e-05, -1)
  w67 = Instance.new("Weld", p67)
  w67.Name = "PartW"
  w67.Part0 = p67
  w67.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w67.Part1 = p7
  w67.C1 = cf(1.83635712, 8.32974911e-05, -0.272774696, -2.69494558e-05, 1, 2.66879579e-05, -1, -2.69494922e-05, 1.32480386e-06, 1.32552339e-06, -2.66879288e-05, 1)
  w68 = Instance.new("Weld", p68)
  w68.Name = "PartW"
  w68.Part0 = p68
  w68.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w68.Part1 = p7
  w68.C1 = cf(1.56362915, 7.35223293e-05, -0.272767067, -6.37934863e-06, -1, 1.08782224e-05, 1, -6.37998892e-06, -5.90797426e-05, 5.90798118e-05, 1.08778549e-05, 1)
  w69 = Instance.new("Weld", p69)
  w69.Name = "PartW"
  w69.Part0 = p69
  w69.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w69.Part1 = p7
  w69.C1 = cf(1.56366539, 5.54323196e-05, 0.272681713, 4.80170893e-05, -1, -2.66859206e-05, -1, -4.80158997e-05, -4.46253835e-05, 4.46241029e-05, 2.6688067e-05, -1)
  w70 = Instance.new("Weld", p70)
  w70.Name = "PartW"
  w70.Part0 = p70
  w70.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w70.Part1 = p7
  w70.C1 = cf(1.8363781, 5.75780869e-05, 0.272675037, -4.38745265e-05, 1, 3.2454911e-05, 1, 4.38747193e-05, -5.85909675e-06, -5.86052101e-06, 3.2454649e-05, -1)
  w71 = Instance.new("Weld", p71)
  w71.Name = "PartW"
  w71.Part0 = p71
  w71.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w71.Part1 = p7
  w71.C1 = cf(2.20000076, 9.44435596e-05, -0.272780418, -2.69494558e-05, 1, 2.66879579e-05, -1, -2.69494922e-05, 1.32480386e-06, 1.32552339e-06, -2.66879288e-05, 1)
  w72 = Instance.new("Weld", p72)
  w72.Name = "PartW"
  w72.Part0 = p72
  w72.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w72.Part1 = p7
  w72.C1 = cf(1.92727089, 7.70390034e-05, -0.272781372, -6.37934863e-06, -1, 1.08782224e-05, 1, -6.37998892e-06, -5.90797426e-05, 5.90798118e-05, 1.08778549e-05, 1)
  w73 = Instance.new("Weld", p73)
  w73.Name = "PartW"
  w73.Part0 = p73
  w73.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w73.Part1 = p7
  w73.C1 = cf(1.92728996, 5.70416451e-05, 0.27269125, 4.80170893e-05, -1, -2.66859206e-05, -1, -4.80158997e-05, -4.46253835e-05, 4.46241029e-05, 2.6688067e-05, -1)
  w74 = Instance.new("Weld", p74)
  w74.Name = "PartW"
  w74.Part0 = p74
  w74.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w74.Part1 = p7
  w74.C1 = cf(2.20002556, 8.39829445e-05, 0.27265358, -4.38745265e-05, 1, 3.2454911e-05, 1, 4.38747193e-05, -5.85909675e-06, -5.86052101e-06, 3.2454649e-05, -1)
  w75 = Instance.new("Weld", p75)
  w75.Name = "PartW"
  w75.Part0 = p75
  w75.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w75.Part1 = p7
  w75.C1 = cf(2.5636425, 0.000115156174, -0.272791862, -2.69494558e-05, 1, 2.66879579e-05, -1, -2.69494922e-05, 1.32480386e-06, 1.32552339e-06, -2.66879288e-05, 1)
  w76 = Instance.new("Weld", p76)
  w76.Name = "PartW"
  w76.Part0 = p76
  w76.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w76.Part1 = p7
  w76.C1 = cf(2.29091454, 9.77218151e-05, -0.272784233, -6.37934863e-06, -1, 1.08782224e-05, 1, -6.37998892e-06, -5.90797426e-05, 5.90798118e-05, 1.08778549e-05, 1)
  w77 = Instance.new("Weld", p77)
  w77.Name = "PartW"
  w77.Part0 = p77
  w77.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w77.Part1 = p7
  w77.C1 = cf(2.29095078, 7.38799572e-05, 0.272669315, 4.80170893e-05, -1, -2.66859206e-05, -1, -4.80158997e-05, -4.46253835e-05, 4.46241029e-05, 2.6688067e-05, -1)
  w78 = Instance.new("Weld", p78)
  w78.Name = "PartW"
  w78.Part0 = p78
  w78.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w78.Part1 = p7
  w78.C1 = cf(-0.599992752, -2.95639038e-05, 3.0040741e-05, 0.965927184, 0.258813888, 1.01115875e-05, 2.49276491e-06, -4.83722688e-05, 1, 0.258813858, -0.965927243, -4.73692526e-05)
  w79 = Instance.new("Weld", p79)
  w79.Name = "PartW"
  w79.Part0 = p79
  w79.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w79.Part1 = p7
  w79.C1 = cf(-0.599992752, -2.95639038e-05, 3.0040741e-05, 0.965934634, -0.258786619, -1.57200484e-05, 1.87932164e-05, 9.40141217e-06, 1, -0.258786619, -0.965934634, 1.39445792e-05)
  w80 = Instance.new("Weld", p80)
  w80.Name = "PartW"
  w80.Part0 = p80
  w80.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w80.Part1 = p7
  w80.C1 = cf(-0.400001526, -1.39772892e-05, 2.0980835e-05, 0.965927184, 0.258813888, 1.01115875e-05, 2.49276491e-06, -4.83722688e-05, 1, 0.258813858, -0.965927243, -4.73692526e-05)
  w81 = Instance.new("Weld", p81)
  w81.Name = "PartW"
  w81.Part0 = p81
  w81.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w81.Part1 = p7
  w81.C1 = cf(-0.400001526, -1.39772892e-05, 2.0980835e-05, 0.965934634, -0.258786619, -1.57200484e-05, 1.87932164e-05, 9.40141217e-06, 1, -0.258786619, -0.965934634, 1.39445792e-05)
  w82 = Instance.new("Weld", p82)
  w82.Name = "PartW"
  w82.Part0 = p82
  w82.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w82.Part1 = p7
  w82.C1 = cf(-0.199996948, -7.95722008e-06, -2.86102295e-06, 0.965927184, 0.258813888, 1.01115875e-05, 2.49276491e-06, -4.83722688e-05, 1, 0.258813858, -0.965927243, -4.73692526e-05)
  w83 = Instance.new("Weld", p83)
  w83.Name = "PartW"
  w83.Part0 = p83
  w83.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w83.Part1 = p7
  w83.C1 = cf(-0.199996948, -7.95722008e-06, -2.86102295e-06, 0.965934634, -0.258786619, -1.57200484e-05, 1.87932164e-05, 9.40141217e-06, 1, -0.258786619, -0.965934634, 1.39445792e-05)
  w84 = Instance.new("Weld", p84)
  w84.Name = "PartW"
  w84.Part0 = p84
  w84.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w84.Part1 = p7
  w84.C1 = cf(0, 0, 0, 0.965934634, -0.258786619, -1.57200484e-05, 1.87932164e-05, 9.40141217e-06, 1, -0.258786619, -0.965934634, 1.39445792e-05)
  w85 = Instance.new("Weld", p85)
  w85.Name = "PartW"
  w85.Part0 = p85
  w85.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w85.Part1 = p7
  w85.C1 = cf(0, 0, 0, 0.965927184, 0.258813888, 1.01115875e-05, 2.49276491e-06, -4.83722688e-05, 1, 0.258813858, -0.965927243, -4.73692526e-05)
  w86 = Instance.new("Weld", p86)
  w86.Name = "PartW"
  w86.Part0 = p86
  w86.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w86.Part1 = p7
  w86.C1 = cf(0.200008392, 9.83476639e-06, 2.81333923e-05, 0.965927184, 0.258813888, 1.01115875e-05, 2.49276491e-06, -4.83722688e-05, 1, 0.258813858, -0.965927243, -4.73692526e-05)
  w87 = Instance.new("Weld", p87)
  w87.Name = "PartW"
  w87.Part0 = p87
  w87.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w87.Part1 = p7
  w87.C1 = cf(0.200008392, 9.83476639e-06, 2.81333923e-05, 0.965934634, -0.258786619, -1.57200484e-05, 1.87932164e-05, 9.40141217e-06, 1, -0.258786619, -0.965934634, 1.39445792e-05)
  w88 = Instance.new("Weld", p88)
  w88.Name = "PartW"
  w88.Part0 = p88
  w88.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w88.Part1 = p7
  w88.C1 = cf(0.400009155, 1.01327896e-05, -1.90734863e-06, 0.965934634, -0.258786619, -1.57200484e-05, 1.87932164e-05, 9.40141217e-06, 1, -0.258786619, -0.965934634, 1.39445792e-05)
  w89 = Instance.new("Weld", p89)
  w89.Name = "PartW"
  w89.Part0 = p89
  w89.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w89.Part1 = p7
  w89.C1 = cf(0.400009155, 1.01327896e-05, -1.90734863e-06, 0.965927184, 0.258813888, 1.01115875e-05, 2.49276491e-06, -4.83722688e-05, 1, 0.258813858, -0.965927243, -4.73692526e-05)
  w90 = Instance.new("Weld", p90)
  w90.Name = "PartW"
  w90.Part0 = p90
  w90.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w90.Part1 = p7
  w90.C1 = cf(-0.799999237, -2.98917294e-05, 5.4359436e-05, 0.965927184, 0.258813888, 1.01115875e-05, 2.49276491e-06, -4.83722688e-05, 1, 0.258813858, -0.965927243, -4.73692526e-05)
  w91 = Instance.new("Weld", p91)
  w91.Name = "HitBoxW"
  w91.Part0 = p91
  w91.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w91.Part1 = p7
  w91.C1 = cf(3.5, 0.000397324562, 0.000147342682, 1, 0, -7.27595761e-12, 0, 1, -2.36122233e-12, 0, 2.07256434e-12, 1)
  w92 = Instance.new("Weld", p92)
  w92.Name = "TrailBoxW"
  w92.Part0 = p92
  w92.C0 = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  w92.Part1 = p7
  w92.C1 = cf(3.5, 0.000397264957, 0.000147819519, 1, 0, -7.27595761e-12, 0, 1, -2.36122233e-12, 0, 2.07256434e-12, 1)
  m.Parent = Char
  for i,v in pairs(m:children()) do
    if v:IsA("BasePart") then
      v.Locked = true
    end
  end
  local m2 = m:Clone()
  m2.Parent = Char
  m2.Name = "blade_2"
  local handle1 = m:WaitForChild("Handle")
  local hitbox1 = m:WaitForChild("HitBox")
  local trailbox1 = m:WaitForChild("TrailBox")
  local handle2 = m2:WaitForChild("Handle")
  local hitbox2 = m2:WaitForChild("HitBox")
  local trailbox2 = m2:WaitForChild("TrailBox")
  local llw = Weld(Left_Leg, Torso, cf(0.5, 2, 0))
  local rlw = Weld(Right_Leg, Torso, cf(-0.5, 2, 0))
  local raw = Weld(Right_Arm, Torso, cf(-1.5, 0, 0))
  local law = Weld(Left_Arm, Torso, cf(1.5, 0, 0))
  local torw = Weld(Torso, HumanoidRootPart, cf(0, 0, 0))
  local hedw = Weld(Head, Torso, cf(0, -1.5, 0))
  local h1w = Weld(larm, handle1, cf(0, -1, 0) * ang(rad(90), 0, rad(90)))
  local h2w = Weld(rarm, handle2, cf(0, -1, 0) * ang(rad(90), 0, rad(90)))
  local Used = {
Executed = {}
, 
Failed = {}
}
  local BindKey = function(Name, Key, Function)
  
  local keydown = nil
  keydown = mouse.KeyDown:connect(function(key)
    
    if Key:lower() == key:lower() then
      if dkd then
        table.insert(Used.Failed, {Name, Key, Function})
      else
        if NotifyKeyPresses then
          warn("executed(" .. Name .. ", \"" .. tostring(Key:upper()) .. "\")")
        end
        Function(Name, Key)
        if NotifyKeyPresses then
          warn("ended(" .. Name .. ")")
        end
        table.insert(Used.Executed, {Name, Key, Function})
      end
    end
  end
)
end

  FaceMouse = function()
  
  local torso, torsoPos = Torso, HumanoidRootPart.Position
  local torso = Char:FindFirstChild("Torso")
  if torso then
    torsoPos = HumanoidRootPart.CFrame.p
    HumanoidRootPart.CFrame = lerp(HumanoidRootPart.CFrame, CFrame.new(torsoPos, Vector3.new(mouse.Hit.X, torsoPos.Y, mouse.Hit.Z)), 0.5)
  end
end

  local TrailFXModel = Instance.new("Model", Character)
  IsLimb = function(Object)
  
  local Limbs = {"Right Arm", "Left Arm", "Left Leg", "Right Leg", "Torso", "Head"}
  local Value, Integer = false, "Not Defined"
  for Index,String in next do
    if Object.Name:lower() == String:lower() then
      Value = true
      Integer = Index
    end
  end
  return {Value, Integer}
end

  local LimbsLast = {["Right Arm"] = CFrame.new(0, 0, 0), ["Left Arm"] = CFrame.new(0, 0, 0), ["Left Leg"] = CFrame.new(0, 0, 0), ["Right Leg"] = CFrame.new(0, 0, 0), Torso = CFrame.new(0, 0, 0), Head = CFrame.new(0, 0, 0)}
  BodyTrail = function(Time, Colour)
  
  TrailFXModel:BreakJoints()
  for Index,Object in pairs(Char:children()) do
    do
      if Object:IsA("BasePart") and Object.Name ~= "HumanoidRootPart" and IsLimb(Object)[1] == true then
        do
          spawn(function()
    
    local NewObj = Instance.new("Part")
    NewObj.Color = BrickColor.new(Colour).Color
    NewObj.CanCollide = false
    NewObj.Anchored = true
    NewObj.TopSurface = 0
    NewObj.Transparency = 1
    NewObj.Material = "Granite"
    NewObj.CFrame = Object.CFrame
    local Pos = LimbsLast[Object.Name].p
    wait()
    local Pos2 = Object.CFrame.p
    local Distance = Pos - Pos2.magnitude
    local LimbsAndSizes = {
["Right Arm"] = {1, 2}
, 
["Left Arm"] = {1, 2}
, 
["Left Leg"] = {1, 2}
, 
["Right Leg"] = {1, 2}
, 
Torso = {2, 2}
, 
Head = {2, 1}
}
    for Limb,XY in next do
      if Object.Name:lower() == Limb:lower() then
        LimbsLast[Limb] = Object.CFrame
        NewObj.Name = Object.Name
        NewObj.Size = Vector3.new(XY[1], XY[2], Distance)
      end
    end
    NewObj.CFrame = CFrame.new(Pos, Pos2) * CFrame.new(0, 0, -(Distance / 2))
    NewObj.Parent = TrailFXModel
    delay(Time / 2, function()
      
      local integer = 1.05
      for i = 1, 1, integer do
        NewObj.Transparency = i
        wait()
      end
      NewObj:Destroy()
    end
)
  end
)
          -- DECOMPILER ERROR at PC30: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC30: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end

  rainb = function(hue)
  
  local section = hue % 1 * 3
  local secondary = 0.5 * math.pi * (section % 1)
  if section < 1 then
    return c3(1, 1 - cos(secondary), 1 - sin(secondary))
  else
    if section < 2 then
      return c3(1 - sin(secondary), 1, 1 - cos(secondary))
    else
      return c3(1 - cos(secondary), 1 - sin(secondary), 1)
    end
  end
end

  local CRIT = false
  showDamage = function(Parent, Txt, RemovalTime, Clr)
  
  ypcall(function()
    
    if string.find("critical", Txt:lower()) then
      Clr = "Really red"
      print("crit")
    end
    local Clr_Raw = Clr
    if Clr == nil then
      Clr = "Mulberry"
    end
    Clr = bc(Clr).Color
    local Pert = Instance.new("Part", Parent)
    Pert.Size = vec3(0.2, 0.2, 0.2)
    Pert.Transparency = 1
    Pert.CanCollide = false
    Pert.Anchored = true
    Pert.CFrame = Parent:FindFirstChild("Head").CFrame
    Pert.BrickColor = bc("Really black")
    local Gui = Instance.new("BillboardGui", Pert)
    Gui.Adornee = Pert
    local n2 = 10
    Gui.Size = UDim2.new(n2, 0, n2, 0)
    local TextL = Instance.new("TextLabel", Gui)
    local r, g, b = Clr.r, Clr.g, Clr.b
    local clr = c3(r, g, b)
    if Clr_Raw:lower() == "rainbow" then
      lrs:connect(function()
      
      Clr = rainb(tick() / 3)
      r = Clr.r
      clr = c3(r, g, b)
    end
)
    end
    ypcall(function()
      
      if type(tonumber(Txt)) == "number" then
        TextL.Text = tostring(math.floor(tonumber(Txt)))
      else
        TextL.Text = tostring(Txt)
      end
    end
)
    TextL.BackgroundTransparency = 1
    TextL.Font = "Bodoni"
    TextL.Size = UDim2.new(6, 0, 0.5, 0)
    TextL.Position = UDim2.new(-3, 0, -0.05, 0)
    TextL.TextScaled = true
    TextL.FontSize = "Size28"
    TextL.TextColor3 = clr
    local n = 10
    local sp = Pert.CFrame * cf(rand(-n, n), rand(-n, n), rand(-n, n))
    lrs:connect(function()
      
      Pert.CFrame = clerp(Pert.CFrame, sp, 0.01)
      clr = c3(r, g, b)
      TextL.TextColor3 = clr
    end
)
    delay(RemovalTime / 2 + 1, function()
      
      local rn, bn, gn = 1 - r, 1 - b, 1 - g
      spawn(function()
        
        for i = 0, 1, 1 do
          TextL.TextTransparency = i
          lrs:wait()
        end
        Pert:Destroy()
      end
)
      spawn(function()
        
        for i = 0, rn, 0.01 do
          r = rn - i
          lrs:wait()
        end
      end
)
      spawn(function()
        
        for i = 0, bn, 0.01 do
          b = bn - i
          lrs:wait()
        end
      end
)
      spawn(function()
        
        for i = 0, gn, 0.01 do
          g = gn - i
          lrs:wait()
        end
      end
)
    end
)
  end
)
end

  CheckIfLanded = function()
  
  local Ray = Ray.new(torso.Position, vec3(0, -1, 0) * 10)
  local Ignore = {Char}
  local Hit, Pos, SurfaceNorm = workspace:FindPartOnRayWithIgnoreList(Ray, Ignore)
  if Hit == nil then
    return false, nil
  end
  return true, Hit
end

  FindNearestTorso = function(Position, Distance, SinglePlayer)
  
  if SinglePlayer.Torso.CFrame.p - Position.magnitude >= Distance then
    do return not SinglePlayer end
    do
      local List = {}
      for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and (v:findFirstChild("Torso") or v:findFirstChild("HumanoidRootPart")) and v ~= Char and v.HumanoidRootPart.Position - Position.magnitude <= Distance then
          table.insert(List, v)
        end
      end
      do return List end
      -- DECOMPILER ERROR: 4 unprocessed JMP targets
    end
  end
end

  DebounceHit = false
  local pitches = {0.75, 0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1, 1.15, 1.2, 1.25}
  local swing_sfx = {5599590574}
  local cut_sfx = {220833976}
  local bash_sfx = {386946017}
  local sounds = {}
  sounds.swing = function(self)
  
  local s = Instance.new("Sound", sp)
  s.Pitch = 1.25 + pitches[rand(1, #pitches)]
  s.SoundId = swing_sfx[rand(1, #swing_sfx)]
  return s
end

  sounds.cut = function(self)
  
  local s = Instance.new("Sound", sp)
  s.Pitch = pitches[rand(1, #pitches)]
  s.SoundId = cut_sfx[rand(1, #cut_sfx)]
  return s
end

  sounds.bash = function(self)
  
  local s = Instance.new("Sound", sp)
  s.Pitch = pitches[rand(1, #pitches)]
  s.SoundId = bash_sfx[rand(1, #bash_sfx)]
  return s
end

  NewFXBox = function(name, prnt)
  
  if prnt == nil then
    prnt = Character
  end
  local FXBox = Instance.new("Model", prnt)
  FXBox.Name = "FXBox"
  if name then
    FXBox.Name = name
  end
  local Count = 0
  local Check = nil
  Check = FXBox.ChildAdded:connect(function(Object)
    
    if Object:IsA("BasePart") then
      FXBox.PrimaryPart = Object
      Check:disconnect()
    end
  end
)
  return FXBox
end

  ReSurface = function(Part, Integer)
  
  if Part ~= nil and Part:IsA("BasePart") then
    Part.TopSurface = Integer
    Part.BottomSurface = Integer
    Part.LeftSurface = Integer
    Part.RightSurface = Integer
    Part.FrontSurface = Integer
    Part.BackSurface = Integer
  end
end

  ni = function(name, prnt)
  
  return Instance.new(tostring(name), prnt)
end

  local TrailModel = NewFXBox("TrailBOX")
  NewPart = function(prnt)
  
  local NPart = ni("Part", prnt)
  ReSurface(NPart, 10)
  if prnt:IsA("BasePart") then
    NPart.CFrame = prnt.CFrame
  end
  NPart.Anchored = true
  NPart.Size = vec3(1, 1, 1)
  NPart.CanCollide = false
  NPart.BrickColor = bc("Royal purple")
  return NPart
end

  HandleSP = function(func)
  
  for i,v in next do
    if v:IsA("Sound") then
      v:Stop()
      func(v)
    end
  end
end

  GenTrail = function(Origin, Time)
  
end

  MagDmg = function(Part, magni, knock, func)
  
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("HumanoidRootPart")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          local bv = Instance.new("BodyVelocity", head)
          do
--            bv.MaxVelocity = vec3(1 / 0, 0, 1 / 0)
            bv.Velocity = HumanoidRootPart.CFrame.lookVector * knock-- + 2
            delay(0.1, function()
    
    bv:Destroy()
  end
)
            func(c, hum)
          end
        end
      end
    end
  end
end

  BindKey("Ground Breaker", "x", function(AttackName, Key)
  
  ds = true
  for i = 0, 1, 0.05 do
    local animspd = 0.1
    torw.C0 = clerp(torw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    hedw.C0 = clerp(hedw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    law.C0 = clerp(law.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    raw.C0 = clerp(raw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    rlw.C0 = clerp(rlw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    llw.C0 = clerp(llw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    lrs:wait()
  end
  for i = 0, 1, 0.05 do
    local animspd = 0.1
    torw.C0 = clerp(torw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    hedw.C0 = clerp(hedw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    law.C0 = clerp(law.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    raw.C0 = clerp(raw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    rlw.C0 = clerp(rlw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    llw.C0 = clerp(llw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    lrs:wait()
  end
  ds = false
end
)
  local LA = {"Left", "Right"}
  local LastArm = LA[math.random(1, #LA)]
  local gDown = false
  local CanLoopG = true
  BindKey("Blink", "g", function(AttackName, Key)
  
  ds = true
  BodyTrail(0, "Magenta")
  HumanoidRootPart.CFrame = HumanoidRootPart.CFrame * cf(0, 0, -15)
  BodyTrail(0, "Magenta")
  if LastArm == LA[1] then
    LastArm = LA[2]
    for i = 0, 1, 0.15 do
      local animspd = 0.75
      torw.C0 = clerp(torw.C0, CFrame.new(0, -0.0468509197, -0.211326599, 1, 0, 0, 0, 0.906307876, 0.422617942, 0, -0.422617942, 0.906307876) * ang(0, 0, 0), animspd)
      hedw.C0 = clerp(hedw.C0, CFrame.new(0, 0.0227189064, -0.26047188, 1, 0, 0, 0, 0.984807789, -0.173647925, 0, 0.173647925, 0.984807789) * ang(0, 0, 0), animspd)
      law.C0 = clerp(law.C0, CFrame.new(0.278717279, 0.591294587, 0.10480696, 0.819151103, -0.57357794, 4.34693362e-07, 0.0499908626, 0.0713932812, -0.99619472, 0.571395278, 0.816033959, 0.0871555209) * ang(0, 0, 0), animspd)
      raw.C0 = clerp(raw.C0, CFrame.new(0.0113945007, 0.161766201, 0.349781126, 0.992404103, 0.0868226364, -0.0871557891, 0.0211326815, 0.577615142, 0.816035628, 0.121192873, -0.811678946, 0.571392715) * ang(0, 0, 0), animspd)
      rlw.C0 = clerp(rlw.C0, CFrame.new(0, 0.375620604, -0.433983207, 1, 0, 0, 0, 0.965925574, -0.258819878, 0, 0.258819878, 0.965925574) * ang(0, 0, 0), animspd)
      llw.C0 = clerp(llw.C0, CFrame.new(0, 1.07288361e-05, 4.76837158e-06, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 0.999999881) * ang(0, 0, 0), animspd)
      h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      lrs:wait()
    end
  else
    do
      if LastArm == LA[2] then
        LastArm = LA[1]
        for i = 0, 1, 0.15 do
          local animspd = 0.75
          torw.C0 = clerp(torw.C0, CFrame.new(0, -0.0468509197, -0.211326599, 1, 0, 0, 0, 0.906307876, 0.422617942, 0, -0.422617942, 0.906307876) * ang(0, 0, 0), animspd)
          hedw.C0 = clerp(hedw.C0, CFrame.new(0, 0.0227189064, -0.26047188, 1, 0, 0, 0, 0.984807789, -0.173647925, 0, 0.173647925, 0.984807789) * ang(0, 0, 0), animspd)
          law.C0 = clerp(law.C0, CFrame.new(0.0881265402, 0.374933362, 0.499300212, 0.992403924, -0.0868240818, -0.087155737, 0.121112585, 0.565171182, 0.816035032, -0.0215935856, -0.820392013, 0.571393549) * ang(0, 0, 0), animspd)
          raw.C0 = clerp(raw.C0, CFrame.new(-0.279206991, 0.591076076, 0.104926825, 0.819152057, 0.57357645, 0, -0.0499906242, 0.0713940263, -0.996194661, -0.571393788, 0.816034913, 0.0871560276) * ang(0, 0, 0), animspd)
          rlw.C0 = clerp(rlw.C0, CFrame.new(-0.000478506088, 0.000445604324, 0.00016617775, 1, 0, 0, 0, 0.999999881, 3.57627869e-07, 0, -3.57627869e-07, 0.999999881) * ang(0, 0, 0), animspd)
          llw.C0 = clerp(llw.C0, CFrame.new(-0.00047826767, 0.376046538, -0.433818698, 1, 0, 0, 0, 0.965925872, -0.258818686, 0, 0.258818686, 0.965925872) * ang(0, 0, 0), animspd)
          h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
          h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
          lrs:wait()
        end
      else
        do
          error("local LastArm value invalid", 1)
          ds = false
        end
      end
    end
  end
end
)
  BindKey("Backflip Slash", "q", function(AttackName, Key)  
  --[[if height > 0 then
    return 
  end
  if not IsLanded then
    return 
  end]]
  ds = true
  hum.WalkSpeed = 0
  for i = 0, 1, 0.035 do
    local animspd = 0.15
    torw.C0 = clerp(torw.C0, CFrame.new(0.000422000885, -0.0971133709, 1.31130219e-05, 1, 0, 0, 0, 0.866025448, 0.500000298, 0, -0.500000298, 0.866025388) * ang(0, 0, 0), animspd)
    hedw.C0 = clerp(hedw.C0, CFrame.new(2.38418579e-07, 0.0394052267, 0.20832628, 1, 0, 0, 0, 0.965925992, 0.25881961, 0, -0.25881955, 0.965925932) * ang(0, 0, 0), animspd)
    law.C0 = lerp(law.C0, CFrame.new(-0.500982285, -0.466032803, 0.61457634, 0.866025567, 0.499999821, 1.11829343e-06, -0.421695679, 0.730397582, 0.537301302, 0.268649727, -0.465317041, 0.843390584) * ang(0, 0, 0), animspd)
    raw.C0 = lerp(raw.C0, CFrame.new(0.550538659, -0.46602726, 0.614567757, 0.866025388, -0.5, 0, 0.421695888, 0.730398655, 0.537299573, -0.268649757, -0.465314984, 0.843391716) * ang(0, 0, 0), animspd)
    rlw.C0 = clerp(rlw.C0, CFrame.new(0, 0.411981583, 0.122371793, 1, 0, 0, 0, 0.866025448, -0.500000298, 0, 0.500000298, 0.866025388) * ang(0, 0, 0), animspd)
    llw.C0 = clerp(llw.C0, CFrame.new(-1.93119049e-05, -0.0656920671, -0.479138374, 1, 0, 0, 0, 0.939692616, 0.34202075, 0, -0.34202075, 0.939692557) * ang(0, 0, 0), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    lrs:wait()
  end
  local debhet2, debhet = false, false
  local vel = Instance.new("BodyVelocity", HumanoidRootPart)
  vel.MaxForce = vec3(1 / 0, 1 / 0, 1 / 0)
  vel.Velocity = HumanoidRootPart.CFrame.lookVector * -120 + vec3(0, 50, 0)
  delay(0.01, function()
    
    vel:Destroy()
  end
)
  for i = 0, 0.8, 0.05 do
    MagDmg(hitbox2, 5, 5, function(chr, h)
    
    if debhet2 == false then
      debhet2 = true
      local crit = false
      do
        ypcall(function()
      
      chr.Health:Destroy()
    end
)
        local d = rand()
        if d > 0.95 then
          crit = true
          dot = true
        end
        delay(0.5, function()
      
      debhet2 = false
    end
)
        local damage = rand(0, 0)
        if crit then
          damage = 0
        end
        h.Health = h.Health
        showDamage(h.Parent, tostring(damage), 1, "Royal purple")
        if dot == true then
          do
            spawn(function()
      
      for i = 0, rand(2, 5) do
        h.Health = h.Health - damage / 4
        showDamage(h.Parent, "(Dmg Ovr Time)\n" .. tostring(math.floor(damage / 3)), 0.3, "Toothpaste")
        wait(0.8)
      end
	  ds = false
    end
)
            -- DECOMPILER ERROR at PC53: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC53: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
)
    MagDmg(hitbox1, 5, 5, function(chr, h)
    
    if debhet == false then
      debhet = true
      local crit = false
      do
        ypcall(function()
      
      chr.Health:Destroy()
    end
)
        local d = rand()
        if d > 0.95 then
          crit = true
          dot = true
        end
        delay(0.5, function()
      
      debhet = false
    end
)
        local damage = rand(5, 8)
        if crit then
          damage = damage + rand(3, 8)
        end
        h.Health = h.Health - (damage)
        showDamage(h.Parent, tostring(damage), 1, "Royal purple")
        if dot == true then
          do
            spawn(function()
      
      for i = 0, rand(2, 5) do
        h.Health = h.Health - damage / 4
        showDamage(h.Parent, "(Dmg Over Time)\n" .. tostring(math.floor(damage / 3)), 0.3, "Toothpaste")
        wait(0.8)
      end
    end
)
            -- DECOMPILER ERROR at PC53: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC53: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
)
    local animspd = 0.3
    torw.C0 = lerp(torw.C0, cf(0, 0, 0) * ang(rad(560 * i), 0, 0), animspd)
    hedw.C0 = clerp(hedw.C0, CFrame.new(0, 0.0903711319, -0.463028312, 1, 0, 0, 0, 0.939693093, -0.342018992, 0, 0.342019022, 0.939693093) * ang(0, 0, 0), animspd)
    law.C0 = lerp(law.C0, CFrame.new(0.144277692, 0.799976468, -0.629216552, 0.99619478, -0.0871558562, 1.1790172e-06, -0.0333519913, -0.381226987, -0.923879683, 0.0805219784, 0.920364022, -0.382683128) * ang(0, 0, 0), animspd)
    raw.C0 = lerp(raw.C0, CFrame.new(-0.0945549011, 0.799960315, -0.629431963, 0.99619472, 0.087155737, 0, 0.033353053, -0.381227165, -0.923879564, -0.0805214047, 0.920363963, -0.382683396) * ang(0, 0, 0), animspd)
    rlw.C0 = clerp(rlw.C0, CFrame.new(0, -0.0170865059, -0.26105395, 1, 0, 0, 0, 0.991444767, 0.130526975, 0, -0.130526975, 0.991444767) * ang(0, 0, 0), animspd)
    llw.C0 = clerp(llw.C0, CFrame.new(0, -0.18736732, -0.845235884, 1, 0, 0, 0, 0.906307876, 0.422617942, 0, -0.422617942, 0.906307876) * ang(0, 0, 0), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    lrs:wait()
  end
  spawn(function()
    
    repeat
      local animspd = 0.3
      torw.C0 = lerp(torw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      hedw.C0 = clerp(hedw.C0, CFrame.new(0, 0.0903711319, -0.463028312, 1, 0, 0, 0, 0.939693093, -0.342018992, 0, 0.342019022, 0.939693093) * ang(0, 0, 0), animspd)
      law.C0 = lerp(law.C0, CFrame.new(0.144277692, 0.799976468, -0.629216552, 0.99619478, -0.0871558562, 1.1790172e-06, -0.0333519913, -0.381226987, -0.923879683, 0.0805219784, 0.920364022, -0.382683128) * ang(0, 0, 0), animspd)
      raw.C0 = lerp(raw.C0, CFrame.new(-0.0945549011, 0.799960315, -0.629431963, 0.99619472, 0.087155737, 0, 0.033353053, -0.381227165, -0.923879564, -0.0805214047, 0.920363963, -0.382683396) * ang(0, 0, 0), animspd)
      rlw.C0 = clerp(rlw.C0, CFrame.new(0, -0.0170865059, -0.26105395, 1, 0, 0, 0, 0.991444767, 0.130526975, 0, -0.130526975, 0.991444767) * ang(0, 0, 0), animspd)
      llw.C0 = clerp(llw.C0, CFrame.new(0, -0.18736732, -0.845235884, 1, 0, 0, 0, 0.906307876, 0.422617942, 0, -0.422617942, 0.906307876) * ang(0, 0, 0), animspd)
      h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      lrs:wait()
    until ds == false
  end
)
 --[[ repeat
    lrs:wait()
  until IsLanded]]
  local vel = Instance.new("BodyVelocity", HumanoidRootPart)
  vel.MaxForce = vec3(1 / 0, 0, 1 / 0)
  vel.Velocity = HumanoidRootPart.CFrame.lookVector * -50
  wait(0.2)
  vel:Destroy()
  ds = false
end
)
  BindKey("Void Blast", "r", function(AttackName, Key)
  
  ds = true
  local fb = NewFXBox()
  for i = 0, 1, 0.025 do
    do
      local animspd = 0.15
      torw.C0 = clerp(torw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      hedw.C0 = clerp(hedw.C0, cf(0, 0, rad(15)) * ang(-rad(15), 0, 0), animspd)
      law.C0 = clerp(law.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      raw.C0 = clerp(raw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      rlw.C0 = clerp(rlw.C0, cf(-rad(3), 0, 0) * ang(0, 0, rad(3)), animspd)
      llw.C0 = clerp(llw.C0, cf(rad(3), 0, 0) * ang(0, 0, -rad(3)), animspd)
      h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      lrs:wait()
    end
  end
  do
    for i,v in pairs(m:children()) do
      if v.Name ~= "TrailBox" and v.Name ~= "HitBox" and v:IsA("BasePart") then
        spawn(function()
    
    local m, int = 0, 1.05
    for i = 1, m + int, int do
      v.Transparency = i
      lrs:wait()
    end
  end
)
      end
    end
  end
  for i,v in pairs(m:children()) do
    if v.Name ~= "TrailBox" and v.Name ~= "HitBox" and v:IsA("BasePart") then
      spawn(function()
    
    local m, int = 0, 1.05
    for i = 1, m + int, int do
      v.Transparency = i
      lrs:wait()
    end
  end
)
    end
  end
  for i = 0, 1, 0.05 do
    local animspd = 0.4
    torw.C0 = clerp(torw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    hedw.C0 = clerp(hedw.C0, cf(0, 0, rad(15)) * ang(-rad(15), 0, 0), animspd)
    law.C0 = lerp(law.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    raw.C0 = lerp(raw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    rlw.C0 = clerp(rlw.C0, cf(-rad(3), 0, 0) * ang(0, 0, rad(3)), animspd)
    llw.C0 = clerp(llw.C0, cf(rad(3), 0, 0) * ang(0, 0, -rad(3)), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    lrs:wait()
  end
  local pert = Instance.new("Part", fb)
  ReSurface(pert, 10)
  pert.Material = "Granite"
  pert.BrickColor = bc("Royal purple")
  pert.Anchored = true
  pert.Size = vec3(2, 2, 2)
  pert.CanCollide = false
  pert.CFrame = HumanoidRootPart.CFrame * cf(0, 3, -4) * ang(rand(-360, 360), rand(-360, 360), rand(-360, 360))
  local int = 0
  local int2 = 0
  for i = 0, 1, 0.005 do
    int = int + 1
    pert.Size = pert.Size + vec3(0.025, 0.025, 0.025)
    pert.CFrame = lerp(pert.CFrame, HumanoidRootPart.CFrame * cf(0, 2, -4 - (int2)) * ang(rad(int), rad((int) * 3), rad((int) * 2)), 0.05)
    local animspd = 0.15
    torw.C0 = clerp(torw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    hedw.C0 = clerp(hedw.C0, cf(0, 0, -rad(25)) * ang(rad(25), 0, 0), animspd)
    law.C0 = lerp(law.C0, cf(-rad(90), 0.3, -1.5) * ang(rad(80), 0, -rad(80)), animspd)
    raw.C0 = lerp(raw.C0, cf(rad(90), 0.3, -1.5) * ang(rad(80), 0, rad(80)), animspd)
    rlw.C0 = clerp(rlw.C0, cf(-rad(3), 0, 0) * ang(0, 0, rad(3)), animspd)
    llw.C0 = clerp(llw.C0, cf(rad(3), 0, 0) * ang(0, 0, -rad(3)), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    lrs:wait()
  end
  for i = 0, 1, 0.1 do
    pert.CFrame = lerp(pert.CFrame, HumanoidRootPart.CFrame * cf(0, 2, -4 - (int2)) * ang(rad(int), rad((int) * 3), rad((int) * 2)), 0.1)
    lrs:wait()
  end
  for i,v in pairs(m:children()) do
    if v.Name ~= "TrailBox" and v.Name ~= "HitBox" and v:IsA("BasePart") then
      spawn(function()
    
    local m, int = 1, 0.05
    for i = 0, m + int, int do
      v.Transparency = 1 - i
      lrs:wait()
    end
  end
)
    end
  end
  for i,v in pairs(m:children()) do
    if v.Name ~= "TrailBox" and v.Name ~= "HitBox" and v:IsA("BasePart") then
      spawn(function()
    
    local m, int = 1, 0.05
    for i = 0, m + int, int do
      v.Transparency = 1 - i
      lrs:wait()
    end
  end
)
    end
  end
  fb:Destroy()
  ds = false
end
)
  BindKey("Beserk Blades", "e", function(AttackName, Key)
  
  ds = true
  local debhet1, debhet2 = false, false
  hum.WalkSpeed = 11
  local fb = NewFXBox()
  local s1 = Instance.new("Sound", sp)
  s1.SoundId = "rbxassetid://201858168"
  s1.Pitch = 1.05
  local s2 = Instance.new("Sound", sp)
  s2.SoundId = "rbxassetid://163619849"
  s2.Pitch = 1.1
  local s4 = Instance.new("Sound", sp)
  s4.SoundId = "rbxassetid://180120107"
  s4.Pitch = 0.9
  for i = 1, 5 do
    local s3 = Instance.new("Sound", sp)
    s3.SoundId = "rbxassetid://206083107"
    s3.Pitch = pitches[rand(1, #pitches)]
    lrs:wait()
    s3:Play()
    for i = 0, 360, 35 do
      spawn(function()
    
    GenTrail(trailbox1.CFrame * cf(0, 1, 0), 30)
  end
)
      MagDmg(hitbox2, 5, 5, function(chr, h)
    
    if debhet2 == false then
      debhet2 = true
      local crit = false
      do
        ypcall(function()
      
      chr.Health:Destroy()
    end
)
        local d = rand()
        if d > 0.95 then
          crit = true
          dot = true
        end
        delay(0.5, function()
      
      debhet2 = false
    end
)
        local damage = rand(5, 8)
        if crit then
          damage = damage + rand(5, 15)
        end
        h.Health = h.Health - (damage)
        showDamage(h.Parent, tostring(damage), 1, "Royal purple")
        if dot == true then
          do
            spawn(function()
      
      for i = 1, rand(5, 12) do
        h.Health = h.Health - damage / 4
        showDamage(h.Parent, "(Dmg Over Time)\n" .. tostring(math.floor(damage / 3)), 0.3, "Toothpaste")
        wait(0.8)
      end
    end
)
            -- DECOMPILER ERROR at PC53: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC53: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
)
      MagDmg(hitbox1, 5, 5, function(chr, h)
    
    ypcall(function()
      
      chr.Health:Destroy()
    end
)
    if debhet1 == false then
      debhet1 = true
      local crit = false
      do
        local d = rand()
        if d > 0.98 then
          warn("crit(" .. d .. ")")
          crit = true
          dot = true
        end
        delay(0.5, function()
      
      debhet1 = false
    end
)
        local damage = rand(5, 8)
        if crit then
          damage = damage + rand(5, 15)
        end
        h.Health = h.Health - (damage)
        showDamage(h.Parent, tostring(damage), 1, "Royal purple")
        if dot == true then
          do
            spawn(function()
      
      for i = 1, rand(5, 12) do
        h.Health = h.Health - damage / 4
        showDamage(h.Parent, "(Dmg Over Time)\n" .. tostring(math.floor(damage / 3)), 0.3, "Toothpaste")
        wait(0.8)
      end
    end
)
            -- DECOMPILER ERROR at PC59: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC59: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
)
      local animspd = 0.25
      torw.C0 = lerp(torw.C0, cf(0, height, 0) * ang(-rad(15), math.rad(i), 0), 0.3)
      hedw.C0 = clerp(hedw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      law.C0 = lerp(law.C0, cf(-2, -1, 0) * ang(0, 0, -rad(90)), animspd)
      raw.C0 = lerp(raw.C0, cf(2, -1, 0) * ang(0, 0, rad(90)), animspd)
      rlw.C0 = clerp(rlw.C0, cf(-rad(8), 0, 0) * ang(0, 0, rad(8)), animspd)
      llw.C0 = clerp(llw.C0, cf(rad(8), 0, 0) * ang(0, 0, -rad(8)), animspd)
      h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, rad(45), 0), animspd)
      h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, rad(135), 0), animspd)
      lrs:wait()
    end
  end
  hum.WalkSpeed = 1
  s2:Play()
  ds = false
end
)
  BindKey("Blade Spear", "f", function(AttackName, Key)  
if ds then
return
end
  local fb = NewFXBox()
  ds = true
  local s1 = Instance.new("Sound", sp)
  s1.SoundId = "rbxassetid://215395236"
  s1.Pitch = 1.5
  s1.Volume = 1
  local s2 = Instance.new("Sound", sp)
  s2.SoundId = "rbxassetid://134012322"
  s2.Pitch = 1
  s2.Volume = 1
  local s3 = Instance.new("Sound", sp)
  s3.SoundId = "rbxassetid://186772924"
  s3.Pitch = 0.75
  s3.Volume = 1
  local s4 = Instance.new("Sound", sp)
  s4.SoundId = "rbxassetid://282061340"
  s4.Pitch = 0.75
  s4.Volume = 1
  wait()
  for i = 0, 15 do
    local animspd = 0.25
    torw.C0 = clerp(torw.C0, cf(0, height, 0) * ang(-rad(12.5), -rad(50), 0), animspd)
    hedw.C0 = clerp(hedw.C0, cf(0, 0, 0) * ang(0, rad(50), 0), animspd)
    law.C0 = clerp(law.C0, cf(-rad(4), -rad(8), 0) * ang(0, 0, -rad(8)), animspd)
    raw.C0 = lerp(raw.C0, cf(1.15, 0.5, -1.75) * ang(rad(90), 0, rad(60)), animspd)
    rlw.C0 = clerp(rlw.C0, cf(0.1, -0.1, 0.1) * ang(-rad(6.25), rad(12.5), 0), animspd)
    llw.C0 = clerp(llw.C0, cf(0.25, -0.15, 0) * ang(rad(20), 0, -rad(12.5)), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, rad(77.5)), animspd)
    lrs:wait()
  end
  s1:Play()
  for i = 0, 15 do
    do
      local animspd = 0.25
      torw.C0 = clerp(torw.C0, cf(0, height, 0) * ang(-rad(12.5), -rad(50), 0), animspd)
      hedw.C0 = clerp(hedw.C0, cf(0, 0, 0) * ang(0, rad(50), 0), animspd)
      law.C0 = clerp(law.C0, cf(-rad(4), -rad(8), 0) * ang(0, 0, -rad(8)), animspd)
      raw.C0 = lerp(raw.C0, cf(0.05, 0.5, -1.25) * ang(rad(90), 0, rad(10)), animspd)
      rlw.C0 = clerp(rlw.C0, cf(0.1, -0.1, 0.1) * ang(-rad(6.25), rad(12.5), 0), animspd)
      llw.C0 = clerp(llw.C0, cf(0.25, -0.15, 0) * ang(rad(20), 0, -rad(12.5)), animspd)
      h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, rad(160), rad(77.5)), animspd)
      lrs:wait()
    end
  end
  h2w:Destroy()
  handle2.Anchored = true
  local weld = Instance.new("Weld", fb)
  weld.Part0 = HumanoidRootPart
  weld.Part1 = handle2
  weld.C1 = handle2.CFrame:inverse() * HumanoidRootPart.CFrame * ang(0, rad(7), -rad(5))
  weld.Name = "W"
  handle2.Anchored = false
  local val, val2 = 0, 0
  do
    local debhet = false
    s2:Play()
    do
      for i = 0, 3.75 do
        MagDmg(hitbox2, 8, 15, function(chr, h)    
    if debhet == false then
      debhet = true
      ypcall(function()      
      chr.Health:Destroy()
    end
)
      local crit = false
      do
        local d = rand()
        if d > 0.65 then
          crit = true
          dot = true
        end
        delay(0.01, function()
      
      debhet = false
    end
)
        local damage = rand(7, 16)
        if crit then
          damage = damage + rand(5, 15)
        end
        h.Health = h.Health - (damage) + 2
        showDamage(h.Parent, tostring(damage), 1, "Royal purple")
        if dot == true then
          do
            spawn(function()
      
      for i = 1, rand(2, 6) do
        h.Health = h.Health - damage / 4 + 2
        showDamage(h.Parent, "(Dmg Over Time)\n" .. tostring(math.floor(damage / 3)), 0.3, "Toothpaste")
        wait(rand(0.8, 2.5))
      end
    end
)
          end
        end
      end
    end
  end
)
        val = val + 4
        local animspd = 0.5
        weld.C0 = clerp(weld.C0, cf(0, 0, -(val)), animspd)
        torw.C0 = lerp(torw.C0, cf(0, height, 0) * ang(-rad(12.5), rad(20), 0), animspd)
        hedw.C0 = clerp(hedw.C0, cf(0, 0, 0) * ang(0, -rad(20), 0), animspd)
        law.C0 = clerp(law.C0, cf(-rad(4), -rad(8), 0) * ang(0, 0, -rad(8)), animspd)
        raw.C0 = lerp(raw.C0, cf(-0.5, 0.5, -0.1) * ang(rad(90), 0, -rad(60)), animspd)
        rlw.C0 = clerp(rlw.C0, cf(0.1, -0.1, 0.1) * ang(-rad(6.25), rad(12.5), 0), animspd)
        llw.C0 = clerp(llw.C0, cf(0.25, -0.15, 0) * ang(rad(20), 0, -rad(12.5)), animspd)
        h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
        lrs:wait()
      end
    end
    hum.WalkSpeed = 0
    torso.Anchored = true
    for i = 1, 5, 0.25 do
      local animspd = 0.2
      val = val + 1
      weld.C0 = clerp(weld.C0, cf(0, 0, -(val)), animspd)
      local pe = Instance.new("Part", fb)
      pe.Anchored = true
      pe.Transparency = 0.65
      pe.CanCollide = false
      pe.Size = vec3(0.6, 0.6, 0.6)
      pe.TopSurface = 0
      pe.Color = bc("Magenta").Color
      pe.CFrame = handle2.CFrame * cf(1 * -i, 0, 0) * ang(rand(-360, 360), rand(-360, 360), rand(-360, 360))
      spawn(function()
    for i = 0, 0.35, 0.05 do
      pe.Transparency = 0.65 + i
      lrs:wait()
    end
    pe:Destroy()
  end
)
      lrs:wait()
    end
    for i = 1, 7, 0.25 do
      local animspd = 0.2
      local pe = Instance.new("Part", fb)
      pe.Anchored = true
      pe.Transparency = 1
      pe.CanCollide = false
      pe.Size = vec3(1.5, 1.5, 1.5)
      pe.TopSurface = 0
      pe.Color = bc("Royal purple").Color
      pe.CFrame = handle2.CFrame * cf(-2 + i, 0, 0) * ang(rand(-360, 360), rand(-360, 360), rand(-360, 360))
      local weld2 = Instance.new("Weld", Character)
      weld2.Part0 = pe
      weld2.Part1 = handle2
      weld2.C1 = handle2.CFrame:inverse() * pe.CFrame
      weld2.Name = "W2"
      spawn(function()
    
    for i = 0, 1, 0.05 do
      pe.Transparency = 1.65 - i
      lrs:wait()
    end
  end
)
      delay(1.5, function()
    
    for i = 0, 1, 1 do
      pe.Transparency = i
      lrs:wait()
    end
    pe:Destroy()
    weld2:Destroy()
  end
)
      lrs:wait()
    end
    s3:Play()
lrs:wait()
    local p1 = Instance.new("Part", fb)
    p1.Anchored = true
    p1.Transparency = 1
    p1.CanCollide = false
    p1.Size = vec3(12, 12, 12)
    p1.TopSurface = 0
    p1.Color = bc("Royal purple").Color
    p1.CFrame = handle2.CFrame * ang(rad(90), rad(0), rad(90)) * cf(0, -2, 0)
    local me1 = Instance.new("SpecialMesh", p1)
    me1.MeshType = "FileMesh"
    me1.MeshId = "rbxassetid://3270017"
    me1.Scale = vec3(1.5, 10, 1.5)
    local p2 = Instance.new("Part", fb)
    p2.Anchored = true
    p2.Transparency = 1
    p2.CanCollide = false
    p2.Size = vec3(1.5, 3, 1.5)
    p2.TopSurface = 0
    p2.Color = bc("Royal purple").Color
    p2.CFrame = handle2.CFrame * ang(0, rad(0), rad(90)) * cf(0, -2, 0)
    local me2 = Instance.new("SpecialMesh", p2)
    me2.MeshType = "FileMesh"
    me2.MeshId = "rbxassetid://3270017"
    me2.Scale = vec3(1.5, 10, 1.5)
    torso.Anchored = false
    delay(0.1, function()    
    ds = false
  end
)
    for i = 0, 1, 0.05 do
      p1.Transparency = 1 - i
      lrs:wait()
    end
    handle2.Anchored = true
    m2.Parent = nil
    for i = 0, 1, 0.025 do
      p1.CFrame = p1.CFrame * ang(0, rad(5), 0)
      lrs:wait()
    end
    for i = 0, 1, 1 do
      p1.Transparency = i
      lrs:wait()
    end
    p1:Destroy()
    p2:Destroy()
    for i,v in pairs(m:children()) do
      v.Transparency = 1
    end
    m2.Parent = Character
    h2w = Weld(rarm, handle2, cf(0, -1, 0) * ang(rad(90), 0, rad(90)))
    h2w.C0 = cf(0, 0, 0) * ang(rad(0), 0, -rad(180))
    handle2.Anchored = false
    delay(0.75, function()
    
    s4:Play()
  end
)
    for i,v in pairs(m:children()) do
      spawn(function()
    
    for i = 0, 5, 0.1 do
      if v.Name ~= "TrailBox" and v.Name ~= "HitBox" and v:IsA("BasePart") then
        v.Transparency = 5 - i
        lrs:wait()
      end
    end
  end
)
      for i_,v_ in pairs(m:children()) do
        spawn(function()
    
    for i = 0, 5, 0.1 do
      if v_.Name ~= "TrailBox" and v_.Name ~= "HitBox" and v_:IsA("BasePart") then
        v_.Transparency = 5 - i
        lrs:wait()
      end
    end
  end
)
      end
    end
    wait(0.25)
    fb:Destroy()
    dkd = false
  end
end
)
  BindKey("Sit", "z", function(AttackName, Key)  
  ds = true
  hum.WalkSpeed = 2
  for i = 0, 1, 0.03 do
    local animspd = 0.2
    torw.C0 = clerp(torw.C0, CFrame.new(0.0734259486, -1.07769084, 0.591883659, 0.921220124, 0.374676734, -0.10474202, -0.159497008, 0.609295309, 0.776736736, 0.354844034, -0.698839426, 0.621054947) * ang(0, 0, 0), animspd)
    hedw.C0 = clerp(hedw.C0, CFrame.new(-0.122578576, -0.0169298649, -0.356238186, 0.991444886, -2.98023224e-08, -0.130526453, -0.0337826014, 0.965926051, -0.256603986, 0.126078874, 0.258818179, 0.957662463) * ang(0, 0, 0), animspd)
    law.C0 = clerp(law.C0, CFrame.new(-0.392519593, -0.30513835, -0.272547394, 0.923879862, 0.38268286, -2.38418579e-07, -0.36964336, 0.89239943, -0.258818567, -0.099045217, 0.239117295, 0.965926051) * ang(0, 0, 0), animspd)
    raw.C0 = clerp(raw.C0, CFrame.new(0.469016552, -0.646901846, -1.26597059, 0.811113179, -0.464953005, 0.354844034, 0.560471714, 0.444404036, -0.698839426, 0.167233378, 0.765717924, 0.621054947) * ang(0, 0, 0), animspd)
    rlw.C0 = clerp(rlw.C0, CFrame.new(-0.359871984, 0.707089186, 0.157295704, 0.921220124, -0.271241635, 0.278893471, 0.374676734, 0.811566949, -0.448304027, -0.10474202, 0.517481565, 0.849259734) * ang(0, 0, 0), animspd)
    llw.C0 = clerp(llw.C0, CFrame.new(0.0101166964, -0.0557525158, -0.912290573, 1.00000012, 2.98023224e-08, 1.49011612e-08, -4.47034836e-08, 0.953716874, 0.30070588, -1.49011612e-08, -0.30070591, 0.953717053) * ang(0, 0, 0), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    lrs:wait()
  end
  hum.WalkSpeed = 0
  delay(1.5, function()    
    hum.WalkSpeed = 8
  end
)
  repeat
    local animspd = 0.3
    torw.C0 = clerp(torw.C0, CFrame.new(0, -1.91698706, 0.27142334, 1, 0, 0, 0, 0.76604414, -0.642788053, 0, 0.642788053, 0.76604414) * ang(0, 0, 0), animspd)
    hedw.C0 = clerp(hedw.C0, CFrame.new(0, -0.0828192234, 0.134720802, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012) * ang(0, 0, 0), animspd)
    law.C0 = clerp(law.C0, CFrame.new(-0.390914202, -0.17002362, 0.809981823, 0.939692616, 0.342020124, 0, -0.208208516, 0.572048187, 0.793353736, 0.271342933, -0.745508611, 0.608761013) * ang(0, 0, 0), animspd)
    raw.C0 = clerp(raw.C0, CFrame.new(0.340461493, -0.170115292, 0.809848785, 0.939692974, -0.34201932, 4.22700623e-07, 0.208207637, 0.572048366, 0.793353915, -0.271342605, -0.745508909, 0.608760834) * ang(0, 0, 0), animspd)
    rlw.C0 = clerp(rlw.C0, CFrame.new(-0.271476805, -0.740630507, 0.567320943, 0.976296008, -0.21643962, 0, 0.139124796, 0.627551377, -0.76604414, 0.1658023, 0.747885823, 0.642787993) * ang(0, 0, 0), animspd)
    llw.C0 = clerp(llw.C0, CFrame.new(0.171023369, -0.740502715, 0.56757009, 0.976296365, 0.21643807, 0, -0.139123812, 0.627551615, -0.76604414, -0.165801108, 0.747886121, 0.642788053) * ang(0, 0, 0), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    lrs:wait()
  until State ~= "Idle"
  hum.WalkSpeed = 0
  for i = 0, 1, 0.03 do
    local animspd = 0.2
    torw.C0 = clerp(torw.C0, CFrame.new(0.0734259486, -1.07769084, 0.591883659, 0.921220124, 0.374676734, -0.10474202, -0.159497008, 0.609295309, 0.776736736, 0.354844034, -0.698839426, 0.621054947) * ang(0, 0, 0), animspd)
    hedw.C0 = clerp(hedw.C0, CFrame.new(-0.122578576, -0.0169298649, -0.356238186, 0.991444886, -2.98023224e-08, -0.130526453, -0.0337826014, 0.965926051, -0.256603986, 0.126078874, 0.258818179, 0.957662463) * ang(0, 0, 0), animspd)
    law.C0 = clerp(law.C0, CFrame.new(-0.392519593, -0.30513835, -0.272547394, 0.923879862, 0.38268286, -2.38418579e-07, -0.36964336, 0.89239943, -0.258818567, -0.099045217, 0.239117295, 0.965926051) * ang(0, 0, 0), animspd)
    raw.C0 = clerp(raw.C0, CFrame.new(0.469016552, -0.646901846, -1.26597059, 0.811113179, -0.464953005, 0.354844034, 0.560471714, 0.444404036, -0.698839426, 0.167233378, 0.765717924, 0.621054947) * ang(0, 0, 0), animspd)
    rlw.C0 = clerp(rlw.C0, CFrame.new(-0.359871984, 0.707089186, 0.157295704, 0.921220124, -0.271241635, 0.278893471, 0.374676734, 0.811566949, -0.448304027, -0.10474202, 0.517481565, 0.849259734) * ang(0, 0, 0), animspd)
    llw.C0 = clerp(llw.C0, CFrame.new(0.0101166964, -0.0557525158, -0.912290573, 1.00000012, 2.98023224e-08, 1.49011612e-08, -4.47034836e-08, 0.953716874, 0.30070588, -1.49011612e-08, -0.30070591, 0.953717053) * ang(0, 0, 0), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    lrs:wait()
  end
  ds = false
end
)
  BindKey("Lay Down", "c", function(AttackName, Key)  
  ds = true
  hum.WalkSpeed = 2
  for i = 0, 1, 0.03 do
    local animspd = 0.2
    torw.C0 = clerp(torw.C0, CFrame.new(0.0734259486, -1.07769084, 0.591883659, 0.921220124, 0.374676734, -0.10474202, -0.159497008, 0.609295309, 0.776736736, 0.354844034, -0.698839426, 0.621054947) * ang(0, 0, 0), animspd)
    hedw.C0 = clerp(hedw.C0, CFrame.new(-0.122578576, -0.0169298649, -0.356238186, 0.991444886, -2.98023224e-08, -0.130526453, -0.0337826014, 0.965926051, -0.256603986, 0.126078874, 0.258818179, 0.957662463) * ang(0, 0, 0), animspd)
    law.C0 = clerp(law.C0, CFrame.new(-0.392519593, -0.30513835, -0.272547394, 0.923879862, 0.38268286, -2.38418579e-07, -0.36964336, 0.89239943, -0.258818567, -0.099045217, 0.239117295, 0.965926051) * ang(0, 0, 0), animspd)
    raw.C0 = clerp(raw.C0, CFrame.new(0.469016552, -0.646901846, -1.26597059, 0.811113179, -0.464953005, 0.354844034, 0.560471714, 0.444404036, -0.698839426, 0.167233378, 0.765717924, 0.621054947) * ang(0, 0, 0), animspd)
    rlw.C0 = clerp(rlw.C0, CFrame.new(-0.359871984, 0.707089186, 0.157295704, 0.921220124, -0.271241635, 0.278893471, 0.374676734, 0.811566949, -0.448304027, -0.10474202, 0.517481565, 0.849259734) * ang(0, 0, 0), animspd)
    llw.C0 = clerp(llw.C0, CFrame.new(0.0101166964, -0.0557525158, -0.912290573, 1.00000012, 2.98023224e-08, 1.49011612e-08, -4.47034836e-08, 0.953716874, 0.30070588, -1.49011612e-08, -0.30070591, 0.953717053) * ang(0, 0, 0), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    lrs:wait()
  end
  hum.WalkSpeed = 0
  delay(1.5, function()
    
    hum.WalkSpeed = 8
  end
)
  repeat
    local animspd = 0.2
    torw.C0 = clerp(torw.C0, CFrame.new(0, -2.47821784, 0.499558449, 1, 0, 0, 0, 0.0436210111, -0.999048233, 0, 0.999048233, 0.0436210148) * ang(0, 0, 0), animspd)
    hedw.C0 = clerp(hedw.C0, CFrame.new(0, 0.231482744, 0.17876941, 1, 0, 0, 0, 0.923879504, 0.382683724, 0, -0.382683724, 0.923879504) * ang(0, 0, 0), animspd)
    law.C0 = clerp(law.C0, CFrame.new(0.685811996, 1.17431498, 0.0763368756, 0.923879623, -0.373611987, -0.0828278661, -0.382683128, -0.901980102, -0.199964315, -2.98023224e-08, 0.216439784, -0.976296127) * ang(0, 0, 0), animspd)
    raw.C0 = clerp(raw.C0, CFrame.new(-0.578729153, 0.838823795, 0.111681841, 0.819151878, 0.573576689, -8.70478743e-07, 0.57303077, -0.818372488, -0.0436173975, -0.0250186287, 0.0357287712, -0.999048412) * ang(0, 0, 0), animspd)
    rlw.C0 = clerp(rlw.C0, CFrame.new(0, 0.338772655, -1.24918079, 1, 0, 0, 0, 0.887010515, 0.461749405, 0, -0.461749405, 0.887010515) * ang(0, 0, 0), animspd)
    llw.C0 = clerp(llw.C0, CFrame.new(0, 2.14576721e-06, -4.04566526e-06, 1, 0, 0, 0, 1.00000012, 3.7252903e-09, 0, 3.7252903e-09, 1.00000012) * ang(0, 0, 0), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, -rad(90)), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, rad(90)), animspd)
    lrs:wait()
  until State ~= "Idle"
  hum.WalkSpeed = 0
  for i = 0, 1, 0.03 do
    local animspd = 0.2
    torw.C0 = clerp(torw.C0, CFrame.new(0.0734259486, -1.07769084, 0.591883659, 0.921220124, 0.374676734, -0.10474202, -0.159497008, 0.609295309, 0.776736736, 0.354844034, -0.698839426, 0.621054947) * ang(0, 0, 0), animspd)
    hedw.C0 = clerp(hedw.C0, CFrame.new(-0.122578576, -0.0169298649, -0.356238186, 0.991444886, -2.98023224e-08, -0.130526453, -0.0337826014, 0.965926051, -0.256603986, 0.126078874, 0.258818179, 0.957662463) * ang(0, 0, 0), animspd)
    law.C0 = clerp(law.C0, CFrame.new(-0.392519593, -0.30513835, -0.272547394, 0.923879862, 0.38268286, -2.38418579e-07, -0.36964336, 0.89239943, -0.258818567, -0.099045217, 0.239117295, 0.965926051) * ang(0, 0, 0), animspd)
    raw.C0 = clerp(raw.C0, CFrame.new(0.469016552, -0.646901846, -1.26597059, 0.811113179, -0.464953005, 0.354844034, 0.560471714, 0.444404036, -0.698839426, 0.167233378, 0.765717924, 0.621054947) * ang(0, 0, 0), animspd)
    rlw.C0 = clerp(rlw.C0, CFrame.new(-0.359871984, 0.707089186, 0.157295704, 0.921220124, -0.271241635, 0.278893471, 0.374676734, 0.811566949, -0.448304027, -0.10474202, 0.517481565, 0.849259734) * ang(0, 0, 0), animspd)
    llw.C0 = clerp(llw.C0, CFrame.new(0.0101166964, -0.0557525158, -0.912290573, 1.00000012, 2.98023224e-08, 1.49011612e-08, -4.47034836e-08, 0.953716874, 0.30070588, -1.49011612e-08, -0.30070591, 0.953717053) * ang(0, 0, 0), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    lrs:wait()
  end
  ds = false
end
)
  BindKey("Custom Jump", " ", function(AttackName, Key)
  
  if CanJump == false then
    return 
  end
--[[if not IsLanded then
    return 
  end]]
  CanJump = false
  delay(5, function()
    
    CanJump = true
  end
)
  ds = true
  hum.WalkSpeed = 2
  local s1 = Instance.new("Sound", sp)
  s1.SoundId = "rbxassetid://142070127"
  s1.Pitch = 1.15
  s1.Volume = 1
  local s2 = Instance.new("Sound", sp)
  s2.SoundId = "rbxassetid://157878578"
  s2.Pitch = 1.15
  s2.Volume = 1
  local s3 = Instance.new("Sound", sp)
  s3.SoundId = "rbxassetid://180204562"
  s3.Pitch = 1.15
  s3.Volume = 1
  local s5 = Instance.new("Sound", sp)
  s5.SoundId = "rbxassetid://222942614"
  s5.Pitch = 1
  s5.Volume = 1
  local s4 = Instance.new("Sound", sp)
  s4.SoundId = "rbxassetid://244578911"
  s4.Pitch = 2
  s4.Volume = 0.1
  s4.Looped = true
  wait()
  s3:Play()
  delay(0.5, function()
    
    s4:Play()
  end
)
  local fb = NewFXBox()
  for i = 0, 1, 0.05 do
    local animspd = 0.3
    torw.C0 = clerp(torw.C0, CFrame.new(0, -0.688065529, -0.19135952, 1, 0, 0, 0, 0.9238801, 0.382682055, 0, -0.382682055, 0.9238801) * ang(0, 0, 0), animspd)
    hedw.C0 = clerp(hedw.C0, CFrame.new(0, 0.127452612, 0.203455865, 1, 0, 0, 0, 0.965925694, 0.258819848, 0, -0.258819848, 0.965925694) * ang(0, 0, 0), animspd)
    law.C0 = clerp(law.C0, CFrame.new(0.405900359, 0.622551918, 0.37040484, 0.737276912, -0.675590754, 1.06186019e-06, 0.17485714, 0.19082129, -0.965925574, 0.652570188, 0.712154806, 0.258819938) * ang(0, 0, 0), animspd)
    raw.C0 = clerp(raw.C0, CFrame.new(-9.53674316e-07, 0.0237717628, 0.334566593, 1, 0, 0, 0, 0.819152832, 0.573575437, 0, -0.573575437, 0.819152832) * ang(0, 0, 0), animspd)
    rlw.C0 = clerp(rlw.C0, CFrame.new(0, 0.591989636, 0.139762461, 1, 0, 0, 0, 0.906307757, -0.422618419, 0, 0.422618419, 0.906307757) * ang(0, 0, 0), animspd)
    llw.C0 = clerp(llw.C0, CFrame.new(1.04308128e-06, -0.277914524, -0.890877604, 1, 0, 0, 0, 0.793353081, 0.608761728, 0, -0.608761728, 0.793353081) * ang(0, 0, 0), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, -rad(55), -rad(90)), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    lrs:wait()
  end
  local per = Instance.new("Part", fb)
  per.CanCollide = false
  ReSurface(per, 10)
  per.Transparency = 0.5
  per.Material = "Granite"
  per.Anchored = true
  per.BrickColor = bc("Royal purple")
  per.Size = vec3(4, 0.2, 4)
  per.CFrame = cf(Torso.CFrame.p) * cf(0, -3, 0) * ang(rad(90), 0, 0)
  local me1 = Instance.new("SpecialMesh", per)
  me1.MeshType = "FileMesh"
  me1.MeshId = "rbxassetid://3270017"
  me1.Scale = vec3(1, 1, 1)
  spawn(function()
    
    local mx, it = 1, 0.05
    for i = 0, mx + it, it do
      me1.Scale = me1.Scale + vec3(2, 2, 2)
      per.Transparency = 0.5 + i
      lrs:wait()
    end
  end
)
  s5:Play()
  local bv = Instance.new("BodyVelocity", HumanoidRootPart)
  bv.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
  bv.Velocity = Vector3.new(0, 150, 0)
  spawn(function()
    
    wait()
    bv:Destroy()
  end
)
  hum.WalkSpeed = 250
  local int = 0
  local ting = 0
  do
    do
      for i = 0, 1, 0.05 do
        if i < 0.9 then
          ting = ting + 0.25
          if ting >= 1 then
            ting = 0
            BodyTrail(0, "Magenta")
          end
          local p = Instance.new("Part", fb)
          p.Size = Vector3.new(3, 3, 3)
          local anglez = ang(rad(rand(-360, 360)), rad(rand(-360, 360)), rad(rand(-360, 360)))
          local setp = HumanoidRootPart.CFrame * CFrame.new(0, 2, 0):inverse() * anglez
          p.CFrame = setp
          p.CanCollide = false
          p.Anchored = true
          p.Material = "Granite"
          p.Color = BrickColor.new("Magenta").Color
          game.Debris:AddItem(p, 4)
          spawn(function()
    
    for i = 0, 1, 1 do
      p.Size = p.Size + Vector3.new(0.5, 0.5, 0.5)
      p.CFrame = setp
      p.Transparency = i
      lrs:wait()
    end
    p:Destroy()
  end
)
        end
        do
          int = int + 36
          do
            local animspd = 0.2
            torw.C0 = lerp(torw.C0, cf(0, 0, 0) * ang(0, rad(int), 0), animspd)
            hedw.C0 = clerp(hedw.C0, CFrame.new(0, 0.051027298, -0.188228667, 1, 0, 0, 0, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872) * ang(0, 0, 0), animspd)
            law.C0 = lerp(law.C0, CFrame.new(0.309529305, 0.494719565, 0.188925743, 0.939692855, -0.342019558, -8.41849669e-07, 0.0298099965, 0.081900008, 0.99619472, -0.340717971, -0.936117053, 0.0871564522) * ang(0, 0, 0), animspd)
            raw.C0 = clerp(raw.C0, CFrame.new(-0.485822797, 0.499988556, -0.275978863, 0.923879743, 0.38268292, 0, 0, 0, -1, -0.38268292, 0.923879743, 0) * ang(0, 0, 0), animspd)
            rlw.C0 = clerp(rlw.C0, CFrame.new(-3.09944153e-06, 0.162638426, -1.09523427, 1, 0, 0, 0, 0.906308293, 0.422617137, 0, -0.422617137, 0.906308293) * ang(0, 0, 0), animspd)
            llw.C0 = clerp(llw.C0, CFrame.new(-2.14576721e-06, -0.00759673119, -0.174313933, 1, 0, 0, 0, 0.996194661, 0.0871569663, 0, -0.0871569663, 0.996194661) * ang(0, 0, 0), animspd)
            h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(-rad(90), rad(90), 0) * ang(-rad(45), 0, 0), animspd)
            h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(-rad(90), rad(90), 0) * ang(rad(45), 0, 0), animspd)
            lrs:wait()
            -- DECOMPILER ERROR at PC693: LeaveBlock: unexpected jumping out DO_STMT

          end
        end
      end
    end
    hum.WalkSpeed = 30
    local ting2 = 0
    repeat
      ting2 = ting2 + 0.25
      if ting2 >= 1 then
        ting2 = 0
        BodyTrail(0, "Institutional white")
      end
      local animspd = 0.3
      torw.C0 = lerp(torw.C0, CFrame.new(0, 0, 0) * ang(0, 0, 0), animspd)
      hedw.C0 = clerp(hedw.C0, CFrame.new(0, 0.00565493107, -0.130732462, 1, 0, 0, 0, 0.99619478, -0.0871549696, 0, 0.087154977, 0.99619478) * ang(0, 0, 0), animspd)
      law.C0 = lerp(law.C0, CFrame.new(-1.04904175e-05, 1.15000439, -0.349998474, 1, 0, 0, 0, -0.6755898, -0.737277806, 0, 0.737277806, -0.6755898) * ang(0, 0, 0), animspd)
      raw.C0 = lerp(raw.C0, CFrame.new(-0.000442504883, 1.14998817, -0.350416183, 1, 0, 0, 0, -0.675590217, -0.737277329, 0, 0.737277329, -0.675590217) * ang(0, 0, 0), animspd)
      rlw.C0 = clerp(rlw.C0, CFrame.new(0, 0.374032259, -1.07349765, 1, 0, 0, 0, 0.887011111, 0.461748064, 0, -0.461748064, 0.887011111) * ang(0, 0, 0), animspd)
      llw.C0 = clerp(llw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      lrs:wait()
    until IsLanded == true
    s4:Stop()
    s1:Play()
    s2:Play()
    hum.WalkSpeed = 0
    for Index,Player in next do
      if Player:FindFirstChild("Humanoid") then
        local h = Player.Humanoid
        h.PlatformStand = true
        ypcall(function()
    
    chr.Health:Destroy()
  end
)
        local bv = Instance.new("BodyVelocity", h.Parent.HumanoidRootPart)
        bv.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
        local rn = 60
        bv.Velocity = Vector3.new(rand(-rn, rn), rand(15, 40), rand(-rn, rn))
        spawn(function()
    
    wait()
    bv:Destroy()
  end
)
        local crit = false
        local d = rand()
        if d > 0.85 then
          crit = true
          dot = true
        end
        local damage = rand(25, 35)
        if crit then
          damage = damage + rand(5, 15)
        end
        h.Health = h.Health - (damage) + 2
        showDamage(h.Parent.HumanoidRootPart, tostring(damage), 1, "Royal purple")
        if dot == true then
          spawn(function()
    
    for i = 1, rand(2, 6) do
      h.Health = h.Health - damage / 4 + 2
      showDamage(h.Parent.HumanoidRootPart, "(Dmg Over Time)\n" .. tostring(math.floor(damage / 3)), 0.3, "Toothpaste")
      wait(rand(0.8, 2.5))
    end
  end
)
        end
      end
    end
    spawn(function()
    
    local origin = HumanoidRootPart.CFrame
    for i = 1, 4 do
      local p = Instance.new("Part", fb)
      do
        p.Size = Vector3.new(3, 3, 3)
        local anglez = ang(rad(rand(-360, 360)), rad(rand(-360, 360)), rad(rand(-360, 360)))
        local setp = origin * cf(0, 2, 0):inverse() * anglez
        p.CFrame = setp
        p.CanCollide = false
        p.Anchored = true
        p.Material = "Granite"
        p.Color = BrickColor.new("Magenta").Color
        local otp = p.Touched:connect(function(hit)
      
      if not hit:IsDescendantOf(Character) and not hit.Parent:FindFirstChild("Humanoid") and hit.Name ~= "Base" and hit.Name ~= "Wall" then
        print(hit.Name)
        hit.Anchored = false
        hit:BreakJoints()
        wait()
        local bv = Instance.new("BodyVelocity", hit)
        do
          bv.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
          bv.Velocity = Vector3.new(rand(-150, 150), rand(-150, 150), rand(-150, 150))
          spawn(function()
        
        wait()
        bv:Destroy()
      end
)
        end
      end
    end
)
        spawn(function()
      
      for i = 0, 1.05, 1.05 do
        p.Transparency = i
        p.Size = p.Size + vec3(0.5, 0.5, 0.5)
        p.CFrame = setp * ang(rad(i * 3), rad(i * 3), rad(i * 3))
        lrs:wait()
      end
      otp:disconnect()
      p:Destroy()
    end
)
      end
    end
  end
)
    for i = 0, 1, 0.05 do
      local animspd = 0.2
      torw.C0 = clerp(torw.C0, CFrame.new(-9.53674316e-07, -0.940428734, -0.286800385, 1, 0, 0, 0, 0.819152594, 0.573575675, 0, -0.573575675, 0.819152594) * ang(0, 0, 0), animspd)
      hedw.C0 = clerp(hedw.C0, CFrame.new(0, 0.153496861, 0.154758215, 1, 0, 0, 0, 0.965925753, 0.258819431, 0, -0.258819431, 0.965925753) * ang(0, 0, 0), animspd)
      law.C0 = clerp(law.C0, CFrame.new(-0.000436782837, 1.04063034, -0.613723755, 1, 0, 0, 0, -0.537298799, -0.843392015, 0, 0.843392015, -0.537298799) * ang(0, 0, 0), animspd)
      raw.C0 = clerp(raw.C0, CFrame.new(-0.0504407883, 1.04063225, -0.613725662, 1, 0, 0, 0, -0.537298322, -0.843392372, 0, 0.843392372, -0.537298322) * ang(0, 0, 0), animspd)
      rlw.C0 = clerp(rlw.C0, CFrame.new(0, 0.965613842, 0.123298049, 1, 0, 0, 0, 0.819152594, -0.573575675, 0, 0.573575675, 0.819152594) * ang(0, 0, 0), animspd)
      llw.C0 = clerp(llw.C0, CFrame.new(0, 0.116882801, -1.07864153, 1, 0, 0, 0, 0.843390703, 0.537300885, 0, -0.537300885, 0.843390703) * ang(0, 0, 0), animspd)
      h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      lrs:wait()
    end
    game.Debris:AddItem(fb, 10)
    HandleSP(function(s)
    
    s:Destroy()
  end
)
    ds = false
  end
end
)
  Attack1 = function()
  
  ds = true
  local sw = sounds:swing()
  for i = 0, 1, 0.1 do
    local animspd = 0.5
    torw.C0 = clerp(torw.C0, cf(0, height, 0) * ang(0, rad(55), 0), animspd)
    hedw.C0 = clerp(hedw.C0, cf(0, 0, 0) * ang(0, -rad(55), 0), animspd)
    law.C0 = lerp(law.C0, cf(-rad(25), 0.5, -1) * ang(rad(80), rad(20), -rad(25)), animspd)
    raw.C0 = lerp(raw.C0, cf(rad(12), -0.25, 0.3) * ang(-rad(15), 0, rad(15)), animspd)
    rlw.C0 = clerp(rlw.C0, cf(-rad(4), 0, 0) * ang(0, 0, rad(4)), animspd)
    llw.C0 = clerp(llw.C0, cf(rad(5), 0, 0) * ang(0, 0, -rad(5)), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, rad(0), -rad(90)), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, rad(180), rad(25)), animspd)
    lrs:wait()
  end
  sw:Play()
  local debhet = false
  for i = 0, 1, 0.1 do
    GenTrail(trailbox1.CFrame * cf(0, 1, 0), 30)
    MagDmg(hitbox1, 5, 15, function(chr, h)
    
    if debhet == false then
      debhet = true
      local crit = false
      do
        local d = rand()
        if d > 0.8 then
          crit = true
          dot = true
        end
        delay(0.05, function()
      
      debhet = false
    end
)
        local damage = rand(5, 12)
        h.Health = h.Health - damage + 2
        showDamage(h.Parent, tostring(damage), 1, "Royal purple")
        if dot == true then
          do
            spawn(function()
      
      for i = 1, rand(2, 6) do
        h.Health = h.Health - damage / 4 + 2
        showDamage(h.Parent, "(Dmg Over Time)\n" .. tostring(math.floor(damage / 3)), 0.3, "Toothpaste")
        wait(rand(0.8, 2.5))
      end
    end
)
            -- DECOMPILER ERROR at PC43: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC43: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
)
    local animspd = 0.5
    torw.C0 = clerp(torw.C0, cf(0, height, 0) * ang(0, -rad(55), 0), animspd)
    hedw.C0 = clerp(hedw.C0, cf(0, 0, 0) * ang(0, rad(55), 0), animspd)
    law.C0 = lerp(law.C0, cf(rad(45), 1, 0) * ang(rad(80), rad(20), rad(45)), animspd)
    raw.C0 = lerp(raw.C0, cf(rad(12), -0.25, 0.3) * ang(-rad(15), 0, rad(15)), animspd)
    rlw.C0 = clerp(rlw.C0, cf(-rad(4), 0, 0) * ang(0, 0, rad(4)), animspd)
    llw.C0 = clerp(llw.C0, cf(rad(5), 0, 0) * ang(0, 0, -rad(5)), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, rad(60), -rad(90)), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, rad(195), rad(40)), animspd)
    lrs:wait()
  end
  dkd = false
end

  Attack2 = function()
  
  ds = true
  for i = 0, 1, 0.075 do
    local animspd = 0.3
    torw.C0 = clerp(torw.C0, CFrame.new(0, height + -0.316644907, -0.127640963, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872), animspd)
    hedw.C0 = clerp(hedw.C0, CFrame.new(0, 0.00565731525, -0.13073346, 1, 0, 0, 0, 0.99619478, -0.0871558785, 0, 0.0871558785, 0.99619478), animspd)
    law.C0 = clerp(law.C0, cf(0, 0, 0) * ang(rad(90), -rad(30), rad(30)), animspd)
    raw.C0 = clerp(raw.C0, cf(0, 0, 0) * ang(rad(100), rad(30), -rad(30)), animspd)
    rlw.C0 = clerp(rlw.C0, CFrame.new(0, 0.357986093, -0.299931765, 1, 0, 0, 0, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872), animspd)
    llw.C0 = clerp(llw.C0, CFrame.new(0, -0.220270157, -0.902203202, 1, 0, 0, 0, 0.819152355, 0.573576093, 0, -0.573576093, 0.819152355), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, rad(180), 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, rad(180), 0), animspd)
    lrs:wait()
  end
  HumanoidRootPart.Velocity = HumanoidRootPart.CFrame.lookVector * 50
  delay(0.1, function()
    
    HumanoidRootPart.Velocity = HumanoidRootPart.CFrame.lookVector * 0
  end
)
  local debhet1, debhet = false, false
  hum.WalkSpeed = 5
  for i = 0, 1, 0.075 do
    MagDmg(hitbox1, 5, 8, function(chr, h)
    
    if debhet == false then
      debhet = true
      local crit = false
      do
        local d = rand()
        if d > 0.9 then
          crit = true
          dot = true
        end
        delay(0.2, function()
      
      debhet = false
    end
)
        local damage = rand(12, 18)
        h.Health = h.Health - damage + 2
        showDamage(h.Parent, tostring(damage), 1, "Royal purple")
        if dot == true then
          do
            spawn(function()
      
      for i = 1, rand(2, 6) do
        h.Health = h.Health - damage / 4 + 2
        showDamage(h.Parent, "(Dmg Over Time)\n" .. tostring(math.floor(damage / 3)), 0.3, "Toothpaste")
        wait(rand(0.8, 2.5))
      end
    end
)
            -- DECOMPILER ERROR at PC43: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC43: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
)
    MagDmg(hitbox2, 5, 8, function(chr, h)
    
    if debhet1 == false then
      debhet1 = true
      local crit = false
      do
        local d = rand()
        if d > 0.9 then
          crit = true
          dot = true
        end
        delay(0.2, function()
      
      debhet1 = false
    end
)
        local damage = rand(12, 18)
        h.Health = h.Health - damage + 2
        showDamage(h.Parent, tostring(damage), 1, "Royal purple")
        if dot == true then
          do
            spawn(function()
      
      for i = 1, rand(2, 6) do
        h.Health = h.Health - damage / 4 + 2
        showDamage(h.Parent, "(Dmg Over Time)\n" .. tostring(math.floor(damage / 3)), 0.3, "Toothpaste")
        wait(rand(0.8, 2.5))
      end
    end
)
            -- DECOMPILER ERROR at PC43: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC43: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
)
    local animspd = 0.3
    torw.C0 = clerp(torw.C0, CFrame.new(0, height + -0.316644907, -0.127640963, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872), animspd)
    hedw.C0 = clerp(hedw.C0, CFrame.new(0, 0.00565731525, -0.13073346, 1, 0, 0, 0, 0.99619478, -0.0871558785, 0, 0.0871558785, 0.99619478), animspd)
    law.C0 = lerp(law.C0, CFrame.new(-0.238501668, -0.489723861, -0.596781075, 0.907673419, 0.258819282, -0.330365866, -0.412760526, 0.408217788, -0.814240098, -0.0758797824, 0.875426173, 0.477358788), animspd)
    raw.C0 = lerp(raw.C0, CFrame.new(0.338492751, -0.393148661, -0.570888698, 0.907674551, -0.258814812, 0.330366135, 0.412759483, 0.408227324, -0.814236045, 0.0758718997, 0.875423074, 0.477365732), animspd)
    rlw.C0 = clerp(rlw.C0, CFrame.new(0, 0.238677025, 0.0656869411, 1, 0, 0, 0, 0.819152296, -0.573576212, 0, 0.573576212, 0.819152296), animspd)
    llw.C0 = clerp(llw.C0, CFrame.new(0, -0.220270157, -0.902203202, 1, 0, 0, 0, 0.819152355, 0.573576093, 0, -0.573576093, 0.819152355), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, rad(120), 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, rad(120), 0), animspd)
    lrs:wait()
  end
  dkd = false
end

  Attack3 = function()
  
  dkd = true
  for i = 0, 1, 0.05 do
    local animspd = 0.35
    torw.C0 = clerp(torw.C0, CFrame.new(-3.81469727e-06, height + 0, 8.10623169e-06, 0.76604414, 0, -0.642788053, 0, 1, 0, 0.642788053, 0, 0.76604414), animspd)
    hedw.C0 = clerp(hedw.C0, CFrame.new(0, -7.91549683e-05, 0, 0.76604414, 0, 0.642788053, 0, 1, 0, -0.642788053, 0, 0.76604414), animspd)
    law.C0 = clerp(law.C0, CFrame.new(-0.231363416, -0.313025355, -0.0123214126, 0.939692736, 0.342020154, -1.51991844e-06, -0.342020124, 0.939692676, -2.54413351e-07, 1.31130219e-06, 7.4505806e-07, 1.00000012), animspd)
    raw.C0 = clerp(raw.C0, CFrame.new(0.774468005, 1.68742216, -1.05526197, 0.526540399, -0.554391623, 0.644519508, -0.39162308, -0.831067145, -0.394916266, 0.754577219, -0.0444693267, -0.654702842), animspd)
    rlw.C0 = clerp(rlw.C0, CFrame.new(-4.82797623e-06, 1.90734863e-05, 9.53674316e-07, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012), animspd)
    llw.C0 = clerp(llw.C0, CFrame.new(0.242321491, -0.181349516, -0.62571007, 0.977650642, 0.126749054, 0.167731822, -0.167730987, 0.951251507, 0.258818567, -0.126750082, -0.281167984, 0.951251388), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, rad(90)), animspd)
    lrs:wait()
  end
  for i = 0, 1, 0.075 do
    MagDmg(hitbox2, 5, 8, function(chr, h)
    
    if debhet1 == false then
      debhet1 = true
      local crit = false
      do
        local d = rand()
        if d > 0.9 then
          crit = true
          dot = true
        end
        delay(0.2, function()
      
      debhet1 = false
    end
)
        local damage = rand(12, 18)
        h.Health = h.Health - damage + 2
        showDamage(h.Parent, tostring(damage), 1, "Royal purple")
        if dot == true then
          do
            spawn(function()
      
      for i = 1, rand(2, 6) do
        h.Health = h.Health - damage / 4 + 2
        showDamage(h.Parent, "(Dmg Over Time)\n" .. tostring(math.floor(damage / 3)), 0.3, "Toothpaste")
        wait(rand(0.8, 2.5))
      end
    end
)
            -- DECOMPILER ERROR at PC42: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC42: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
)
    local animspd = 0.35
    torw.C0 = clerp(torw.C0, CFrame.new(-0.0466222763, height + -0.690346003, -0.282869935, 0.984836638, -0.09323778, 0.146299437, -0.0075959973, 0.819316864, 0.573290706, -0.173317939, -0.565708995, 0.806185007), animspd)
    hedw.C0 = clerp(hedw.C0, CFrame.new(0.0227015726, 0.0227335691, -0.259479046, 0.99619472, -0.015133746, -0.0858321339, -8.30739737e-07, 0.98480767, -0.173649102, 0.0871561095, 0.172988325, 0.981060147), animspd)
    law.C0 = clerp(law.C0, CFrame.new(-0.423365831, -0.805190384, 0.442436278, 0.749662578, 0.630910277, 0.199895933, -0.65233624, 0.653458774, 0.383991092, 0.111640185, -0.418263078, 0.90143919), animspd)
    raw.C0 = clerp(raw.C0, CFrame.new(0.0403805971, 0.54813695, -0.608423054, 0.984808505, -0.0735414475, -0.157301858, -0.0996458605, 0.502540171, -0.858792305, 0.142207339, 0.861420274, 0.487577677), animspd)
    rlw.C0 = clerp(rlw.C0, CFrame.new(0.130929023, -0.107013583, -0.285914183, 0.984808505, 0.132908016, -0.111748315, -0.0996458605, 0.959596634, 0.263144672, 0.142207339, -0.248011827, 0.958262563), animspd)
    llw.C0 = clerp(llw.C0, CFrame.new(0.0952451527, 0.272332788, 0.228919625, 0.984808505, -0.0153057612, -0.172968075, -0.0996458605, 0.765958309, -0.635121047, 0.142207339, 0.642708182, 0.752797008), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, rad(135), 0), 1)
    lrs:wait()
  end
  dkd = false
end

  Attack4 = function()
  
  dkd = true
  for i = 0, 1, 0.025 do
    local animspd = 0.15
    torw.C0 = clerp(torw.C0, CFrame.new(-0.0466222763, height + -0.690346003, -0.282869577, 0.984836638, -0.09323778, 0.146299437, -0.0075959973, 0.819316864, 0.573290706, -0.173317939, -0.565708995, 0.806185007), animspd)
    hedw.C0 = clerp(hedw.C0, CFrame.new(0.0227025263, 0.0227332115, -0.25947845, 0.99619472, -0.015133746, -0.0858321339, -8.30739737e-07, 0.98480767, -0.173649102, 0.0871561095, 0.172988325, 0.981060147), animspd)
    law.C0 = clerp(law.C0, CFrame.new(0.0528661013, 0.335999966, -0.483066082, 0.928495824, -0.224704504, -0.295640707, -0.344109386, -0.221375376, -0.912459195, 0.139586136, 0.948947251, -0.282869011), animspd)
    raw.C0 = clerp(raw.C0, CFrame.new(0.135996819, -0.360626996, 0.131640285, 0.959433854, -0.180004746, -0.216991097, 0.246674418, 0.908648968, 0.336910933, 0.136523187, -0.376769871, 0.916190982), animspd)
    rlw.C0 = clerp(rlw.C0, CFrame.new(0.130929977, -0.107013106, -0.285915136, 0.984808505, 0.132908016, -0.111748315, -0.0996458605, 0.959596634, 0.263144672, 0.142207339, -0.248011827, 0.958262563), animspd)
    llw.C0 = clerp(llw.C0, CFrame.new(0.0952461064, 0.272332549, 0.228919744, 0.984808505, -0.0153057612, -0.172968075, -0.0996458605, 0.765958309, -0.635121047, 0.142207339, 0.642708182, 0.752797008), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    lrs:wait()
  end
  height = 14
  local bp = nil
  local debhet1 = false
  for i = 0, 1, 0.05 do
    MagDmg(hitbox1, 8, 0, function(chr, h)
    
    if debhet1 == false then
      debhet1 = true
      warn("k")
      bp = Instance.new("BodyPosition", chr.HumanoidRootPart)
      bp.Position = HumanoidRootPart.CFrame * cf(0, height, -3).p
      bp.MaxForce = vec3(9000000000, 9000000000, 9000000000)
      bp.P = 10000
      bp.D = 300
      delay(1, function()
      
      debhet1 = false
    end
)
    end
  end
)
    local animspd = 0.2
    torw.C0 = clerp(torw.C0, CFrame.new(-0.0466208458, height + 0.409653425, 0.117130518, 1, 0, 0, 0, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872), animspd)
    hedw.C0 = clerp(hedw.C0, CFrame.new(-0.00449903309, -0.0233068466, 0.0928348526, 0.999496222, -0.0235671494, 0.0212592408, 0.0217354894, 0.99634409, 0.082620576, -0.0231286511, -0.0821168572, 0.996354342), animspd)
    law.C0 = clerp(law.C0, CFrame.new(0.150065541, 0.380384982, -0.504315972, 0.966921747, -0.229312122, -0.111706652, -0.163986176, -0.223409697, -0.960831404, 0.195373923, 0.947366953, -0.253623724), animspd)
    raw.C0 = clerp(raw.C0, CFrame.new(0.556985497, -0.373821795, 0.787944138, 0.828413546, -0.559688926, 0.0218946207, 0.421200305, 0.648246408, 0.634324133, -0.369217277, -0.516260624, 0.772757173), animspd)
    rlw.C0 = clerp(rlw.C0, CFrame.new(-0.0711208582, 0.0647822618, -0.705621958, 0.99681288, -0.0797582269, 0.00164395967, 0.0682673156, 0.863500178, 0.499706984, -0.0412752926, -0.498002112, 0.866192997), animspd)
    llw.C0 = clerp(llw.C0, CFrame.new(0.101902485, 0.00366866589, -0.193562478, 0.999971092, 0.00753792096, -0.000994257745, -0.00725150481, 0.984837651, 0.173327416, 0.00228571077, -0.173315212, 0.984863758), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, rad(175), 0), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
    lrs:wait()
  end
  Humanoid.WalkSpeed = 1
  dkd = false
  print("press an attack button to attack mid-air")
  wait(0.75)
  repeat
    lrs:wait()
  until dkd == false
  height = 0
  warn("ended")
  pcall(function()
    
    bp.P = 0
    bp.D = 0
    bp.MaxForce = vec3(0, 0, 0)
    bp.Parent = workspace
  end
)
end

  local ComboResetTime, canatk = 0.3, true
  local combo = 0
  ComboUp = function()
  
  if dkd == true then
    return 
  end
  if combo == 0 and canatk == true then
    canatk = false
    Attack1()
    combo = 1
    canatk = true
    spawn(function()
    
    ds = true
    wait(ComboResetTime)
    if canatk == true then
      ds = false
    end
    if combo == 1 and not ds then
      combo = 0
      print("combo reset")
    end
  end
)
    return 
  end
  if combo == 1 and canatk == true then
    canatk = false
    Attack2()
    combo = 2
    canatk = true
    spawn(function()
    
    ds = true
    wait(ComboResetTime)
    if canatk == true then
      ds = false
    end
    if combo == 2 and not ds then
      combo = 0
      print("combo reset")
    end
  end
)
    return 
  end
  if combo == 2 and canatk == true then
    canatk = false
    Attack3()
    combo = 3
    canatk = true
    spawn(function()
    
    ds = true
    wait(ComboResetTime)
    if canatk == true then
      ds = false
    end
    if combo == 3 and not ds then
      combo = 0
      print("combo reset")
    end
  end
)
    return 
  end
  if combo == 3 and canatk == true then
    canatk = false
    Attack4()
    combo = 0
    wait(ComboResetTime)
    canatk = true
    spawn(function()
    
    if canatk == true then
      ds = false
    end
    wait(ComboResetTime / 4)
    if combo == 0 and not ds then
      combo = 0
      print("combo reset")
    end
  end
)
    return 
  end
end

  mouse.Button1Down:connect(function()
  
  ComboUp()
end
)
  LookAround_AFKAnim = function()
  
  ds = true
  for i = 0, 1, 0.05 do
    torw.C0 = lerp(torw.C0, cf(0, 0, 0) * ang(-rad(0), -rad(65), 0), 0.125)
    hedw.C0 = clerp(hedw.C0, cf(0, 0, -rad(9)) * ang(rad(9), rad(65), 0) * eu(-rad(8), 0, 0), 0.125)
    raw.C0 = lerp(raw.C0, cf(0, 0.5, 0.25) * ang(rad(90), 0, -rad(65)), animspd)
    law.C0 = lerp(law.C0, cf(-0.65, 0.5, -1) * ang(rad(90), 0, -rad(32.5)), animspd)
    rlw.C0 = clerp(rlw.C0, cf(-0.2, -0.15, 0) * ang(0, 0, rad(12.5)), animspd)
    llw.C0 = clerp(llw.C0, cf(0, 0, -0.35) * ang(0, rad(32.5), -rad(5)), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, -rad(45), -rad(55)), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, -rad(55), rad(45)), animspd)
    lrs:wait()
  end
  for i = 0, 1, 0.05 do
    torw.C0 = lerp(torw.C0, cf(0, 0, 0) * ang(-rad(0), -rad(65), 0), 0.125)
    hedw.C0 = clerp(hedw.C0, cf(0, 0, -rad(9)) * ang(rad(9), rad(65), 0) * eu(-rad(8), 0, 0), 0.125)
    raw.C0 = lerp(raw.C0, cf(0, 0.5, 0.25) * ang(rad(90), 0, -rad(65)), animspd)
    law.C0 = lerp(law.C0, cf(-0.65, 0.5, -1) * ang(rad(90), 0, -rad(32.5)), animspd)
    rlw.C0 = clerp(rlw.C0, cf(-0.2, -0.15, 0) * ang(0, 0, rad(12.5)), animspd)
    llw.C0 = clerp(llw.C0, cf(0, 0, -0.35) * ang(0, rad(32.5), -rad(5)), animspd)
    h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, -rad(45), -rad(55)), animspd)
    h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, -rad(55), rad(45)), animspd)
    lrs:wait()
  end
  ds = false
end

  Fiddle_AKFAnim = function()
  
  print("Fiddle Played")
end

  hum.MaxHealth = 200
  wait(0.1)
  hum.Health = 200
  HumanoidRootPart.Transparency = 1
  lrs:connect(function()
  hum.MaxHealth = OverallHealth
  if torso.CFrame.Y < -40 then
    torso.CFrame = CFrame.new(math.random(-100, 100), 10, math.random(-100, 100))
  end
  local tmag_y = torso.Velocity.Y
  local trot = torso.RotVelocity.Y / 50
  local cap = 2
  sine = sine + change
  Char.Humanoid.FreeFalling:connect(function(FF)
    if DebounceFallin == true then
      return 
    end
    if FF then
      FreeFalling = true
    else
      FreeFalling = false
    end
  end)
    hum.JumpPower = 0
    hum.WalkSpeed = 9
    if ds then
      return 
    end
  if FreeFalling == true and DebounceState == false and ds == false then
    State = "FreeFalling"
  else
    if (torso.Velocity * Vector3.new(1, 1, 1)).magnitude < 5 and DebounceState == false and ds == false then
      State = "Idle"
    else
      if (torso.Velocity * Vector3.new(1, 1, 1)).magnitude > 6 and DebounceState == false and ds == false then
        State = "Walking"
      else
        if Attacking == true then
          State = "Attacking"
        else
          if DebounceState == true or ds == true then
            State = "Debouncing"
          end
        end
      end
    end
  end
  if State == "FreeFalling" then
    change = 2
      local animspd = 0.1
      torw.C0 = clerp(torw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      hedw.C0 = clerp(hedw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      law.C0 = clerp(law.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      raw.C0 = clerp(raw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      rlw.C0 = clerp(rlw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      llw.C0 = clerp(llw.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
      h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, 0, 0), animspd)
  else
    if State == "Idle" then
            local animspd = 0.2
            local change = 1.25
            torw.C0 = lerp(torw.C0, cf(0, sin(sine / 15) / 25, 0) * ang(-rad(0), -rad(65), cos(sine / 15) / 30), 0.125)
            hedw.C0 = clerp(hedw.C0, cf(-cos(sine / 15) / 20, 0, -rad(9) + -cos(sine / 15) / 40) * ang(rad(9), rad(65), 0) * eu(-rad(8) + cos(sine / 15) / 20, 0, 0), 0.125)
            raw.C0 = lerp(raw.C0, cf(0, 0.5 + sin(sine / 15) / 12, 0.25) * ang(rad(90), -sin(sine / 15) / 12, -rad(65)), animspd)
            law.C0 = lerp(law.C0, cf(-0.65, 0.5 + sin(sine / 15) / 12, -1) * ang(rad(90), 0, -rad(32.5)), animspd)
            rlw.C0 = clerp(rlw.C0, cf(-0.2, -0.15 + -sin(sine / 15) / 25, 0) * ang(0, 0, rad(12.5) + -cos(sine / 15) / 30), animspd)
            llw.C0 = clerp(llw.C0, cf(0, -sin(sine / 15) / 25, -0.35) * ang(0, rad(32.5), -rad(5) + -cos(sine / 15) / 30), animspd)
            h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(0, -rad(45), -rad(55)), animspd)
            h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(0, -rad(55), rad(45)), animspd)
    else
      if State == "Walking" then
                          local animspd = 0.1
                          change = 1.35
                          torw.C0 = lerp(torw.C0, cf(trot * 8, cos(sine / 3) / 8, 0) * ang(-rad(10) + cos(sine / 3) / 8, cos(sine / 6) / 8, trot), animspd)
                          hedw.C0 = clerp(hedw.C0, cf(0, 0, -0.2 + cos(sine / 3) / 8) * ang(rad(10) + -cos(sine / 3) / 8, trot + -cos(sine / 6) / 8, 0), animspd)
                          law.C0 = lerp(law.C0, cf(-0.25, -0.3, -cos(sine / 6) / 3) * ang(cos(sine / 6) / 3, 0, -rad(20)), animspd)
                          raw.C0 = lerp(raw.C0, cf(0.5, 0.25 + cos(sine / 3) / 8, -1.25) * ang(rad(80) + cos(sine / 3) / 8, rad(7), rad(35)), animspd)
                          rlw.C0 = clerp(rlw.C0, cf(-0.034, -sin(sine / 6) / 4, -0.4 + -cos(sine / 6) / 2 + sin(sine / 6) / 2) * ang(-rad(5) + sin(sine / 6) / 3, -cos(sine / 6) / 8, rad(2)), animspd)
                          llw.C0 = clerp(llw.C0, cf(0.034, sin(sine / 6) / 4, -0.4 + cos(sine / 6) / 2 + -sin(sine / 6) / 2) * ang(-rad(5) + -sin(sine / 6) / 3, -cos(sine / 6) / 8, -rad(2)), animspd)
                          h1w.C0 = lerp(h1w.C0, cf(0, 0, 0) * ang(-rad(15), -rad(30), rad(15)), animspd)
                          h2w.C0 = lerp(h2w.C0, cf(0, 0, 0) * ang(rad(15), rad(245), -rad(7)), animspd)
      end
    end
  end
  if State == "Attacking" then
  end
end)
end

--// Credits to Mizt for this AMAZING alignment script :> //--
local alignchar = game:GetService("Players").LocalPlayer.Character
local hhat = alignchar['Blue Eternal Slayer']
local hhat2 = alignchar['Red Eternal Slayer']

local Count = 1
function AlignCharacter(Part0,Part1,Position,Angle)
    local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..Count
    AlignPos.ApplyAtCenterOfMass = true;
    AlignPos.MaxForce = 5772000--67752;
    AlignPos.MaxVelocity = math.huge/9e110;
    AlignPos.ReactionForceEnabled = false;
    AlignPos.Responsiveness = 200;
    AlignPos.RigidityEnabled = false;
    local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..Count
    AlignOri.MaxAngularVelocity = math.huge/9e110;
    AlignOri.MaxTorque = 5772000
    AlignOri.PrimaryAxisOnly = false;
    AlignOri.ReactionTorqueEnabled = false;
    AlignOri.Responsiveness = 200;
    AlignOri.RigidityEnabled = false;
    local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "AthP_"..Count
    local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "AthP_"..Count
    local AttachmentC=Instance.new('Attachment',Part1); AttachmentC.Name = "AthO_"..Count
    local AttachmentD=Instance.new('Attachment',Part0); AttachmentD.Name = "AthO_"..Count
    AttachmentC.Orientation = Angle
    AttachmentA.Position = Position
    AlignPos.Attachment1 = AttachmentA;
    AlignPos.Attachment0 = AttachmentB;
    AlignOri.Attachment1 = AttachmentC;
    AlignOri.Attachment0 = AttachmentD;
    Count = Count + 1
end

hhat.Handle.AccessoryWeld:Destroy()
hhat2.Handle.AccessoryWeld:Destroy()
AlignCharacter(hhat.Handle,alignchar.Dummy.Dummy['Blade_'].Handle,Vector3.new(2.5,0,0),Vector3.new(-90,-90,0))
AlignCharacter(hhat2.Handle,alignchar.Dummy.Dummy['blade_2'].Handle,Vector3.new(2.5,0,0),Vector3.new(-90,-90,0))

for _,v in pairs(alignchar.Dummy.Dummy['Blade_']:GetChildren()) do
	if v:IsA("BasePart") then
		v.Transparency = 1
	end
end

for _,v in pairs(alignchar.Dummy.Dummy['blade_2']:GetChildren()) do
	if v:IsA("BasePart") then
		v.Transparency = 1
	end
end

print("Full Power: Lucifer Awakened")
print("----Controls----")
print 'Backflip Slash - Q'
print 'Blade Spear - F (WIP do not use)'
print 'Blade Berserk - E'
print 'Sit - Z'
print 'Ground Breaker - X (WIP)'
print 'Lie Down - C'
print 'Void Blast - R (WIP)'
print 'Working on issue with custom jump'