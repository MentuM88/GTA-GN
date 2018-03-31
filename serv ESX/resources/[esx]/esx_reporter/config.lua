Config                            = {}
Config.DrawDistance               = 100.0
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.NPCSpawnDistance           = 500.0
Config.NPCNextToDistance          = 25.0
Config.NPCJobEarnings             = { min = 100, max = 500 }
Config.Locale                     = 'fr'

Config.Zones = {
  reporterActions = {
    Pos   = { x = -1082.35, y = -247.73, z = 37.76 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Color = { r = 204, g = 204, b = 0 },
    Type  = 1,
  },

  Garage = {
    Pos   = { x = -1100.91, y = -257.91, z = 37.7 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Color = { r = 204, g = 204, b = 0 },
    Type  = 1,
  },

  Craft = {
    Pos   = { x = -197.29, y = -1317.75, z = 31.09 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Color = { r = 204, g = 204, b = 0 },
    Type  = 1,
  },

  VehicleSpawnPoint = {
    Pos   = { x = -1096.67, y = -270.4, z = 37.62 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Type  = -1,
  },

  VehicleDeleter = {
    Pos   = { x = -1100.42, y = -263.11, z =37.68 },
    Size  = { x = 3.0, y = 3.0, z = 1.0 },
    Color = { r = 204, g = 204, b = 0 },
    Type  = 1,
  },

  -- VehicleDelivery = {
  --   Pos   = { x = -22.84, y = -1294.67, z = 31.3 },
  --   Size  = { x = 20.0, y = 20.0, z = 3.0 },
  --   Color = { r = 204, g = 204, b = 0 },
  --   Type  = -1,
  -- },
}



Config.Vehicles = {
  'tvtruck',
  'rumpo',

}