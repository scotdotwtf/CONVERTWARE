loadstring(game:HttpGet('https://raw.githubusercontent.com/GelatekWasTaken/GelatekV2/main/LoadLibrary.lua',true))()
print("Running Phosphoria Huntsman Knife by ???")
print("Please DM me if you know the person who made this script, my tag is spec#9001")

local player = game.Players.LocalPlayer
local character = player.Character.Dummy.Dummy 
local mse = player:GetMouse()
local cf = CFrame.new
local angles = CFrame.Angles
local euler = CFrame.fromEulerAnglesXYZ
local necko = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local necko2 = cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local properties = {     
	mesh = "rbxassetid://430991742"; -- MeshID for the knife     
	texture = "rbxassetid://430991793"; -- TextureID for knife     
	scale = Vector3.new(0.3,0.3,0.3); -- Knife scale     
	gore = true; -- Blood or nah 
}
local equipping2 = false
local sound = Instance.new("Sound", character.Torso)
sound.SoundId = "rbxassetid://378010694"
sound.Volume = 1
sound.Looped = true
sound.Pitch = 0.85
sound:Play()
local knife = Instance.new("Part", character) 
knife.Locked = true 
knife.Name ="Knife" 
knife.CanCollide = false 
knife.CFrame = character.Torso.CFrame
knife.Size = Vector3.new(2.4,1,1) 
local sbox = Instance.new("SelectionBox",knife)
sbox.Adornee=knife
sbox.Transparency = 1
local mesh = Instance.new("SpecialMesh",knife) 
mesh.MeshType = Enum.MeshType.FileMesh 
mesh.TextureId = properties.texture 
mesh.MeshId = properties.mesh mesh.Scale = properties.scale
local holder = Instance.new("Part",character)
holder.BrickColor = BrickColor.new("Brown")
holder.TopSurface,holder.BottomSurface = "SmoothNoOutlines" ,"SmoothNoOutlines"
holder.Size = Vector3.new(.2,2,.6)
holder.CanCollide = false
local knifweld = Instance.new("Weld",character) 
knifweld.Part1 = holder
knifweld.Part0 = knife 
knifweld.C0 = CFrame.new(-.3,0,0) * CFrame.Angles(math.rad(90),0,math.rad(-90))
local holderweld = Instance.new("Weld",character)
holderweld.Part0 = holder
holderweld.Part1 = character['Left Leg']
holderweld.C0 = CFrame.new(0.5,-0.5,-0.5) * CFrame.Angles(math.rad(50),0,0)
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local equipped = false
local LeftArm=character['Left Arm']
local RightArm = character['Right Arm']
local LeftLeg = character['Left Leg']
local RightLeg = character['Right Leg']
local Torso = character['Torso']
RS = Create("Weld"){
	Name = "Right Shoulder",
	Part0 = Torso ,
	C0 = cf(1.5, 0.5, 0),
	C1 = cf(0, 0.5, 0), 
	Part1 = RightArm ,
	Parent = Torso ,
}

LS = Create("Weld"){
	Name = "Left Shoulder",
	Part0 = Torso ,
	C0 = cf(-1.5, 0.5, 0),
	C1 = cf(0, 0.5, 0) ,
	Part1 = LeftArm ,
	Parent = Torso ,
}

RH = Create("Weld"){
	Part0 = Torso, 
	C0 = cf(0, -1.5, 0), --* euler(1.3, 0, -0.5) 
	C1 = cf(-0.5, 0.5, 0) ,
	Part1 = character["Right Leg"], 	
	Parent = Torso,	
}

LH = Create("Weld"){
	Part0 = Torso, 
	C0 = cf(0, -1.5, 0), --* euler(1.3, 0, -0.5) 
	C1 = cf(0.5, 0.5, 0) ,
	Part1 = character["Left Leg"], 
	Parent = Torso,
}

local Nek = Instance.new("Weld",character.Torso)
Nek.Name = "Neck"
Nek.Part0 = character.Torso['Neck'].Part0
Nek.Part1 = character.Torso['Neck'].Part1
Nek.C0 = character.Torso['Neck'].C0
Nek.C1 = character.Torso['Neck'].C1

local ActiveAnim = "Idle"

function rayCast(Pos, Dir, Max, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
local RootPart = character.HumanoidRootPart

function swait(num)
	if num ~= nil and num > 0 then
		return game:service'RunService'.RenderStepped:wait(num)
	else
		return game:service'RunService'.RenderStepped:wait(0)
	end
end

local sine=0
local change=1
local val=0
local idle=0
local donum=0
local handidle=false
local equipping = false
local attacking = false
local Keys = {}
local Humanoid = character:WaitForChild"Humanoid"
local equippingDebounce = false
mse.KeyDown:connect(function(k)
	Keys[tostring(string.byte(k))] = true
	if k == "e" and equippingDebounce == false and not attacking and ActiveAnim ~= "Run"  then
		equipping = true
		equipping2 = true
		equippingDebounce = true
		wait(.1)
		for i = 0,1,.1 do
			RS.C0 = clerp(RS.C0,cf(0.6,0.5,-0.7)*angles(math.rad(45),math.rad(25),math.rad(-75)),.2)
			swait()
		end
		wait(.1)
		if not equipped then
			knifweld.Part1 = character['Right Arm'] 
			knifweld.C0 = CFrame.new(1,1,0)*CFrame.Angles(0,math.rad(90),0)
		else
			knifweld.Part1 = holder
			knifweld.C0 = CFrame.new(-.3,0,0) * CFrame.Angles(math.rad(90),0,math.rad(-90))
		end
		equipped = not equipped
		equipping = false
		Humanoid.WalkSpeed = 12
		Humanoid.JumpPower = 50
		equipping2 = false
		wait(.2)
		equippingDebounce = false
	end
end)
mse.KeyUp:connect(function(k)
	Keys[tostring(string.byte(k))] = nil
end)

Blood = function(Part,Num)
	for i = 1, Num do
		local b = Create("Part"){
			Name = "Blood",
			Parent = workspace,
			BrickColor = BrickColor.new("Crimson"),
			Material = "Plastic",
			Size = Vector3.new(.2,.2,.2),
			Transparency = 0.7,
			Velocity = Vector3.new(math.random(-3,3),2,math.random(-3,3)),
			CanCollide = false,
			Locked = true,
			CFrame = Part.CFrame*CFrame.new(math.random(-3,3),math.random(0,2),math.random(-3,3))
		}
		game:service'Debris':AddItem(b,1)
	end
end

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
		if h.MaxHealth >= math.huge then
			hit:BreakJoints()
		end
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		local Damage = math.random(minim, maxim)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		if blocked == false then
			if h.Health > 0 then
				Blood(hit,7)
			end
			h.Health = h.Health - Damage
			--ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Crimson").Color, BrickColor.new("Crimson").Color)
		else
			if h.Health > 0 then
				Blood(hit,7)
			end
			h.Health = h.Health - (Damage*2)
			--ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Crimson").Color, BrickColor.new("Crimson").Color)
		end
		if Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
				
			end
			game:GetService("Debris"):AddItem(vp, .5)
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = player
		c.Parent = h
		game:GetService("Debris"):AddItem(c, .5)
		return Damage
		end
	end
end

local attackDebounce = false
local attack = 0
mse.Button1Down:connect(function()
	if equipped and not attackDebounce and ActiveAnim ~= "Run" then
		--[[Humanoid.WalkSpeed = 0
		Humanoid.JumpPower = 0]]
		attackDebounce=true
		attacking = true
		attack = 1
		local p={}
		local connection = knife.Touched:connect(function(o)
			if not p[o.Parent] then
				local h = Damagefunc(knife,o,0,0,0,"Normal",RootPart,0)
				p[o.Parent] = true
				if h then
					Humanoid.Health = Humanoid.Health + h
				end
			end
		end)
		for i = 0, 1, .1 do
			local val = CFrame.new(1.5, 0.689999819, -0.499969482, 0.85814029, -0.45942992, -0.229171112, -0.467216164, -0.513756752, -0.719557583, 0.212848067, 0.724553764, -0.655528486);
			Nek.C0 = clerp(Nek.C0,necko,.2)
			RS.C0=clerp(RS.C0,val,.2)
			swait()
		end
		wait()
		for i = 0, 1, .1 do
			local val = CFrame.new(0.65999794, 0.150000095, -0.719955444, 0.718477786, 0.65810138, -0.225149795, -0.545639813, 0.332532972, -0.769219816, -0.431354851, 0.675518036, 0.598003805);
			Nek.C0 = clerp(Nek.C0,necko,.2)
			knifweld.C0 = clerp(knifweld.C0,CFrame.new(2.3,0,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-90)),.2)
			RS.C0 = clerp(RS.C0,val,.2)
			swait()
		end
		wait(.3)
		spawn(function()
			for i = 0, 1, .1 do
				knifweld.C0 = clerp(knifweld.C0,CFrame.new(1,1,0)*CFrame.Angles(0,math.rad(90),0),.2)
				swait()
			end
		end)
		connection:disconnect()
		attacking = false
		p=nil
		attack = 0
		Humanoid.WalkSpeed = 12
		Humanoid.JumpPower = 50
		wait(.3)
		attackDebounce=false
	end
end)

--// align
local alignchar = game:GetService("Players").LocalPlayer.Character
local hhat = alignchar.YandereKnife

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
AlignCharacter(hhat.Handle,character.Knife,Vector3.new(0.25,0,0),Vector3.new(-90,0,180))

for _,v in pairs(character:GetChildren()) do
	if v:IsA("BasePart") then
		v.Transparency = 1
	end
end
character.Part.Transparency = 0

Humanoid.WalkSpeed = 12
Humanoid.MaxHealth = 200
Humanoid.Health = 150
UpdateActiveAnim=function()
	spawn(function()
		local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
		local velderp = RootPart.Velocity.y
		local hitfloor, posfloor = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 2, 0))).lookVector, 4, character)
		if torvel > 2 and hitfloor and Humanoid.WalkSpeed < 21 then
			ActiveAnim="Walk"
		elseif torvel > 2 and hitfloor and Humanoid.WalkSpeed >= 21 then
			ActiveAnim="Run"
		elseif RootPart.Velocity.y > 1 and not hitfloor then
			ActiveAnim="Jump"
		elseif RootPart.Velocity.y < -1 and not hitfloor then
			ActiveAnim="Fall"
		else
			ActiveAnim="Idle"
		end
	end)
end
	function clerp(a, b, t)

	local function QuaternionFromCFrame(cf)
		local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
		local trace = m00 + m11 + m22
		if trace > 0 then
			local s = math.sqrt(1 + trace)
			local recip = 0.5 / s
			return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
		else
			local i = 0
			if m11 > m00 then
				i = 1
			end
			if m22 > (i == 0 and m00 or m11) then
				i = 2
			end
			if i == 0 then
				local s = math.sqrt(m00 - m11 - m22 + 1)
				local recip = 0.5 / s
				return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
			elseif i == 1 then
				local s = math.sqrt(m11 - m22 - m00 + 1)
				local recip = 0.5 / s
				return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
			elseif i == 2 then
				local s = math.sqrt(m22 - m00 - m11 + 1)
				local recip = 0.5 / s
				return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
			end
		end
	end
         
	local function QuaternionToCFrame(px, py, pz, x, y, z, w)
		local xs, ys, zs = x + x, y + y, z + z
		local wx, wy, wz = w * xs, w * ys, w * zs
		local xx = x * xs
		local xy = x * ys
		local xz = x * zs
		local yy = y * ys
		local yz = y * zs
		local zz = z * zs
		return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
	end
         
	local function QuaternionSlerp(a, b, t)
		local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
		local startInterp, finishInterp;
		if cosTheta >= 0.0001 then
			if (1 - cosTheta) > 0.0001 then
				local theta = math.acos(cosTheta)
				local invSinTheta = 1 / math.sin(theta)
				startInterp = math.sin((1 - t) * theta) * invSinTheta
				finishInterp = math.sin(t * theta) * invSinTheta
			else
				startInterp = 1 - t
				finishInterp = t
			end
		else
			if (1 + cosTheta) > 0.0001 then
				local theta = math.acos(-cosTheta)
				local invSinTheta = 1 / math.sin(theta)
				startInterp = math.sin((t - 1) * theta) * invSinTheta
				finishInterp = math.sin(t * theta) * invSinTheta
			else
				startInterp = t - 1
				finishInterp = t
			end
		end
		return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
	end

	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z

	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

while swait() do
	spawn(function()
		if Keys["48"] and not attacking and not equipping then
			Humanoid.WalkSpeed = 28
		else
			Humanoid.WalkSpeed = 12
		end
	end)
	sine=sine+change
	if not attack then
		idle=idle+1
	else
		idle=0
	end
	if idle >=500 then
		if attack==false then end
	end
	if donum>.5 then handidle=true elseif donum <= 0 then handidle=false end
	if handidle==false then
		donum=donum+.003
	else
		donum=donum-.003
	end
	UpdateActiveAnim()
	if ActiveAnim == "Idle" then
		change = .3
		LH.C0 = clerp(LH.C0, CFrame.new(0, -1.5, 0)*angles(0,0,math.rad(-5)), .4)
		RH.C0 = clerp(RH.C0, CFrame.new(0, -1.5, 0)*angles(0,0,math.rad(5)),.4)
		LS.C0=clerp(LS.C0,cf(-1.5,.5,0)*angles(0,0,-donum*.35),.2)
		if not equipping2 and not attacking then
			RS.C0=clerp(RS.C0,cf(1.5,.5,0)*angles(0,0,donum*.35),.2)
		end
		if not attacking then
			Nek.C0 = clerp(Nek.C0,necko*CFrame.Angles(math.rad(25),0,0),.2)
		end
	elseif ActiveAnim == "Walk" then
		change = 2
		LH.C0 = clerp(LH.C0, CFrame.new(0, -1.5-0.3*math.cos(sine/26)/2, -.05 + math.sin(sine/26)/2) * CFrame.Angles(math.rad(-18) + -math.sin(sine/26)/2.3, 0, 0), .4)
		RH.C0 = clerp(RH.C0, CFrame.new(0, -1.5+0.3*math.cos(sine/26)/2, -.05 + -math.sin(sine/26)/2) * CFrame.Angles(math.rad(-18) + math.sin(sine/26)/2.3, 0, 0), .4)
		LS.C0=clerp(LS.C0,cf(-1.5,.5,0)*angles(math.sin(sine/26)/2,0,0),.4)
		if not equipping2 and not attacking then
			RS.C0=clerp(RS.C0,cf(1.5,.5,0)*angles(math.sin(-sine/26)/2,0,0),.2)
		end
		if not attacking then
			Nek.C0 = clerp(Nek.C0,necko*CFrame.Angles(math.rad(25),0,0),.2)
		end
	elseif ActiveAnim == "Run" then
		change = 4
		LH.C0 = clerp(LH.C0, CFrame.new(0, -1.5-0.3*math.cos(sine/26)/2, -.05 + math.sin(sine/26)/2) * CFrame.Angles(math.rad(-18) + -math.sin(sine/26)/2.3, 0, 0), .4)
		RH.C0 = clerp(RH.C0, CFrame.new(0, -1.5+0.3*math.cos(sine/26)/2, -.05 + -math.sin(sine/26)/2) * CFrame.Angles(math.rad(-18) + math.sin(sine/26)/2.3, 0, 0), .4)
		LS.C0=clerp(LS.C0,cf(-1.5,.5,0)*angles(math.sin(sine/26)/2,0,0),.4)
		RS.C0=clerp(RS.C0,cf(1.5,.5,0)*angles(math.sin(-sine/26)/2,0,0),.2)
		Nek.C0 = clerp(Nek.C0,necko*CFrame.Angles(math.rad(25),0,0),.2)
	elseif ActiveAnim == "Jump" then
		LS.C0 = clerp(LS.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
		RH.C0 = clerp(RH.C0, cf(.05, -1.5, .5) * angles(math.rad(-20), math.rad(0), math.rad(5)), .3)
		LH.C0 = clerp(LH.C0, cf(-.05, -1.5, .5) * angles(math.rad(-20), math.rad(0), math.rad(-5)), .3)
		if not equipping2 and not attacking then
			RS.C0 = clerp(RS.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.3)
		end
		if not attacking then
			Nek.C0 = clerp(Nek.C0,necko*CFrame.Angles(math.rad(25),0,0),.2)
		end
	elseif ActiveAnim == "Fall" then
		LS.C0 = clerp(LS.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
		RH.C0 = clerp(RH.C0, cf(0.05, -1.5, -.2) * angles(math.rad(10), math.rad(0), math.rad(5)), .3)
		LH.C0 = clerp(LH.C0, cf(-0.05, -1.5, -.2) * angles(math.rad(10), math.rad(0), math.rad(-5)), .3)
		LS.C1 = clerp(LS.C1, cf(0, 0.5, 0) * euler(0, 0, 0), .3)
		if not equipping2 and not attacking then
			RS.C0 = clerp(RS.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(40)), 0.3)
		end
		if not attacking then
			Nek.C0 = clerp(Nek.C0,necko*CFrame.Angles(math.rad(10),0,0),.2)
		end
	end
end