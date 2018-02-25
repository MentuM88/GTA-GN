
local items = {}

local function play_drink(player)
  local seq = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local pills_choices = {}
pills_choices["Consommer"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
  --[[vRPclient.isInComa(player,{}, function(in_coma))
  if in_coma then
  vRPclient.notify(player,{"~g~ Appellez les Secours !!"})
end
else--]]

  if vRP.tryGetInventoryItem(user_id,"paracetamol",1) then
      vRPclient.varyHealth(player,{50})
      vRPclient.notify(player,{"~g~ Prend un antidouleur."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_smoke(player)
  local seq2 = {
    {"mp_player_int_uppersmoke","mp_player_int_smoke_enter",1},
    {"mp_player_int_uppersmoke","mp_player_int_smoke",1},
    {"mp_player_int_uppersmoke","mp_player_int_smoke_exit",1}
  }

  vRPclient.playAnim(player,{true,seq2,false})
end

local smoke_choices = {}
smoke_choices["Consommer"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"weed",1) then
	  vRP.varyHunger(user_id,(20))
      vRPclient.notify(player,{"~g~ smoking weed."})
      play_smoke(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_smell(player)
  local seq3 = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq3,false})
end

local smell_choices = {}
smell_choices["Consommer"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"cocaine",1) then
	  vRP.varyThirst(user_id,(20))
      vRPclient.notify(player,{"~g~ sniffe la cocaine."})
      play_smell(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_lsd(player)
  local seq4 = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq4,false})
end

local lsd_choices = {}
lsd_choices["Consommer"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"lsd",1) then
	  vRP.varyThirst(user_id,(20))

      vRPclient.notify(player,{"~g~ prend le lsd."})
      play_lsd(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_idole(player)
  local seq5 = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1},
    {"move_m@drunk@transitions","moderate_to_slightly",1},
    {"move_m@drunk@slightlydrunk","idle_intro",1},
    {"move_m@drunk@slightlydrunk","walk",5},
    {"move_m@drunk@verydrunk","idle",2},
    {"move_m@drunk@verydrunk","walk",10},
    {"move_m@drunk@transition","moderate_to_slightly",1},
    {"move_m@drunk@transition","slightly_to_idle",1}
  }

  vRPclient.playAnim(player,{true,seq5,false})
end


local idole_choices = {}
idole_choices["Consommer"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"idole de foi",1) then
    vRP.varyThirst(user_id,(-100))
    vRPclient.varyHealth(player,{100})
    vRP.varyHunger(user_id,(-100))
      vRPclient.notify(player,{"~g~ Prend l'Hostie !."})
      play_idole(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_donut(player)
  local seq6 = {
    {"mp_player_inteat@burger", "mp_player_int_eat_burger_enter",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_burger",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_exit_burger",1},
    {"move_m@drunk@transitions","moderate_to_slightly",1},
    {"move_m@drunk@slightlydrunk","idle_intro",1},
    {"move_m@drunk@slightlydrunk","walk",5},
    {"move_m@drunk@verydrunk","idle",2},
    {"move_m@drunk@verydrunk","walk",20},
    {"move_m@drunk@transition","moderate_to_slightly",1},
    {"move_m@drunk@transition","slightly_to_idle",1}
  }

  vRPclient.playAnim(player,{true,seq6,false})
end


local donut_choices = {}
donut_choices["Consommer"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"pdonut",1) then
    vRP.varyHunger(user_id,(-100))
      vRPclient.notify(player,{"~g~ Gobe le donut...drôle de goût !."})
      play_donut(player)
      vRP.closeMenu(player)
    end
  end
end}


items["idole de foi"] = {"Idole de foi","Hostie magique.",function(args) return idole_choices end,0.1}
items["paracetamol"] = {"Paracetamol","Un médicament basique.",function(args) return pills_choices end,0.1}
items["weed"] = {"Weed","A some weed.",function(args) return smoke_choices end,0.10}
items["cocaine"] = {"Cocaine","Some cocaine.",function(args) return smell_choices end,0.2}
items["lsd"] = {"Lsd","Some LSD.",function(args) return lsd_choices end,0.1}
items["Medical Weed"] = {"Medical Weed","Used by Doctors.",0.1}
items["Presents"] = {"Presents","Given to Children."}
items["pdonut"] = {"Premium Donut","Premium Donut", function(args) return donut_choices end,0.2}
return items


