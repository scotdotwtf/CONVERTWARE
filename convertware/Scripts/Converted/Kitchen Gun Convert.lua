	        --[[ Kitchen Gun (REMADE) ]]--
-------------------------------------------------------
---  This script was created by WafflesAreVeryGood  ---
-------------------------------------------------------
print("> Running Kitchen Gun by WafflesAreVeryGood")
loadstring(game:HttpGet('https://raw.githubusercontent.com/GelatekWasTaken/GelatekV2/main/LoadLibrary.lua',true))()
	        --[[Changeable Variables]]--
local multiplier = 1 --Attack multiplier (default is 1)
local soundlist = {
	HardHit1 = "rbxassetid://565207203",
	HardHit2 = "rbxassetid://541909913",
	HardHit3 = "rbxassetid://541909983",
	WeakHit1 = "rbxassetid://558642292",
	WeakHit2 = "rbxassetid://541907812",
	Slice1 = "rbxassetid://260429964",
	Slice2 = "rbxassetid://260430015",
	Explosion1 = "rbxassetid://138186576",
	Explosion2 = "rbxassetid://157878578",
	Woosh1 = "rbxassetid://541909867",
	Woosh2 = "rbxassetid://541909763",
	
}
local bgmusic = Instance.new("Sound")
bgmusic.Volume = 3.5
bgmusic.SoundId = "rbxassetid://877658690"
bgmusic.Looped = true
bgmusic.Parent = game:GetService('Players').LocalPlayer.Character.Torso
bgmusic:Play()

	--[[Important Variables]]--
local plr = game:GetService('Players').LocalPlayer
local char = plr.Character.Dummy.Dummy
local mouse = plr:GetMouse()
local input = game:GetService('UserInputService')
----
local joints = {"Right Shoulder", "Left Shoulder", "Right Hip", "Left Hip", "Neck", "RootJoint"}
local torso,head,rootpart = char.Torso,char.Head,char.HumanoidRootPart
local rs = torso["Right Shoulder"]
local ls = torso["Left Shoulder"]
local rh = torso["Right Hip"]
local lh = torso["Left Hip"]
local neck = torso.Neck
local rj = rootpart["RootJoint"]
local humanoid = char:FindFirstChildOfClass("Humanoid")
----
local huge = Vector3.new(math.huge, math.huge, math.huge)
local attacking = false
local cananim = true
local currentanim = "Idle"
local mode = "Normal"

	--[[ Functions ]]--
function addattack(keycode, func)
	if keycode ~= "MouseClick" then
		input.InputBegan:connect(function(inp)
			if inp.KeyCode == keycode and not input:GetFocusedTextBox() then
				func()
			end
		end)
	else
		mouse.Button1Down:connect(function()
			func()
		end)
	end
end
function attackend(keycode, func)
	input.InputEnded:connect(function(inp)
		if inp.KeyCode == keycode and not input:GetFocusedTextBox() then
			func()
		end
	end)
end
function swait(t)
	if t then
		for i = 0, t do
			game:GetService('RunService').Stepped:wait(0)
		end
	else
		game:GetService('RunService').Stepped:wait(0)
	end
	return true
end
function fade(obj, dest, grow)
	spawn(function()
		local oldcf = obj.CFrame
		for i = 0, 10 do
			if grow then
				obj.Size = obj.Size +Vector3.new(1,1,1)
				obj.CFrame = oldcf
			end
			obj.Transparency = obj.Transparency +0.1
			swait()
		end
		if dest then
		obj:Destroy()
		end
	end)
end
function replacejoint(name)
	local j = torso:FindFirstChild(name)
	if not j then j = char.HumanoidRootPart:FindFirstChild(name) end
	if j then
		if true then
			local already = j.Parent:FindFirstChild(j.Name.." Replacement")
			local new = Instance.new("Weld")
			local c0 = j.C0
			local c1 = j.C1
			new.Part0 = j.Part0
			j.Part0 = nil
			new.Name = j.Name.." Replacement"
			if already then c0 = already.C0 c1 = already.C1 already:Destroy() end
			new.Parent = j.Parent
			new.Part1 = j.Part1
			new.C0 = c0
			new.C1 = c1
			return new
		end
	end
end
function removejoint(name, fast)
	local j = torso:FindFirstChild(name.." Replacement")
	if not j then j = char.HumanoidRootPart:FindFirstChild(name.." Replacement") end
	if j then
		local p0 = j.Part0
		if p0 ~= nil then
		local c0 = j.C0
		local c1 = j.C1
		j:Destroy()
		local new = p0:FindFirstChild(name)
		local ac0 = new.C0
		local ac1 = new.C1
		new.Part0 = p0
		new.C0 = c0
		new.C1 = c1
		spawn(function()
			if name ~= "RootJoint" then
			if not fast then
			for i = 0, 0.6, 0.1 do
				print(i)
				new.C0 = new.C0:Lerp(ac0, 0.5)
				new.C1 = new.C1:lerp(ac1, 0.5)
				swait()
			end
			else
				new.C0 = new.C0:Lerp(ac0, 1)
				new.C1 = new.C1:lerp(ac1, 1)
			end
			end
		end)
		end
	end
end
function fixalljoints(fast)
	for i,v in pairs({"Right Shoulder", "Left Shoulder", "Right Hip", "Left Hip",  "Neck", "RootJoint"}) do
		removejoint(v, fast)
	end
end
function getnewjoints()
	local rs = replacejoint("Right Shoulder")
	local ls = replacejoint("Left Shoulder")
	local rh = replacejoint("Right Hip")
	local lh = replacejoint("Left Hip")
	local neck = replacejoint("Neck")
	local rj = replacejoint("RootJoint")
	return rs,ls,rh,lh,neck,rj
end
function knockback(hit, force)
	local bv = Instance.new("BodyVelocity")
	bv.MaxForce = huge
	bv.Velocity = force
	bv.Parent = hit
	game:GetService('Debris'):AddItem(bv, 0.15)
end
function soundeffect(id, volume, speed, parent, forcewait)
	local func = function()
		local s = LoadLibrary("RbxUtility").Create("Sound")()
		s.Name = "SoundEffect"
		s.Volume = volume
		s.PlaybackSpeed = speed
		s.SoundId = id
		s.Looped = false
		s.Parent = parent
		s:Play()
		repeat wait() until not s.Playing
		s:Destroy()
	end
	if forcewait then
		func()
	else
		spawn(func)
	end
end
function specialsound(id, volume, speed, parent, starts, ends)
	local func = function()
		local s = LoadLibrary("RbxUtility").Create("Sound")()
		s.Name = "SoundEffect"
		s.Volume = volume
		s.PlaybackSpeed = speed
		s.SoundId = id
		s.TimePosition = starts
		s.Looped = false
		s.Parent = parent
		s:Play()
		repeat swait() until s.TimePosition >= ends
		s:Destroy()
	end
	spawn(func)
end
function hurt(hit, dmg)

end
function disable(hit)
	pcall(function()
		for i,v in pairs(hit.Parent:GetChildren()) do
			if v:IsA("Script") and v.Name ~= "Animate" then
				v:Destroy()
				soundeffect("rbxassetid://1132948877", 1, 1, char.Head)
			end
			if v:IsA("Model") then
				v:BreakJoints()
			end
			if v.Name ~= "Torso" and v.Name ~= "HumanoidRootPart" then
				for _,child in pairs(v:GetChildren()) do
					if child:IsA("Weld") then
						child:Destroy()
					end
				end
			end
		end
	end)
end
humanoid.Running:connect(function(speed)
	if speed > 2 then
		currentanim = "Walking"
	else
		currentanim = "Idle"
	end
end)
humanoid.Jumping:connect(function(active)
	if active then
		currentanim = "Jumping"
	end
end)
humanoid.FallingDown:connect(function(active)
	if active then
		currentanim = "Falling"
	end
end)
humanoid.FreeFalling:connect(function(active)
	if active and char.HumanoidRootPart.Velocity.Y < 0 then
		currentanim = "Falling"
	end
end)
pcall(function()
	char.Animate:Destroy()
end)
for i,v in pairs(humanoid:GetPlayingAnimationTracks()) do
	v:Stop()
end
	--[[ Actual script :OOOOOOOOOO ]]--
local gun = Instance.new("Part")
gun.Size = Vector3.new(1, 1, 2)
gun.CanCollide = false
gun.Anchored = false
gun.Color = Color3.new(0,0,0)
local gunw = Instance.new("Weld")
gunw.Name = "GunWeld"
gunw.Part0 = gun
gunw.Part1 = char["Right Arm"]
gunw.C1 = CFrame.new(0,-1,-0.25) *CFrame.Angles(math.rad(270),math.rad(0),math.rad(0))
gunw.Parent = gun
local m = Instance.new("SpecialMesh")
m.MeshId = "http://www.roblox.com/asset/?id=4372594"
m.Scale = Vector3.new(1.2,1.2,1.2)
m.Parent = gun
gun.Parent = char

addattack(Enum.KeyCode.R, function()
	if not attacking then
		if mode == "Normal" then
			mode = "Heal"
			gun.Color = Color3.new(0,1,0)
			specialsound("rbxassetid://741894739", 5, 1, char, 18.49549100592, 20.526269195994)
		else
			gun.Color = Color3.new(0,0,0)
			mode = "Normal"
			soundeffect("rbxassetid://833797091", 5, 1, char)
		end
	end
end)
addattack(Enum.KeyCode.Q, function()
	if not attacking then
		mode = "Disable"
		gun.Color = Color3.new(1,0,0)
		specialsound("rbxassetid://741894739", 5, 1, char, 33.878067323327, 35.438444041738)
	end
end)
addattack(Enum.KeyCode.P, function()
	if bgmusic.Playing then
		bgmusic:Stop()
	else
		bgmusic:Play()
	end
end)

--// align
local alignchar = game:GetService("Players").LocalPlayer.Character
local hhat = alignchar['Cartoony Rainbow Mk.50']

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
AlignCharacter(hhat.Handle,char.Part,Vector3.new(0,0.19,-0.2),Vector3.new(0,0,0))

for _,v in pairs(char:GetChildren()) do
	if v:IsA("BasePart") then
		v.Transparency = 1
	end
end

addattack("MouseClick", function()
	if not attacking then
		cananim = false
		attacking = true
		for i = 0, 0.6, 0.1 do
		rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.6)
		rs.C1 = rs.C1:Lerp(CFrame.new(-0.235909924, 0.846874475, 0, 0.399310559, 0.00480417395, 0.916803062, -0.916736782, -0.0110294167, 0.399339437, 0.0120302998, -0.99992764, 5.25861077e-10), 0.6)
		ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.6)
		ls.C1 = ls.C1:Lerp(CFrame.new(0.232030958, 1.28329468, 0, 0.758646905, 0.0105680302, -0.651416421, 0.65135318, 0.00907341763, 0.758720517, 0.0139287533, -0.999902964, -6.08845141e-10), 0.6)
		rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.6)
		rh.C1 = rh.C1:Lerp(CFrame.new(0.5, 1, 0, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08), 0.6)
		lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.6)
		lh.C1 = lh.C1:Lerp(CFrame.new(-0.5, 1, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08), 0.6)
		neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0), 0.6)
		neck.C1 = neck.C1:Lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0), 0.6)
		rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0), 0.6)
		rj.C1 = rj.C1:Lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0), 0.6)
		swait()
		end
		local sounds = {
			{17.49, 17.981267708586};
			{17.490114626798, 17.755552823579};
			{18, 18.465876732586707476};
		}
		local ids = sounds[math.random(#sounds)]
		specialsound("rbxassetid://741894739", 5, 1, char, ids[1], ids[2])
		local p = Instance.new("Part")
		p.Anchored = false
		p.Material = "Neon"
		p.CanCollide = false
		local start = gun.Position +Vector3.new(0.5,0,-0.5)
		local endp = mouse.Hit.p
		local ray = Ray.new(start, (endp-start).unit * 999)
		local hit,position = workspace:FindPartOnRayWithIgnoreList(ray, {char, gun})
		local mag = (start-position).magnitude + 2
		p.Size = Vector3.new(0.1,0.1,mag)
		p.CFrame = CFrame.new(start, position) *CFrame.new(0,0,-mag/2)
		local bp = Instance.new("BodyPosition")
		bp.MaxForce = huge
		bp.Position = p.Position
		bp.Parent = p
		p.Color = gun.Color
		if mode == "Normal" then
			p.Color = Color3.new(1,1,1)
		end
		p.Parent = workspace
		spawn(function()
			for i = 1, 10 do
				p.Transparency = i/10
				swait()
			end
			p:Destroy()
		end)
		local con
		local dmg = 750
		if mode == "Heal" then dmg = -1000 end
		if mode == "Disable" then dmg = 0 end
		con = p.Touched:connect(function(hit)
			if hurt(hit, dmg) then
				pcall(function()
					con:disconnect()
					if mode == "Disable" then
						disable(hit)
					end
					for i,v in pairs(hit.Parent:GetDescendants()) do
						spawn(function()
							if v:IsA("BasePart") and mode == "Normal" then
								local bv = Instance.new("BodyVelocity")
								bv.MaxForce = huge
								bv.Velocity = CFrame.new(start, position).lookVector*100
								bv.Parent = v
								game:GetService('Debris'):AddItem(bv, 0.1)
								if v.Transparency <= 0.9 then
									for i = 1, 20 do
										v.Transparency = i/20
										swait()
									end
								end
								v:Destroy()
							end
						end)
					end
				end)
			end
		end)
		for i = 0, 0.3, 0.1 do
		rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.8)
		rs.C1 = rs.C1:Lerp(CFrame.new(-0.108213484, 0.142491132, -0.0458124876, 0.399310559, 0.00480417395, 0.916803062, -0.907117367, -0.142995536, 0.395841271, 0.133000448, -0.989711702, -0.0527416691), 0.8)
		ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.8)
		ls.C1 = ls.C1:Lerp(CFrame.new(-0.214841455, 0.866598129, -0.112976491, 0.758646905, 0.0105680302, -0.651416421, 0.64655149, -0.135239884, 0.750787199, -0.0801631361, -0.990756512, -0.109432101), 0.8)
		rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.8)
		rh.C1 = rh.C1:Lerp(CFrame.new(0.5, 1, 0, -4.37113883e-08, 0, 1, -0.104150683, 0.994561553, -4.55257076e-09, -0.994561553, -0.104150683, -4.34736656e-08), 0.8)
		lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.8)
		lh.C1 = lh.C1:Lerp(CFrame.new(-0.5, 1, 0, -4.37113883e-08, 0, -1, -0.0883838907, 0.996086478, 3.8633825e-09, 0.996086478, 0.0883838907, -4.35403216e-08), 0.8)
		neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0), 0.8)
		neck.C1 = neck.C1:Lerp(CFrame.new(0, -0.49999997, 0, -1, 0, 0, 0, 0.0492738597, 0.998785317, 0, 0.998785317, -0.0492738597), 0.8)
		rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0), 0.8)
		rj.C1 = rj.C1:Lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.0276213959, 0.999618471, 0, 0.999618471, -0.0276213959), 0.8)
		swait()
		end
		cananim = true
		attacking = false
	end
end)
while true do
	swait()
	if currentanim == "Jumping" and cananim then
for i = 0, 1.2, 0.1 do
if currentanim ~= "Jumping" or not cananim then break end
rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.4)
rs.C1 = rs.C1:Lerp(CFrame.new(0.0997244716, 0.195344329, -0.746855855, -0.155881107, 0.00388455181, 0.987768173, 0.260807574, -0.964343727, 0.0449508503, 0.952722609, 0.264624417, 0.149309859), 0.4)
ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.4)
ls.C1 = ls.C1:Lerp(CFrame.new(0.793125331, 0.89348793, -0.0677016973, 0.986068428, -0.132806748, -0.100156575, 0.1031176, 0.0155911446, 0.994546831, -0.130520999, -0.991019309, 0.0290686507), 0.4)
rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.4)
rh.C1 = rh.C1:Lerp(CFrame.new(0.49999997, 0.99999994, -4.47034836e-08, -0.0421661586, 0.0827250704, 0.995679915, 0.25110203, 0.965456486, -0.0695800334, -0.967041731, 0.247083336, -0.0614820197), 0.4)
lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.4)
lh.C1 = lh.C1:Lerp(CFrame.new(-0.49999997, 1, 2.98023224e-08, 0.0194152314, 0, -0.99981153, 0.178683311, 0.983900607, 0.00346983178, 0.983715117, -0.178716987, 0.0191026554), 0.4)
neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.4)
neck.C1 = neck.C1:Lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0.0515226237, 0.99867183, 0, 0.99867183, -0.0515226237), 0.4)
rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.4)
rj.C1 = rj.C1:Lerp(CFrame.new(0, 0.128909558, -0.0269506648, -0.996639967, -0.0819067881, 0, -0.00100739487, 0.0122579783, 0.999924421, -0.0819005966, 0.996564567, -0.0122992992), 0.4)
swait()
end
	end
	if currentanim == "Falling" and cananim then
for i = 0, 1.2, 0.1 do
if currentanim ~= "Falling" or not cananim then break end
rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.4)
rs.C1 = rs.C1:Lerp(CFrame.new(0.0997244716, 0.389569163, -0.799008012, -0.155881107, 0.00388455181, 0.987768173, 0.0170185864, -0.999833226, 0.00661772862, 0.987629175, 0.0178419873, 0.155789018), 0.4)
ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.4)
ls.C1 = ls.C1:Lerp(CFrame.new(0.800841689, 0.89348793, 0.000534057617, 0.989977896, 0.0953866094, -0.104139231, 0.1031176, 0.0155911446, 0.994546831, 0.0964901, -0.995318174, 0.00559884822), 0.4)
rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.4)
rh.C1 = rh.C1:Lerp(CFrame.new(0.49999997, 1, -1.49011612e-08, -0.0421661586, 0.0827250704, 0.995679915, -0.0600035824, 0.994557679, -0.085172914, -0.997307122, -0.0633357614, -0.0369728766), 0.4)
lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.4)
lh.C1 = lh.C1:Lerp(CFrame.new(-0.499999881, 1, 3.7252903e-08, 0.0207479522, -0.155918092, -0.987552047, -0.00691960612, 0.987718761, -0.156089753, 0.999760866, 0.0100720376, 0.0194142479), 0.4)
neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.4)
neck.C1 = neck.C1:Lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0.0515226237, 0.99867183, 0, 0.99867183, -0.0515226237), 0.4)
rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.4)
rj.C1 = rj.C1:Lerp(CFrame.new(0, 0.313415587, -0.0163925812, -0.996639967, -0.0819067881, 0, 0.00564728118, -0.0687159598, 0.997620344, -0.0817118809, 0.994268239, 0.068947643), 0.4)
swait()
end
	end
	if currentanim == "Walking" and cananim then
for i = 0, 0.6, 0.1 do
if currentanim ~= "Walking" or not cananim then break end
rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.6)
rs.C1 = rs.C1:Lerp(CFrame.new(0.0997244716, -0.134959042, -0.791477084, -0.155881107, 0.00388455181, 0.987768173, 0.0728884861, -0.997220755, 0.0154243633, 0.985082865, 0.0744013041, 0.155164748), 0.6)
ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.6)
ls.C1 = ls.C1:Lerp(CFrame.new(0.728777826, 0.934069037, -0.221951187, 0.958276987, -0.133620545, -0.252687156, 0.254302055, -0.00512516592, 0.96711117, -0.130520999, -0.991019309, 0.0290686507), 0.6)
rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.6)
rh.C1 = rh.C1:Lerp(CFrame.new(0.49999997, 1, 0, -0.0421661586, 0.0827250704, 0.995679915, -0.568820775, 0.817300439, -0.0919936299, -0.82137984, -0.570242465, 0.0125933159), 0.6)
lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.6)
lh.C1 = lh.C1:Lerp(CFrame.new(-0.49999997, 1, 0, 0.0194152314, 0, -0.99981153, -0.845399499, 0.53388226, -0.0164167192, 0.533781588, 0.845558882, 0.0103654461), 0.6)
neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.6)
neck.C1 = neck.C1:Lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0.0515226237, 0.99867183, 0, 0.99867183, -0.0515226237), 0.6)
rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.6)
rj.C1 = rj.C1:Lerp(CFrame.new(0, 0.239933819, 0, -0.996639967, -0.0819067881, 0, 0.00819849782, -0.0997591168, 0.994977891, -0.0814954415, 0.991634667, 0.100095451), 0.6)
swait()
end
local rslastc0 = rs.C0
local rslastc1 = rs.C1
local lslastc0 = ls.C0
local lslastc1 = ls.C1
local rhlastc0 = rh.C0
local rhlastc1 = rh.C1
local lhlastc0 = lh.C0
local lhlastc1 = lh.C1
local necklastc0 = neck.C0
local necklastc1 = neck.C1
local rjlastc0 = rj.C0
local rjlastc1 = rj.C1
local max = 0.6
for i = 0, max, 0.1 do
if currentanim ~= "Walking" or not cananim then break end
rs.C0 = rslastc0:Lerp(CFrame.new(1, 0.5, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), i/max)
rs.C1 = rslastc1:Lerp(CFrame.new(0.0997244716, -0.134959042, -0.791477084, -0.155881107, 0.00388455181, 0.987768173, 0.0728884861, -0.997220755, 0.0154243633, 0.985082865, 0.0744013041, 0.155164748), i/max)
ls.C0 = lslastc0:Lerp(CFrame.new(-1, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), i/max)
ls.C1 = lslastc1:Lerp(CFrame.new(0.728777826, 0.934069037, -0.221951187, 0.958276987, -0.133620545, -0.252687156, 0.254302055, -0.00512516592, 0.96711117, -0.130520999, -0.991019309, 0.0290686507), i/max)
rh.C0 = rhlastc0:Lerp(CFrame.new(1, -1, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), i/max)
rh.C1 = rhlastc1:Lerp(CFrame.new(0.5, 0.675323606, 0, -0.0421661623, 0.0827250704, 0.995679975, 0.221647412, 0.972508371, -0.0714133158, -0.974214792, 0.217678651, -0.059342742), i/max)
lh.C0 = lhlastc0:Lerp(CFrame.new(-1, -1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), i/max)
lh.C1 = lhlastc1:Lerp(CFrame.new(-0.49999997, 0.680277288, -1.49011612e-08, 0.0194152296, -2.24613939e-11, -0.99981153, -0.183868393, 0.982944369, -0.00357052009, 0.982759118, 0.183903053, 0.0190840904), i/max)
neck.C0 = necklastc0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), i/max)
neck.C1 = necklastc1:Lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0.0515226237, 0.99867183, 0, 0.99867183, -0.0515226237), i/max)
rj.C0 = rjlastc0:Lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), i/max)
rj.C1 = rjlastc1:Lerp(CFrame.new(0, 0.169720784, 0, -0.996639967, -0.0819067881, 0, 0.00819849782, -0.0997591168, 0.994977891, -0.0814954415, 0.991634667, 0.100095451), i/max)
swait()
end
for i = 0, 0.6, 0.1 do
if currentanim ~= "Walking" or not cananim then break end
rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.6)
rs.C1 = rs.C1:Lerp(CFrame.new(0.0997244716, -0.134959042, -0.791477084, -0.155881107, 0.00388455181, 0.987768173, 0.0728884861, -0.997220755, 0.0154243633, 0.985082865, 0.0744013041, 0.155164748), 0.6)
ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.6)
ls.C1 = ls.C1:Lerp(CFrame.new(0.728777826, 0.934069037, -0.221951187, 0.958276987, -0.133620545, -0.252687156, 0.254302055, -0.00512516592, 0.96711117, -0.130520999, -0.991019309, 0.0290686507), 0.6)
rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.6)
rh.C1 = rh.C1:Lerp(CFrame.new(0.49999997, 1, 0, -0.0421661586, 0.0827250704, 0.995679915, 0.868188143, 0.496215105, -0.00446053827, -0.494440407, 0.864249468, -0.0927444026), 0.6)
lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.6)
lh.C1 = lh.C1:Lerp(CFrame.new(-0.49999997, 1, 0, 0.0194152314, 0, -0.99981153, 0.595236421, 0.803467572, 0.0115588298, 0.803316057, -0.595348656, 0.015599506), 0.6)
neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.6)
neck.C1 = neck.C1:Lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0.0515226237, 0.99867183, 0, 0.99867183, -0.0515226237), 0.6)
rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.6)
rj.C1 = rj.C1:Lerp(CFrame.new(0, 0.342528641, -9.31322575e-10, -0.996639967, -0.0819067955, -6.22866592e-10, 0.00819849595, -0.0997591242, 0.994977832, -0.0814954415, 0.991634727, 0.100095443), 0.6)
swait()
end
local rslastc0 = rs.C0
local rslastc1 = rs.C1
local lslastc0 = ls.C0
local lslastc1 = ls.C1
local rhlastc0 = rh.C0
local rhlastc1 = rh.C1
local lhlastc0 = lh.C0
local lhlastc1 = lh.C1
local necklastc0 = neck.C0
local necklastc1 = neck.C1
local rjlastc0 = rj.C0
local rjlastc1 = rj.C1
local max = 0.6
for i = 0, max, 0.1 do
if currentanim ~= "Walking" or not cananim then break end
rs.C0 = rslastc0:Lerp(CFrame.new(1, 0.5, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), i/max)
rs.C1 = rslastc1:Lerp(CFrame.new(0.0997244716, -0.134959042, -0.791477084, -0.155881107, 0.00388455181, 0.987768173, 0.0728884861, -0.997220755, 0.0154243633, 0.985082865, 0.0744013041, 0.155164748), i/max)
ls.C0 = lslastc0:Lerp(CFrame.new(-1, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), i/max)
ls.C1 = lslastc1:Lerp(CFrame.new(0.728777826, 0.934069037, -0.221951187, 0.958276987, -0.133620545, -0.252687156, 0.254302055, -0.00512516592, 0.96711117, -0.130520999, -0.991019309, 0.0290686507), i/max)
rh.C0 = rhlastc0:Lerp(CFrame.new(1, -1, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), i/max)
rh.C1 = rhlastc1:Lerp(CFrame.new(0.5, 0.675323606, 0, -0.0421661623, 0.0827250704, 0.995679975, 0.221647412, 0.972508371, -0.0714133158, -0.974214792, 0.217678651, -0.059342742), i/max)
lh.C0 = lhlastc0:Lerp(CFrame.new(-1, -1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), i/max)
lh.C1 = lhlastc1:Lerp(CFrame.new(-0.49999997, 0.680277288, -1.49011612e-08, 0.0194152296, -2.24613939e-11, -0.99981153, -0.183868393, 0.982944369, -0.00357052009, 0.982759118, 0.183903053, 0.0190840904), i/max)
neck.C0 = necklastc0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), i/max)
neck.C1 = necklastc1:Lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0.0515226237, 0.99867183, 0, 0.99867183, -0.0515226237), i/max)
rj.C0 = rjlastc0:Lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), i/max)
rj.C1 = rjlastc1:Lerp(CFrame.new(5.82076609e-11, 0.2270886, 2.32830644e-10, -0.996639967, -0.0819067881, 4.13409307e-10, 0.00819849502, -0.0997591093, 0.994977832, -0.081495434, 0.991634727, 0.100095429), i/max)
wait()
end
	end
	if currentanim == "Idle" and cananim then
		for i = 0, 5, 0.1 do
		if currentanim ~= "Idle" or not cananim then break end
		rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.05)
		rs.C1 = rs.C1:Lerp(CFrame.new(0.0997244716, -0.105339587, -1.12973166, -0.155881107, 0.00388455181, 0.987768173, -0.0249122381, -0.999689579, -1.08894849e-09, 0.987461567, -0.0246075168, 0.155929506), 0.05)
		ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.05)
		ls.C1 = ls.C1:Lerp(CFrame.new(0.998242438, 0.966719627, -0.251513988, 0.948773444, -0.0191214401, -0.315378129, 0.315314144, -0.00635479437, 0.948966026, -0.0201497618, -0.999796987, 8.80774065e-10), 0.05)
		rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.05)
		rh.C1 = rh.C1:Lerp(CFrame.new(0.5, 1, 0, -0.246849835, 0, 0.969053745, 0, 1, 0, -0.969053745, 0, -0.246849835), 0.05)
		lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.05)
		lh.C1 = lh.C1:Lerp(CFrame.new(-0.5, 1, 0, 0.0194152314, 0, -0.99981153, 0, 1, 0, 0.99981153, 0, 0.0194152314), 0.05)
		neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.05)
		neck.C1 = neck.C1:Lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.05)
		rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.05)
		rj.C1 = rj.C1:Lerp(CFrame.new(0, 0, 0, -0.996639967, -0.0819067881, 0, 0, 0, 1, -0.0819067881, 0.996639967, 0), 0.05)
		swait()
		end
		for i = 0, 5, 0.1 do
		if currentanim ~= "Idle" or not cananim then break end
		rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.05)
		rs.C1 = rs.C1:Lerp(CFrame.new(0.0997244716, -0.134959042, -1.07218063, -0.155881107, 0.00388455181, 0.987768173, 0.0728884861, -0.997220755, 0.0154243633, 0.985082865, 0.0744013041, 0.155164748), 0.05)
		ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.05)
		ls.C1 = ls.C1:Lerp(CFrame.new(0.994734883, 0.934069037, -0.221951187, 0.958276987, -0.133620545, -0.252687156, 0.254302055, -0.00512516592, 0.96711117, -0.130520999, -0.991019309, 0.0290686507), 0.05)
		rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08), 0.05)
		rh.C1 = rh.C1:Lerp(CFrame.new(0.5, 1, 0, -0.246849835, 0, 0.969053745, 0, 1, 0, -0.969053745, 0, -0.246849835), 0.05)
		lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08), 0.05)
		lh.C1 = lh.C1:Lerp(CFrame.new(-0.49999997, 1, 0, 0.0194152314, 0, -0.99981153, 0, 1, 0, 0.99981153, 0, 0.0194152314), 0.05)
		neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.05)
		neck.C1 = neck.C1:Lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.05)
		rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.05)
		rj.C1 = rj.C1:Lerp(CFrame.new(0, 0, 0, -0.996639967, -0.0819067881, 0, -0.00139390712, 0.0169610307, 0.999855161, -0.0818949267, 0.996495605, -0.017018212), 0.05)
		swait()
		end
	end
end
