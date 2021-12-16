--[[
Jump in the CAAC
by EthanHong0407

why the hell did i make this
i dont even know anymore
]]

print("> Running Jump In The CAAC By EthanHong0407")

local plr = game.Players.LocalPlayer
local char = plr.Character.Dummy.Dummy
local hum = char:FindFirstChildOfClass("Humanoid")
local t = tick()
local action = ""
local torsorot = 0
if hum:FindFirstChild("Animator") then
hum.Animator:Destroy()
end

hum.WalkSpeed = 0


local song = Instance.new("Sound", char)
song.SoundId = "rbxassetid://1883633498"
song.Volume = 1
song.TimePosition = 3
song:Play()
function createJoint(wp0, wp1, wc0x, wc0y, wc0z, wc1x, wc1y, wc1z, name)
	local joint = Instance.new("Motor6D", wp0)
	joint.Part0 = wp0
	joint.Part1 = wp1
	joint.C0 = CFrame.new(wc0x, wc0y, wc0z)
        joint.C1 = CFrame.new(wc1x, wc1y, wc1z)
        joint.Name = name
	return joint
end

local RS = createJoint(char.Torso, char["Right Arm"], 1.5, 0.5, 0, 0, 0.5, 0, "Right Shoulder")
local TS = createJoint(char.HumanoidRootPart, char.Torso, 0, 0, 0, 0, 0, 0, "RootJoint")
local LS = createJoint(char.Torso, char["Left Arm"], -1.5, 0.5, 0, 0, 0.5, 0, "Left Shoulder")
local RH = createJoint(char.Torso, char["Right Leg"], 0.5, -1, 0, 0, 1, 0, "Right Hip")
local LH = createJoint(char.Torso, char["Left Leg"], -0.5, -1, 0, 0, 1, 0, "Left Hip")
local NK = createJoint(char.Torso, char.Head, 0, 1, 0, 0, -1/2, 0, "Neck")

local rsc0 = RS.C0
local lsc0 = LS.C0
local tsc0 = TS.C0
local rhc0 = RH.C0
local lhc0 = LH.C0
local nkc0 = NK.C0

local gun = Instance.new("Part", char)
gun.Size = Vector3.new(1, 1, 1)
gun.Anchored = false
gun.CFrame = CFrame.new(0, 10, 0)
gun.BrickColor = BrickColor.new("Black")
gun:BreakJoints()
local gunMesh = Instance.new("SpecialMesh", gun)
gunMesh.MeshId = "rbxassetid://430697201"
gunMesh.Scale = Vector3.new(1, 1, 1)

local gunWeld = Instance.new("Weld", gun)
gunWeld.Part0 = char["Right Arm"]
gunWeld.Part1 = gun
gunWeld.C0 = CFrame.new(0, -1.2, -0.3) * CFrame.Angles(0, 0, math.rad(90))
* CFrame.Angles(math.rad(-90), 0, 0)
* CFrame.Angles(0, math.rad(180), 0)


TS.C0 = CFrame.new(0, 10000, 0)
game:GetService("RunService").RenderStepped:connect(function()
t = t + 0.5
if action == "IGotAGun" then
local speed = 0.3
torsorot = torsorot + 45
NK.C0 = NK.C0:lerp(nkc0, speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(math.rad(torsorot), 0, 0)
* CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(90), 0, 0), speed)
LS.C0 = LS.C0:lerp(lsc0 *  CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(-5), 0, math.rad(5)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
elseif action == "IGotAGun2" then
local speed = 0.3

NK.C0 = NK.C0:lerp(nkc0, speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(0, 0, 0)
* CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(90), 0, 0), speed)
LS.C0 = LS.C0:lerp(lsc0 *  CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(-5), 0, math.rad(5)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
elseif action == "CoufCouf" then
local speed = 1
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360))), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.Angles(math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360))), speed)
LS.C0 = LS.C0:lerp(lsc0 * CFrame.Angles(math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360))), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.Angles(math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360))), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.Angles(math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360))), speed)
elseif action == "Sleep" then
local speed = 1 
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(0, math.rad(10), 0), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.new(0, -0.5, 1) 
* CFrame.Angles(math.rad(90), 0, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.Angles(0, 0, math.rad(60)), speed)
LS.C0 = LS.C0:lerp(lsc0 * CFrame.Angles(0, 0, math.rad(-45)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.Angles(0, 0, math.rad(20)), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.Angles(0, 0, math.rad(-40)), speed)
elseif action == "WakeUp" then
local speed = 0.3
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(math.rad(-10), 0, 0), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.new(0, 0, 0.5), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.Angles(0, 0, math.rad(-20)), speed)
LS.C0 = LS.C0:lerp(lsc0 * CFrame.Angles(0, 0, math.rad(20)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.Angles(math.rad(90), 0, math.rad(20)), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.Angles(math.rad(90), 0, math.rad(-20)), speed)
elseif action == "Whehw" then
local speed = 1
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.new(0, 0, 0.5), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
LS.C0 = LS.C0:lerp(lsc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.Angles(math.rad(90), 0, math.rad(20)), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.Angles(math.rad(90), 0, math.rad(-20)), speed)
elseif action == "Julioliolio" then
local speed = 1
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
LS.C0 = LS.C0:lerp(lsc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
elseif action == "ICan" then
local speed = 1
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(0, math.rad(20), 0), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(0, math.rad(-20), 0)
* CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(-5), 0, 0), speed)
LS.C0 = LS.C0:lerp(lsc0 *  CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(90), 0, math.rad(-5)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
elseif action == "ICan2" then
local speed = 0.4
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(0, math.rad(20), 0), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(0, math.rad(-20), 0)
* CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(-5), 0, 0), speed)
LS.C0 = LS.C0:lerp(lsc0 *  CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(90), 0, math.rad(-5)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
elseif action == "ICant" then
local speed = 0.4
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(0, math.rad(20), 0), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(0, math.rad(-20), 0)
* CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(-5), 0, 0), speed)
LS.C0 = LS.C0:lerp(lsc0 *  CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(90), 0, math.rad(-70)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
elseif action == "BabyJeans" then
NK.C0 = nkc0
TS.C0 = tsc0 * CFrame.new(0, 8, 0)
LS.C0 = lsc0
RS.C0 = rsc0
LH.C0 = lhc0
RH.C0 = rhc0
elseif action == "YouAndYour" then
local speed = 1
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(0, -math.rad(20), 0), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(0, math.rad(20), 0)
* CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(90), 0, math.rad(20)), speed)
LS.C0 = LS.C0:lerp(lsc0 *  CFrame.new(0, math.sin(t/5)/10/2, 0), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
elseif action == "Painis" then
local speed = 0.4
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(math.rad(-20), 0, 0), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(0, 0, 0)
* CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.new(-0.5, -0.1, 0)
 * CFrame.Angles(math.rad(10), 0, math.rad(-45)), speed)
LS.C0 = LS.C0:lerp(lsc0 * CFrame.new(0.5, -0.1, 0)
* CFrame.Angles(math.rad(10), 0, math.rad(45)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
elseif action == "Impoopments" then
local speed = 1
NK.C0 = NK.C0:lerp(nkc0, speed)
TS.C0 = TS.C0:lerp(tsc0, speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.Angles(math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360))), speed)
LS.C0 = LS.C0:lerp(lsc0 * CFrame.Angles(math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360))), speed)
RH.C0 = RH.C0:lerp(rhc0, speed)
LH.C0 = LH.C0:lerp(lhc0, speed)
elseif action == "Normal" then
local speed = 1
NK.C0 = nkc0
TS.C0 = tsc0
LS.C0 = lsc0
RS.C0 = rsc0
LH.C0 = lhc0
RH.C0 = rhc0
elseif action == "Jooj" then
NK.C0 = nkc0 * CFrame.new(math.random(-10, 10)/10, math.random(-10, 10)/10, math.random(-10, 10)/10)
TS.C0 = tsc0 * CFrame.new(math.random(-10, 10)/10, math.random(-10, 10)/10, math.random(-10, 10)/10)
LS.C0 = lsc0 * CFrame.new(math.random(-10, 10)/10, math.random(-10, 10)/10, math.random(-10, 10)/10)
LH.C0 = lhc0 * CFrame.new(math.random(-10, 10)/10, math.random(-10, 10)/10, math.random(-10, 10)/10)
RS.C0 = rsc0 * CFrame.new(math.random(-10, 10)/10, math.random(-10, 10)/10, math.random(-10, 10)/10)
RH.C0 = rhc0 * CFrame.new(math.random(-10, 10)/10, math.random(-10, 10)/10, math.random(-10, 10)/10)
elseif action == "Upsidedown" then
local speed = 1
NK.C0 = nkc0
TS.C0 = tsc0 * CFrame.Angles(0, 0, math.rad(180))
LS.C0 = lsc0
RS.C0 = rsc0
LH.C0 = lhc0
RH.C0 = rhc0
elseif action == "CAAC" then
local speed = 0.1
NK.C0 = nkc0
TS.C0 = TS.C0:lerp(tsc0 * CFrame.new(0, 4, 0), speed)
LS.C0 = lsc0
RS.C0 = rsc0
LH.C0 = lhc0
RH.C0 = rhc0
end
end)


action = "IGotAGun"
wait(0.5)
action = "IGotAGun2"
wait(2.9)
action = "CoufCouf"
local part = Instance.new("Part", char)
part.Anchored = true
part.Material = "Neon"
part.BrickColor = BrickColor.new("New Yeller")
part.CanCollide = false
part.Size = Vector3.new(0.1, 0.1, 10000)
for i = 1, 16 do


part.CFrame = CFrame.new(char.HumanoidRootPart.Position, Vector3.new(math.random(-100, 100), math.random(-100, 100),math.random(-100, 100))) 
wait(0.5/16)

end
part:Destroy()
gun:Destroy()
local bed = Instance.new("Part", char)
bed.Anchored = false
bed.CanCollide = false
bed.Size = Vector3.new(4, 8, 2)
bed:BreakJoints()
local bedmesh = Instance.new("SpecialMesh", bed)
bedmesh.Scale = Vector3.new(0.4, 0.5, 0.4)
bedmesh.MeshId = "rbxassetid://473508427"
bedmesh.TextureId = "rbxassetid://473508936"
local bedweld = Instance.new("Weld", bed)
bedweld.Part0 = char.HumanoidRootPart
bedweld.Part1 = bed
bedweld.C0 = CFrame.new(0, -1.35, 1) * CFrame.Angles(0, math.rad(-180), 0)
* CFrame.Angles(math.rad(-90), 0, 0)
action = "Sleep"
wait(0.25)
action = "WakeUp"
wait(0.5)
action = "Whehw"
wait(0.7)
action = "Julioliolio"
for i = 1, 16 do
bedweld.C0 = CFrame.new(0, -1.35, 1) * CFrame.Angles(0, math.rad(-180), 0)
* CFrame.Angles(math.rad(-90) + math.random(-360, 360), math.random(-360, 360), math.random(-360, 360))
wait(1/16)
end
bed:Destroy()
action = "ICan"
wait(0.2)
action = "ICant"
wait(0.25)
action = "ICan2"
wait(0.2)
action = "ICant"
wait(0.35)
action = "BabyJeans"
local baby = Instance.new("Part", char)
baby.Size = Vector3.new(2, 2, 1)
baby.Anchored = false
baby.CanCollide = false
baby:BreakJoints()

local baby2 = Instance.new("SpecialMesh", baby)
baby2.MeshId = "rbxassetid://430300723"
baby2.Scale = Vector3.new(5, 5, 5)
baby2.TextureId = "rbxassetid://430300725"

local babyweld = Instance.new("Weld", baby)
babyweld.Part0 = char.Torso
babyweld.Part1 = baby
babyweld.C0 = CFrame.new(0, -1, 0) 
* CFrame.Angles(0, math.rad(180), 0)
wait(0.5)
baby2.TextureId = "rbxassetid://140688857"
wait(1.1)
baby:Destroy()
action = "YouAndYour"
wait(0.5)
action = "Painis"
wait(0.4)
action = "Impoopments"
wait(1)

local pp = Instance.new("Part", char)
pp.Size = Vector3.new(1, 1, 1)
pp.Anchored = true
pp.CanCollide = false
pp.BrickColor = char.Torso.BrickColor
pp:BreakJoints()
pp.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -1, 0)

for i = 1, 20 do
pp.Size = pp.Size + Vector3.new(0, 0, 2)
pp.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -1, -i)
wait(0.5/20)
end
pp:Destroy()
action = "Jooj"
wait(1.7)
action = "Normal"
wait(0.5)
action = "Upsidedown"
wait(0.5)
action = "Normal"
TS.C0 = tsc0 * CFrame.new(0, 10, 0)
local caac = Instance.new("Part", char)
caac.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -1, 0)
caac.Anchored = true
caac.CanCollide = true
caac.Size = Vector3.new(8, 4, 1)
caac:BreakJoints()
local caactext = Instance.new("SurfaceGui", caac)
caactext.Adornee = caac
local caactext2 = Instance.new("TextLabel", caactext)
caactext2.Size = UDim2.new(1, 0, 1, 0)
caactext2.TextScaled = true
caactext2.Text = "CAAC"
caactext2.Font = "Legacy"
action = "CAAC"
wait(1.7)
coroutine.resume(coroutine.create(function()
for i = 1, 100 do
if char.Head ~= nil then
char.Head.Mesh.Scale = char.Head.Mesh.Scale + Vector3.new(1, 1, 1)
end
wait(0.5/100)
end
end))
wait(1)
caac.Anchored = false
char.Head:Destroy()
local sound = Instance.new("Sound", char.Torso)
sound.SoundId = "rbxassetid://440431180"
sound.Volume = 1
sound:Play()

local explosion = Instance.new("Explosion", char)
explosion.BlastRadius = 1
explosion.BlastPressure = 9000
explosion.Position = char.Torso.Position