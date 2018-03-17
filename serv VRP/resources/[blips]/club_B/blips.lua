local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
	-- Discord
	--{title="Beach Bar", colour=47, id=102, x=1374.25, y=-2711.89, z=2.31},
 
	--{title="Bar - Unicorn", colour=7, id=93, x=126.72, y=-1283.49, z=29.28},
  {title="Bar - Motards", colour=7, id=93, x=-562.81, y=269.8, z=83.02},
  --}
 }

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.3)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)



