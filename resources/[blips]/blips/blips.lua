local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
	{title="Point de Pêche", colour=5, id=68, x=743.19586181641, y=-3895.3967285156, z=30.556676864624},
	--{title="Point de Pêche", colour=5, id=68, x=743.19586181641,y=3895.3967285156,z=30.5},
	{title="Medical Weed", color=2, id=140, x=2233.0520019531, y=5577.5981445313, z=53.795757293701},
	--[[{title="Labo de Drogue", color=2, id=403, x=-77.722381591797, y=6223.626953125, z=31.089864730835},--]]
	{title="Bank Driver", color=4, id=198, x= 243.67727661133, y= 230.6535949707, z= 106.28681945801},
	{title="Farm - Saumons", colour=5, id=354, x=743.19586181641,y=3895.3967285156,z=30.5},
	--{title="Blue Airlines", colour=30, id=43, x = -759.6591796875, y = -1515.3978271484, z = 4.9768991470337},
	--{title="Hacker", colour=30, id=150, x = 705.67150878906, y = -966.78765869141, z = 30.395341873169},
	{title="Farm - Blé", colour=5, id=354, x = 2624.244, y = 4482.061, z = 37.929},
	{title="Farm - Thé", colour=5, id=354, x = 382.150, y = 6626.874, z = 28.701},
	{title="Farm - Lait", colour=5, id=354, x = 434.935, y = 6462.551, z = 28.745},
	{title="Farm - Café", colour=5, id=354, x = 1993.167, y = 4847.001, z = 43.882},
	{title="Farm - Plastique", colour=5, id=354, x = -2197.229, y = 238.051, z = 174.602},
	{title="Farm - Fer", colour=5, id=354, x = 2623.59, y = 2786.91, z = 33.16},
	{title="Brasserie", colour=61, id=162,  x=940.47,y=-1785.95,z=35.48},
	{title="Secte", colour=61, id=206, x=-693.15, y=76.66, z=55.86},
	{title="Farm - Chanvre", colour=1, id=140, x=2208.0104980469, y=5577.6987304688, z=53.739212036},
	{title="Farm - Benzo", colour=1, id=310, x=-631.005, y=-229.425689, z=38.057052},
	{title="Farm - Harness", colour=1, id=499, x=1992.5993652344,y=3044.1806640625,z=47.215068817139},
	--{title="Bazzar", colour=61, id=434, x=44.38, y=-1747.18, z=29.47},	
	{title="Repère du Courtier", colour=45, id=378, x=-571.9384765625, y=5344.15234375, z=69.951629638672},
--[[	{title="??", colour=61, id=362, x=-1031.0350341797,y=-2780.38671875,z=4.639796257019},
	{title="??", colour=61, id=362, x=1074.5423583984,y=-684.91491699219,z=57.725448608398},
	{title="??", colour=61, id=362, x=-1647.9471435547,y=-1014.2311401367,z=6.2421689033508},
	{title="??", colour=61, id=362, x=-1136.6809082031,y=-0.57194274663925,z=48.982192993164},--]]
	--{title="Mairie", id=419, x=-427.84, y=1116.01, z=326.77},
	--{title="WFLS", colour=61, id=174, x=819.48, y=-2116.07, z=29.36},
	{title="La Poste", colour=5, id=478, x=68.42,y=125.62,z=79.19},
	{title="Casino", colour=5, id=490, x=912.33,y=51.65,z=80.76},
	{title="Achat Jetons", colour=5, id=468, x=918.67, y=37.03, z=80.76},
	--{title="EXPORT", colour=61, id=356, x=915.6083, y=-2918.35669, z=4.88864136},
	{title="La Salle", colour=61, id=311, x=-1204.96, y=-1562.57, z=4.61},
	{title="Hopital Central", colour=3, id=60, x=236.69, y=-1383.47, z=32.93},
	{title="Police", colour=3, id=60, x=460.190338134766, y=-993.888488769531, z=24.914867401123},
	{title="Police", colour=3, id=60, x=1853.21, y=3689.51, z=34.2671},
	--{title="Police2", colour=3, id=60, x=391.541442871094, y=-1615.154296875, z=29.291934967041},
	{title="Police", colour=3, id=60, x=-471.02, y=6013.96, z=31.34},
	--{title="Garage Mutuel", colour=17, id=446, x=-369.22, y=-108.45, tz=38.68},
	{title="Prestige - CARS", colour=5, id=446, x=-203.38, y=-1300.86, z=31.3},
	{title="Farm - Grossiste", colour=5, id=354, x=-70.23, y=6262.43, z=31.09},
	{title="Cuisine Foodtruck", colour=61, id=436, x=970.05, y=-1635.54, z=30.11},
	{title="Ent.-Grossiste R&Co", colour=61, id=238, x=2463.6201171875, y=4980.3422851563, z=46.810604095459},
	{title="Ent.-Groupe Gambretti", colour=61, id=371, x = 1180.54, y = -3288.54 , z = 5.58},
	{title="Ent.-Domaine Wallace", colour=61, id=162	, x = -1894.1025390625, y=2033.2377929688, z=140.74011230469},
	{title="Cuisine Perso", colour=5, id=489 , x=-377.54867553711, y=297.44076538086,z=84.891914367676},
	{title="Ent.-Transports A&G", colour=61, id=477,x=-1030.11,y=-2214.02, z=8.89},
    {title="Cuisine", colour=5, id=499, x=-1149.62,y=4940.55,z=222.27},
    {title="Ent.-Taxi", colour=61, id=198, x=901.01708984375,y=-185.32330322266, z=73.83048248291},
    {title="Ent.-Ferrailleur", colour=61, id=85, x=164.49365234375,y=-3074.9526367188, z=5.9136476516724},
    {title="Ent.-L'Aigle Americain", colour=61, id=94, x=2128.9069824219, y=4806.134765625, z=41.168750762939},
    {title="Bureau a LOUER", colour=2, id=475, x = -67.01781463623, y=-801.84991455078, z=44.227294921875},
    {title="Bureau a LOUER", colour=2, id=475, x = -115.50345611572,y=-604.49530029297,z=36.280715942383},
	--[[	{title="??", colour=5, id=468, x=-1149.62,y=4940.55,z=222.27},
	{title="??", colour=5, id=120, x=3673.1,y=5648.12,z=10.78},
	{title="??", colour=5, id=255, x=-1149.62,y=4940.55,z=222.27},
	{title="??", colour=5, id=439, x=-1636.15,y=180.5,z=61.76},--]]
	-- {title="??Labo??", color=2, id=403, x=387.47064208984, y=3585.7609863281, z=33.292263031006},
	-- {title="??Labo??", color=2, id=403, x=1190.4223632812, y=-3329.8059082032, z=5.6322560310364},
	-- {title="??Labo??", color=2, id=403, x=910.54754638672, y=-1065.3074951172, z=37.943222045898},


  }

  
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 2)
      SetBlipScale(info.blip, 1.4)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
