  ["benzoilmetilecgonina"] = {"Benzo.", "Some Benzoic acid ester.", nil, 0.01}, -- no choices
  ["seeds"] = {"Seeds", "Graines de Weed.", nil, 0.01}, -- no choices
  ["harness"] = {"Harness", "du Harness Lysergsäurediethylamid.", nil, 0.01}, -- no choices
  ["AK47"] = {"AK47", "Un chef d'oeuvre Russe.", nil, 0.01}, -- no choices
  ["M4A1"] = {"M4A1", "Outil de paix Américain.", nil, 0.01}, -- no choices
  ["credit"] = {"Credit Card", "Carte de crédit.", nil, 0.01}, -- no choices
  ["driver"] = {"Driver license Card", "Permis de conduire.", nil, 0.01}, -- no choices
  ["bank_money"] = {"Money of bank", "Argent de la banque.", nil, 0} 
  ["idole de foi"] = {"Idole de foi","Hostie magique.",function(args) return pills_choices end,0.1}
["weed"] = {"Weed","A some weed.",function(args) return smoke_choices end,0.10}
["cocaine"] = {"Cocaine","Some cocaine.",function(args) return smell_choices end,0.5}
["lsd"] = {"Lsd","Some LSD.",function(args) return lsd_choices end,0.1}
["Medical Weed"] = {"Medical Weed","Used by Doctors."}
["Presents"] = {"Presents","Given to Children."}
["medkit"] = {"Medical Kit","Used to reanimate unconscious people.",nil,0.5}
["dirty_money"] = {"Dirty money","Illegally earned money.",nil,0}
["repairkit"] = {"Repair Kit","Used to repair vehicles.",nil,0.5}
["metal"] = {"Métal","",nil,1}
["plastique"] = {"Plastique","",nil,0.5}
["eau"] = {"Eau","", gen("drink",0,-8),0.5}
["lait"] = {"Lait","", gen("drink",-5,-5),0.5}
["icetea"] = {"Ice-Tea","", gen("drink",0,-40), 0.5}
["orangejuice"] = {"Orange Juice","", gen("drink",0,-25),0.5}
["gocagola"] = {"Coca Cola","", gen("drink",0,-35),0.3}
["redgull"] = {"Red Bull","", gen("drink",0,-40),0.3}
["lemonlimonad"] = {"Limonade","", gen("drink",0,-45),0.3}
["vodka"] = {"Vodka","", gen("drink",15,-65),0.5}
["vodkarb"] = {"Vodka Redbull","", gen("drink",0,-65),0.5}
["cappuccino"] = {"Cappuccino","", gen("drink",-20,-35),0.5}
["thelait"] = {"Thé au lait","", gen("drink",-20,-35),0.5}
["biere"] = {"Biere","", gen("drink",15,-65),0.5}


--FOOD

-- create Breed item
["bread"] = {"Bread","", gen("eat",-10,0),0.5}
["donut"] = {"Donut","", gen("eat",-20,0),0.2}
["tacos"] = {"Tacos","", gen("eat",-20,0),0.2}
["sandwich"] = {"Sandwich Saumon","", gen("eat",-25,0),0.5}
["kebab"] = {"Kebab","", gen("eat",-45,0),0.85}
["sushi"] = {"Shushi","", gen("eat",-45,0),0.5}
["pdonut"] = {"Premium Donut","", gen("eat",-25,0),0.5}
["catfish"] = {"Catfish","", gen("eat",10,15),0.3}
["bass"] = {"Bass","", gen("eat",10,15),0.3}
["cafe"] = {"Grain de Café","", gen("eat",5,5),0.2}
["the"] = {"Feuille de Thé","", gen("eat",0,0),0.2}
["ble"] = {"Grain de Blé","", gen("eat",0,-5),0.2}
["saumon"] = {"Saumon","", gen("eat",0,-5),0.2}