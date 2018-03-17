require "resources/essentialmode/lib/MySQL"
MySQL:open("127.0.0.1", "gta5_gamemode_essential", "root", "MOT DE PASSE")

------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent('esx:requestthePosition')
AddEventHandler('esx:requestthePosition', function(posX, posY, posZ, LastPosH) --Variable de ma position
TriggerEvent('esx:getPlayerFromId', source, function(xPlayer)
	
	local player = xPlayer.identifier -- Permet de trouver mon Id steam
		
		local position = "{" .. posX .. ", " .. posY .. ",  " .. posZ .. ", " .. LastPosH .. "}" --Permet d'executer mes variable
		local executed_query = MySQL:executeQuery("UPDATE users SET `position`='@position' WHERE identifier = '@username'", {['@username'] = player, ['@position'] = position}) --permet de save ma position

	end)
end)
