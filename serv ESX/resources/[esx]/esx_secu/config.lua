Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 27
Config.MarkerSize                 = { x = 1.0, y = 1.0, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.ArmurierStations = {

  Armurier = {

    Blip = {
      Pos     = { x = 570.88, y = -3123.65, z = 18.77 },
      Sprite  = 175,
      Display = 4,
      Scale   = 1.0,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_NIGHTSTICK',       price = 500 },
      { name = 'WEAPON_STUNGUN',          price = 500 },
      { name = 'WEAPON_FLASHLIGHT',       price = 100 },
      { name = 'WEAPON_FIREEXTINGUISHER', price = 100 },
      { name = 'GADGET_PARACHUTE',        price = 500 },
      { name = 'WEAPON_BZGAS',            price = 800 },
      { name = 'WEAPON_SMOKEGRENADE',     price = 800 },
      { name = 'WEAPON_APPISTOL',         price = 5000 },
    },

	  AuthorizedVehicles = {
		  { name = 'schafter6',  label = 'Schafter Blindé' },
		  { name = 'xls2',   label = '4X4 blindé' },
		  { name = 'Cognoscenti2',      label = 'Grande berline blindée' },
		  { name = 'baller6',   label = 'Grand 4x4 blindé' },
	  },

    Cloakrooms = {
      { x = 610.77, y = -3079.94, z = 6.07},
    },

    Armories = {
      { x = 565.3, y = -3117.63, z = 18.7  },
    },

    Vehicles = {
      {
        Spawner    = { x = 612.4, y = -3123.92, z = 6.07 },
        SpawnPoint = { x = 609.4, y = -3126.92, z = 6.07 },
        Heading    = 90.0,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 616.26, y = -3190.89, z = 6.07 },
        SpawnPoint = { x = 613.26, y = -3195.89, z = 6.07 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = 22.74, y = 545.9, z = -175.027 },
      { x = 21.35, y = 543.3, z = -175.027 },
    },

    BossActions = {
      { x = 570.88, y = -3123.65, z = 18.77 }
    },

  },

}
