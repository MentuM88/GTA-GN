
ESX                = nil
PlayersHarvesting  = {}
PlayersCrafting    = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local function Harvest(source)

	SetTimeout(4000, function()

		if PlayersHarvesting[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)
			local ViandeQuantity = xPlayer.getInventoryItem('viande').count

			if ViandeQuantity >= 200 then
				TriggerClientEvent('esx:showNotification', source, '~r~Vous n avez plus de place')		
			else   
                xPlayer.addInventoryItem('viande', 1)
			end
		end
	end)
end

RegisterServerEvent('chasse:startRecup')
AddEventHandler('chasse:startRecup', function()
	local _source = source
	PlayersHarvesting[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Récupération de ~b~viande~s~...')
	Harvest(source)
end)

RegisterServerEvent('chasse:stopRecup')
AddEventHandler('chasse:stopRecup', function()
	local _source = source
	PlayersHarvesting[_source] = false
end)

local function Craft(source)

	SetTimeout(4000, function()

		if PlayersCrafting[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)
			local ViandeQuantity = xPlayer.getInventoryItem('viande').count

			if ViandeQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez ~r~pas assez~s~ de viande')			
			else   
                xPlayer.removeInventoryItem('viande', 5)
				xPlayer.addIventoryItem('hamburger', 1)
				xPlayer.addIventoryItem('Kebab', 1)
				xPlayer.addIventoryItem('pizza', 1)
				
				Craft(source)
			end
		end
	end)
end

