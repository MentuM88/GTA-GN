
local cfg = {}
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is an associated list of veh_name/veh_definition 
-- they need a _config property to define the blip and the vehicle type for the garage (each vtype allow one vehicle to be spawned at a time, the default vtype is "default")
-- this is used to let the player spawn a boat AND a car at the same time for example, and only despawn it in the correct garage
-- _config: vtype, blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.rent_factor = 0.1 -- 10% of the original price if a rent
cfg.sell_factor = 0 -- sell for 75% of the original price

cfg.garage_types = {
  ["Fisher's Boat"] = {
    _config = {vtype="boat",blipid=427,blipcolor=28,permissions={"fisher.vehicle"}},
    ["suntrap"] = {"Fisher's boat",0, "Your favorite boat!"}
  },
  ["Bateaux de pêche en mer"] = {
    _config = {vtype="boat",blipid=427,blipcolor=28,permissions={"fisher.vehicle"}},
    ["suntrap"] = {"Fisher's boat",0, "Your favorite boat!"}
  },

  ["funboats"] = {
    _config = {vtype="boat",blipid=377,blipcolor=49},
    ["seashark"] = {"Jetski 1",5000, "La patate"},
    ["seashark2"] = {"Jetski 2",5000, "La patate2"},
    ["dinghy2"] = {"Bateau Boudin",200000, "fat"},
    ["toro"] = {"Bateau rapide",500000, "fat2"},
    ["marquis"] = {"Bateau a voile",800000, "fat3"},
    ["tropic"] = {"petit bateau de pêche",100000, "pêche"},
    ["tug"] = {"Gros bateau de pêche",100000, "pêche2"},

  },

  ["padre"] = {
    _config = {vtype="car",permissions={"car.church"}},
    ["technical"] = {"Pickup Arme",0, "Arme de Foi"},
    ["cognoscenti2"] = {"cognoscenti blindee",0, "La patate4"},
    ["tailgater"] = {"vehicule société",0, "voiture"}
  },
  ["fabarme"] = {
    _config = {vtype="car",permissions={"craft.armes"}},
    ["schafter6"] = {"Schafter blinde",0, "voiture blindee"},
    ["stockade"] = {"camion blinde",0, "camion blinde"},
    ["tailgater"] = {"vehicule société",0, "voiture"}
 
  },

  ["sandy"] = {
    _config = {vtype="car",permissions={"car.sandy"}},
    ["tourbus"] = {"Bus Touriste",0, "bus touristique"},
    ["dune"] = {"Buggy",0, "buggy"},
    ["blazer"] = {"quad",0, "quad"},
    ["duster"] = {"duster",0, "baron rouge"},
    ["bmx"] = {"velo",0, "velo"},
    ["dodo"] = {"hydravion",0, "hydravion"},
    ["sanchez"] = {"moto",0, "moto"},
    ["frogger"] = {"helico",0, "helico"},
    ["blazer5"] = {"blazzer5",0, "blazzer5"},
    ["ruiner2"] = {"ruiner2",0, "ruiner2"},
    ["barracks"] = {"barracks",0, "barracks"},
    ["surfer"] = {"redbull truck",0, "redbull truck"}
  },

    ["Courses"] = {
    _config = {vtype="car",permissions={}},
    ["raptor"] = {"Buggy de course",20000, "trike"},
    ["tampa"] = {"Voiture de drift",30000, "Drift Car"},
    ["tribike"] = {"Velo",0, "Velo de course"},
    ["BMX"] = {"BMX",0, "Velo BMX"},
    ["mule2"] = {"mule2",200000, "mule2"},
    ["mule3"] = {"mule3",200000, "mule3"},
    ["pounder"] = {"pounder",200000, "pounder"},
    ["granger"] = {"granger",200000, "granger"}

  },


 
 ["revente"]  = {  -- 150k price cap
    _config = {vtype="car"},
    ["ninef"] = {"9F",10000000, ""},
    ["ninef2"] = {"9F Cabrio",10000000, ""},
    ["alpha"] = {"Alpha",10000000, ""},
    ["banshee"] = {"Banshee",10000000, ""},
    ["banshee2"] = {"Banshee 900R",10000000, ""},
    ["carbonizzare"] = {"Carbonizzare",10000000, ""},
    ["chantom"] = {"Chantom Semi",10000000, ""},
    ["cognoscenti2"] = {"Cognoscenti(Armored)",10000000, ""},
    ["cogcabrio"] = {"Cognoscenti Cabrio",10000000, ""},
    ["comet2"] = {"Comet",10000000, ""},
    ["coquette"] = {"Coquette",10000000, ""},
    ["coquette3"] = {"Coquette BlackFin",10000000, ""},
    ["tampa2"] = {"Drift Tampa",10000000, ""},
    ["feltzer2"] = {"Feltzer",10000000, ""},
    ["furoregt"] = {"Furore GT",10000000, ""},
    ["gtr"] = {"GTR Nismo",10000000, ""},
    ["jester"] = {"Jester",10000000, ""},
    ["jester2"] = {"Jester (Racecar)",10000000, ""},
    ["f620"] = {"Lexus RC350", 10000000, ""},
    ["pigalle"] = {"Pigalle",10000000, ""},
    ["surano"] = {"Surano",10000000, ""},
    ["rs6"] = {"Audi RS6",10000000, ""},
    ["sentinel"] = {"Audi S5", 10000000, ""},
    ["baller"] = {"Baller",10000000, ""},
    ["bestiagts"] = {"Bestia GTS",10000000, ""},
    ["blista"] = {"Blista Compact",10000000, ""},
    ["buffalo"] = {"Buffalo",10000000, ""},
    ["buffalo2"] = {"Buffalo S",10000000, ""},
    ["dominator"] = {"Dominator",100000000, ""},
    ["exemplar"] = {"Exemplar", 10000000, ""},
    ["fusilade"] = {"Fusilade",10000000, ""},
    ["gburrito"] = {"Gang Burrito",10000000, ""},
    ["gauntlet"] = {"Gauntlet",10000000, ""},
    ["granger"] = {"Grabger",10000000, ""},
    ["huntley"] = {"Huntley",10000000, ""},
    ["kuruma"] = {"Lancer Evo",10000000, ""},
    ["nightshade"] = {"Nightshade",10000000, ""},
    ["rapidgt"] = {"Rapid GT",10000000, ""},
    ["rapidgt2"] = {"Rapid GT Convertible",10000000, ""},
    ["rocoto"] = {"Rocoto",10000000, ""},
    ["sabregt"] = {"Sabre Turbo",10000000, ""},
    ["schafter2"] = {"Schafter",10000000, ""},
    ["sentinel2"] = {"Sentinel XS", 10000000, ""},
    ["elegy"] = {"Skyline GTR",10000000, ""},
    ["superd"] = {"Super Diamond",10000000, ""},
    ["tampa"] = {"Tampa",10000000, ""},
    ["verlierer2"] = {"Verkierer",10000000,""},
    ["vigero"] = {"Vigero",10000000, ""},
    ["virgo"] = {"Virgo",10000000, ""},
    ["xls"] = {"XLS",10000000, ""},
    ["adder"] = {"Adder",10000000, ""},
    ["r8ppi"] = {"Audi R8",10000000, ""},
    ["bullet"] = {"Bullet",10000000, ""},
    ["cheetah"] = {"Cheetah",10000000, ""},
    ["entityxf"] = {"Entity XF",10000000, ""},
    ["fmj"] = {"FMJ",10000000, "10 - (less numner better car"},
    ["infernus"] = {"Infernus",10000000, ""},
    ["lynx"] = {"Lynx",10000000, ""},
    ["massacro"] = {"Massacro",10000000, ""},
    ["massacro2"] = {"Massacro (Racecar)",10000000, ""},
    ["osiris"] = {"Osiris",10000000, "8 - (less numner better car"},
    ["reaper"] = {"Reaper",10000000, ""},
    ["le7b"] = {"RE-7B",10000000, "1 - (less numner better car"},
    ["sheava"] = {"ETR1",10000000, "4 - (less numner better car"},
    ["schafter3"] = {"Schafter V12",10000000, ""},
    ["ySbrImpS11"] = {"Subaru Impreza",10000000, ""},
    ["sultanrs"] = {"Sultan RS",10000000, ""},
    ["t20"] = {"T20",10000000,"7 - (less numner better car"},
    ["tropos"] = {"Tropos",10000000, ""},
    ["turismor"] = {"Turismo R",10000000, "9 - (less numner better car"},
    ["tyrus"] = {"Tyrus",10000000, "5 - (less numner better car"},
    ["vacca"] = {"Vacca",10000000, ""},
    ["voltic"] = {"Voltic",10000000, ""},
    ["prototipo"] = {"X80 Proto",10000000, "6 - (less numner better car"},
    ["zentorno"] = {"Zentorno",10000000,"3 - (less numner better car"},
    ["casco"] = {"Casco",10000000, ""},
    ["c10custom"] = {"C10 Custom",10000000, ""},
    ["coquette2"] = {"Coquette Classic",10000000, ""},
    ["jb700"] = {"JB 700",10000000, ""},
    ["pigalle"] = {"Pigalle",10000000, ""},
    ["firebird"] = {"Pontiac Firebird 1970",10000000, ""},
    ["stinger"] = {"Stinger",10000000, ""},
    ["stingergt"] = {"Stinger GT",10000000, ""},
    ["feltzer3"] = {"Stirling",10000000, ""},
    ["ztype"] = {"Z-Type",10000000,""},
    ["asea"] = {"Asea",10000000, ""},
    ["asterope"] = {"Asterope",10000000, ""},
    ["blista"] = {"Blista", 10000000, ""},
    ["brioso"] = {"Brioso R/A",10000000, ""},
    ["dilettante"] = {"Dilettante", 10000000, ""},
    ["glendale"] = {"Glendale",10000000, ""},
    ["journey"] = {"Journey",10000000, ""},
    ["ingot"] = {"Ingot",10000000, ""},
    ["issi2"] = {"Issi",10000000, ""},
    ["intruder"] = {"Intruder",10000000, ""},
    ["panto"] = {"Panto", 10000000, ""},
    ["penumbra"] = {"Penumbra", 10000000, ""},
    ["picador"] = {"Picador",10000000, ""},
    ["prairie"] = {"Prairie", 10000000, ""},
    ["premier"] = {"Premier",10000000, ""},
    ["primo"] = {"Primo",10000000, ""},
    ["primo2"] = {"Primo Custom",10000000, ""},
    ["regina"] = {"Regina",10000000, ""},
    ["rhapsody"] = {"Rhapsody", 10000000, ""},
    ["rumpo"] = {"Rumpo",10000000, ""},
    ["stanier"] = {"Stanier",10000000, ""},
    ["stratum"] = {"Stratum",10000000, ""},
    ["surge"] = {"Surge",10000000, ""},
    ["warrener"] = {"Warrener",10000000, ""},
    ["washington"] = {"Washington",10000000, ""},
    ["windsor"] = {"Windsor",10000000, ""},
    ["brawler"] = {"Brawler",10000000, ""},
    ["dubsta3"] = {"Bubsta 6x6",10000000, ""},
    ["rebel2"] = {"Rebel",10000000, ""},
    ["fordh"] = {"Ford H",10000000, ""},
    ["sandking"] = {"Sandking",10000000, ""},
    ["sandkinghd"] = {"Sandking Monster Truck",10000000, ""},
    ["trophytruck"] = {"The Liberator",10000000, ""},
    ["monster"] = {"The Liberator Monster",10000000, ""},
    ["bifta"] = {"Bifta",10000000, ""}, -- atvs start here
    ["blazer"] = {"Blazer",10000000, ""},
    ["dune"] = {"Dune Buggy",10000000, ""},
    ["bison"] = {"Bison",10000000, ""},
    ["blade"] = {"Blade",10000000, ""},
    ["bobcatxl"] = {"Bobcat XL",10000000, ""},
    ["buccaneer"] = {"Buccaneer",10000000, ""},
    ["cavalcade"] = {"Cavalcade",10000000, ""},
    ["Chino"] = {"Chino",10000000, ""},
    ["cognoscenti"] = {"Cognoscenti",10000000, ""},
    ["dukes"] = {"Dukes",10000000, ""},
    ["faction"] = {"Faction",10000000, ""},
    ["felon"] = {"Felon", 10000000, ""},
    ["felon2"] = {"Felon GT", 10000000, ""},
    ["fugitive"] = {"Fugitive",10000000, ""},
    ["hotknife"] = {"Hotknife",10000000, ""},
    ["jackal"] = {"Jackal", 10000000, ""},
    ["landstalker"] = {"Landstalker",10000000, ""},
    ["minivan"] = {"Minivan",10000000, ""},
    ["omnis"] = {"Omnis",10000000, ""},
    ["oracle"] = {"Oracle",10000000, ""},
    ["oracle2"] = {"Oracle XS",10000000, ""},
    ["paradise"] = {"Paradise",10000000, ""},
    ["radi"] = {"Radius",10000000, ""},
    ["seminole"] = {"Seminole",10000000, ""},
    ["stretch"] = {"Stretch",10000000, ""},
    ["sultan"] = {"Sultan",10000000, ""},
    ["surfer"] = {"Surfer",10000000, ""},
    ["tailgater"] = {"Tailgater",10000000, ""},
    ["windsor2"] = {"Windsor Drop",10000000, ""},
    ["youga"] = {"Youga",10000000, ""},
    ["zion"] = {"Zion",10000000, ""},
    ["f4rr"] = {"Agusta F4 RR",10000000, ""}
},

["reventemoto"]  = {  -- 150k price cap
    _config = {vtype="bike"},
    ["AKUMA"] = {"Akuma",10000000, ""},
    ["bagger"] = {"Bagger",10000000, ""},
    ["bati"] = {"Bati 801",10000000, ""},
    ["bati2"] = {"Bati 801RR",10000000, ""},
    ["bf400"] = {"BF400",10000000, ""},
    ["lectro"] = {"BMW R75 Bobber",10000000, ""},
    ["carbonrs"] = {"Carbon RS",10000000, ""},
    ["cliffhanger"] = {"Cliffhanger",10000000, ""},
    ["f131"] = {"Confederate F131 Hellcat",10000000, ""},
    ["double"] = {"Double T",10000000, ""},
    ["enduro"] = {"Enduro",10000000, ""},
    ["faggio2"] = {"Faggio",10000000, ""},
    ["gargoyle"] = {"Gargoyle",10000000, ""},
    ["hakuchou"] = {"Hakuchou",10000000, ""},
    ["daemon"] = {"Harley Knucklehead",10000000, ""},
    ["hexer"] = {"Hexer",10000000, ""},
    ["innovation"] = {"Innovation",10000000, ""},
    ["nemesis"] = {"Nemesis",10000000, ""},
    ["pcj"] = {"PCJ-600",10000000, ""},
    ["ruffian"] = {"Ruffian",10000000, ""},
    ["sanchez"] = {"Sanchez",310000000, ""},
    ["sovereign"] = {"Sovereign",10000000, ""}, -- looking for replacement
    ["thrust"] = {"Thrust",10000000, ""},
    ["vader"] = {"Vader",10000000, ""},
    ["Forklift"] = {"Forklift",10000000, ""},
    ["vindicator"] = {"Vindicator",10000000,""}
},
 --[[ 
 ----------   
  ["House Garage"] = {
    _config = {vtype="car",blipid=357,blipcolor=69},
	["f4rr"] = {"Agusta F4 RR",35000, ""},
    ["AKUMA"] = {"Akuma",9000, ""},
    ["bagger"] = {"Bagger",7000, ""},
    ["bati"] = {"Bati 801",10000, ""},
    ["bati2"] = {"Bati 801RR",10000, ""},
    ["bf400"] = {"BF400",6000, ""},
	["lectro"] = {"BMW R75 Bobber",10000, ""},
    ["carbonrs"] = {"Carbon RS",11000, ""},
    ["cliffhanger"] = {"Cliffhanger",13000, ""},
	["f131"] = {"Confederate F131 Hellcat",45000, ""},
    ["double"] = {"Double T",9000, ""},
    ["enduro"] = {"Enduro",6000, ""},
    ["faggio2"] = {"Faggio",1000, ""},
    ["gargoyle"] = {"Gargoyle",10000, ""},
    ["hakuchou"] = {"Hakuchou",20000, ""},
	["daemon"] = {"Harley Knucklehead",20000, ""},
    ["hexer"] = {"Hexer",15000, ""},
    ["innovation"] = {"Innovation",20000, ""},
    ["nemesis"] = {"Nemesis",12000, ""},
    ["pcj"] = {"PCJ-600",7000, ""},
    ["ruffian"] = {"Ruffian",7000, ""},
    ["sanchez"] = {"Sanchez",3000, ""},
    ["sovereign"] = {"Sovereign",1000, ""}, -- looking for replacement
    ["thrust"] = {"Thrust",12000, ""},
    ["vader"] = {"Vader",7000, ""},
    ["vindicator"] = {"Vindicator",12000,""},
	["bison"] = {"Bison",30000, ""},
    ["blade"] = {"Blade",16000, ""},
    ["bobcatxl"] = {"Bobcat XL",23000, ""},
    ["buccaneer"] = {"Buccaneer",29000, ""},
    ["cavalcade"] = {"Cavalcade",30000, ""},
    ["Chino"] = {"Chino",18000, ""},
    ["cognoscenti"] = {"Cognoscenti",25000, ""},
    ["dukes"] = {"Dukes",20000, ""},
    ["faction"] = {"Faction",23000, ""},
    ["felon"] = {"Felon", 18000, ""},
    ["felon2"] = {"Felon GT", 23000, ""},
    ["fugitive"] = {"Fugitive",18000, ""},
    ["hotknife"] = {"Hotknife",23000, ""},
    ["jackal"] = {"Jackal", 18000, ""},
    ["landstalker"] = {"Landstalker",30000, ""},
    ["minivan"] = {"Minivan",30000, ""},
    ["omnis"] = {"Omnis",18000, ""},
    ["oracle"] = {"Oracle", 20000, ""},
    ["oracle2"] = {"Oracle XS",22000, ""},
    ["paradise"] = {"Paradise",17000, ""},
    ["radi"] = {"Radius",30000, ""},
    ["seminole"] = {"Seminole",30000, ""},
    ["stretch"] = {"Stretch",30000, ""},
    ["sultan"] = {"Sultan",24000, ""},
    ["surfer"] = {"Surfer",20000, ""},
    ["tailgater"] = {"Tailgater",17000, ""},
    ["windsor2"] = {"Windsor Drop",23000, ""},
    ["youga"] = {"Youga",16000, ""},
    ["zion"] = {"Zion", 18000, ""},
    ["zion2"] = {"Zion Cabrio", 20000, ""},
	["brawler"] = {"Brawler",60000, ""},
    ["dubsta3"] = {"Bubsta 6x6",130000, ""},
    ["rebel2"] = {"Rebel",15000, ""},
	["fordh"] = {"Ford H",500000, ""},
    ["sandking"] = {"Sandking",40000, ""},
	["sandkinghd"] = {"Sandking Monster Truck",550000, ""},
    ["trophytruck"] = {"The Liberator",75000, ""},
	["monster"] = {"The Liberator Monster",350000, ""},
    ["bifta"] = {"Bifta",10000, ""}, -- atvs start here
    ["blazer"] = {"Blazer",1200, ""},
    ["dune"] = {"Dune Buggy",8000, ""},
	["asea"] = {"Asea",10000, ""},
    ["asterope"] = {"Asterope",10000, ""},
    ["blista"] = {"Blista", 5000, ""},
    ["brioso"] = {"Brioso R/A", 500, ""},
    ["dilettante"] = {"Dilettante", 5000, ""},
    ["glendale"] = {"Glendale",8000, ""},
    ["journey"] = {"Journey",5000, ""},
    ["ingot"] = {"Ingot",9000, ""},
    ["issi2"] = {"Issi", 7000, ""},
    ["intruder"] = {"Intruder",12000, ""},
    ["panto"] = {"Panto", 2000, ""},
    ["penumbra"] = {"Penumbra", 10000, ""},
    ["picador"] = {"Picador",12000, ""},
    ["prairie"] = {"Prairie", 12000, ""},
    ["premier"] = {"Premier",10000, ""},
    ["primo"] = {"Primo",9000, ""},
    ["primo2"] = {"Primo Custom",9500, ""},
    ["regina"] = {"Regina",8000, ""},
    ["rhapsody"] = {"Rhapsody", 5000, ""},
    ["rumpo"] = {"Rumpo",13000, ""},
    ["stanier"] = {"Stanier",10000, ""},
    ["stratum"] = {"Stratum",7000, ""},
    ["surge"] = {"Surge",9000, ""},
    ["warrener"] = {"Warrener",7000, ""},
    ["washington"] = {"Washington",15000, ""},
    ["windsor"] = {"Windsor",45000, ""},
	["casco"] = {"Casco",680000, ""},
	["c10custom"] = {"C10 Custom",500000, ""},
    ["coquette2"] = {"Coquette Classic",665000, ""},
    ["jb700"] = {"JB 700",450000, ""},
    ["pigalle"] = {"Pigalle",90000, ""},
	["firebird"] = {"Pontiac Firebird 1970",350000, ""},
    ["stinger"] = {"Stinger",550000, ""},
    ["stingergt"] = {"Stinger GT",575000, ""},
    ["feltzer3"] = {"Stirling",330000, ""},
    ["ztype"] = {"Z-Type",950000,""},
	["adder"] = {"Adder",1000000, ""},
    ["r8ppi"] = {"Audi R8",180000, ""},
    ["bullet"] = {"Bullet",155000, ""},
    ["cheetah"] = {"Cheetah",200000, ""},
    ["entityxf"] = {"Entity XF",250000, ""},
    ["fmj"] = {"FMJ",1750000, "10 - (less numner better car"},
    ["infernus"] = {"Infernus",220000, ""},
    ["lynx"] = {"Lynx",173000, ""},
    ["massacro"] = {"Massacro",175000, ""},
    ["massacro2"] = {"Massacro (Racecar)",185000, ""},
    ["osiris"] = {"Osiris",950000, "8 - (less numner better car"},
    ["reaper"] = {"Reaper",1595000, ""},
    ["le7b"] = {"RE-7B",2075000, "1 - (less numner better car"},
    ["sheava"] = {"ETR1",199500, "4 - (less numner better car"},
    ["schafter3"] = {"Schafter V12",700000, ""},
    ["ySbrImpS11"] = {"Subaru Impreza",200000, ""},
    ["sultanrs"] = {"Sultan RS",180000, ""},
    ["t20"] = {"T20",1600000,"7 - (less numner better car"},
    ["tropos"] = {"Tropos",180000, ""},
    ["turismor"] = {"Turismo R",1500000, "9 - (less numner better car"},
    ["tyrus"] = {"Tyrus",550000, "5 - (less numner better car"},
    ["vacca"] = {"Vacca",340000, ""},
    ["voltic"] = {"Voltic",150000, ""},
    ["prototipo"] = {"X80 Proto",27000000, "6 - (less numner better car"},
    ["zentorno"] = {"Zentorno",925000,"3 - (less numner better car"},
	["rs6"] = {"Audi RS6",70000, ""},
    ["sentinel"] = {"Audi S5", 45000, ""},
    ["baller"] = {"Baller",40000, ""},
    ["bestiagts"] = {"Bestia GTS",60000, ""},
    ["blista"] = {"Blista Compact",42000, ""},
    ["buffalo"] = {"Buffalo",35000, ""},
    ["buffalo2"] = {"Buffalo S",45000, ""},
    ["dominator"] = {"Dominator",35000, ""},
    ["exemplar"] = {"Exemplar", 50000, ""},
    ["fusilade"] = {"Fusilade",36000, ""},
    ["gburrito"] = {"Gang Burrito",65000, ""},
    ["gauntlet"] = {"Gauntlet",35000, ""},
    ["granger"] = {"Grabger",40000, ""},
    ["huntley"] = {"Huntley",45000, ""},
	["kuruma"] = {"Lancer Evo",35000, ""},
    ["nightshade"] = {"Nightshade",72000, ""},
    ["rapidgt"] = {"Rapid GT",40000, ""},
    ["rapidgt2"] = {"Rapid GT Convertible",50000, ""},
    ["rocoto"] = {"Rocoto",50000, ""},
    ["sabregt"] = {"Sabre Turbo",72000, ""},
    ["schafter2"] = {"Schafter",35000, ""},
    ["sentinel2"] = {"Sentinel XS", 35000, ""},
	["elegy"] = {"Skyline GTR",75000, ""},
    ["superd"] = {"Super Diamond",40000, ""},
    ["tampa"] = {"Tampa",72000, ""},
    ["verlierer2"] = {"Verkierer",69500,""},
    ["vigero"] = {"Vigero",72000, ""},
    ["virgo"] = {"Virgo",65000, ""},
    ["xls"] = {"XLS",45000, ""},
	["ninef"] = {"9F",120000, ""},
    ["ninef2"] = {"9F Cabrio",130000, ""},
    ["alpha"] = {"Alpha",150000, ""},
    ["banshee"] = {"Banshee",105000, ""},
    ["banshee2"] = {"Banshee 900R",120000, ""},
    ["carbonizzare"] = {"Carbonizzare",110000, ""},
	["chantom"] = {"Chantom Semi",110000, ""},
    ["cognoscenti2"] = {"Cognoscenti(Armored)",80000, ""},
    ["cogcabrio"] = {"Cognoscenti Cabrio",77000, ""},
    ["comet2"] = {"Comet",100000, ""},
    ["coquette"] = {"Coquette",138000, ""},
    ["coquette3"] = {"Coquette BlackFin",130000, ""},
    ["tampa2"] = {"Drift Tampa",95000, ""},
    ["feltzer2"] = {"Feltzer",130000, ""},
    ["furoregt"] = {"Furore GT",108000, ""},
	["gtr"] = {"GTR Nismo",90000, ""},
    ["jester"] = {"Jester",140000, ""},
    ["jester2"] = {"Jester (Racecar)",150000, ""},
    ["f620"] = {"Lexus RC350", 80000, ""},
    ["pigalle"] = {"Pigalle",90000, ""},
    ["surano"] = {"Surano",95000, ""}
  },
 ]]-- 
  ["police"] = {
    _config = {vtype="car",permissions={"police.vehicle"}},
    ["police"] = {"Police Cruiser",0, "police"},
    ["police2"] = {"Dodge Sheriff",0, "police1"},
    ["police3"] = {"Police3",0, "police2"},
	["police4"] = {"police4",0, "police3"},
	--["police5"] = {"Police SUV",0, "police"},
	--["police6"] = {"Police K9",0, "police"},
	--["police7"] = {"Police7",0, "police"},
	--["police8"] = {"Police8",0, "police"},
    --["policet"] = {"policet",0, "police"},
    --["sheriff3"] = {"Sheriff",0, "police"},
    ["sheriff2"] = {"Sheriff SUV",0, "police4"},
    ["sheriff"] = {"2015 Sheriff",0, "police5"},
    ["riot"] = {"SWAT",0, "police6"},
	["fbi"] = {"Unmarked",0, "police7"},
	--["hwaycar2"] = {"State Trooper",0, "police"},
	--["hwaycar3"] = {"Trooper SUV",0, "police"},
	--["hwaycar5"] = {"hwaycar5",0, "police"},
	--["hwaycar6"] = {"hwaycar6",0, "police"},
	--["hwaycar7"] = {"hwaycar7",0, "police"},
	--["hwaycar8"] = {"hwaycar8",0, "police"},
	--["hwaycar9"] = {"hwaycar9",0, "police"},
	--["hwaycar10"] = {"hwaycar10",0, "police"},
	["hwaycar"] = {"hwaycar",0, "police8"},
    --["polf430"] = {"Police Ferarri",0, "police"},
    ["insurgent2"] = {"Hummer",0, "hum"},
    ["barracks"] = {"Transport",0, "hum"},
    ["barracks3"] = {"Transport 2",0, "hum"},
	["policeb"] = {"Moto Police",0, "police"}
  },
  ["Trash Collector"] = {
    _config = {vtype="car",blipid=67,blipcolor=4,permissions={"trash.vehicle"}},
    ["trash"] = {"Truck",0, "trash"}
  },

  ["Cadet"] = {
    _config = {vtype="car",permissions={"Cadet.vehicle"}},
    ["police"] = {"police",0, "police"},
    ["policeb"] = {"moto",0, "police2"},
  },
  ["Bounty"] = {
    _config = {vtype="car",permissions={"Bounty.vehicle"}},
    ["fbi"] = {"Unmarked",0, "police"}
  },--]]
  ["emergency"] = {
    _config = {vtype="car",permissions={"emergency.vehicle"}},
    ["Ambulance"] = {"Ambulance",0, "emergency1"},
	["hwaycar4"] = {"Tahoe",0, "emergency2"},
	["firetruk"] = {"firetruk",0, "emergency3"}
  },
  ["tracteur"] = {
    _config = {vtype="car"},
    ["tractor"] = {"tractor",0, "tracteur"},
    ["tractor2"] = {"tracteur moderne",0, "tracteur"},
    ["tailgater"] = {"vehicule société",0, "voiture"}
},

["transport"] = {
    _config = {vtype="car",permissions={"trans.vehicle"}},
    ["mule2"] = {"Petit camion",0, "camion"},
    ["pounder"] = {"Gros camion",0, "camion2"},
    ["stockade"] = {"Camion blindé",0, "blindé"},
    ["tailgater"] = {"vehicule société",0, "voiture"}
},

["taxi"] = {
    _config = {vtype="car",permissions={"taxi.vehicle"}},
    ["taxi"] = {"taxi",0, "taxi"},
    ["tailgater"] = {"vehicule société",0, "voiture"}
},

["PawnShop"] = {
    _config = {vtype="car",permissions={"pawn.vehicle"}},
    ["taxi"] = {"taxi",0, "taxi"},
    ["tailgater"] = {"vehicule société",0, "voiture"}
},

["gambretti"] = {
    _config = {vtype="car",permissions={"casino.vehicle"}},
    ["mule2"] = {"Petit camion2",0, "camion3"},
    ["mule"] = {"Petit camion1",0, "camion"},
    ["mule3"] = {"Petit camion3",0, "camion4"},
    ["pounder"] = {"Gros camion",0, "camion2"},
    ["barracks"] = {"Camion militaire",0, "milit1"},
    ["tailgater"] = {"vehicule société",0, "voiture"}
},

    ["foodtruck"] = {
    _config = {vtype="car",permissions={"foodtruck.cars"}},
    ["foodtruck"] = {"camtar",0, "fourgon"},
    ["tailgater"] = {"vehicule société",0, "voiture"}
  },

  ["Police Helicopters"] = {
    _config = {vtype="plane",radius=5.1,permissions={"police.vehicle"}},
    ["polmav"] = {"Maverick",0, "emergency4"}
  },

   ["EMS Helicopters"] = {
    _config = {vtype="plane",radius=5.1,permissions={"emergency.vehicle"}},
    ["supervolito2"] = {"EMS",0, "emergency5"},
    ["maverick"] = {"EMS2",0, "emergency6"}
    
  },

  ["Pilotla"] = {
    _config = {vtype="plane",permissions={"pilot.vehicle"}},
    ["jet"] = {"Boeing 747",0, "jet"}
  },

  ["Pilotsa"] = {
    _config = {vtype="plane",permissions={"pilot.vehicle"}},
     ["mammatus"] = {"Small Cargo",0, "mammatus"}
  },

  ["airP"] = {
    _config = {vtype="plane",permissions={"air.vehicle"}},
    ["vestra"] = {"Plane",0, "vestra"}
  },
  ["airH"] = {
    _config = {vtype="plane",blipid=43,blipcolor=17},
     ["frogger"] = {"frogger",1000000, "frogger"},
     ["buzzard2"] = {"buzzard2",1000000, "buzzard2"},
     ["swift"] = {"swift2",1000000, "swift2"},
     ["volatus"] = {"volatus",2000000, "volatus"},
     ["maverick"] = {"maverick",3000000, "maverick"},
     ["cargobob2"] = {"cargobob2",8000000, "cargobob2"}


  }, 
  ["uber"] = {
    _config = {vtype="car",blipid=50,blipcolor=81,permissions={"uber.vehicle"}},
    ["taxi"] = {"Taxi",0, "taxi"}
  },
  --[[["Lawyer"] = {
    _config = {vtype="car",blipid=50,blipcolor=7,permissions={"Lawyer.vehicle"}},
    ["panto"] = {"Panto", 0, "panto"}
  },--]]
  ["delivery"] = {
    _config = {vtype="car",blipid=50,blipcolor=31,permissions={"delivery.vehicle"}},
    ["boxville4"] = {"Camion de poste",0, "boxville4"}
  },
  ["santa"] = {
    _config = {vtype="bike",permissions={"santa.vehicle"}},
    ["hydra"] = {"Santa's Sled",0, "hydra"}
  },  
  ["repair"] = {
    _config = {vtype="car",permissions={"repair.vehicle"}},
    ["towtruck"] = {"towtruck",0, "towtruck"},
	["utillitruck3"] = {"Utility Truck",0, "utillitruck3"}
  },

  ["garagiste"] = {
    _config = {vtype="car",permissions={"garage.vehicle"}},
    ["towtruck"] = {"towtruck",0, "towtruck"},
    ["utillitruck3"] = {"Utility Truck",0, "utillitruck3"},
    ["speedo"] = {"fourgon",0, "fourgon"},
    ["bulldozer"] = {"Bulldozer",0, "bulldozer"},
    ["tailgater"] = {"vehicule société",0, "voiture"}

  },

  ["bankdriver"] = {
    _config = {vtype="car",blipid=67,blipcolor=4,permissions={"bankdriver.vehicle"}},
    ["stockade"] = {"stockade",0, "stockade"}
  },
  
["gouvernement"] = {
    _config = {vtype="car",permissions={"gouv.vehicule"}},
    ["stretch"] = {"Limousine",0, "limo"},
    ["superd"] = {"SuperD",0, "SuperD"},
    ["insurgent"] = {"HummerArm",0, "humARM"},
    ["insurgent2"] = {"Hummer",0, "hum"},
    ["barracks"] = {"Transport",0, "hum"},
    ["barracks3"] = {"Transport 2",0, "hum"},
    ["tailgater"] = {"vehicule société",0, "voiture"}
    
},

["chais"] = {
    _config = {vtype="car",permissions={"vigne.vehicle"}},
    ["blazer"] = {"blazer1",0, "blazer1"},
    ["tractor2"] = {"tractor2",0, "tractor2"},
    ["mule3"] = {"mule3",0, "mule3"},
    ["tailgater"] = {"vehicule société",0, "voiture"}
    
},

["export"] = {
    _config = {vtype="car",permissions={"export.vehicle"}},
    ["utillitruck2"] = {"fourgon",0, "fourgon"},
    ["rubble"] = {"camion feraille",0, "camion"},
    ["scrap"] = {"camion feraille2",0, "camion2"},
    ["mule3"] = {"mule3",0, "mule3"},
    ["tailgater"] = {"vehicule société",0, "voiture"}
    
},

["avions"] = {
    _config = {vtype="plane",blipid=251,blipcolor=31},
    ["dodo"] = {"dodo", 400000, "dodo"},
    ["stunt"] = {"duster",300000, "duster"},
    ["velum"] = {"velum",1000000, "velum"},
    ["luxor2"] = {"luxor2",10000000, "luxor2"}
    
},

["aigle"] = {
    _config = {vtype="plane",permissions={"jpp.vehicle"}},
    ["dodo"] = {"dodo",15000, "dodo"},
    ["duster"] = {"duster",10000, "duster"},
    ["mammatus"] = {"mammatus",20000, "mammatus"},
    ["vestra"] = {"vestra",150000, "vestra"}
    
},

["aiglevoit"] = {
    _config = {vtype="plane",permissions={"jpp.vehicle"}},
    ["tailgater"] = {"vehicule société",0, "voiture"}
    
},

  ["Medical Driver"] = {
    _config = {vtype="car",blipid=67,blipcolor=4,permissions={"medical.vehicle"}},
    ["pony2"] = {"Medical Weed Van",0, "pony2"}
  }
  
  
}

-- {garage_type,x,y,z}
cfg.garages = {

  --{"Starter Vehicles",141.66270446777,-1081.8083496094,29.192489624023},
  --{"new additions",853.93768310547,-2093.705078125,30.243104934692},
  --{"Low End",1208.6527099609,-1262.5780029297,35.226768493652},
  --{"Off Road",1777.6678466797,3335.7856445313,41.171855926514},
  --{"High End",-361.62393188477,-132.71321105957,38.680068969727},
  --{"Mid Range",717.70239257813,-1088.8958740234,22.360628128052},
  --{"Exotic Cars",-42.400775909424,-1098.3619384766,26.422369003296},
  --{"Mid Range",1181.6231689453,2650.830078125,37.821151733398},
  --{"sportsclassics",112.275, 6619.83, 31.8154},
  --{"Motorcycles",-205.789, -1308.02, 31.2916},
  {"police",451.2121887207,-1018.2822875977,28.495378494263},	-- jobs garage
  {"Cadet",451.2121887207,-1018.2822875977,28.495378494263}, --- cadet garage
  --{"police",477.99038696289,-1020.9154663086,28.011201858521},
  --{"Bounty",512.07818603516,-3052.1579589844,6.0687308311462},  
  {"police",1868.5435791016,3696.0295410156,33.5693359375},  -- sandy shores
  {"police",-476.92425537109,6026.9951171875,31.340547561646},  -- paleto
  {"emergency",291.18, -1439.07,29.81}, -- main
  {"emergency",1833.3223876953,3661.3088378906,33.875843048096}, -- sandy shores
  {"emergency",-255.98040771484,6346.1127929688,32.426189422607}, -- paleto
  --{"uber",907.38049316406,-175.86546325684,74.130157470703}, -- jobs garage
  --{"Lawyer",-1900.7344970703,-560.89245605469,11.802397727966},-- jobs garage
  {"delivery",964.514770507813,-1020.13879394531,40.8475074768066},   -- jobs garage
  {"repair",-369.22,-108.45,38.68},
  {"garagiste",-203.38,-1300.86,31.3},   -- jobs garage
  {"bankdriver",222.68756103516,222.95631408691,105.41331481934},   -- jobs garage
  --{"House Garage",-638.08142089844,56.500617980957,43.794803619385},  -- house garage
  --{"House Garage",-1457.4909667969,-500.61614990234,32.202766418457},
  --{"House Garage",-25.273494720459,-1434.4365234375,30.653142929077},
  --{"House Garage",-1155.2669677734,-1520.244140625,4.3475861549377},
  --{"House Garage",-819.40551757813,183.72904968262,72.136161804199},
  --{"House Garage",15.016004562378,547.76171875,176.14279174805},
  --{"House Garage",1977.1169433594,3827.2368164063,32.373237609863},
  --{"House Garage",2480.5893554688,4953.958984375,45.026481628418},
  --{"House Garage",15.016004562378,547.76171875,176.14279174805},
  --{"House Garage",-1415.1351318359,-956.41815185547,7.2369647026062},
  --{"House Garage",497.44073486328,-1702.4410400391,29.400140762329},
  --{"House Garage",684.44097900391,-719.58734130859,25.884830474854},
  --{"House Garage",1230.9146728516,-2678.0639648438,2.7148849964142},
  --{"House Garage",-796.00256347656,304.55578613281,85.700416564941},
  --{"House Garage",-259.08013916016,-680.39465332031,32.830478668213},
  --{"House Garage",-72.769035339355,495.79925537109,144.10296630859},
  --{"House Garage",-121.71002960205,509.85540771484,142.5652923584},
  --{"House Garage",-188.32077026367,502.87573242188,134.23774719238},
  --{"House Garage",1366.5837402344,1147.4722900391,113.41327667236 },
  {"Police Helicopters",449.30340576172,-981.24963378906,43.69165802002}, -- Main PD
  {"Police Helicopters",1770.2171630859,3239.5561523438,42.13171005249}, -- Sandy Shores
  {"Police Helicopters",-475.24264526367,5988.7353515625,31.336685180664}, -- Paleto Bay
  {"EMS Helicopters",313.34,-1465.36,46.51}, -- Main PD
  {"EMS Helicopters",299.59,-1453.78,46.51}, -- Sandy Shores
  {"EMS Helicopters",-475.24264526367,5988.7353515625,31.336685180664}, -- Paleto Bay  
  --{"Fisher's Boat",1508.8854980469,3908.5732421875,30.031631469727},
  {"Medical Driver",-319.82263183594,-942.8408203125,31.080617904663},
  {"aigle",-901.70129394531,-3293.984375,13.944430351257},
  {"aigle",2128.9069824219,4806.134765625,41.168750762939},
  {"aigle",1734.9053955078,3297.9689941406,41.223503112793},
  {"aiglevoit",2149.6520996094,4799.9453125,41.053607940674},
  {"foodtruck",972.51,-1709.56,29.54},
  --{"airP",2128.9069824219,4806.134765625,41.168750762939},
  {"airH",-745.14343261719,-1468.5361328125,5.0005240440369},
  {"airH",834.79638671875,-3137.4477539063,7.4745059013367},
  {"airH",-1178.3306884766,-2845.416015625,13.945789337158},
  {"airH",1795.6290283203,3237.4606933594,44.275157928467},
  --{"airP",2128.9069824219,4806.134765625,41.168750762939},
  --{"airP",1734.9053955078,3297.9689941406,41.223503112793},
  {"gouvernement",-428.15,1160.51,325.9},
  --{"Santa",-1345.333984375,-2692.7885742188,13.944937705994}  
  {"funboats",1503, 3887.39, 29.7},
  {"funboats",1170.14,-2724,-0.70},
  {"sandy",-571.9384765625,5344.15234375,69.951629638672},
  {"padre",-722.72,82.79,55.86},
  {"Courses",940.49,75.4,78.84}, 
  {"fabarme",832.13,-2141.51,29.44}, 
  {"tracteur",2413.33,4991.16,46.26}, 
  {"transport",-1030.11,-2214.02,8.89},
  {"revente",143.93780517578,-3079.404296875,5.8963122367859},  
  {"reventemoto",128.87518310547,-3105.4775390625,5.9116220474243}, 
  {"Bateaux de pêche en mer",1303.6,-3310.17,0.5},
  {"chais",-1897.1,2033.74,140.74},
  {"taxi",901.01708984375,-185.32330322266,73.83048248291},
  {"export",164.49365234375,-3074.9526367188,5.9136476516724},
  {"avions",-985.63494873047,-2993.388671875,13.940263748169},
  {"Trash Collector",768.86297607422,-1410.4896240234,26.502605438232},
  {"gambretti",1169.3131103516,-3319.8937988281,5.9061512947083}

  --{"planes",1640, 3236, 40.4},
  --{"planes",2123, 4805, 41.19},
  --{"planes",-1348, -2230, 13.9},
  --{"helicopters",-1233, -2269, 13.9},
  --{"helicopters",-745, -1468, 5},
  --{"Fisher's Boat",-849.5, -1368.64, 1.6},
  --{"Fisher's Boat",1538, 3902, 30.35}
}

return cfg
