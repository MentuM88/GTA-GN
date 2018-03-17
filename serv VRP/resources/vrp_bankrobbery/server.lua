-- Remember to use the cop group or this won't work
-- K > Admin > Add Group > User ID > cop

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_bank")

local banks = {
--[[	["fleeca"] = {
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
    if #cops >= 3 then -- change 2 to the minimum amount online necessary
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