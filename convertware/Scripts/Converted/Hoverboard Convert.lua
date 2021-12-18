print("> Running Light Hoverboard by ???")
Game:GetService("Players").LocalPlayer.Character.Dummy.Dummy.Humanoid.Jump = true
wait(0.5)

local Services = setmetatable({},{__index = function(t,i)
    return game:service(i) or nil
end})
local Player = Services.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Character = Player.Character.Dummy.Dummy
local Human = Character:findFirstChild("Humanoid")
local Backpack = Player:WaitForChild("Backpack")
local Mouse = Player:GetMouse()
local Count = false
local Breathing = 0
local Transition = false
local Stance = "Standby"
ScriptData = {
	Colors = {
		Base = "Grey",
		Trim = "White",
	},
	Surfaces = {
		"Top",
		"Bottom",
		"Left",
		"Right",
		"Front",
		"Back",
	},
	Rotation = 0,
	Rotors = {},
	Keys = {
		W = false,
		A = false,
		S = false,
		D = false,
		Space = false,
	},
	Lift = 2, --Studs off ground
	TurnAngle = 0,
	Last = 0,
	Acceleration = 0,
}

for _,v in pairs(Character:children()) do
	if v.Name == "Hover" then
		v:Destroy()
	end
end
local MainModel = Instance.new("Model",Character)
MainModel.Name = "Hover"

local function CreatePart(StringName,ObjectParent,VectorX,VectorY,VectorZ,StringColor,StringMaterial)
	local New_Part = Instance.new("Part",ObjectParent)
	New_Part.Name = StringName
	New_Part.formFactor = 3
	New_Part.Anchored = false
	New_Part.CanCollide = false
	New_Part.Locked = true
	New_Part.BrickColor = BrickColor.new(StringColor)
	New_Part.Size = Vector3.new(VectorX,VectorY,VectorZ)
	New_Part.Material = StringMaterial
	for _,S in pairs(ScriptData.Surfaces) do
		New_Part[S.."Surface"] = 10
	end
	New_Part:BreakJoints()
	Instance.new("BlockMesh",New_Part).Name = "Mesh"
	return New_Part
end

local function UD(a,b)
	return UDim2.new(a,0,b,0)
end

local function Thread(_F)
	return coroutine.resume(coroutine.create(_F))
end

local function CreateWeld(StringName,ObjectParent,Part1,Part0,CFrame1,CFrame0)
	local New_Weld = Instance.new("Weld",ObjectParent)
	New_Weld.Name = StringName
	New_Weld.Part1 = Part1
	New_Weld.Part0 = Part0
	New_Weld.C1 = CFrame0
	New_Weld.C0 = CFrame1
	return New_Weld
end

local function lerp(a, b, c)
    return a+(b-a)*c
end

local function AnimLerp(c1, c2, al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do 
    	com1[i] = lerp(v,com2[i],al) 
   	end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

local Stance = "None"

local Head = Character:findFirstChild("Head")
local Torso = Character:findFirstChild("Torso")
local Root = Character:findFirstChild("HumanoidRootPart")
local MotorHolder = Instance.new("Model",MainModel)
MotorHolder.Name = "Motors"
local Sides = {"Left","Right"}
local Arms = {Character["Left Arm"],Character["Right Arm"]}
local Legs = {Character["Left Leg"],Character["Right Leg"]}
local Welds = {
	ArmW = {
		Left = Instance.new("Weld",MotorHolder);
		Right = Instance.new("Weld",MotorHolder);
	};
	LegW = {
		Left = Instance.new("Weld",MotorHolder);
		Right = Instance.new("Weld",MotorHolder);
	};
	HeadW = {
		Middle = Instance.new("Weld",MotorHolder);
	};
}
local RWelds = {
	ArmW = {
		Left = Torso["Left Shoulder"];
		Right = Torso["Right Shoulder"];
	};
	LegW = {
		Left = Torso["Left Hip"];
		Right = Torso["Right Hip"];
	};
	HeadW = {
		Middle = Torso["Neck"];
	};
}
local LA,RA = Welds.ArmW.Left,Welds.ArmW.Right
local LL,LR = Welds.LegW.Left,Welds.LegW.Right
local HD = Welds.HeadW.Middle
local LAD = CFrame.new(-1.5,0.5,0)
local RAD = CFrame.new(1.5,0.5,0)
local HDD = CFrame.new(0,-0.8,0)
Welds.ArmW.Left.C1,Welds.ArmW.Left.C0,Welds.ArmW.Left.Part0 = CFrame.new(0, 0.5, 0),CFrame.new(-1.5, 0.5, 0),Torso
Welds.ArmW.Right.C1,Welds.ArmW.Right.C0,Welds.ArmW.Right.Part0 = CFrame.new(0, 0.5, 0),CFrame.new(1.5, 0.5, 0),Torso
Welds.LegW.Left.C1,Welds.LegW.Left.Part0 = CFrame.new(.5,2,0),Torso
Welds.LegW.Right.C1,Welds.LegW.Right.Part0 = CFrame.new(-.5,2,0),Torso 
Welds.HeadW.Middle.C1,Welds.HeadW.Middle.Part0 = CFrame.new(0,-1.5,0),Torso
local _Arm = function(side,tf)
	local Arm = nil
	local Weld = nil
	local RWeld = nil
	for _,S in pairs(Sides) do
		if side:lower() == S:lower() then
			for _,A in pairs(Arms) do
				if A.Name:lower():find(side:lower()) then
					Arm = A
					Weld = Welds.ArmW[S]
					RWeld = RWelds.ArmW[S]
				end
			end
		end
	end
	if Arm and Weld and RWeld then
		if tf then
			Weld.Part1 = Arm
			RWeld.Part1 = nil
		elseif not tf then
			Weld.Part1 = nil
			RWeld.Part1 = Arm
		else
			print("Error")
		end
	end
end

local _Leg = function(side,tf)
	local Leg = nil
	local Weld = nil
	local RWeld = nil
	for _,S in pairs(Sides) do
		if side:lower() == S:lower() then
			for _,A in pairs(Legs) do
				if A.Name:lower():find(side:lower()) then
					Leg = A
					Weld = Welds.LegW[S]
					RWeld = RWelds.LegW[S]
				end
			end
		end
	end
	if Leg and Weld and RWeld then
		if tf then
			Weld.Part1 = Leg
			RWeld.Part1 = nil
		elseif not tf then
			Weld.Part1 = nil
			RWeld.Part1 = Leg
		else
			print("Error")
		end
	end
end

local _Head = function(tf)
	local Head = nil
	local Weld = nil
	local RWeld = nil
	Head = Character["Head"]
	Weld = Welds.HeadW.Middle
	RWeld = RWelds.HeadW.Middle
	if Head and Weld and RWeld then
		if tf then
			Weld.Part1 = Head
			RWeld.Part1 = nil
		elseif not tf then
			Weld.Part1 = nil
			RWeld.Part1 = Head
		else
			print("Error")
		end
	end
end

local function Round(Number)
	return math.floor(Number+.5)
end

--[[Hover Creation]]--
local Board = CreatePart("Part",MainModel,1.5,0.25,4,ScriptData.Colors.Base,"SmoothPlastic")
local BoardEdge = CreatePart("Part",MainModel,1.505,0.2,3.995,ScriptData.Colors.Trim,"Neon")
local BEW = CreateWeld("Weld",BoardEdge,BoardEdge,Board,CFrame.new(0,0,0),CFrame.Angles(0,0,0))
--
--
local PointA = CreatePart("Part",MainModel,0.2,0.2,0.2,ScriptData.Colors.Base,"SmoothPlastic")
PointA.Transparency = 1
PointA.CanCollide = false
local PW = CreateWeld("Weld",PointA,PointA,Board,CFrame.new(0,-0.1,3),CFrame.Angles(math.rad(90),0,0))
local PointB = CreatePart("Part",MainModel,0.2,0.2,0.2,ScriptData.Colors.Base,"SmoothPlastic")
PointB.Transparency = 1
PointB.CanCollide = false
local PWB = CreateWeld("Weld",PointB,PointB,Board,CFrame.new(0,-0.1,-3),CFrame.Angles(math.rad(90),0,0))
--
--
local BodyPos = Instance.new("BodyPosition",Board)
BodyPos.maxForce = Vector3.new(1e5,1e5,1e5)
local Tilt = Instance.new("BodyGyro",Board)
Tilt.maxTorque = Vector3.new(1,1,1)/0
local Push = Instance.new("BodyForce",Board)
Push.force = Vector3.new()
--[[Player Welding]]--

if Torso and Human and Board then
	Human.PlatformStand = true
	Torso.CFrame = Torso.CFrame*CFrame.new(0,2,0)
	local TtBW = CreateWeld("Weld",Torso,Torso,Board,CFrame.new(0,3,0),CFrame.Angles(0,math.rad(90),0))
end

local function HoverPiece(CF,CFA)
	local Center = CreatePart("Part",MainModel,0.4,0.2,0.4,"Black","SmoothPlastic")
	Center:ClearAllChildren()
	Instance.new("CylinderMesh",Center).Scale = Vector3.new(1,1,1)
	local Emitter = Instance.new("ParticleEmitter", Center)
	Emitter.Enabled = true
	Emitter.Name = "Realism"
	Emitter.Acceleration = Vector3.new(0.5,0.5,0.5)
	Emitter.Transparency = NumberSequence.new(0.5,0.8)
	Emitter.Rate = NumberRange.new(1)
	local PW1 = CreateWeld("Weld",Center,Center,Board,CF,CFA)
	local Spin = Center:Clone()
	Spin.Parent = MainModel
	Spin.Size = Vector3.new(1,1,1)
	Spin.Transparency = 1
	local SPW = CreateWeld("Weld",Spin,Spin,Center,CFrame.new(0,0,0),CFrame.Angles(0,0,0))
	table.insert(ScriptData.Rotors, SPW)
	for i=0,360,45 do
		local Part = CreatePart("Part",MainModel,1,0.25,0.25,ScriptData.Colors.Base,"SmoothPlastic")
		local PW2 = CreateWeld("Weld",Part,Part,Center,CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,1.08),CFrame.Angles(0,0,0))
		local Edge = CreatePart("Part",MainModel,1,0.2,0.2,ScriptData.Colors.Trim,"Neon")
		local EW = CreateWeld("Weld",Edge,Edge,Part,CFrame.new(0,0,0.05),CFrame.Angles(0,0,0))
	end
	for i=0,360,45 do
		local Rotor = CreatePart("Part",MainModel,2,0.2,0.25,"White","SmoothPlastic")
		Rotor:findFirstChild("Mesh").Scale = Vector3.new(1,0.125,1)
		local RW = CreateWeld("Weld",Rotor,Rotor,Spin,CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,0.2),CFrame.Angles(math.rad(-20),0,0))
	end
end

HoverPiece(CFrame.new(0,0,-2.9),CFrame.Angles(0,0,0))
HoverPiece(CFrame.new(0,0,2.9),CFrame.Angles(0,0,0))

Services.RunService.Stepped:connect(function()
	pcall(function()
		for _,v in pairs(ScriptData.Rotors) do
			if v and v.Parent then
				v.C0 = v.C0 * CFrame.Angles(0,math.rad(10),0)
			end
		end
	end)
	a,b = ypcall(function()
		if Board and Torso and BodyPos and Tilt and PointA and PointB then
			local Rays = Ray.new(PointA.CFrame.p,PointA.CFrame.lookVector*(ScriptData.Lift + 4 + (ScriptData.Keys.Space==true and 5 or 0)))
			local Object,Pos = Services.Workspace:findPartOnRay(Rays,Character)
			local Rays2 = Ray.new(PointB.CFrame.p,PointB.CFrame.lookVector*(ScriptData.Lift + 4 + (ScriptData.Keys.Space==true and 5 or 0)))
			local Object2,Pos2 = Services.Workspace:findPartOnRay(Rays2,Character)
			local Left,Right,Front,Back,Space,Accept = 0,0,0,0,0,0
			local Face = Board.CFrame.lookVector

			if ScriptData.Keys.A==true then
				Left = 1
			elseif ScriptData.Keys.D==true then
				Right = -1
			end
			if ScriptData.Keys.Space==true then
				Space = 5
			else
				Space = 0
			end
			if ScriptData.Keys.S==true then
				Back,ScriptData.Last = -2,-1
				ScriptData.Acceleration = ScriptData.Acceleration >=8 and 8 or ScriptData.Acceleration + 0.1
			elseif ScriptData.Keys.W==true then
				Front,ScriptData.Last = 2,1
				ScriptData.Acceleration = ScriptData.Acceleration >=8 and 8 or ScriptData.Acceleration + 0.1
			elseif ScriptData.Acceleration ~= 0 and not ScriptData.Keys.S==true and not ScriptData.Keys.W==true then
				ScriptData.Acceleration = ScriptData.Acceleration>0 and ScriptData.Acceleration - 0.1 or 0
				Accept = ScriptData.Last
			end

			ScriptData.TurnAngle = ScriptData.TurnAngle - math.pi*(Left+Right)/32
			Tilt.cframe = CFrame.new()*CFrame.Angles(0,-ScriptData.TurnAngle,((Left+Right)/2))*CFrame.Angles(-((Front+Back)/5),0,0)

			if Object and Object:IsA("BasePart") or Object2 and Object2:IsA("BasePart") then
				local A = 0
				local B = 0

				if Object then
					A = Object.CFrame.Y + Object.Size.Y/2
				end
				if Object2 then
					B = Object2.CFrame.Y + Object2.Size.Y/2
				end
				BodyPos.maxForce = Vector3.new(1e5,1e5,1e5)
				BodyPos.position = Vector3.new(Board.CFrame.X,(((A+B)/2)+ScriptData.Lift)+Space,Board.CFrame.Z) + Vector3.new(Face.X,0,Face.Z)*ScriptData.Acceleration*(Front+Back+Accept)
			else
				BodyPos.maxForce = Vector3.new(1e5,0,1e5)
				BodyPos.position = Vector3.new(Board.CFrame.X,Board.CFrame.Y,Board.CFrame.Z) + Vector3.new(Face.X,Space,Face.Z)*ScriptData.Acceleration*(Front+Back+Accept)
			end
		end
	end)
	if not a then
		print("E: "..b)
	end
end)

Thread(function()
	while true do
		for i = 0,10,0.1 do
			ScriptData.Lift = ScriptData.Lift + (math.sin(math.pi*2/10*i)*0.1)
			wait(0.02)
		end 
	end
end)

Mouse.KeyDown:connect(function(Key)
	if Key == "w" then
		ScriptData.Keys.W = true
	end
	if Key == "a" then
		ScriptData.Keys.A = true
	end
	if Key == "s" then
		ScriptData.Keys.S = true
	end
	if Key == "d" then
		ScriptData.Keys.D = true
	end
	if Key:byte() == 32 then
		ScriptData.Keys.Space = true
	end
end)

Mouse.KeyUp:connect(function(Key)
	if Key == "w" then
		ScriptData.Keys.W = false
	end
	if Key == "a" then
		ScriptData.Keys.A = false
	end
	if Key == "s" then
		ScriptData.Keys.S = false
	end
	if Key == "d" then
		ScriptData.Keys.D = false
	end
	if Key:byte() == 32 then
		ScriptData.Keys.Space = false
	end
end)

_Arm("Left", true)
_Arm("Right", true)
_Leg("Left", true)
_Leg("Right", true)
_Head(true)

Services.RunService.RenderStepped:connect(function()
	if Transition then
		if Breathing >= 1 then
			Transition = false
		end
		Breathing = Breathing + 1/100
	else
		if Breathing <= 0 then
			Transition = true
		end
		Breathing = Breathing - 1/100
	end

	if Stance == "None" then
		LA.C0 = LAD * CFrame.Angles(math.rad(10*Breathing),0,math.rad(-20))
		RA.C0 = RAD * CFrame.Angles(math.rad(-10*Breathing),0,math.rad(20))
		LL.C0 = CFrame.new() * CFrame.Angles(0,0,math.rad(-5))
		LR.C0 = CFrame.new() * CFrame.Angles(0,0,math.rad(5))
	end
end)


--// Credits to Mizt for this AMAZING alignment script :> //--
local alignchar = game:GetService("Players").LocalPlayer.Character
local hhat = alignchar['MeshPartAccessory']

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
AlignCharacter(hhat.Handle,alignchar.Dummy.Dummy.Hover.Part,Vector3.new(0,0,0),Vector3.new(-90,0,-135))

for _,v in pairs(alignchar.Dummy.Dummy.Hover:GetChildren()) do
	if v:IsA("BasePart") then
		v.Transparency = 1
	end
end