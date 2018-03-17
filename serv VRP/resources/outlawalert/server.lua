--Requires
local Tunnel = require("resources/vrp/lib/Tunnel")
local Proxy = require("resources/vrp/lib/Proxy")

vRP = Proxy.getInterface("vRP") --call the server-side API functions, get the vRP interface.

clientdef = {} -- you can add function to clientdef later in other client scripts
Tunnel.bindInterface("outlawAlert",clientdef)
vRPclient = Tunnel.getInterface("vRP","outlawAlert") -- Tunnel access client to vRP with unique id

function dump(o) -- Function used to dump the contents of a table.
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

function getOnDutyPolice() -- function used to return the user id of the police group in a table
	local users = vRP.getUsersByGroup({"police"})

	 for k, v in pairs(users) do
		local user_id = v
		local player = vRP.getUserSource({user_id})
		local police = user_id
		print("Police users are | " .. dump(users)) -- ::DEBUG:: DISABLE THIS OR IT WILL SPAM ONCE MORE POLICE ARE CONNECTED JUST FOR TESTING -- JINK.
		if player ~= nil then
			return user_id
		end
	 end
end

local police = {}

RegisterServerEvent('thiefInProgress')
AddEventHandler('thiefInProgress', function(street1, street2, veh, sex)
	local user_id = vRP.getUserId({source}, function(user_id) return user_id end)
	local police = getOnDutyPolice()	
	
	if user_id == police then
		if veh == "NULL" then
			vRPclient.notify(user_id,{"~r~Thief of a vehicle by a ~w~"..sex.." ~r~at ~w~"..street1})
		else
			vRPclient.notify(user_id,{"~r~Thief of a ~w~"..veh.." ~r~by a ~w~"..sex.." ~r~at ~w~"..street1})
		end
	end
	-- if veh == "NULL" then
	-- 	TriggerClientEvent("outlawNotify", -1, "~r~Thief of a vehicle by a ~w~"..sex.." ~r~between ~w~"..street1.."~r~ and ~w~"..street2)
	-- else
	-- 	TriggerClientEvent("outlawNotify", -1, "~r~Thief of a ~w~"..veh.." ~r~by a ~w~"..sex.." ~r~between ~w~"..street1.."~r~ and ~w~"..street2)
	-- end
end)

RegisterServerEvent('thiefInProgressS1')
AddEventHandler('thiefInProgressS1', function(street1, veh, sex)
	local user_id = vRP.getUserId({source}, function(user_id) return user_id end)
	local police = getOnDutyPolice()	
	
	if user_id == police then
		if veh == "NULL" then
			vRPclient.notify(user_id,{"~r~Thief of a vehicle by a ~w~"..sex.." ~r~at ~w~"..street1})
		else
			vRPclient.notify(user_id,{"~r~Thief of a ~w~"..veh.." ~r~by a ~w~"..sex.." ~r~at ~w~"..street1})
		end
	end
	-- if veh == "NULL" then
	-- 	TriggerClientEvent("outlawNotify", -1, "~r~Thief of a vehicle by a ~w~"..sex.." ~r~at ~w~"..street1)
	-- else
	-- 	TriggerClientEvent("outlawNotify", -1, "~r~Thief of a ~w~"..veh.." ~r~by a ~w~"..sex.." ~r~at ~w~"..street1)
	-- end
end)

RegisterServerEvent('meleeInProgress')
AddEventHandler('meleeInProgress', function(street1, street2, sex)
	local user_id = vRP.getUserId({source}, function(user_id) return user_id end)
	local police = getOnDutyPolice()	
	
	if user_id == police then
		vRPclient.notify(user_id,{"~r~Fight initiated by a ~w~"..sex.." ~r~between ~w~"..street1.."~r~ and ~w~"..street2})
	end
	--print("K: " .. k .. " | V : " .. v .. " filler " .. street1 .. street2 .. sex)
	--TriggerClientEvent("outlawNotify", -1, "~r~Fight initiated by a ~w~"..sex.." ~r~between ~w~"..street1.."~r~ and ~w~"..street2)
end)

RegisterServerEvent('meleeInProgressS1')
AddEventHandler('meleeInProgressS1', function(street1, sex)
	local user_id = vRP.getUserId({source}, function(user_id) return user_id end)
	local police = getOnDutyPolice()	
	
	if user_id == police then
		vRPclient.notify(user_id,{"~r~Fight initiated by a ~w~"..sex.." ~r~between ~w~"..street1})
	end
	--TriggerClientEvent("outlawNotify", -1, "~r~Fight initiated by a ~w~"..sex.." ~r~at ~w~"..street1)
end)


RegisterServerEvent('gunshotInProgress')
AddEventHandler('gunshotInProgress', function(street1, street2, sex)
	local user_id = vRP.getUserId({source}, function(user_id) return user_id end)
	local police = getOnDutyPolice()	
	
	if user_id == police then
		vRPclient.notify(user_id,{"~r~Gunshot by a ~w~"..sex.." ~r~between ~w~"..street1.."~r~ and ~w~"..street2})
	end
	--TriggerClientEvent("outlawNotify", -1, "~r~Gunshot by a ~w~"..sex.." ~r~between ~w~"..street1.."~r~ and ~w~"..street2)
end)

RegisterServerEvent('gunshotInProgressS1')
AddEventHandler('gunshotInProgressS1', function(street1, sex)
	local user_id = vRP.getUserId({source}, function(user_id) return user_id end)
	local police = getOnDutyPolice()	
	
	if user_id == police then
		vRPclient.notify(user_id,{"~r~Gunshot by a ~w~"..sex.." ~r~at ~w~"..street1})
	end
	--TriggerClientEvent("outlawNotify", -1, "~r~Gunshot by a ~w~"..sex.." ~r~at ~w~"..street1)
end)

RegisterServerEvent('thiefInProgressPos')
AddEventHandler('thiefInProgressPos', function(tx, ty, tz)
	TriggerClientEvent('thiefPlace', -1, tx, ty, tz)
end)

RegisterServerEvent('gunshotInProgressPos')
AddEventHandler('gunshotInProgressPos', function(gx, gy, gz)
	TriggerClientEvent('gunshotPlace', -1, gx, gy, gz)
end)

RegisterServerEvent('meleeInProgressPos')
AddEventHandler('meleeInProgressPos', function(mx, my, mz)
	TriggerClientEvent('meleePlace', -1, mx, my, mz)
end)