local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP", "vrp_levys_phone")
vRPclient = Tunnel.getInterface("vRP", "vrp_levys_phone")

local cfg = module("vrp_levys_phone", "cfg/design")
local lcfg = module("vrp", "cfg/gui")

-- events
AddEventHandler("vRP:playerSpawn",function(user_id, source, first_spawn)
  if first_spawn then
    -- load additional css using the div api
	SetTimeout(30000,function()
	  vRPclient.setDivCss(source,{"additional_css",".div_additional_css{ display: none; }\n\n"..lcfg.css.."\n\n"..cfg.phone,""})
	end)
  end
end)
