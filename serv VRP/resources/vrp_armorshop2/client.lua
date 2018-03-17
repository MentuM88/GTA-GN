vRPas = {}
Tunnel.bindInterface("vrp_armorshop2",vRPas)
ASserver = Tunnel.getInterface("vrp_armorshop2","vrp_armorshop2")

function vRPas.getHeavyArmour()
  return GetPedArmour(GetPlayerPed(-1))
end
--[[
function vRPas.setHeavyArmour(armour,vest)
  local player = GetPlayerPed(-1)
  if vest then
	if(GetEntityModel(player) == GetHashKey("mp_m_freemode_01")) then
	  SetPedComponentVariation(player, 9, 10, 1, 2)  --Bulletproof Vest
	else 
	  if(GetEntityModel(player) == GetHashKey("mp_f_freemode_01")) then
	    SetPedComponentVariation(player, 9, 6, 1, 2)
	  end
	end
  end
  local n = math.floor(armour)
  SetPedArmour(player,n)
end--]]

function vRPas.setHeavyArmour(armour,vest)
  local player = GetPlayerPed(-1)
  if vest then
  if(GetEntityModel(player) == GetHashKey("mp_m_freemode_01")) then
    SetPedComponentVariation(player, 9, 15, 1, 2)  --Bulletproof Vest
  else 
    if(GetEntityModel(player) == GetHashKey("mp_f_freemode_01")) then
      SetPedComponentVariation(player, 9, 17, 1, 2)
    end
  end
  end
  local n = math.floor(armour)
  SetPedArmour(player,n)
end

local state_ready = false

AddEventHandler("playerSpawned",function() -- delay state recording
  state_ready = false
  
  Citizen.CreateThread(function()
    Citizen.Wait(30000)
    state_ready = true
  end)
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(10000)
    if IsPlayerPlaying(PlayerId()) and state_ready then
      ASserver.updateArmor({vRPas.getArmour()})
	  if vRPas.getArmour() == 0 then
	    if(GetEntityModel(GetPlayerPed(-1)) == GetHashKey("mp_m_freemode_01")) or (GetEntityModel(GetPlayerPed(-1)) == GetHashKey("mp_f_freemode_01")) then
	      SetPedComponentVariation(GetPlayerPed(-1), 9, 0, 1, 2)
		end
	  end
    end
  end
end)
