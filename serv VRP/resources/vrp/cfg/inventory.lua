local cfg = {}

cfg.inventory_weight_per_strength = 10 -- weight for an user inventory per strength level (no unit, but thinking in "kg" is a good norm)

-- default chest weight for vehicle trunks
cfg.default_vehicle_chest_weight = 100

-- define vehicle chest weight by model in lower case
cfg.vehicle_chest_weights = {

--COMPACTS
  ["dilettante"] = 150,
  ["prairie"] = 150,

--COUPES
  ["exemplar"] = 150,
  ["felon"] = 150,
  ["oracle"] = 200,
  ["oracle2"] = 200,
  ["windsor"] = 200,
  ["windsor2"] = 200,

--MOTOCYCLES
  ["bagger"] = 200,
  ["chimera"] = 300,
  ["sovereign"] = 200,
  ["thrust"] = 200,
  ["vindicator"] = 200,

--MUSCLES
  ["blade"] = 200,
  ["buccaneer"] = 250,
  ["chino"] = 250,
  ["dominator"] = 200,
  ["dominator2"] = 200,
  ["dukes"] = 250,
  ["dukes2"] = 150,
  ["faction"] = 200,
  ["lurcher"] = 400,
  ["phoenix"] = 200,
  ["picador"] = 300,
  ["ruiner"] = 200,
  ["sabregt"] = 200,
  ["slamvan2"] = 500,
  ["tampa"] = 200,
  ["virgo"] = 200,
  ["virgo2"] = 200,
  ["voodoo2"] = 250,

--OFFROAD
  ["bodhi2"] = 300,
  ["brawler"] = 300,
  ["dubsta3"] = 450,
  ["kamacho"] = 450,
  ["mesa"] = 300,
  ["monster"] = 250,
  ["rancherxl"] = 350,
  ["rebel2"] = 300,
  ["sandking"] = 350,
  ["sandking2"] = 350,
  ["trophytruck"] = 250,
  ["streiter"] = 350,
  ["riata"] = 350, 
  
--SUV
  ["baller"] = 400,
  ["cavalcade"] = 400,
  ["dubsta"] = 300,
  ["fq2"] = 300,
  ["granger"] = 400,
  ["habanero"] = 250,
  ["landstalker"] = 300,
  ["patriot"] = 500,
  ["radius"] = 250,
  ["rocoto"] =  300,
  ["seminole"] = 300,
  ["serrano"] = 250,
  ["xls"] = 300,

--SEDANS
  ["cog55"] = 300,
  ["cog552"] = 300,
  ["cognoscenti"] = 300,
  ["cognoscenti2"] = 300,
  ["emperor"] = 200,
  ["glendale"] = 200,
  ["ingot"] = 300,
  ["intruder"] = 200,
  ["primo"] = 200,
  ["regina"] = 300,
  ["romero"] = 400,
  ["stanier"] = 200,
  ["stratum"] = 300,
  ["stretch"] = 300,
  ["tailgater"] = 200,
  ["washington"] = 200,

--SPORTS
  ["alpha"] = 200,
  ["bestiagts"] = 350,

--SPORTSCLASSICS
  ["manana"] = 200,
  ["pigalle"] = 200,
  ["tornado"] = 200,
  ["tornado2"] = 200,

--SUPERCARS
  ["superd"] = 200,

--TRUCKS
  ["benson"] = 1900,
  ["rubble"] = 1500,
  ["biff"] = 1500,
  ["hauler"] = 1000,
  ["scrap"] = 1000,
  ["mule"] = 1500,
  ["mule2"] = 1500,
  ["mule3"] = 1500,
  ["packer"] = 1000,
  ["pounder"] = 2500,
  ["stockade"] = 1500,
  ["barracks3"] = 1500,
  ["barracks"] = 1500,
  ["Forklift"] = 600,
   


--UTILITY
  ["tractor"] = 1000,
  ["tractor2"] = 1500,
  ["foodtruck"] = 1500,

--VANS
  ["bison"] = 500,
  ["yosemite"] = 400,
  ["bobcatxl"] = 500,
  ["gburrito"] = 600,
  ["camper"] = 1000,
  ["journey"] = 500,
  ["minivan"] = 250,
  ["paradise"] = 600,
  ["pony"] = 400,
  ["rumpo"] = 500,
  ["surfer"] = 500,  
  ["youga"] = 600,
  ["utillitruck2"] = 600,
  ["utillitruck3"] = 300,
  
--BATEAUX
  ["tropic"] = 350,
  ["tug"] = 750,
  ["predator"] = 400,
  ["marquis"] = 1500,
  ["seashark"] = 200,
  
--VOLANTS
  ["frogger"] = 150,
  ["cargobob2"] = 1000,
  ["dodo"] = 500,
  ["duster"] = 300,
  ["blimp"] = 1300,
  ["swift2"] = 400,
  ["buzzard2"] = 300,
  ["maverick"] = 300,
  ["volatus"] = 500,
  ["velum"] = 500,
  ["vestra"] = 500,
  ["luxor2"] = 700,

  

}

return cfg