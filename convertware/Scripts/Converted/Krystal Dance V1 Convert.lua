loadstring(game:HttpGet('https://raw.githubusercontent.com/GelatekWasTaken/GelatekV2/main/LoadLibrary.lua',true))()
print("> Running Krystal Dance v1 by The Krystal Team")

wait(0)
Player = game.Players.LocalPlayer

local count = 0
local countspeed = 1
local sine = 0
local sinespeed = 1
local angle = nil
local global_wait = 0
local showtag = false


--dance booleans--
local jerk = false
local party = false
local canttouch = false
local happy = false
local spin = false
local thriller = false
local barrel = false
local sax = false
local spooky = false
local stride = false
local shuffle = false
local rock = false
local gagnam = false
local snoop = false
local darude = false
local taco = false
------------------
--dance accessory--
local barrelbrick = nil
local saxtool = nil
-------------------
--custom animate--
local walk = false
local jump = false
local sit = false
local run = false
------------------
--walk keys--
local W = false
local A = false
local S = false
local D = false
-------------
local m = Instance.new("Model",game.Players.LocalPlayer.Character.Dummy.Dummy) m.Name = "ModelParts"
local miniweld = nil
local rootpart = nil

local Mouse = nil
local Animate = nil
local Music = nil
local Asset = "http://www.roblox.com/asset/?id="
local Animating = nil
local humanoid = nil
local face = nil 

local Head = nil
local torso = nil
local ra = nil
local la = nil
local rl = nil
local ll = nil
local rs = nil
local ls = nil
local rh = nil
local lh = nil
local neck = nil
local rj = nil

local char = nil
local Hat1 = nil
local Hat2 = nil
local a,b = nil

----------musics-----------------
local M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M11,M12,M13,M14,M15,M16 = nil
---------------------------------

local mesh,meshids,textureids,w

function fm(parent,meshid,x,y,z,meshtexture)
if meshid == "cylinder" then
	mesh = Instance.new("CylinderMesh",parent)
	mesh.Scale = Vector3.new(x,y,z)
	return mesh
else
	mesh = Instance.new("SpecialMesh",parent)
	if meshid ~= "sphere" then
		if type(meshid) == "number" then mesh.MeshId = "rbxassetid://"..meshid else
			mesh.MeshId = "rbxassetid://"..meshids[meshid]
		end
	else mesh.MeshType = 3 end
	mesh.Scale = Vector3.new(x,y,z)
	if meshtexture ~= nil then
		if type(meshtexture) == "number" then 
			mesh.TextureId = "rbxassetid://"..meshtexture 
		else
			mesh.TextureId = "rbxassetid://"..textureids[meshtexture] end
		end
	return mesh
	end
end

function P(x,y,z,color,transparency,cancollide,anchored,parent,typee)
if typee ~= nil then
	c = Instance.new("WedgePart",m)
else
	c = Instance.new("Part",m)
end
c.TopSurface,c.BottomSurface = 0,0
c.Locked = true
c.formFactor = "Custom"
c.Size = Vector3.new(x,y,z)
if color ~= "random" then
	c.BrickColor = BrickColor.new(color)
else 
	c.BrickColor = BrickColor:random() 
end
c.Transparency = transparency
c.CanCollide = cancollide
if anchored ~= nil then 
	c.Anchored = anchored 
end
if parent ~= nil then 
	c.Parent = parent 
end
return c
end

function We(part0,part1,x,y,z,rx,ry,rz,parent)
w = Instance.new("Motor",m)
if parent ~= nil then w.Parent = parent end
	w.Part0,w.Part1 = part0,part1
	w.C1 = CFrame.new(x,y,z) * CFrame.Angles(rx,ry,rz)
	return w
end

function SetAnimation(id,humanoid)
	if Animating ~= nil then
		Animating:Stop()
	end
	Animate.AnimationId = Asset .. id
	Animating = humanoid:LoadAnimation(Animate)
	Animating:Play()
end

function AnimationStop()
		jerk = false
		party = false
		canttouch = false
		happy = false
		spin = false
		thriller = false
		barrel = false
		sax = false
		spooky = false
		stride = false
		shuffle = false
		rock = false
		gagnam = false
		snoop = false
		darude = false
		taco = false
		if barrelbrick ~= nil then
			barrelbrick:Remove()
			barrelbrick = nil
		end
		if saxtool ~= nil then
			saxtool:Remove()
			saxtool = nil
		end
		if sandstorm ~= nil then
			sandstorm:Remove()
			sandstorm = nil
		end
end

local Musical
function SetMusic(id,volume)
	Musical = Instance.new("Sound",char.Head)
	if volume == nil then
		Musical.Volume = 1
	else
		Musical.Volume = volume
	end
	Musical.Looped = true
	Musical.SoundId = Asset .. id
	return Musical
end

function GenerateGui()
	a=Instance.new("ScreenGui")
	a.Name = "KrystalDance By KrystalTeam"
	b=Instance.new("ImageLabel",a)
	b.BackgroundTransparency = 1
	b.Size = UDim2.new(0,250,0,100)
	b.Position = UDim2.new(0,0,1,0)
	b.Image = Asset .. "269467798"
	b.Name = "Logo"
	c=Instance.new("Sound",a)
	c.Name = "Intro"
	c.Volume = 1
	c.SoundId = Asset .. "236146895"
	c.Looped = false
	return a
end

function Generate(player)
char = player.Character.Dummy.Dummy
Hat1 = P(1,1,1,'Black',0,false,false)
Hat2 = P(1,1,1,'Black',0,false,false)
wait()
a=fm(Hat1,1577360,1,1,1,1577349) a.VertexColor = Vector3.new(1,1,1)
b=fm(Hat2,13640868,1,1,1,18987684) b.VertexColor = Vector3.new(1,1,1)
wait()
if char:FindFirstChild("Head") then
	We(Hat1,char.Head,0,0.25,-0.135,0,0,0)
	We(Hat2,char.Head,0,0.8,0,0,0,0)
	if char.Head:FindFirstChild("face") ~= nil then
		face = char.Head:FindFirstChild("face")
		face.Texture = "rbxasset://textures/face.png"
	end
	c=char.Head:clone()
	c.Name = "FalseHead"
	c.CanCollide = false
	c.Parent = char
	We(c,char.Head,0,0,0,0,0,0)
	char.Head.Transparency = 1
	for i,v in pairs(char:GetChildren()) do
		if v.ClassName == "Shirt" or v.ClassName == "Pants" or v.ClassName == "Hat" or v.ClassName == "CharacterMesh" or v.ClassName == "Shirt Graphic" then
			v:Remove()
		end
		if v.ClassName == "BodyColors" then
			v.HeadColor = BrickColor.new("White")
			v.LeftArmColor = BrickColor.new("Really black")
			v.LeftLegColor = BrickColor.new("Really black")
			v.RightArmColor = BrickColor.new("Really black")
			v.RightLegColor = BrickColor.new("Really black")
			v.TorsoColor = BrickColor.new("Really black")
		end
		if v.ClassName == "Part" then
			if v.Name == "Head" or v.Name == "FalseHead" then
				v.BrickColor = BrickColor.new("White")
				else
				v.BrickColor = BrickColor.new("Really black")
			end
		end
	end
----------musics---------------
	M1=SetMusic(168007346)
	M2=SetMusic(144901116)
	M3=SetMusic(168570436)
	M4=SetMusic(142435409)
	M5=SetMusic(131525189)
	M6=SetMusic(133196268)
	M7=SetMusic(130791919)
	M8=SetMusic(130794684)
	M9=SetMusic(155313239)
	M10=SetMusic(158036870)
	M11=SetMusic(145262991)
	M12=SetMusic(151430448)
	M13=SetMusic(130844430)
	M14=SetMusic(172388329)
	M15=SetMusic(179534184)
	M16=SetMusic(142295308)
-------------------------------
	
	if char:FindFirstChild("HumanoidRootPart") ~= nil then
		rootpart = char:FindFirstChild("HumanoidRootPart")
	end
	if showtag == true then
		local bbg = Instance.new("BillboardGui",c)
		bbg.Adornee = c
		bbg.Name = "satuttava"
		bbg.Size = UDim2.new(6,0,2,0)
		bbg.StudsOffset = Vector3.new(0,2,0)
		local box = Instance.new("TextLabel",bbg)
		box.Size = UDim2.new(1,0,1,0)
		box.BackgroundColor = BrickColor.new("White")
		box.TextColor3 = Color3.new(255,0,0)
		box.TextStrokeTransparency = 0.5
		box.Font = 3
		box.Text = Player.Name
		box.BackgroundTransparency = 1
		box.Position = UDim2.new(0,0,0,0)
		box.TextScaled = true
	end
	if char:FindFirstChild("Humanoid") ~= nil then
		char:FindFirstChild("Humanoid").MaxHealth = (100*100*100*100)*100
		wait()
		char:FindFirstChild("Humanoid").Health = char:FindFirstChild("Humanoid").MaxHealth
		--char:FindFirstChild("Humanoid").Name = game.Players.LocalPlayer.Name
		humanoid = char:FindFirstChild("Humanoid")
		if humanoid:FindFirstChild("Animator") ~= nil then
			humanoid:FindFirstChild("Animator"):Remove()
			--Instance.new("Animator",humanoid)
		end
		if char:FindFirstChild("Animate") ~= nil then
			char:FindFirstChild("Animate"):Remove()
		end
	end
	Mouse = player:GetMouse()
	Music = Instance.new("Sound",char.Head)
	Music.Volume = 1
	Music.Looped = true
	Music.SoundId = Asset
	Animate = Instance.new("Animation",char.Head)
	Animate.AnimationId = Asset
	
	
	
	Head = char:FindFirstChild("Head")
	torso = char:FindFirstChild("Torso")
	ra = char:findFirstChild("Right Arm")
	la = char:findFirstChild("Left Arm")
	rl = char:findFirstChild("Right Leg")
	ll = char:findFirstChild("Left Leg")
	rs = torso:findFirstChild("Right Shoulder")
	ls = torso:findFirstChild("Left Shoulder")
	rh = torso:findFirstChild("Right Hip")
	lh = torso:findFirstChild("Left Hip")
	neck = torso:findFirstChild("Neck")
	rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
	
	state = humanoid:GetState()
	local ca = nil
	ca=GenerateGui()
	ca.Parent = player.PlayerGui
	if ca:FindFirstChild("Logo") ~= nil then
		ca:FindFirstChild("Logo"):TweenPosition(UDim2.new(0, 0, 1, -100), "Out", "Quad", 3, true)
		if ca:FindFirstChild("Intro") ~= nil then
			ca:FindFirstChild("Intro"):Play()
			coroutine.resume(coroutine.create(function() 
				for i=0,30 do
					ca:FindFirstChild("Intro").Volume = 1/(i/2)
					wait(0.5)
					if i >= 30 then
						break
					end
				end
			end))
		end
	end

	if humanoid ~= nil then
		humanoid.Changed:connect(function(pro)
			if pro == "MoveDirection" or pro == "Jump" then
				if Music.IsPlaying == true then
					AnimationStop()
				end
			end
		end)
		humanoid.Died:connect(function()
			AnimationStop()
		end)
		
	Mouse.KeyUp:connect(function(key) 
		if key == "w" then
			W = false
		end
		if key == "a" then
			A = false
		end
		if key == "s" then
			S = false
		end
		if key == "d" then
			D = false
		end
		if string.byte(key) == 48 then
			run = false
		end
	end)
		
	Mouse.KeyDown:connect(function(key) 
		if key == "w" then
			W = true
			AnimationStop()
		end
		if key == "a" then
			A = true
			AnimationStop()
		end
		if key == "s" then
			S = true
			AnimationStop()
		end
		if key == "d" then
			D = true
			AnimationStop()
		end
	end)
	
	
	
	Mouse.KeyDown:connect(function(key) 
		KeyUsed(key)
	end)
end
end
print'KrystalDance By: KrystalTeam as fully Loaded!'
end

function KeyUsed(key)
		if humanoid ~= nil then
			if humanoid.Health > 0 then
				if string.byte(key) == 32 then
					jump = true
					AnimationStop()
					--sit = false
				end
				if string.byte(key) == 50 then
					AnimationStop()
					if sit == true then
						sit = false
					else
						sit = true
					end
				end
				if string.byte(key) == 48 then
					run = true
				end
				if W == false and A == false and S == false and D == false and jump == false and sit == false then
					if key == "Q" or key == "q" then
						AnimationStop()
						canttouch = true
						M1:Play()
					end
					if key == "E" or key == "e" then
						AnimationStop()
						party = true
						M2:Play()
					end
					if key == "R" or key == "r" then
						AnimationStop()
						jerk = true
						M3:Play()
					end
					if key == "T" or key == "t" then
						AnimationStop()
						happy = true
						M4:Play()
					end
					if key == "Y" or key == "y" then
						AnimationStop()
						spin = true
						M5:Play()
					end
					if key == "U" or key == "u" then
						AnimationStop()
						thriller = true
						M6:Play()
					end
					if key == "F" or key == "f" then
						AnimationStop()
						barrel = true
						M7:Play()
						if barrelbrick == nil and barrel == true then
							barrelbrick = P(2,2,1,'Black',0,false,false)
							a=fm(barrelbrick,29873142,1.1,0.8,1.1,31082268) a.VertexColor = Vector3.new(1,1,1)
							We(barrelbrick,char.Torso,0,-0.2,0,0,0,0)
						end
					end
					if key == "P" or key == "p" then
						AnimationStop()
						sax = true
						M8:Play()
						if saxtool == nil and sax == true then
							saxtool = P(1,2,2,'Black',0,false,false)
							a=fm(saxtool,44410178,1.5,1.5,1.5,44410320) a.VertexColor = Vector3.new(1,1,1)
							b=We(saxtool,char:FindFirstChild("Left Arm"),0,-1,0,0,0,0)
							b.C1 = CFrame.new(0.5, -0.9, -0.3) * CFrame.Angles(math.pi/1.5, -math.pi/2, -math.pi/8)
						end
					end
					if key == "G" or key == "g" then
						AnimationStop()
						spooky = true
						M9:Play()
					end
					if key == "H" or key == "h" then
						AnimationStop()
						stride = true
						M10:Play()
					end
					if key == "J" or key == "j" then
						AnimationStop()
						shuffle = true
						M11:Play()
					end
					if key == "K" or key == "k" then
						AnimationStop()
						rock = true
						M12:Play()
					end
					if key == "L" or key == "l" then
						AnimationStop()
						gagnam = true
						M13:Play()
					end
					if key == "Z" or key == "z" then
						AnimationStop()
						snoop = true
						M14:Play()
					end
					if key == "X" or key == "x" then
						AnimationStop()
						darude = true
						M15:Play()
						if sandstorm == nil and darude == true then
							sandstorm = P(1,1,1,'Black',0,false,false)
							sandstorm.Transparency = 1
							a=Instance.new("Smoke",sandstorm)
							a.Color = Color3.new(255/255,255/255,175/255)
							a.Size = 0.4
							a.RiseVelocity = 3
							a.Opacity = 0.75
							b=We(sandstorm,char:FindFirstChild("Torso"),0,0,0,0,0,0)
							b.C1 = CFrame.new(0, -2, 0)
						end
					end
					if key == "C" or key == "c" then
						AnimationStop()
						taco = true
						M16:Play()
					end
				end
			end
		end
end

Generate(Player)

game:service'RunService'.Stepped:connect(function()
	count = (count % 100) + countspeed
	angle = math.pi * math.sin(math.pi*2/100*count)
	countspeed = 1
	
	state = humanoid:GetState()
	if state ~= Enum.HumanoidStateType.Freefall then
		jump = false
	else
		jump = true
		sit = false
		AnimationStop()
	end
	
	local mesh1anan = Instance.new("SpecialMesh")
	mesh1anan.MeshType = Enum.MeshType.FileMesh
	mesh1anan.Scale = Vector3.new(3,3,3)
	mesh1anan.MeshId = "http://www.roblox.com/asset/?id=14846869"
	mesh1anan.TextureId = "http://www.roblox.com/asset/?id=14846834"
	if taco == true then
		if char ~= nil then
	        local locationanan = char:GetModelCFrame()
	        local tacoa = Instance.new("Part")
	        tacoa.CanCollide = false
	        tacoa.RotVelocity = Vector3.new(math.random()*math.pi,math.random()*math.pi,math.random()*math.pi)
	        local meshanananan = mesh1anan:clone()
	        meshanananan.Parent = tacoa
	        meshanananan.Scale = Vector3.new(math.random()*20,math.random()*20,math.random()*20)
	        tacoa.CFrame = locationanan * CFrame.new(math.random()*500 - 250,math.random(100,200),math.random()*500 - 250)
	        tacoa.Parent = workspace
	        game:GetService("Debris"):AddItem(tacoa,4)
		end
	end
	
	
	
	
	if canttouch == false then	
		M1:Stop()
	end
	if party == false then	
		M2:Stop()
	end
	if jerk == false then	
		M3:Stop()
	end
	if happy == false then	
		M4:Stop()
	end
	if spin == false then	
		M5:Stop()
	end
	if thriller == false then	
		M6:Stop()
	end
	if barrel == false then	
		M7:Stop()
	end
	if sax == false then	
		M8:Stop()
	end
	if spooky == false then	
		M9:Stop()
	end
	if stride == false then	
		M10:Stop()
	end
	if shuffle == false then	
		M11:Stop()
	end
	if rock == false then
		M12:Stop()
	end
	if gagnam == false then
		M13:Stop()
	end
	if snoop == false then
		M14:Stop()	
	end
	if darude == false then
		M15:Stop()
	end
	if taco == false then
		M16:Stop()
	end
	
	if run == true and sit == false then
		humanoid.WalkSpeed = 25
	elseif sit == true then
		humanoid.WalkSpeed = 0
	else
		humanoid.WalkSpeed = 16
	end
	
	if global_wait == 380 then global_wait = 0 end
	
	if (W == false or A == false or S == false or D == false) and jump == false and sit == false then
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 - angle/75)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 - angle/75)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/75)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/75)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/75, math.pi, 0)
			rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2, math.pi, 0)
	end
	
	
	if (W == false or A == false or S == false or D == false) and jump == false and sit == true then
		local ray = Ray.new(torso.Position, Vector3.new(0, -3, 0))
		local hitz,enz = workspace:FindPartOnRay(ray, char)
		if hitz then
			if rootpart:FindFirstChild("Weld") == nil then
				miniweld = Instance.new("Weld", rootpart)
				miniweld.C0 = hitz.CFrame:toObjectSpace(rootpart.CFrame)
				miniweld.Part0 = hitz
				miniweld.Part1 = rootpart
				humanoid.PlatformStand = true
			end
		end
	else
		if rootpart:FindFirstChild("Weld") ~= nil then
			rootpart:FindFirstChild("Weld"):Destroy()
			humanoid.PlatformStand = false
		end
	end
	
	if (W == false or A == false or S == false or D == false) and jump == false and sit == true then
		ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 - math.pi/15)
		rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 + math.pi/15)
		lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + math.pi/8, 0, math.pi/2 - math.pi/15)
		rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + math.pi/8, 0, -math.pi/2 + math.pi/15)
		neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + math.pi/15, math.pi, 0)
		rj.C0 = CFrame.new(0, -2, 0) * CFrame.Angles(math.pi/2 + math.pi/15, math.pi, 0)
	end
	
	if jump == true and sit == false then
		countspeed = 2
		ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, math.pi + angle/12)
		rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, math.pi + angle/12)
		lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/12)
		rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/12)
		neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/25, math.pi, 0)
		rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2+ angle/50, math.pi, 0)
	end
	
	if (W == true or A == true or S == true or D == true) and jump == false and sit == false then
		if run == true then
			countspeed = 4
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 - angle/3)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 - angle/3)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/5)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/5)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/20, math.pi, 0)
			rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2 + angle/40, math.pi, 0)
		else
			countspeed = 2
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 - angle/4)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 - angle/4)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/6)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/6)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/25, math.pi, 0)
			rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2+ angle/50, math.pi, 0)
		end
	end

	if W == false and A == false and S == false and D == false and jump == false and sit == false then
		if jerk == true and jump == false and sit == false then
			countspeed = 2
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(angle/5, 0, angle/4)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(angle/5, 0, -angle/4)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(angle/10, 0, angle/5)-- * CFrame.Angles(angle*0.5, 0, -math.abs(angle*0.15))
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(angle/10, 0, angle/5)-- * CFrame.Angles(-angle*0.5, 0, math.abs(angle*0.15))
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/5, math.pi, 0)
			rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2 + angle/5, math.pi, 0)
		elseif party == true and jump == false and sit == false then
			countspeed = 4
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(angle/15, 0, angle/15)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(angle/15, 0, angle/15)
			ls.C1 = CFrame.new(0.25,0.5 + 1 * angle/10,0.5) * CFrame.Angles(math.pi  + angle/10, 0, 0 + angle/10)
			rs.C1 = CFrame.new(-0.25,0.5 + 1 * angle/10,0.5) * CFrame.Angles(math.pi  + angle/10, 0, 0  + angle/10)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/10, math.pi, 0)
			rj.C0 = CFrame.new(0, 0.5 + angle/5, 0) * CFrame.Angles(math.pi/2, math.pi, 0)
		elseif canttouch == true and jump == false and sit == false then
			countspeed = 2
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0 + angle/8, 0, math.pi/12 + angle/12)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0 + angle/8, 0, -math.pi/12 - angle/12)
			lh.C1 = CFrame.new(0.35,0.7,0.5) * CFrame.Angles(0 + angle/10, 0, -math.pi/8)
			rh.C1 = CFrame.new(-0.35,0.7,0.5) * CFrame.Angles(0 + angle/10, 0, math.pi/8)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/15, math.pi, 0)
			rj.C0 = CFrame.new(angle/4, -0.3 + angle/20, 0) * CFrame.Angles(math.pi/2, math.pi, 0)
		elseif happy == true and jump == false and sit == false then
			countspeed = 4
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(math.pi/4, math.pi/8 + angle/8, math.pi/4 + angle/8)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(math.pi/4, -math.pi/8 + angle/8, -math.pi/4 + angle/8)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + angle/10, 0, 0  + angle/10)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + angle/10, 0, 0  + angle/10)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/15, math.pi + angle/15, 0 + angle/15)
			rj.C0 = CFrame.new(0, 0 + angle/20, 0) * CFrame.Angles(math.pi/2, math.pi, 0)
		elseif spin == true and jump == false and sit == false then
			global_wait = (global_wait % 360) + 4
			countspeed = 4
			ls.C1 = CFrame.new(0,1,0) * CFrame.Angles(math.pi/2, 0 + angle/10, 0 + angle/10)
			rs.C1 = CFrame.new(0,1,0) * CFrame.Angles(math.pi/2, 0 - angle/10, 0 + angle/10)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + angle/10, 0 + angle/10, 0  + angle/10)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + angle/10, 0 + angle/10, 0  + angle/10)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2, math.pi, 0)
			rj.C0 = CFrame.new(0 + angle/25, 0, 0 - angle/25) * CFrame.Angles(math.pi/2, math.pi, math.rad(global_wait*4))
		elseif thriller == true and jump == false and sit == false then
			countspeed = 2
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, math.pi/2 + angle/15)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, -math.pi/2 + angle/15)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(math.pi/60 - angle/45, 0, 0 + angle/15)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(math.pi/60 + angle/45, 0, 0 + angle/15)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/15, math.pi + angle/10, 0)
			rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2 + angle/50 , math.pi + angle/50, 0 + angle/50)
		elseif barrel == true and jump == false and sit == false then
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, math.pi)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, math.pi)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2, math.pi, 0)
			rj.C0 = CFrame.new(0 + angle, -1.8, 0) * CFrame.Angles(0, math.pi, 0 + angle)
		elseif sax == true and jump == false and sit == false then
			countspeed = 2
			ls.C1 = CFrame.new(0,0.75,-0.25) * CFrame.Angles(-math.pi/5, 0, math.pi/2 - math.abs(angle/30))
			rs.C1 = CFrame.new(0,0.75,-0.25) * CFrame.Angles(-math.pi/5, 0, -math.pi/2 + math.abs(angle/30))
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 - math.abs(angle/30))
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + math.abs(angle/30))
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2, math.pi, 0)
			rj.C0 = CFrame.new(0, -math.abs(angle*0.05), math.abs(angle*0.025)) * CFrame.Angles(math.pi/2 + math.abs(angle/20), math.pi, 0)
		elseif spooky == true and jump == false and sit == false then
			countspeed = 3
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, math.pi/2 - angle/1.5)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, -math.pi/2 + angle/1.5)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 - angle/16)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/16)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2  + angle/12, math.pi, 0)
			rj.C0 = CFrame.new(0, 0 + angle / 35, 0) * CFrame.Angles(math.pi/2 + angle/25, math.pi, 0)
		elseif stride == true and jump == false and sit == false then
			countspeed = 2.5
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(angle/16, angle/16,math.pi/3.5 + angle/8)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(angle/16, -angle/16,-math.pi/1.5 + -angle/8)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, angle/16, angle/16)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, angle/16, angle/16)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2, math.pi, 0)
			rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2-angle/16, math.pi, 0)
		elseif shuffle == true and jump == false and sit == false then
			countspeed = 2
			ls.C1 = CFrame.new(0,0.75,-0.35) * CFrame.Angles(math.pi/8, 0, math.pi/2 + angle/3.5)
			rs.C1 = CFrame.new(0,0.75,-0.35) * CFrame.Angles(math.pi/8, 0, -math.pi/2 + angle/3.5)
			lh.C1 = CFrame.new(0 + angle/50,1,0.5) * CFrame.Angles(0, 0 + angle/35, 0 + angle/15)
			rh.C1 = CFrame.new(0 + angle/50,1,0.5) * CFrame.Angles(0, 0 + angle/35, 0 + angle/15)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/15, math.pi, 0)
			rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2 - angle/35, math.pi - angle/35, 0)
		elseif rock == true and jump == false and sit == false then
			countspeed = 4
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, math.pi/2+angle/2)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, -math.pi/2+angle/2)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0+angle/32, 0, 0+angle/32)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0+angle/32, 0, 0-angle/32)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2, math.pi, 0)
			rj.C0 = CFrame.new(0, 0 - angle/50, 0) * CFrame.Angles(math.pi/2, math.pi, 0)
		elseif gagnam == true and jump == false and sit == false then
			countspeed = 4
			ls.C1 = CFrame.new(0,0.75,-0.15) * CFrame.Angles(-math.pi/4, 0, (math.pi/2 + angle/14) - math.pi/20)
			rs.C1 = CFrame.new(0,0.75,-0.15) * CFrame.Angles(-math.pi/4, 0, (-math.pi/2 - angle/14) + math.pi/20)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + angle/16, 0, 0)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + angle/16, 0, 0)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/20, math.pi, 0)
			rj.C0 = CFrame.new(0, 0 + angle/40, 0) * CFrame.Angles(math.pi/2, math.pi, 0)
		elseif snoop == true and jump == false and sit == false then
			countspeed = 2
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(math.pi/12, 0, math.pi/4 + angle/4)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(math.pi/12, 0, -math.pi/4 + angle/4)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(math.pi/24, 0, 0 + angle/4)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(math.pi/24, 0, 0 + angle/4)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 - angle/8, math.pi, 0)
			rj.C0 = CFrame.new(0, 0 + angle/48, 0) * CFrame.Angles(math.pi/2 + angle/24, math.pi, 0)
		elseif darude == true and jump == false and sit == false then
			countspeed = 3
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 + angle/1.5)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 + angle/3)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 - angle/3)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 - angle/1.5)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2, math.pi, 0)
			rj.C0 = CFrame.new(0, 0+ angle/45, 0) * CFrame.Angles(math.pi/2 - angle/6, math.pi, 0)
		elseif taco == true and jump == false and sit == false then
			countspeed = 4
			global_wait = (global_wait % 360) + 4
			ls.C1 = CFrame.new(0,1,-0.25) * CFrame.Angles(math.pi/6 + angle/12, 0, math.pi)
			rs.C1 = CFrame.new(0,1,-0.25) * CFrame.Angles(math.pi/6 + angle/12, 0, math.pi)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, math.pi/8 + angle/16)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, math.pi/8 + angle/16)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 - math.pi/8 + angle/16, math.pi, 0)
			rj.C0 = CFrame.new(0, 0.25 + angle/12, 0) * CFrame.Angles(math.pi/2, math.pi, math.rad(global_wait*4))
		end
	end
end)
