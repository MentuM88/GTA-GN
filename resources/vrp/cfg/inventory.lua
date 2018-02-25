
local cfg = {}

cfg.inventory_weight_per_strength = 10 -- weight for an user inventory per strength level (no unit, but thinking in "kg" is a good norm)

-- default chest weight for vehicle trunks
cfg.default_vehicle_chest_weight = 100

-- define vehicle chest weight by model in lower case
cfg.vehicle_chest_weights = {

--SUPER
  ["streiter"] = 250,
  ["yosemite"] = 250,
  ["riata"] = 250,


--AUTRES
  ["monster"] = 350,
  ["sandking"] = 350,
  ["sandking2"] = 350,

--VANS/CAMIONS

  ["rumpo"] = 500,
  ["surfer"] = 400,
  ["bobcatxl"] = 500,
  ["bison"] = 500,
  ["paradise"] = 500,
  ["youga"] = 500,
  ["gburrito"] = 500,
  ["benson"] = 1500,
  ["biff"] = 1500,
  ["mule"] = 1500,
  ["mule2"] = 1500,
  ["mule3"] = 1500,
  ["pounder"] = 1700,
  ["stockade"] = 1500,
  
--BATEAUX
  ["tropic"] = 350,
  ["tug"] = 750,
  
--VOLANTS
  ["frogger"] = 150,
  ["cargobob"] = 750,


}

return cfg
