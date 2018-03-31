ESX = nil
ContenuVehicule = 0
TriggerEvent('esx:getSharedObject', function(obj)
  ESX = obj
end)





RegisterServerEvent('esx_truck_inventory:getInventory')
AddEventHandler('esx_truck_inventory:getInventory', function(plate)


  local inventory_ = {}
  local _source = source
  MySQL.Async.fetchAll(
    'SELECT * FROM `truck_inventory` WHERE `plate` = @plate',
    {
      ['@plate'] = plate
    },
    function(inventory)
  ContenuVehicule = 0
      if inventory ~= nil and #inventory > 0 then
        for i=1, #inventory, 1 do
          table.insert(inventory_, {
            name      = inventory[i].item,
            label      = inventory[i].name,
            count     = inventory[i].count
          })
     -- print('ContenuVehicule '.. ContenuVehicule)
     ContenuVehicule = ContenuVehicule + inventory[i].count
     print('ContenuVehicule '.. ContenuVehicule)
        end

      end

    local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_truck_inventory:getInventoryLoaded', xPlayer.source, inventory_)
    end)
end)

RegisterServerEvent('esx_truck_inventory:removeInventoryItem')
AddEventHandler('esx_truck_inventory:removeInventoryItem', function(plate, item, count)
  local _source = source

  MySQL.Async.fetchAll(
    'UPDATE `truck_inventory` SET `count`= `count` - @qty WHERE `plate` = @plate AND `item`= @item',
    {
      ['@plate'] = plate,
      ['@qty'] = count,
      ['@item'] = item
    },
    function(result)
      local xPlayer  = ESX.GetPlayerFromId(_source)
      if xPlayer ~= nil then
        xPlayer.addInventoryItem(item, count)
    print('ContenuVehicule '.. ContenuVehicule)
    ContenuVehicule = ContenuVehicule - count
    print('ContenuVehicule '.. ContenuVehicule)
      end
    end)
  TriggerClientEvent("esx:showNotification", _source, ('Vous retirez : ' ..count.. ' ~g~'.. name))


end)

RegisterServerEvent('esx_truck_inventory:addInventoryItem')
AddEventHandler('esx_truck_inventory:addInventoryItem', function(type, model, plate, item, count, name)
  local _source = source
  local MaxCoffreVehicule = nil





 if type == 0 then
  MaxCoffreVehicule = 50
 end



--[[
id = 0 --compacts
id = 1 --sedans
id = 2 --SUV's
id = 3, --coupes
id = 4 --muscle
id = 5 --sport classic
id = 6 --sport
id = 7 --super
id = 8 --motorcycle
id = 9 --offroad
id = 10 -industrial
id = 11-utility
id = 12--vans
id = 13 --bicycles
id = 14 --boats
id = 15, --helicopter
id = 16 --plane
id = 17 --service
id = 18 --emergency
id = 19 --military
]]--

if MaxCoffreVehicule == nil then
  MaxCoffreVehicule = 180
 end


  if (ContenuVehicule + count) <= MaxCoffreVehicule then
   print('( '..ContenuVehicule..' ) ContenuVehicule')
   print('( '..count..' ) count')
  MySQL.Async.fetchAll(
    'INSERT INTO truck_inventory (item,count,plate,name) VALUES (@item,@qty,@plate,@name) ON DUPLICATE KEY UPDATE count=count+ @qty',
    {
      ['@plate'] = plate,
      ['@qty'] = count,
      ['@item'] = item,
      ['@name'] = name,
    },
    function(result)
      local xPlayer  = ESX.GetPlayerFromId(_source)
      xPlayer.removeInventoryItem(item, count)
    ContenuVehicule = ContenuVehicule + count
    end)
  TriggerClientEvent("esx:showNotification", _source, ('Vous déposez : ' ..count.. ' ~g~'.. name))
  else
  TriggerClientEvent("esx:showNotification", _source, ('Pas assez de place... MAX : ').. MaxCoffreVehicule)
  end


end)
