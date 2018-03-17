
local cfg = {}

-- exp notes:
-- levels are defined by the amount of xp
-- with a step of 5: 5|15|30|50|75 (by default)
-- total exp for a specific level, exp = step*lvl*(lvl+1)/2
-- level for a specific exp amount, lvl = (sqrt(1+8*exp/step)-1)/2

-- define groups of aptitudes
--- _title: title of the group
--- map of aptitude => {title,init_exp,max_exp}
---- max_exp: -1 for infinite exp
cfg.gaptitudes = {
  ["physical"] = {
    _title = "Physique",
    ["strength"] = {"Force", 30, 275} -- required, level 3 to 6 (by default, can carry 10kg per level)
  },
  ["foi"] = {
    _title = "Foi",
    ["apt"] = {"Piété", 30, 275} -- required, level 3 to 6 (by default, can carry 10kg per level)
  },
  ["science"] = {
    _title = "Science",
    ["chemicals"] = {"Etude de chimie", 0, -1}, -- example
    ["mathematics"] = {"Etude des maths", 0, -1} -- example
  },
  ["laboratory"] = {
    _title = "Labo de drogues",
	["cocaine"] = {"Faire de la coke, avec benzo.", 0, -1},
	["weed"] = {"Faire de la weed,avec graines.", 0, -1},
	["lsd"] = {"Faire votre lsd, avec Harness.", 0, -1}
  },
  ["hacker"] = {
    _title = "Etude du Hack",
	["logic"] = {"Apprendre la logique.", 0, -1},
	["c++"] = {"apprendre le C++.", 0, -1},
	["lua"] = {"Apprendre le lua.", 0, -1},
	["hacking"] = {"Apprendre le Hack.", 0, -1}
  }
}

return cfg
