Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 120, g = 120, b = 240 }
Config.EnablePlayerManagement     = false -- If set to true, you need esx_addonaccount, esx_billing and esx_society
Config.EnablePvCommand            = true
Config.EnableOwnedVehicles        = true
Config.EnableSocietyOwnedVehicles = false
Config.ResellPercentage           = 50
Config.Locale                     = 'fr'

Config.Zones = {

  ShopEntering3 = {
    Pos   = { x=245.36, y=-759.31, z=33.64 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Type  = 1,
  },

  ShopInside3 = {
    Pos     = { x=241.44, y=-757.52, z=33.638336181641 },
    Size    = { x = 1.5, y = 1.5, z = 1.0 },
    Heading = -20.0,
    Type    = -1,
  },

  ShopOutside3 = {
    Pos     = { x=243.57, y=-750.94, z=33.638336181641 },
    Size    = { x = 1.5, y = 1.5, z = 1.0 },
    Heading = 90.0,
    Type    = -1,
  },

  BossActions3 = {
    Pos   = {  x=241.13159179688, y=-751.53112792969, z=34.638336181641 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Type  = -1,
  },

  GiveBackVehicle3 = {
    Pos   = {  x=255.13159179688, y=-751.53112792969, z=34.638336181641 },
    Size  = { x = 3.0, y = 3.0, z = 1.0 },
    Type  = (Config.EnablePlayerManagement and 1 or -1),
  },

  ResellVehicle3 = {
    Pos   = {  x=257.13159179688, y=-740.53112792969, z=34.638336181641 },
    Size  = { x = 3.0, y = 3.0, z = 1.0 },
    Type  = 1,
  },

}
