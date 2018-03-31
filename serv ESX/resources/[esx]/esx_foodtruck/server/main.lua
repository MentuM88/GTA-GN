ESX                = nil
PlayersHarvesting  = {}
MarketPrices		= {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('esx_phone:registerNumber', 'foodtruck', 'Client FoodTruck', false, false)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'foodtruck', Config.MaxInService)
end

RegisterServerEvent('esx_foodtruck:removeItem')
AddEventHandler('esx_foodtruck:removeItem', function(item, count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem(item, count)
end)

RegisterServerEvent('esx_foodtruck:addItem')
AddEventHandler('esx_foodtruck:addItem', function(item, count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.addInventoryItem(item, count)
end)

---------------------------- register usable item --------------------------------------------------
