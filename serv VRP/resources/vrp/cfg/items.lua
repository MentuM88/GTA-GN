-- define items, see the Inventory API on github

local cfg = {}
-- see the manual to understand how to create parametric items
-- idname = {name or genfunc, description or genfunc, genfunc choices or nil, weight or genfunc}
-- a good practice is to create your own item pack file instead of adding items here
cfg.items = {
  ["benzoilmetilecgonina"] = {"Benzo.", "Some Benzoic acid ester.", nil, 0.01}, -- no choices
  ["seeds"] = {"Seeds", "Graines de Weed.", nil, 0.01}, -- no choices
  ["harness"] = {"Harness", "du Harness Lysergsäurediethylamid.", nil, 0.01}, -- no choices
  ["AK47"] = {"AK47", "Un chef d'oeuvre Russe.", nil, 0.01}, -- no choices
  ["M4A1"] = {"M4A1", "Outil de paix Américain.", nil, 0.01}, -- no choices
  ["credit"] = {"Credit Card", "Carte de crédit.", nil, 0.01}, -- no choices
  ["driver"] = {"Driver license Card", "Permis de conduire.", nil, 0.01}, -- no choices
  ["bank_money"] = {"Money of bank", "Argent de la banque.", nil, 0} -- no choices
}

-- load more items function
local function load_item_pack(name)
  local items = module("cfg/item/"..name)
  if items then
    for k,v in pairs(items) do
      cfg.items[k] = v
    end
  else
    print("[vRP] item pack ["..name.."] not found")
  end
end

-- PACKS
load_item_pack("required")
load_item_pack("food")
load_item_pack("drugs")

return cfg
