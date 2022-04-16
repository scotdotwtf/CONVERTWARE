print(" > Running Shopping Cart by by Rufus")
warn("THIS IS MOSTLY FD, SORRY NOT SORRY")

mouse = game.Players.LocalPlayer:GetMouse()
rig = game.Players.LocalPlayer.Character.Dummy.Dummy.Torso
game.Players.LocalPlayer.Character.Animate:destroy()
run = Instance.new("Sound", game.Players.LocalPlayer.Character.Dummy.Dummy.Head)
run.SoundId = "rbxassetid://142665235"
run.Volume = 0
run.Looped = true
run:Play()
run.PlaybackSpeed = 1.2
print(rig["Left Hip"].C0)
print(rig["Right Hip"].C0)
cart = Instance.new("Part", rig)
cart.CanCollide = false
weld = Instance.new("Weld", cart)
weld.Part0 = cart
weld.Part1 = rig
mesh = Instance.new("SpecialMesh", cart)
mesh.MeshId = "rbxassetid://552693518"
mesh.TextureId = "rbxassetid://552693524"
mesh.Scale = Vector3.new(7.2,7,8)
weld.C0 = weld.C0 * CFrame.new(0,1,4.2)
walking = true
game.Players.LocalPlayer.Character.Dummy.Dummy.Humanoid.WalkSpeed = 25

--// Credits to Mizt for this AMAZING alignment script :> //--
local alignchar = game:GetService("Players").LocalPlayer.Character
local hhat = alignchar['Shopping Cart']

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
AlignCharacter(hhat.Handle,alignchar.Dummy.Dummy.Torso.Part,Vector3.new(0,0.1,1),Vector3.new(0,0,0))

for _,v in pairs(alignchar.Dummy.Dummy.Torso:GetChildren()) do
	if v:IsA("BasePart") then
		v.Transparency = 1
	end
end

for i = 1,20 do
    wait()
    rig["Left Shoulder"].C0 = rig["Left Shoulder"].C0 * CFrame.Angles(0,0,-0.08)
    rig["Right Shoulder"].C0 = rig["Right Shoulder"].C0 * CFrame.Angles(0,0,0.08)
end
function walk(key)
    key = key:lower()
    if key == "w" then
    walking = true
    run.Volume = 10
    if walking == true then
    wait()
    for i = 1,5 do
    rig["Left Hip"].C0 = rig["Left Hip"].C0 * CFrame.Angles(0,0,-0.2)
    rig["Right Hip"].C0 = rig["Right Hip"].C0 * CFrame.Angles(0,0,-0.2)
    end
    while walking == true do
    for i = 1,5 do
    wait()
    rig["Left Hip"].C0 = rig["Left Hip"].C0 * CFrame.Angles(0,0,0.4)
    rig["Right Hip"].C0 = rig["Right Hip"].C0 * CFrame.Angles(0,0,0.4)
    end
    for i = 1,5 do
    wait()
    rig["Left Hip"].C0 = rig["Left Hip"].C0 * CFrame.Angles(0,0,-0.4)
    rig["Right Hip"].C0 = rig["Right Hip"].C0 * CFrame.Angles(0,0,-0.4)
    end
    end
    end
    end
    end
mouse.KeyDown:connect(walk)
function notwalk(key)
    key = key:lower()
    if key == "w" then
        walking = false
        run.Volume = 0
        for i = 1,10 do
        wait()
        rig["Left Hip"].C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
        rig["Right Hip"].C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
        end
    end
end
mouse.KeyUp:connect(notwalk)
---------------------------------
walking1 = false
function walk1(key)
    key = key:lower()
    if key == "d" then
    walking1 = true
    if walking1 == true then
    wait()
    run.Volume = 10
    for i = 1,5 do
    rig["Left Hip"].C0 = rig["Left Hip"].C0 * CFrame.Angles(0,0,-0.2)
    rig["Right Hip"].C0 = rig["Right Hip"].C0 * CFrame.Angles(0,0,-0.2)
    end
    while walking1 == true do
    for i = 1,5 do
    wait()
    rig["Left Hip"].C0 = rig["Left Hip"].C0 * CFrame.Angles(0,0,0.4)
    rig["Right Hip"].C0 = rig["Right Hip"].C0 * CFrame.Angles(0,0,0.4)
    end
    for i = 1,5 do
    wait()
    rig["Left Hip"].C0 = rig["Left Hip"].C0 * CFrame.Angles(0,0,-0.4)
    rig["Right Hip"].C0 = rig["Right Hip"].C0 * CFrame.Angles(0,0,-0.4)
    end
    end
    end
    end
    end
mouse.KeyDown:connect(walk1)
function notwalk1(key)
    key = key:lower()
    if key == "d" then
        walking1 = false
        run.Volume = 0
        for i = 1,10 do
        wait()
        rig["Left Hip"].C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
        rig["Right Hip"].C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
        end
    end
end
mouse.KeyUp:connect(notwalk1)
------------------------------------------
walking2 = false
function walk2(key)
    key = key:lower()
    if key == "a" then
    walking2 = true
    run.Volume = 10
    if walking2 == true then
    wait()
    for i = 1,5 do
    rig["Left Hip"].C0 = rig["Left Hip"].C0 * CFrame.Angles(0,0,-0.2)
    rig["Right Hip"].C0 = rig["Right Hip"].C0 * CFrame.Angles(0,0,-0.2)
    end
    while walking2 == true do
    for i = 1,5 do
    wait()
    rig["Left Hip"].C0 = rig["Left Hip"].C0 * CFrame.Angles(0,0,0.4)
    rig["Right Hip"].C0 = rig["Right Hip"].C0 * CFrame.Angles(0,0,0.4)
    end
    for i = 1,5 do
    wait()
    rig["Left Hip"].C0 = rig["Left Hip"].C0 * CFrame.Angles(0,0,-0.4)
    rig["Right Hip"].C0 = rig["Right Hip"].C0 * CFrame.Angles(0,0,-0.4)
    end
    end
    end
    end
    end
mouse.KeyDown:connect(walk2)
function notwalk2(key)
    key = key:lower()
    if key == "a" then
        walking2 = false
        run.Volume = 0
        for i = 1,10 do
        wait()
        rig["Left Hip"].C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
        rig["Right Hip"].C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
        end
    end
end
mouse.KeyUp:connect(notwalk2)
----------------------------------------------------
walking3 = false
function walk3(key)
    key = key:lower()
    if key == "s" then
    walking3 = true
    run.Volume = 10
    if walking3 == true then
    wait()
    for i = 1,5 do
    rig["Left Hip"].C0 = rig["Left Hip"].C0 * CFrame.Angles(0,0,-0.2)
    rig["Right Hip"].C0 = rig["Right Hip"].C0 * CFrame.Angles(0,0,-0.2)
    end
    while walking3 == true do
    for i = 1,5 do
    wait()
    rig["Left Hip"].C0 = rig["Left Hip"].C0 * CFrame.Angles(0,0,0.4)
    rig["Right Hip"].C0 = rig["Right Hip"].C0 * CFrame.Angles(0,0,0.4)
    end
    for i = 1,5 do
    wait()
    rig["Left Hip"].C0 = rig["Left Hip"].C0 * CFrame.Angles(0,0,-0.4)
    rig["Right Hip"].C0 = rig["Right Hip"].C0 * CFrame.Angles(0,0,-0.4)
    end
    end
    end
    end
    end
mouse.KeyDown:connect(walk3)
function notwalk3(key)
    key = key:lower()
    if key == "s" then
        walking3 = false
        run.Volume = 0
        for i = 1,10 do
        wait()
        rig["Left Hip"].C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
        rig["Right Hip"].C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
        end
    end
end
mouse.KeyUp:connect(notwalk3)
grabbing = true
function grab1(cart1)
        if grabbing == true then
        local torso = cart1.Parent:findFirstChild("Torso")
                if torso ~= nil then
                local hum = cart1.Parent:findFirstChild("Humanoid")
                if hum ~= nil then
                hum.PlatformStand = true
        local weld1 = Instance.new("Weld", torso)
        weld1.Part0 = torso
        weld1.Part1 = cart
        weld1.C0 = weld1.C0 * CFrame.Angles(-8,0,1.2) * CFrame.new(0,-1.4,0)
                end
                end
    end
    end
cart.Touched:connect(grab1)
