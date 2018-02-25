-- Remember to use the cop group or this won't work
-- K > Admin > Add Group > User ID > cop

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_bank")

local banks = {
	["fleeca"] = {
		position = { ['x'] = 147.04908752441, ['y'] = -1044.9448242188, ['z'] = 29.36802482605 },
		reward = 10000 + math.random(200000,400000),
		nameofbank = "Fleeca centre ville",
		lastrobbed = 0
	},
	["fleeca2"] = {
		position = { ['x'] = -2957.6674804688, ['y'] = 481.45776367188, ['z'] = 15.697026252747 },
		reward = 10000 + math.random(200000,400000),
		nameofbank = "Fleeca Bank (Autoroute)",
		lastrobbed = 0
	},
	["blainecounty"] = {
		position = { ['x'] = -107.06505584717, ['y'] = 6474.8012695313, ['z'] = 31.62670135498 },
		reward = 10000 + math.random(200000,400000),
		nameofbank = "Blaine County Savings (Paleto)",
		lastrobbed = 0
	},
	["PrincipalBank"] = {
		position = { ['x'] = 255.001098632813, ['y'] = 225.855895996094, ['z'] = 101.005694274902 },
		reward = math.random(400000,700000),
		nameofbank = "Principal bank (Centre Ville)",
		lastrobbed = 0
	},
	["Bateau"] = {
		position = { ['x'] = -2052.54, ['y'] = -1028.92, ['z'] = 8.97 },
		reward = math.random(250000,400000),
		nameofbank = "Bateau",
		lastrobbed = 0
	},
	["ForS"] = {
		position = { ['x'] = -226.26, ['y'] = -2000.46, ['z'] = 24.69 },
		reward = math.random(200000,400000),
		nameofbank = "Fame or Shame (Stadium)",
		lastrobbed = 0
	},
	["Porte Avion"] = {
		position = { ['x'] = 3068.54, ['y'] = -4752.05, ['z'] = 6.08 },
		reward = math.random(200000,400000),
		nameofbank = "Porte Avion",
		lastrobbed = 0
	},
	["Cargo"] = {
		position = { ['x'] = 850.9, ['y'] = -2878.32, ['z'] = 11.27 },
		reward = math.random(200000,400000),
		nameofbank = "Cargo",
		lastrobbed = 0
	},
	["Labos"] = {
		position = { ['x'] = -2286.53, ['y'] = 355.54, ['z'] = 174.08 },
		reward = math.random(200000,400000),
		nameofbank = "Laboratoire",
		lastrobbed = 0
	}

	--["fleeca3"] = {
		--position = { ['x'] = -1212.2568359375, ['y'] = -336.128295898438, ['z'] = 36.7907638549805 },
		--reward = 30000 + math.random(100000,200000),
		--nameofbank = "Fleeca Bank (Vinewood Hills)",
		--lastrobbed = 0
	--},
	--["fleeca4"] = {
		--position = { ['x'] = -354.452575683594, ['y'] = -53.8204879760742, ['z'] = 48.0463104248047 },
		--reward = 30000 + math.random(100000,200000),
		--nameofbank = "Fleeca Bank (Burton)",
		--lastrobbed = 0
	--},
	--["fleeca5"] = {
		--position = { ['x'] = 309.967376708984, ['y'] = -283.033660888672, ['z'] = 53.1745223999023 },
		--reward = 30000 + math.random(100000,200000),
		--nameofbank = "Fleeca Bank (Alta)",
		--lastrobbed = 0
	--},
	--["fleeca6"] = {
		--position = { ['x'] = 1176.86865234375, ['y'] = 2711.91357421875, ['z'] = 38.097785949707 },
		--reward = 30000 + math.random(100000,200000),
		--nameofbank = "Fleeca Bank (Desert)",
		--lastrobbed = 0
	--},
	--["pacific"] = {
		--position = { ['x'] = 255.001098632813, ['y'] = 225.855895996094, ['z'] = 101.005694274902 },
		--reward = 60000 + math.random(100000,200000),
		--nameofbank = "Pacific Standard PDB (Downtown Vinewood)",
		--lastrobbed = 0
	--}
}

local robbers = {}

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('es_bank:toofar')
AddEventHandler('es_bank:toofar', function(robb)
	if(robbers[source])then
		TriggerClientEvent('es_bank:toofarlocal', source)
		robbers[source] = nil
		TriggerClientEvent('chatMessage', -1, 'NEWS', {255, 0, 0}, "Robbery was cancelled at: ^2" .. banks[robb].nameofbank)
	end
end)

RegisterServerEvent('es_bank:playerdied')
AddEventHandler('es_bank:playerdied', function(robb)
	if(robbers[source])then
		TriggerClientEvent('es_bank:playerdiedlocal', source)
		robbers[source] = nil
		TriggerClientEvent('chatMessage', -1, 'NEWS', {255, 0, 0}, "Robbery was cancelled at: ^2" .. banks[robb].nameofbank)
	end
end)

RegisterServerEvent('es_bank:rob')
AddEventHandler('es_bank:rob', function(robb)
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  local cops = vRP.getUsersByGroup({"cop"}) -- remember to use the cop group or this won't work - K > Admin > Add Group > User ID > cop
  if vRP.hasGroup({user_id,"cop"}) then
    vRPclient.notify(player,{"~r~Cops can't rob banks."})
  else
    if #cops >= 4 then -- change 2 to the minimum amount online necessary
	  if banks[robb] then
		  local bank = banks[robb]

		  if (os.time() - bank.lastrobbed) < 600 and bank.lastrobbed ~= 0 then
			  TriggerClientEvent('chatMessage', player, 'ROBBERY', {255, 0, 0}, "This has already been robbed recently. Please wait another: ^2" .. (1200 - (os.time() - bank.lastrobbed)) .. "^0 seconds.")
			  return
		  end
		  TriggerClientEvent('chatMessage', -1, 'NEWS', {255, 0, 0}, "Robbery in progress at ^2" .. bank.nameofbank)
		  TriggerClientEvent('chatMessage', player, 'SYSTEM', {255, 0, 0}, "You started a robbery at: ^2" .. bank.nameofbank .. "^0, do not get too far away from this point!")
		  TriggerClientEvent('chatMessage', player, 'SYSTEM', {255, 0, 0}, "Hold the fort for ^1 12 ^0minutes and the money is yours!")
		  TriggerClientEvent('es_bank:currentlyrobbing', player, robb)
		  TriggerClientEvent('es_bank:setblip', player, Banks[robb].position)
		  banks[robb].lastrobbed = os.time()
		  robbers[player] = robb
		  local savedSource = player
		  SetTimeout(720000, function()
			  if(robbers[savedSource])then
				  if(user_id)then
					  vRP.giveInventoryItem({user_id,"dirty_money",bank.reward,true})
					  TriggerClientEvent('chatMessage', -1, 'NEWS', {255, 0, 0}, "Robbery is over at: ^2" .. bank.nameofbank .. "^0!")
					  TriggerClientEvent('es_bank:robberycomplete', savedSource, bank.reward)
				  end
			  end
		  end)		
	  end
    else
      vRPclient.notify(player,{"~r~Not enough cops online."})
    end
	end
end)