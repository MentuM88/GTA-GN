
-- define emotes
-- use the custom emotes admin action to test emotes on-the-fly
-- animation list: http://docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm

local cfg = {}

-- map of emote_name => {upper,seq,looping}
-- seq can also be a task definition, check the examples below
cfg.emotes = {
  ["main en l'air"] = { -- handsup state, use clear to lower hands
    true,
    { -- sequence, list of {dict,name,loops}
      {"random@mugging3", "handsup_standing_base", 1}
    },
    true
  },
  ["Non"] = {
    true, {{"gestures@f@standing@casual","gesture_head_no",1}}, false
  },
  ["va au diable"] = {
    true, {{"gestures@f@standing@casual","gesture_damn",1}}, false
  },
  ["Dance"] = {
    false, {
      {"rcmnigel1bnmt_1b","dance_intro_tyler",1},
      {"rcmnigel1bnmt_1b","dance_loop_tyler",1}
    }, false
  },
  ["Salut"] = {true,{{"mp_player_int_uppersalute","mp_player_int_salute",1}},false},
  ["Rock"] = {true,{{"mp_player_introck","mp_player_int_rock",1}},false},
  ["assis chaise"] = {false, {task="PROP_HUMAN_SEAT_CHAIR_MP_PLAYER"}, false},
  ["police"] = {false, {task="WORLD_HUMAN_COP_IDLES"}, false},
  ["jumelles"] = {false, {task="WORLD_HUMAN_BINOCULARS"}, false},
  ["acclamer"] = {false, {task="WORLD_HUMAN_CHEERING"}, false},
  ["boire"] = {false, {task="WORLD_HUMAN_DRINKING"}, false},
  ["fumer"] = {false, {task="WORLD_HUMAN_SMOKING"}, false},
  ["Film x"] = {false, {task="WORLD_HUMAN_MOBILE_FILM_SHOCKING"}, false},
  ["Planter"] = {false, {task="WORLD_HUMAN_GARDENER_PLANT"}, false},
  ["en garde"] = {false, {task="WORLD_HUMAN_GUARD_STAND"}, false},
  ["reparation"] = {false, {task="WORLD_HUMAN_HAMMERING"}, false},
  ["zoner"] = {false, {task="WORLD_HUMAN_HANG_OUT_STREET"}, false},
  ["se promener"] = {false, {task="WORLD_HUMAN_HIKER_STANDING"}, false},
  ["Statue"] = {false, {task="WORLD_HUMAN_HUMAN_STATUE"}, false},
  ["Jogging"] = {false, {task="WORLD_HUMAN_JOG_STANDING"}, false},
  ["affamé"] = {false, {task="WORLD_HUMAN_LEANING"}, false},
  ["Flexion"] = {false, {task="WORLD_HUMAN_MUSCLE_FLEX"}, false},
  ["photo"] = {false, {task="WORLD_HUMAN_PAPARAZZI"}, false},
  ["assis par terre"] = {false, {task="WORLD_HUMAN_PICNIC"}, false},
  ["pute 1"] = {false, {task="WORLD_HUMAN_PROSTITUTE_HIGH_CLASS"}, false},
  ["pute 2"] = {false, {task="WORLD_HUMAN_PROSTITUTE_LOW_CLASS"}, false},
  ["montrer ses seins"] = {false, {task="WORLD_HUMAN_PUSH_UPS"}, false},
  ["se lever"] = {false, {task="WORLD_HUMAN_SIT_UPS"}, false},
  ["pecher"] = {false, {task="WORLD_HUMAN_STAND_FISHING"}, false},
  ["Impatient"] = {false, {task="WORLD_HUMAN_STAND_IMPATIENT"}, false},
  ["telephone"] = {false, {task="WORLD_HUMAN_STAND_MOBILE"}, false},
  ["Diggit"] = {false, {task="WORLD_HUMAN_STRIP_WATCH_STAND"}, false},
  ["bain de soleil 1"] = {false, {task="WORLD_HUMAN_SUNBATHE_BACK"}, false},
  ["bain de soleil 2"] = {false, {task="WORLD_HUMAN_SUNBATHE"}, false},
  ["souder"] = {false, {task="WORLD_HUMAN_WELDING"}, false},
  ["Ã  genou"] = {false, {task="CODE_HUMAN_MEDIC_KNEEL"}, false},
  ["plaquer au sol"] = {false, {task="CODE_HUMAN_POLICE_CROWD_CONTROL"}, false},
  ["enqueter"] = {false, {task="CODE_HUMAN_POLICE_INVESTIGATE"}, false},
  ["Yoga"] = {false, {task="WORLD_HUMAN_YOGA"}, false},
  ["SDF attitude"] = {false, {task="WORLD_HUMAN_BUM_FREEWAY"}, false},
  ["SDF effondre"] = {false, {task="WORLD_HUMAN_BUM_SLUMPED"}, false},
  ["SDF chancelant"] = {false, {task="WORLD_HUMAN_BUM_STANDING"}, false},
  ["dealer"] = {false, {task="WORLD_HUMAN_DRUG_DEALER"}, false},
  ["garde militaire"] = {false, {task="WORLD_HUMAN_GUARD_STAND_ARMY"}, false},
  ["femme menage"] = {false, {task="WORLD_HUMAN_MAID_CLEAN"}, false},
  ["Musique"] = {false, {task="WORLD_HUMAN_MUSICIAN"}, false},
  ["festif"] = {false, {task="WORLD_HUMAN_PARTYING"}, false},
  ["assis marche"] = {false, {task="WORLD_HUMAN_SEAT_STEPS"}, false},
  ["assis mur"] = {false, {task="WORLD_HUMAN_SEAT_WALL"}, false},
  ["lampe torche"] = {false, {task="WORLD_HUMAN_SECURITY_SHINE_TORCH"}, false},
  ["super hero"] = {false, {task="WORLD_HUMAN_SUPERHERO"}, false},
  ["tennis"] = {false, {task="WORLD_HUMAN_TENNIS_PLAYER"}, false},
  ["carte touriste"] = {false, {task="WORLD_HUMAN_TOURIST_MAP"}, false},
  ["gps touriste"] = {false, {task="WORLD_HUMAN_TOURIST_MOBILE"}, false},
  ["etonnement"] = {false, {task="WORLD_HUMAN_STUPOR"}, false},
  ["en feu"] = {false, {task="WORLD_HUMAN_STAND_FIRE"}, false},
  ["cafe"] = {false, {task="WORLD_HUMAN_AA_COFFEE"}, false},
  
}

return cfg