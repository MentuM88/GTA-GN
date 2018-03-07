local robbing = false
local bank = ""
local secondsRemaining = 0

function bank_DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function bank_drawTxt(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    if(outline)then
	    SetTextOutline()
	end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end

--[[local banks = {
	["fleeca"] = {
		position = { ['x'] = 147.04908752441, ['y'] = -1044.9448242188, ['z'] = 29.36802482605 },
		reward = 50000 + math.random(200000,800000),
		nameofbank = "Fleeca centre ville",
		lastrobbed = 0
	},
	["fleeca2"] = {
		position = { ['x'] = -2957.6674804688, ['y'] = 481.45776367188, ['z'] = 15.697026252747 },
		reward = 50000 + math.random(200000,300000),
		nameofbank = "Fleeca Bank (Autoroute)",
		lastrobbed = 0
	},
	["blainecounty"] = {
		position = { ['x'] = -107.06505584717, ['y'] = 6474.8012695313, ['z'] = 31.62670135498 },
		reward = 30000 + math.random(200000,500000),
		nameofbank = "Blaine County Savings (Paleto)",
		lastrobbed = 0
	},--]]
	["PrincipalBank"] = {
		position = { ['x'] = 255.001098632813, ['y'] = 225.855895996094, ['z'] = 101.005694274902 },
		reward = math.random(800000,1000000),
		nameofbank = "Principal bank (Centre Ville)",
		lastrobbed = 0
	},
	--[[["Bateau"] = {
		position = { ['x'] = -2070.98, ['y'] = -1022.44, ['z'] = 11.91 },
		reward = math.random(100000,250000),
		nameofbank = "Bateau",
		lastrobbed = 0
	},
	["ForS"] = {
		position = { ['x'] = -226.26, ['y'] = -2000.46, ['z'] = 24.69 },
		reward = math.random(100000,200000),
		nameofbank = "Fame or Shame (Stadium)",
		lastrobbed = 0
	},
	["Prison"] = {
		position = { ['x'] = 1719.96, ['y'] = 2649.48, ['z'] = 45.56 },
		reward = math.random(200000,400000),
		nameofbank = "Prison",
		lastrobbed = 0
	},
	["Unicorn"] = {
		position = { ['x'] = 96.80, ['y'] = -1290.25, ['z'] = 29.26 },
		reward = math.random(100000,200000),
		nameofbank = "Unicorn",
		lastrobbed = 0
	},
	["Casino"] = {
		position = { ['x'] = 1023.58, ['y'] = 143.19, ['z'] = 85.18 },
		reward = 200000,
		nameofbank = "Laboratoire",
		lastrobbed = 0
	},
	["Bar des motards"] = {
		position = { ['x'] = -561.59, ['y'] = 281.45, ['z'] = 85.67 },
		reward = 200000,
		nameofbank = "Bar des motards",
		lastrobbed = 0
	},
	["Secte"] = {
		position = { ['x'] = -699.31, ['y'] = 47.28, ['z'] = 44.03 },
		reward = 200000,
		nameofbank = "Secte",
		lastrobbed = 0
	},
	["Mairie"] = {
		position = { ['x'] = -442.85, ['y'] = 1061.51, ['z'] = 327.68 },
		reward = 200000,
		nameofbank = "Mairie",
		lastrobbed = 0
	},
	["Fabrique d'arme"] = {
		position = { ['x'] = 821.99, ['y'] = -2161.72, ['z'] = 29.61 },
		reward = 200000,
		nameofbank = "Fabrique d'arme",
		lastrobbed = 0
	},
	["LS custom"] = {
		position = { ['x'] = -344.61, ['y'] = -123.23, ['z'] = 39.00 },
		reward = 200000,
		nameofbank = "LS custom",
		lastrobbed = 0
	},
	["Cuisine central"] = {
		position = { ['x'] = 967.39, ['y'] = -1636.91, ['z'] = 30.11 },
		reward = 200000,
		nameofbank = "Cuisine central",
		lastrobbed = 0
	},
	["Sandy"] = {
		position = { ['x'] = 1536.57, ['y'] = 3798.01, ['z'] = 34.45 },
		reward = 200000,
		nameofbank = "Sandy",
		lastrobbed = 0
	},
	["Entrepot agricole"] = {
		position = { ['x'] =  2488.57, ['y'] = 4962.34, ['z'] = 44.75 },
		reward = 200000,
		nameofbank = "Entrepot Agricole",
		lastrobbed = 0
	},
	["Bijouterie"] = {
		position = { ['x'] =  -620.46, ['y'] = -224.42, ['z'] = 38.05 },
		reward = 100000,
		nameofbank = "Bijouterie",
		lastrobbed = 0
	},
	["Hotel de luxe"] = {
		position = { ['x'] = -563.55, ['y'] = -95.15, ['z'] = 40.33 },
		reward = 250000,
		nameofbank = "hotel de luxe",
		lastrobbed = 0
	},--]]

}



RegisterNetEvent('es_bank:currentlyrobbing')
AddEventHandler('es_bank:currentlyrobbing', function(robb)
	robbing = true
	bank = robb
	secondsRemaining = 720
end)

RegisterNetEvent('es_bank:toofarlocal')
AddEventHandler('es_bank:toofarlocal', function(robb)
	robbing = false
	TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, "The robbery was cancelled, you will receive nothing.")
	robbingName = ""
	secondsRemaining = 0
	incircle = false
end)

RegisterNetEvent('es_bank:playerdiedlocal')
AddEventHandler('es_bank:playerdiedlocal', function(robb)
	robbing = false
	TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, "The robbery was cancelled, you died!.")
	robbingName = ""
	secondsRemaining = 0
	incircle = false
end)


RegisterNetEvent('es_bank:robberycomplete')
AddEventHandler('es_bank:robberycomplete', function(reward)
	robbing = false
	TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, "Robbery done, you received:^2" .. reward)
	bank = ""
	secondsRemaining = 0
	incircle = false
end)

Citizen.CreateThread(function()
	while true do
		if robbing then
			Citizen.Wait(1000)
			if(secondsRemaining > 0)then
				secondsRemaining = secondsRemaining - 1
			end
		end

		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	while true do
		local pos = GetEntityCoords(GetPlayerPed(-1), true)
		for k,v in pairs(banks)do
			local pos2 = v.position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 15.0)then
				if IsPlayerWantedLevelGreater(PlayerId(),0) or ArePlayerFlashingStarsAboutToDrop(PlayerId()) then
					local wanted = GetPlayerWantedLevel(PlayerId())
					Citizen.Wait(5000)
				    SetPlayerWantedLevel(PlayerId(), wanted, 0)
					SetPlayerWantedLevelNow(PlayerId(), 0)
				end
			end
		end
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	for k,v in pairs(banks)do
		local ve = v.position

		local blip = AddBlipForCoord(ve.x, ve.y, ve.z)
		SetBlipSprite(blip, 500)
		SetBlipScale(blip, 0.8)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Robbable Bank")
		EndTextCommandSetBlipName(blip)
	end
end)
incircle = false

Citizen.CreateThread(function()
	while true do
		local pos = GetEntityCoords(GetPlayerPed(-1), true)

		for k,v in pairs(banks)do
			local pos2 = v.position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 15.0)then
				if not robbing then
					DrawMarker(1, v.position.x, v.position.y, v.position.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 1555, 0, 0,255, 0, 0, 0,0)
					
					if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 2)then
						if (incircle == false) then
							bank_DisplayHelpText("Press ~INPUT_CONTEXT~ to rob ~b~" .. v.nameofbank .. "~w~ beware, the police will be alerted!")
						end
						incircle = true
						if(IsControlJustReleased(1, 51))then
							TriggerServerEvent('es_bank:rob', k)
						end
					elseif(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 2)then
						incircle = false
					end
				end
			end
		end

		if robbing then
		    SetPlayerWantedLevel(PlayerId(), 0, 0)
            SetPlayerWantedLevelNow(PlayerId(), 0)
			
			bank_drawTxt(0.66, 1.44, 1.0,1.0,0.4, "Robbing bank: ~r~" .. secondsRemaining .. "~w~ seconds remaining", 255, 255, 255, 255)
			
			local pos2 = banks[bank].position
			local ped = GetPlayerPed(-1)
			
            if IsEntityDead(ped) then
			TriggerServerEvent('es_bank:playerdied', bank)
			elseif (Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 15)then
				TriggerServerEvent('es_bank:toofar', bank)
			end
		end

		Citizen.Wait(0)
	end
end)