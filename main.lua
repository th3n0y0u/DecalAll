local Players = game:GetService("Players")

function mainclass()
	
	local function fired()
		 
		local player = script.Parent.Parent.Parent.Parent
		
		for _, v in pairs(player.Character:GetChildren()) do
			local target = player.Character:FindFirstChild(tostring(v))
			for v = 1,6,1 do
				local decal = Instance.new("Decal")
				decal.Texture = "rbxassetid://6919855618"
				decal.Parent = target
				if v == 1 then
					decal.Face = "Front"
				elseif v == 2 then
					decal.Face = "Back"
				elseif v == 3 then
					decal.Face = "Bottom"
				elseif v == 4 then
					decal.Face = "Top"
				elseif v == 5 then
					decal.Face = "Right"
				elseif v == 6 then
					decal.Face = "Left"
				end
			end
		end
	end
	
	local function bentall()
		
		for i, player in pairs(Players:GetPlayers()) do
			for _,v in pairs(player.Character:GetChildren()) do
				local target = player.Character:FindFirstChild(tostring(v))
				for v = 1,6,1 do
					local decal = Instance.new("Decal")
					decal.Texture = "rbxassetid://6919855618"
					decal.Parent = target
					if v == 1 then
						decal.Face = "Front"
					elseif v == 2 then
						decal.Face = "Back"
					elseif v == 3 then
						decal.Face = "Bottom"
					elseif v == 4 then
						decal.Face = "Top"
					elseif v == 5 then
						decal.Face = "Right"
					elseif v == 6 then
						decal.Face = "Left"
					end 
				end
			end
		end
	end
	
	local function bent()
		
		local playerid = Players:FindFirstChild(tostring(script.Parent.TextBox.Text))
		if playerid ~= nil then
			for _,v in pairs(playerid.Character:GetChildren()) do
				local target = playerid.Character:FindFirstChild(tostring(v))
				for v = 1,6,1 do
					local decal = Instance.new("Decal")
					decal.Texture = "rbxassetid://6919855618"
					decal.Parent = target
					if v == 1 then
						decal.Face = "Front"
					elseif v == 2 then
						decal.Face = "Back"
					elseif v == 3 then
						decal.Face = "Bottom"
					elseif v == 4 then
						decal.Face = "Top"
					elseif v == 5 then
						decal.Face = "Right"
					elseif v == 6 then
						decal.Face = "Left"
					end 
				end 
			end
      else 
      print("no u")
		end
	end
	script.Parent.BentMe.MouseButton1Down:Connect(fired)
	script.Parent.BentAll.MouseButton1Down:Connect(bentall)
	script.Parent.TextBox.FocusLost:Connect(bent)
	
end
	
	
	
mainclass()