local robbing = false
local turf = ""
local secondsRemaining = 0

local relationshipTypes = {
  "GANG_1",
  "GANG_2",
  "GANG_9",
  "GANG_10",
  "AMBIENT_GANG_LOST",
  "AMBIENT_GANG_MEXICAN",
  "AMBIENT_GANG_FAMILY",
  "AMBIENT_GANG_BALLAS",
  "AMBIENT_GANG_MARABUNTE",
  "AMBIENT_GANG_CULT",
  "AMBIENT_GANG_SALVA",
  "AMBIENT_GANG_WEICHENG",
  "AMBIENT_GANG_HILLBILLY",
  "DEALER",
  "HATES_PLAYER",
  "NO_RELATIONSHIP",
  "SPECIAL",
  "MISSION2",
  "MISSION3",
  "MISSION4",
  "MISSION5",
  "MISSION6",
  "MISSION7",
  "MISSION8",
} 

function turf_DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function turf_drawTxt(x,y ,width,height,scale, text, r,g,b,a, outline)
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

local turfs = {
	["ballas"] = {
		position = { ['x'] = 105.18218231201, ['y'] = -1940.3350830078, ['z'] = 20.803695678711 },
		reward = 20000 + math.random(1000,4000),
		nameofturf = "Ballas Turf",
		lastrobbed = 0
	},
	["families"] = {
		position = { ['x'] = -155.28141784668, ['y'] = -1656.2554931641, ['z'] = 32.789909362793 },
		reward = 17000 + math.random(1000,4000),
		nameofturf = "Families Turf",
		lastrobbed = 0
	},
	["vagos"] = {
		position = { ['x'] = 320.38580322266, ['y'] = -2027.7858886719, ['z'] = 20.726119995117 },
		reward = 28000 + math.random(1000,4000),
		nameofturf = "Vagos Turf",
		lastrobbed = 0
	},
	["armenian"] = {
		position = { ['x'] = -455.43521118164, ['y'] = -1704.2645263672, ['z'] = 18.84493637085 },
		reward = 9000 + math.random(1000,4000),
		nameofturf = "Armenian Turf",
		lastrobbed = 0
	},
	["lostmc"] = {
		position = { ['x'] = 61.123699188232, ['y'] = 3713.6315917969, ['z'] = 39.754940032959 },
		reward = 18000 + math.random(1000,4000),
		nameofturf = "LostMC HQ",
		lastrobbed = 0
	},
	["canibal"] = {
		position = { ['x'] = -1125.9798583984, ['y'] = 4927.5756835938, ['z'] = 219.11138916016 },
		reward = 16000 + math.random(1000,4000),
		nameofturf = "Altruist Camp",
		lastrobbed = 0
	},
	["lostmc2"] = {
		position = { ['x'] = 966.73254394531, ['y'] = -125.13793945313, ['z'] = 74.353073120117 },
		reward = 29000 + math.random(1000,4000),
		nameofturf = "LostMC Turf",
		lastrobbed = 0
	},
	["vagos2"] = {
		position = { ['x'] = 979.25018310547, ['y'] = -1823.1961669922, ['z'] = 31.181226730347 },
		reward = 27000 + math.random(1000,4000),
		nameofturf = "Vagos Warehouse",
		lastrobbed = 0
	},
	["marabunta"] = {
		position = { ['x'] = 1255.1652832031, ['y'] = -1600.2349853516, ['z'] = 53.081687927246 },
		reward = 12000 + math.random(1000,4000),
		nameofturf = "Marabunta Turf",
		lastrobbed = 0
	},
	["triads"] = {
		position = { ['x'] = -780.54119873047, ['y'] = -922.88250732422, ['z'] = 18.787780761719 },
		reward = 10000 + math.random(1000,4000),
		nameofturf = "Triads Turf",
		lastrobbed = 0
	}
}


RegisterNetEvent('es_turf:currentlyrobbing')
AddEventHandler('es_turf:currentlyrobbing', function(robb)
	robbing = true
	turf = robb
	secondsRemaining = 300
end)

RegisterNetEvent('es_turf:toofarlocal')
AddEventHandler('es_turf:toofarlocal', function(robb)
	robbing = false
	TriggerEvent('chatMessage', 'SYSTEM', {174, 0, 255}, "La capture a été annulée, vous ne recevrez rien.")
	robbingName = ""
	secondsRemaining = 0
	for _, group in ipairs(relationshipTypes) do
	  SetRelationshipBetweenGroups(3, GetHashKey('PLAYER'), GetHashKey(group))
      SetRelationshipBetweenGroups(3, GetHashKey(group), GetHashKey('PLAYER'))
	end
	incircle = false
end)

RegisterNetEvent('es_turf:playerdiedlocal')
AddEventHandler('es_turf:playerdiedlocal', function(robb)
	robbing = false
	TriggerEvent('chatMessage', 'SYSTEM', {174, 0, 255}, "Vous êtes HS ! La capture est annulée.")
	robbingName = ""
	secondsRemaining = 0
	for _, group in ipairs(relationshipTypes) do
	  SetRelationshipBetweenGroups(3, GetHashKey('PLAYER'), GetHashKey(group))
      SetRelationshipBetweenGroups(3, GetHashKey(group), GetHashKey('PLAYER'))
	end
	incircle = false
end)


RegisterNetEvent('es_turf:robberycomplete')
AddEventHandler('es_turf:robberycomplete', function(reward)
	robbing = false
	TriggerEvent('chatMessage', 'SYSTEM', {174, 0, 255}, "La capture a été réalisée, vous recevez :^2" .. reward)
	turf = ""
	secondsRemaining = 0
	for _, group in ipairs(relationshipTypes) do
	  SetRelationshipBetweenGroups(3, GetHashKey('PLAYER'), GetHashKey(group))
      SetRelationshipBetweenGroups(3, GetHashKey(group), GetHashKey('PLAYER'))
	end
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
		for k,v in pairs(turfs)do
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
	for k,v in pairs(turfs)do
		local ve = v.position

		local blip = AddBlipForCoord(ve.x, ve.y, ve.z)
		SetBlipSprite(blip, 409)
		SetBlipScale(blip, 0.8)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Turf")
		EndTextCommandSetBlipName(blip)
	end
end)
incircle = false

Citizen.CreateThread(function()
	while true do
		local pos = GetEntityCoords(GetPlayerPed(-1), true)

		for k,v in pairs(turfs)do
			local pos2 = v.position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 15.1)then
				if not robbing then
					DrawMarker(1, v.position.x, v.position.y, v.position.z - 1, 0, 0, 0, 0, 0, 0, 30.0001, 30.0001, 0.5001, 1555, 0, 0, 0, 0, 0, 0,0)
					
					if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 15)then
						if (incircle == false) then
							turf_DisplayHelpText("Appuyez sur ~INPUT_CONTEXT~ pour capturer ~b~" .. v.nameofturf .. "~w~ ATTENTION les membres du gang vont être alertés !")
						end
						incircle = true
						if(IsControlJustReleased(1, 51))then
							TriggerServerEvent('es_turf:rob', k)
						end
					elseif(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 15)then
						incircle = false
					end
				end
			end
		end

		if robbing then
		    SetPlayerWantedLevel(PlayerId(), 0, 0)
            SetPlayerWantedLevelNow(PlayerId(), 0)
			
			for _, group in ipairs(relationshipTypes) do
              SetRelationshipBetweenGroups(5, GetHashKey('PLAYER'), GetHashKey(group))
              SetRelationshipBetweenGroups(5, GetHashKey(group), GetHashKey('PLAYER'))
			end
			
			turf_drawTxt(0.66, 1.44, 1.0,1.0,0.4, "Capture du point en cours: ~r~" .. secondsRemaining .. "~w~ secondes restantes", 255, 255, 255, 255)
			
			local pos2 = turfs[turf].position
			local ped = GetPlayerPed(-1)
			
            if IsEntityDead(ped) then
			TriggerServerEvent('es_turf:playerdied', turf)
			elseif (Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 15)then
				TriggerServerEvent('es_turf:toofar', turf)
			end
		end

		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(0)
		DrawMarker(1, 105.18218231201, -1940.3350830078, 19.703695678711, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 135, 0, 255, 200, 0, 0, 0, 0)
		DrawMarker(1, -155.28141784668, -1656.2554931641, 32.009909362793, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 33, 255, 0, 200, 0, 0, 0, 0)
		DrawMarker(1, 320.38580322266, -2027.7858886719, 20.006119995117, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 225, 225, 0, 200, 0, 0, 0, 0)
		DrawMarker(1, -455.43521118164, -1704.2645263672, 18.00493637085, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 132, 64, 1, 200, 0, 0, 0, 0)
		DrawMarker(1, 61.123699188232, 3713.6315917969, 39.004940032959, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 255, 255, 255, 200, 0, 0, 0, 0)
		DrawMarker(1, -1125.9798583984, 4927.5756835938, 218.21138916016, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 247, 174, 143, 200, 0, 0, 0, 0)
		DrawMarker(1, 966.73254394531, -125.13793945313, 73.403073120117, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 255, 255, 255, 200, 0, 0, 0, 0)
		DrawMarker(1, 979.25018310547, -1823.1961669922, 30.201226730347, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 255, 255, 0, 200, 0, 0, 0, 0)
		DrawMarker(1, 1255.1652832031, -1600.2349853516, 52.181687927246, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 25, 121, 255, 200, 0, 0, 0, 0)
		DrawMarker(1, -780.54119873047, -922.88250732422, 17.887780761719, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 255, 0, 0, 200, 0, 0, 0, 0)
	end
end)