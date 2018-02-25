-- define some basic inventory items

local items = {}

local function play_eat(player)
  local seq = {
    {"mp_player_inteat@burger", "mp_player_int_eat_burger_enter",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_burger",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_exit_burger",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local function play_drink(player)
  local seq = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

-- gen food choices as genfunc
-- idname
-- ftype: eat or drink
-- vary_hunger
-- vary_thirst
local function gen(ftype, vary_hunger, vary_thirst)
  local fgen = function(args)
    local idname = args[1]
    local choices = {}
    local act = "Unknown"
    if ftype == "eat" then act = "Manger" elseif ftype == "drink" then act = "Boire" end
    local name = vRP.getItemName(idname)

    choices[act] = {function(player,choice)
      local user_id = vRP.getUserId(player)
      if user_id ~= nil then
        if vRP.tryGetInventoryItem(user_id,idname,1,false) then
          if vary_hunger ~= 0 then vRP.varyHunger(user_id,vary_hunger) end
          if vary_thirst ~= 0 then vRP.varyThirst(user_id,vary_thirst) end

          if ftype == "drink" then
            vRPclient.notify(player,{"~b~ Boit "..name.."."})
            play_drink(player)
          elseif ftype == "eat" then
            vRPclient.notify(player,{"~o~ Mange "..name.."."})
            play_eat(player)
          end

          vRP.closeMenu(player)
        end
      end
    end}

    return choices
  end

  return fgen
end

-- DRINKS --

items["eau"] = {"Eau","", gen("drink",0,-8),0.2}
items["lait"] = {"Lait","", gen("drink",-5,-5),0.2}
items["icetea"] = {"Ice-Tea","", gen("drink",0,-40), 0.2}
items["orangejuice"] = {"Orange Juice","", gen("drink",0,-25),0.2}
items["gocagola"] = {"Coca Cola","", gen("drink",0,-35),0.2}
items["redbull"] = {"Red Bull","", gen("drink",0,-40),0.2}
items["lemonlimonad"] = {"Limonade","", gen("drink",0,-45),0.2}
items["vodka"] = {"Vodka","", gen("drink",15,-65),0.2}
items["vodkarb"] = {"Vodka Redbull","", gen("drink",0,-65),0.2}
items["cappucino"] = {"Cappuccino","", gen("drink",-20,-35),0.2}
items["thelait"] = {"Thé au lait","", gen("drink",-20,-35),0.2}
items["biere"] = {"Biere","", gen("drink",15,-65),0.2}


--FOOD

-- create Breed item
items["poulet"] = {"Blanc de Poulet cru","", gen("eat",0,0),0.2}
items["bnugget"] = {"Boite de nuggets surgelé","", gen("eat",0,0),0.5}
items["nugget"] = {"Nuggets cuits","", gen("eat",-20,0),0.5}
items["bread"] = {"Pain","", gen("eat",-10,0),0.2}
items["donut"] = {"Donut","", gen("eat",-20,0),0.2}
items["tacos"] = {"Tacos","", gen("eat",-65,0),0.2}
items["sandwich"] = {"Sandwich Saumon","", gen("eat",-25,0),0.2}
items["kebab"] = {"Kebab","", gen("eat",-35,10),0.5}
items["sushi"] = {"Shushi","", gen("eat",-35,10),0.2}
items["catfish"] = {"Catfish","", gen("eat",10,15),0.2}
items["bass"] = {"Bass","", gen("eat",10,15),0.2}
items["cafe"] = {"Grain de Café","", gen("eat",5,5),0.2}
items["the"] = {"Feuille de Thé","", gen("eat",0,0),0.2}
items["ble"] = {"Grain de Blé","", gen("eat",0,-5),0.2}
items["saumon"] = {"Saumon","", gen("eat",0,-5),0.2}

return items
