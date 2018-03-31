local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local PlayerData              = {}
local GUI                     = {}
local HasAlreadyEnteredMarker = false
local LastZone                = nil
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}
local OnJob                   = false
local TargetCoords            = nil
local CurrentlyTowedVehicle   = nil
local Blips                   = {}
local NPCOnJob                = false
local NPCTargetTowable         = nil
local NPCTargetTowableZone     = nil
local NPCHasSpawnedTowable    = false
local NPCLastCancel           = GetGameTimer() - 5 * 60000
local NPCHasBeenNextToTowable = false
local NPCTargetDeleterZone    = false

ESX                           = nil
GUI.Time                      = 0

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

function SelectRandomTowable()

  local index = GetRandomIntInRange(1,  #Config.Towables)

  for k,v in pairs(Config.Zones) do
    if v.Pos.x == Config.Towables[index].x and v.Pos.y == Config.Towables[index].y and v.Pos.z == Config.Towables[index].z then
      return k
    end
  end

end


function OpenreporterActionsMenu()

  local elements = {
    {label = _U('vehicle_list'), value = 'vehicle_list'},
    {label = _U('work_wear'), value = 'cloakroom'},
    {label = _U('civ_wear'), value = 'cloakroom2'},
    {label = _U('deposit_stock'), value = 'put_stock'},
    {label = _U('withdraw_stock'), value = 'get_stock'}
  }
  if Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.grade_name == 'boss' then
    table.insert(elements, {label = _U('boss_actions'), value = 'boss_actions'})
  end

  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'reporter_actions',
    {
      title    = _U('Journaliste'),
      elements = elements
    },
    function(data, menu)
      if data.current.value == 'vehicle_list' then

        if Config.EnableSocietyOwnedVehicles then

            local elements = {}

            ESX.TriggerServerCallback('esx_society:getVehiclesInGarage', function(vehicles)

              for i=1, #vehicles, 1 do
                table.insert(elements, {label = GetDisplayNameFromVehicleModel(vehicles[i].model) .. ' [' .. vehicles[i].plate .. ']', value = vehicles[i]})
              end

              ESX.UI.Menu.Open(
                'default', GetCurrentResourceName(), 'vehicle_spawner',
                {
                  title    = _U('service_vehicle'),
                  align    = 'top-left',
                  elements = elements,
                },
                function(data, menu)

                  menu.close()

                  local vehicleProps = data.current.value

                  ESX.Game.SpawnVehicle(vehicleProps.model, Config.Zones.VehicleSpawnPoint.Pos, 270.0, function(vehicle)
                    ESX.Game.SetVehicleProperties(vehicle, vehicleProps)
                    local playerPed = GetPlayerPed(-1)
                    TaskWarpPedIntoVehicle(playerPed,  vehicle,  -1)
                  end)

                  TriggerServerEvent('esx_society:removeVehicleFromGarage', 'reporter', vehicleProps)

                end,
                function(data, menu)
                  menu.close()
                end
              )

            end, 'reporter')

          else

            local elements = {
              {label = _U('tvtruck'), value = 'tvtruck'},
                       }

            if Config.EnablePlayerManagement and PlayerData.job ~= nil and
              (PlayerData.job.grade_name == 'boss' or PlayerData.job.grade_name == 'chef' or PlayerData.job.grade_name == 'experimente') then
              table.insert(elements, {label = 'SlamVan', value = 'slamvan3'})
            end

            ESX.UI.Menu.CloseAll()

            ESX.UI.Menu.Open(
              'default', GetCurrentResourceName(), 'spawn_vehicle',
              {
                title    = _U('service_vehicle'),
                elements = elements
              },
              function(data, menu)
                for i=1, #elements, 1 do
                  if Config.MaxInService == -1 then
                    ESX.Game.SpawnVehicle(data.current.value, Config.Zones.VehicleSpawnPoint.Pos, 90.0, function(vehicle)
                      local playerPed = GetPlayerPed(-1)
                      TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
                    end)
                    break
                  else
                    ESX.TriggerServerCallback('esx_service:enableService', function(canTakeService, maxInService, inServiceCount)
                      if canTakeService then
                        ESX.Game.SpawnVehicle(data.current.value, Config.Zones.VehicleSpawnPoint.Pos, 90.0, function(vehicle)
                          local playerPed = GetPlayerPed(-1)
                          TaskWarpPedIntoVehicle(playerPed,  vehicle, -1)
                        end)
                      else
                        ESX.ShowNotification(_U('service_full') .. inServiceCount .. '/' .. maxInService)
                      end
                    end, 'reporter')
                    break
                  end
                end
                menu.close()
              end,
              function(data, menu)
                menu.close()
                OpenreporterActionsMenu()
              end
            )

          end
      end

      if data.current.value == 'cloakroom' then
        menu.close()
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)

            if skin.sex == 0 then
                TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_male)
            else
                TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_female)
            end

        end)
      end

      if data.current.value == 'cloakroom2' then
        menu.close()
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)

            TriggerEvent('skinchanger:loadSkin', skin)

        end)
      end

      if data.current.value == 'put_stock' then
        OpenPutStocksMenu()
      end

      if data.current.value == 'get_stock' then
        OpenGetStocksMenu()
      end

      if data.current.value == 'boss_actions' then
        TriggerEvent('esx_society:openBossMenu', 'reporter', function(data, menu)
          menu.close()
        end)
      end

    end,
    function(data, menu)
      menu.close()
      CurrentAction     = 'reporter_actions_menu'
      CurrentActionMsg  = _U('open_actions')
      CurrentActionData = {}
    end
  )
end

-- function OpenreporterHarvestMenu()

--   if Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.grade_name ~= 'recrue' then
--     local elements = {
--       {label = _U('gas_can'), value = 'gaz_bottle'},
--       {label = _U('repair_tools'), value = 'fix_tool'},
--       {label = _U('body_work_tools'), value = 'caro_tool'}
--     }

--     ESX.UI.Menu.CloseAll()

--     ESX.UI.Menu.Open(
--       'default', GetCurrentResourceName(), 'reporter_harvest',
--       {
--         title    = _U('harvest'),
--         elements = elements
--       },
--       function(data, menu)
--         if data.current.value == 'gaz_bottle' then
--           menu.close()
--           TriggerServerEvent('esx_reporterjob:startHarvest')
--         end

--         if data.current.value == 'fix_tool' then
--           menu.close()
--           TriggerServerEvent('esx_reporterjob:startHarvest2')
--         end

--         if data.current.value == 'caro_tool' then
--           menu.close()
--           TriggerServerEvent('esx_reporterjob:startHarvest3')
--         end

--       end,
--       function(data, menu)
--         menu.close()
--         CurrentAction     = 'reporter_harvest_menu'
--         CurrentActionMsg  = _U('harvest_menu')
--         CurrentActionData = {}
--       end
--     )
--   else
--     ESX.ShowNotification(_U('not_experienced_enough'))
--   end
-- end

-- function OpenreporterCraftMenu()
--   if Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.grade_name ~= 'recrue' then

--     local elements = {
--       {label = _U('blowtorch'), value = 'blow_pipe'},
--       {label = _U('repair_kit'), value = 'fix_kit'},
--       {label = _U('body_kit'), value = 'caro_kit'}
--     }

--     ESX.UI.Menu.CloseAll()

--     ESX.UI.Menu.Open(
--       'default', GetCurrentResourceName(), 'reporter_craft',
--       {
--         title    = _U('craft'),
--         elements = elements
--       },
--       function(data, menu)
--         if data.current.value == 'blow_pipe' then
--           menu.close()
--           TriggerServerEvent('esx_reporterjob:startCraft')
--         end

--         if data.current.value == 'fix_kit' then
--           menu.close()
--           TriggerServerEvent('esx_reporterjob:startCraft2')
--         end

--         if data.current.value == 'caro_kit' then
--           menu.close()
--           TriggerServerEvent('esx_reporterjob:startCraft3')
--         end

--       end,
--       function(data, menu)
--         menu.close()
--         CurrentAction     = 'reporter_craft_menu'
--         CurrentActionMsg  = _U('craft_menu')
--         CurrentActionData = {}
--       end
--     )
--   else
--     ESX.ShowNotification(_U('not_experienced_enough'))
--   end
-- end

function OpenMobilereporterActionsMenu()

  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'mobile_reporter_actions',
    {
      title    = _U('Journaliste'),
      elements = {
        {label = _U('billing'),    value = 'billing'},
        -- {label = _U('propagande'),  value = 'openPropaganda'},
        -- {label = _U('actu'), value = 'openNews'}
        {label = _U('place_objects'), value = 'object_spawner'}
      }
    },
    function(data, menu)
      if data.current.value == 'billing' then
        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'billing',
          {
            title = _U('invoice_amount')
          },
          function(data, menu)
            local amount = tonumber(data.value)
            if amount == nil then
              ESX.ShowNotification(_U('amount_invalid'))
            else
              menu.close()
              local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
              if closestPlayer == -1 or closestDistance > 3.0 then
                ESX.ShowNotification(_U('no_players_nearby'))
              else
                TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_reporter', _U('Journaliste'), amount)
              end
            end
          end,
        function(data, menu)
          menu.close()
        end
        )
      end

      
      
      

     
      if data.current.value == 'object_spawner' then

        ESX.UI.Menu.Open(
          'default', GetCurrentResourceName(), 'mobile_reporter_actions_spawn',
          {
            title    = _U('objects'),
            align    = 'top-left',
            elements = {
              {label = _U('camera'),     value = 'prop_tv_cam_02'},
              {label = _U('camera 2'), value = 'prop_tv_cam_02s'},
            },
          },
          function(data2, menu2)


            local model     = data2.current.value
            local playerPed = GetPlayerPed(-1)
            local coords    = GetEntityCoords(playerPed)
            local forward   = GetEntityForwardVector(playerPed)
            local x, y, z   = table.unpack(coords + forward * 1.0)

            if model == 'prop_tv_cam_02' then
              z = z - 2.0
            elseif model == 'prop_tv_cam_02s' then
              z = z - 2.0
            end

            ESX.Game.SpawnObject(model, {
              x = x,
              y = y,
              z = z
            }, function(obj)
              SetEntityHeading(obj, GetEntityHeading(playerPed))
              PlaceObjectOnGroundProperly(obj)
            end)

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end

    end,
  function(data, menu)
    menu.close()
  end
  )
end

function OpenGetStocksMenu()

  ESX.TriggerServerCallback('esx_reporterjob:getStockItems', function(items)

    print(json.encode(items))

    local elements = {}

    for i=1, #items, 1 do
      table.insert(elements, {label = 'x' .. items[i].count .. ' ' .. items[i].label, value = items[i].name})
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'stocks_menu',
      {
        title    = _U('Journaliste_stock'),
        elements = elements
      },
      function(data, menu)

        local itemName = data.current.value

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count',
          {
            title = _U('quantity')
          },
          function(data2, menu2)

            local count = tonumber(data2.value)

            if count == nil then
              ESX.ShowNotification(_U('invalid_quantity'))
            else
              menu2.close()
              menu.close()
              OpenGetStocksMenu()

              TriggerServerEvent('esx_reporterjob:getStockItem', itemName, count)
            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end)

end

function OpenPutStocksMenu()

ESX.TriggerServerCallback('esx_reporterjob:getPlayerInventory', function(inventory)

    local elements = {}

    for i=1, #inventory.items, 1 do

      local item = inventory.items[i]

      if item.count > 0 then
        table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
      end

    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'stocks_menu',
      {
        title    = _U('inventory'),
        elements = elements
      },
      function(data, menu)

        local itemName = data.current.value

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count',
          {
            title = _U('quantity')
          },
          function(data2, menu2)

            local count = tonumber(data2.value)

            if count == nil then
              ESX.ShowNotification(_U('invalid_quantity'))
            else
              menu2.close()
              menu.close()
              OpenPutStocksMenu()

              TriggerServerEvent('esx_reporterjob:putStockItems', itemName, count)
            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end)

end






function setEntityHeadingFromEntity ( vehicle, playerPed )
    local heading = GetEntityHeading(vehicle)
    SetEntityHeading( playerPed, heading )
end


RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

AddEventHandler('esx_reporterjob:hasEnteredMarker', function(zone)

  if zone == NPCJobTargetTowable then

  end

  if zone =='VehicleDelivery' then
    NPCTargetDeleterZone = true
  end

  if zone == 'reporterActions' then
    CurrentAction     = 'reporter_actions_menu'
    CurrentActionMsg  = _U('open_actions')
    CurrentActionData = {}
  end

  -- if zone == 'Garage' then
  --   CurrentAction     = 'reporter_harvest_menu'
  --   CurrentActionMsg  = _U('harvest_menu')
  --   CurrentActionData = {}
  -- end

  -- if zone == 'Craft' then
  --   CurrentAction     = 'reporter_craft_menu'
  --   CurrentActionMsg  = _U('craft_menu')
  --   CurrentActionData = {}
  -- end

  if zone == 'VehicleDeleter' then
  end

end)

AddEventHandler('esx_reporterjob:hasExitedMarker', function(zone)

  if zone =='VehicleDelivery' then
    NPCTargetDeleterZone = false
  end

  if zone == 'Craft' then
    TriggerServerEvent('esx_reporterjob:stopCraft')
    TriggerServerEvent('esx_reporterjob:stopCraft2')
    TriggerServerEvent('esx_reporterjob:stopCraft3')
  end

  if zone == 'Garage' then
    TriggerServerEvent('esx_reporterjob:stopHarvest')
    TriggerServerEvent('esx_reporterjob:stopHarvest2')
    TriggerServerEvent('esx_reporterjob:stopHarvest3')
  end

  CurrentAction = nil
  ESX.UI.Menu.CloseAll()
end)

AddEventHandler('esx_reporterjob:hasEnteredEntityZone', function(entity)

  local playerPed = GetPlayerPed(-1)

  if PlayerData.job ~= nil and PlayerData.job.name == 'reporter' and not IsPedInAnyVehicle(playerPed, false) then
    CurrentAction     = 'remove_entity'
    CurrentActionMsg  = _U('press_remove_obj')
    CurrentActionData = {entity = entity}
  end

end)

AddEventHandler('esx_reporterjob:hasExitedEntityZone', function(entity)

  if CurrentAction == 'remove_entity' then
    CurrentAction = nil
  end

end)

RegisterNetEvent('esx_phone:loaded')
AddEventHandler('esx_phone:loaded', function(phoneNumber, contacts)
  local specialContact = {
    name       = _U('journaliste'),
    number     = 'reporter',
    base64Icon = 'data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA1MDQuMTIzIDUwNC4xMjMiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUwNC4xMjMgNTA0LjEyMzsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI2NHB4IiBoZWlnaHQ9IjY0cHgiPgo8Y2lyY2xlIHN0eWxlPSJmaWxsOiMzMjRBNUU7IiBjeD0iMjUyLjA2MiIgY3k9IjI1Mi4wNjIiIHI9IjI1Mi4wNjIiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0Y5RjlGOTsiIGQ9Ik0zODkuMTIsNDA2Ljg0M0gxMjcuNjA2Yy0xMy43ODUsMC0yNC44MTItMTEuMDI4LTI0LjgxMi0yNC44MTJWOTEuNzY2aDI2MS41MTR2MjkwLjI2NSAgTDM4OS4xMiw0MDYuODQzeiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojQ0VENUUwOyIgZD0iTTM4OS4xMiw0MDYuODQzTDM4OS4xMiw0MDYuODQzYy0xMy43ODUsMC0yNC44MTItMTEuMDI4LTI0LjgxMi0yNC44MTJWMjAzLjYxOGg0OS42MjV2MTc4LjQxMiAgQzQxMy45MzIsMzk1LjgxNSw0MDIuNTExLDQwNi44NDMsMzg5LjEyLDQwNi44NDN6Ii8+CjxyZWN0IHg9IjEyNC4wNjIiIHk9IjExMS44NTIiIHN0eWxlPSJmaWxsOiM4NERCRkY7IiB3aWR0aD0iMjE1LjA0IiBoZWlnaHQ9Ijc4LjM3NSIvPgo8Zz4KCTxyZWN0IHg9IjI0NS43NiIgeT0iMjk5LjcxNyIgc3R5bGU9ImZpbGw6I0FDQjNCQTsiIHdpZHRoPSIxMDIuNCIgaGVpZ2h0PSI2LjMwMiIvPgoJPHJlY3QgeD0iMjQ1Ljc2IiB5PSIyNzguODQzIiBzdHlsZT0iZmlsbDojQUNCM0JBOyIgd2lkdGg9IjEwMi40IiBoZWlnaHQ9IjYuMzAyIi8+Cgk8cmVjdCB4PSIyNDUuNzYiIHk9IjI1Ny45NjkiIHN0eWxlPSJmaWxsOiNBQ0IzQkE7IiB3aWR0aD0iMTAyLjQiIGhlaWdodD0iNi4zMDIiLz4KCTxyZWN0IHg9IjI0NS43NiIgeT0iMjM3LjA5NSIgc3R5bGU9ImZpbGw6I0FDQjNCQTsiIHdpZHRoPSIxMDIuNCIgaGVpZ2h0PSI2LjMwMiIvPgoJPHJlY3QgeD0iMjQ1Ljc2IiB5PSIyMTYuMjIyIiBzdHlsZT0iZmlsbDojQUNCM0JBOyIgd2lkdGg9IjEwMi40IiBoZWlnaHQ9IjYuMzAyIi8+Cgk8cmVjdCB4PSIyNDUuNzYiIHk9IjMyMC41OTEiIHN0eWxlPSJmaWxsOiNBQ0IzQkE7IiB3aWR0aD0iMTAyLjQiIGhlaWdodD0iNi4zMDIiLz4KCTxyZWN0IHg9IjI0NS43NiIgeT0iMzQxLjQ2NSIgc3R5bGU9ImZpbGw6I0FDQjNCQTsiIHdpZHRoPSIxMDIuNCIgaGVpZ2h0PSI2LjMwMiIvPgoJPHJlY3QgeD0iMjQ1Ljc2IiB5PSIzNjIuMzM4IiBzdHlsZT0iZmlsbDojQUNCM0JBOyIgd2lkdGg9IjEwMi40IiBoZWlnaHQ9IjYuMzAyIi8+Cgk8cmVjdCB4PSIxMjcuMjEyIiB5PSIzNDEuNDY1IiBzdHlsZT0iZmlsbDojQUNCM0JBOyIgd2lkdGg9IjEwMi40IiBoZWlnaHQ9IjYuMzAyIi8+Cgk8cmVjdCB4PSIxMjcuMjEyIiB5PSIzNjIuMzM4IiBzdHlsZT0iZmlsbDojQUNCM0JBOyIgd2lkdGg9IjEwMi40IiBoZWlnaHQ9IjYuMzAyIi8+CjwvZz4KPHJlY3QgeD0iMjA5LjEzMiIgeT0iMjE2LjIyMiIgc3R5bGU9ImZpbGw6IzRDREJDNDsiIHdpZHRoPSIyMC40OCIgaGVpZ2h0PSIxMTEuMDY1Ii8+CjxyZWN0IHg9IjE4MS45NTciIHk9IjI2Mi42OTUiIHN0eWxlPSJmaWxsOiNGRkQwNUI7IiB3aWR0aD0iMjAuNDgiIGhlaWdodD0iNjQuNTkxIi8+CjxyZWN0IHg9IjE1NC43ODIiIHk9IjI0Ny4zMzUiIHN0eWxlPSJmaWxsOiNGRjcwNTg7IiB3aWR0aD0iMjAuNDgiIGhlaWdodD0iNzkuOTUxIi8+CjxnPgoJPHJlY3QgeD0iMTI3LjIxMiIgeT0iMjg1LjkzMiIgc3R5bGU9ImZpbGw6IzMyNEE1RTsiIHdpZHRoPSIyMC40OCIgaGVpZ2h0PSI0MS4zNTQiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiMzMjRBNUU7IiBkPSJNMTcwLjkyOSwxMjkuOTY5aDcuMDg5djQyLjkyOWgtNy44NzdsLTI0LjQxOC0zMS41MDh2MzEuNTA4aC03LjA4OXYtNDIuOTI5aDcuMDg5bDI0LjgxMiwzMi4yOTUgICB2LTMyLjI5NUgxNzAuOTI5eiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6IzMyNEE1RTsiIGQ9Ik0yMjAuNTU0LDEyOS45Njl2Ni42OTVoLTIyLjg0M3YxMS40MjJoMjAuNDh2Ni4zMDJoLTIwLjQ4djExLjQyMmgyMy42MzF2Ni42OTVoLTMxLjExNHYtNDIuNTM1ICAgSDIyMC41NTR6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojMzI0QTVFOyIgZD0iTTI0My43OTEsMTYwLjY4OWw5LjQ1Mi0zMS4xMTRoNi42OTVsOS40NTIsMzEuMTE0bDEwLjYzNC0zMS4xMTRoNy44NzdsLTE0Ljk2Niw0Mi45MjloLTcuMDg5ICAgbC05LjA1OC0yOS41MzhoLTAuMzk0bC05LjA1OCwyOS41MzhoLTcuMDg5bC0xNC45NjYtNDIuNTM1aDcuODc3TDI0My43OTEsMTYwLjY4OXoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiMzMjRBNUU7IiBkPSJNMzA3Ljk4OCwxMzUuNDgzYy0xLjk2OSwwLTMuOTM4LDAuMzk0LTUuMTIsMS4xODJjLTEuMTgyLDAuNzg4LTEuOTY5LDEuOTY5LTEuOTY5LDMuOTM4ICAgYzAsMS41NzUsMC43ODgsMy4xNTEsMS45NjksMy45MzhjMS4xODIsMC43ODgsNC4zMzIsMS45NjksOC42NjUsMy4xNTFjNC4zMzIsMS4xODIsNy44NzcsMi43NTcsOS44NDYsNC4zMzIgICBjMi4zNjMsMS45NjksMy41NDUsNC43MjYsMy41NDUsOC42NjVzLTEuNTc1LDYuNjk1LTQuMzMyLDkuMDU4Yy0yLjc1NywyLjM2My02LjY5NSwzLjU0NS0xMS4wMjgsMy41NDUgICBjLTYuNjk1LDAtMTIuNjAzLTIuMzYzLTE3LjcyMy03LjA4OWw0LjcyNi01LjUxNGM0LjMzMiwzLjkzOCw4LjY2NSw1LjUxNCwxMy4zOTEsNS41MTRjMi4zNjMsMCw0LjMzMi0wLjM5NCw1LjUxNC0xLjU3NSAgIGMxLjE4Mi0xLjE4MiwxLjk2OS0yLjM2MywxLjk2OS0zLjkzOHMtMC43ODgtMi43NTctMS45NjktMy45MzhjLTEuMTgyLTAuNzg4LTMuNTQ1LTEuNTc1LTYuNjk1LTIuMzYzICAgYy0zLjE1MS0wLjc4OC01LjUxNC0xLjU3NS03LjA4OS0xLjk2OWMtMS41NzUtMC43ODgtMy4xNTEtMS41NzUtNC4zMzItMi4zNjNjLTIuMzYzLTEuOTY5LTMuOTM4LTQuNzI2LTMuOTM4LTguNjY1ICAgczEuNTc1LTcuMDg5LDQuMzMyLTkuMDU4YzIuNzU3LTEuOTY5LDYuMzAyLTMuMTUxLDEwLjYzNC0zLjE1MWMyLjc1NywwLDUuNTE0LDAuMzk0LDguMjcxLDEuMTgyICAgYzIuNzU3LDAuNzg4LDUuMTIsMi4zNjMsNy4wODksMy45MzhsLTMuOTM4LDUuNTE0Yy0xLjE4Mi0xLjE4Mi0zLjE1MS0xLjk2OS01LjEyLTIuNzU3ICAgQzMxMi4zMiwxMzUuODc3LDMwOS45NTcsMTM1LjQ4MywzMDcuOTg4LDEzNS40ODN6Ii8+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg=='
  TriggerEvent('esx_phone:addSpecialContact', specialContact.name, specialContact.number, specialContact.base64Icon)
end)

-- Pop NPC mission vehicle when inside area


-- Create Blips
Citizen.CreateThread(function()
  local blip = AddBlipForCoord(Config.Zones.reporterActions.Pos.x, Config.Zones.reporterActions.Pos.y, Config.Zones.reporterActions.Pos.z)
  SetBlipSprite (blip, 446)
  SetBlipDisplay(blip, 4)
  SetBlipScale  (blip, 1.0)
  SetBlipColour (blip, 5)
  SetBlipAsShortRange(blip, true)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentString(_U('Journaliste'))
  EndTextCommandSetBlipName(blip)
end)

-- Display markers
Citizen.CreateThread(function()
  while true do
    Wait(0)
    if PlayerData.job ~= nil and PlayerData.job.name == 'reporter' then

      local coords = GetEntityCoords(GetPlayerPed(-1))

      for k,v in pairs(Config.Zones) do
        if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.DrawDistance) then
          DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, false, false, false, false)
        end
      end
    end
  end
end)

-- Enter / Exit marker events
Citizen.CreateThread(function()
  while true do
    Wait(0)
    if PlayerData.job ~= nil and PlayerData.job.name == 'reporter' then
      local coords      = GetEntityCoords(GetPlayerPed(-1))
      local isInMarker  = false
      local currentZone = nil
      for k,v in pairs(Config.Zones) do
        if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
          isInMarker  = true
          currentZone = k
        end
      end
      if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
        HasAlreadyEnteredMarker = true
        LastZone                = currentZone
        TriggerEvent('esx_reporterjob:hasEnteredMarker', currentZone)
      end
      if not isInMarker and HasAlreadyEnteredMarker then
        HasAlreadyEnteredMarker = false
        TriggerEvent('esx_reporterjob:hasExitedMarker', LastZone)
      end
    end
  end
end)

Citizen.CreateThread(function()
  while true do

    Citizen.Wait(0)

    local playerPed = GetPlayerPed(-1)
    local coords    = GetEntityCoords(playerPed)

    local entity, distance = ESX.Game.GetClosestObject({
      'prop_tv_cam_02',
      'prop_tv_cam_02s'
    })

    if distance ~= -1 and distance <= 3.0 then

      if LastEntity ~= entity then
        TriggerEvent('esx_reporterjob:hasEnteredEntityZone', entity)
        LastEntity = entity
      end

    else

      if LastEntity ~= nil then
        TriggerEvent('esx_reporterjob:hasExitedEntityZone', LastEntity)
        LastEntity = nil
      end

    end

  end
end)


-- Key Controls
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if CurrentAction ~= nil then

          SetTextComponentFormat('STRING')
          AddTextComponentString(CurrentActionMsg)
          DisplayHelpTextFromStringLabel(0, 0, 1, -1)

          if IsControlJustReleased(0, 38) and PlayerData.job ~= nil and PlayerData.job.name == 'reporter' then

            if CurrentAction == 'reporter_actions_menu' then
                OpenreporterActionsMenu()
            end

            -- if CurrentAction == 'reporter_harvest_menu' then
            --     OpenreporterHarvestMenu()
            -- end

            -- if CurrentAction == 'reporter_craft_menu' then
            --     OpenreporterCraftMenu()
            -- end

            if CurrentAction == 'delete_vehicle' then

              if Config.EnableSocietyOwnedVehicles then

                local vehicleProps = ESX.Game.GetVehicleProperties(CurrentActionData.vehicle)
                TriggerServerEvent('esx_society:putVehicleInGarage', 'reporter', vehicleProps)

              else

                if

                  GetEntityModel(vehicle) == GetHashKey('flatbed')   or
                  GetEntityModel(vehicle) == GetHashKey('towtrcuk2') or
                  GetEntityModel(vehicle) == GetHashKey('slamvan3')
                then
                  TriggerServerEvent('esx_service:disableService', 'reporter')
                end

              end

              ESX.Game.DeleteVehicle(CurrentActionData.vehicle)
            end

            if CurrentAction == 'remove_entity' then
              DeleteEntity(CurrentActionData.entity)
            end

            CurrentAction = nil
          end
        end

        if IsControlJustReleased(0, Keys['F6']) and PlayerData.job ~= nil and PlayerData.job.name == 'reporter' then
            OpenMobilereporterActionsMenu()
        end

        -- if IsControlJustReleased(0, Keys['DELETE']) and PlayerData.job ~= nil and PlayerData.job.name == 'reporter' then

        --   if NPCOnJob then

        --     if GetGameTimer() - NPCLastCancel > 5 * 60000 then
        --       StopNPCJob(true)
        --       NPCLastCancel = GetGameTimer()
        --     else
        --       ESX.ShowNotification(_U('wait_five'))
        --     end

        --   else

        --     local playerPed = GetPlayerPed(-1)

        --     if IsPedInAnyVehicle(playerPed,  false) and IsVehicleModel(GetVehiclePedIsIn(playerPed,  false), GetHashKey("flatbed")) then
        --       StartNPCJob()
        --     else
        --       ESX.ShowNotification(_U('must_in_flatbed'))
        --     end

        --   end

        -- end

    end
end)
