Config                        = {}
Config.DrawDistance           = 100.0
Config.Locale                 = 'fr'

local seconde = 1000
local minute = 60 * seconde

Config.Fridge = {
	pain = 200,
	eau = 100
} -- maxquantity

Config.Recipes = {
	pizza = {
		Ingredients = {
			pain 				= { "Pain"		, 2 },
			eau 				= { "Eau"		, 1 }
		},
		Price = 30,
		CookingTime = 20 * seconde,
		Item = 'pizza',
		Name = 'Pizza'
	},
	sandwich = {
		Ingredients = {
			pain 				= { "Pain"		, 2 },
			eau 				= { "Eau"		, 1 }
		},
		Price = 15,
		CookingTime = 10 * seconde,
		Item = 'sandwich',
		Name = 'Sandwich'
	},
	kebab = {
		Ingredients = {
			pain 				= { "Pain"		, 2 },
			eau 				= { "Eau"		, 1 }
		},
		Price = 15,
		CookingTime = 10 * seconde,
		Item = 'kebab',
		Name = 'Kebab'
	},
	sushi = {
		Ingredients = {
			pain 				= { "Pain"		, 1 },
			eau 				= { "Eau"		, 1 }
		},
		Price = 20,
		CookingTime = 10 * seconde,
		Item = 'sushi',
		Name = 'Sushi'
	},
	burger = {
		Ingredients = {
			pain 				= { "Pain"		, 2 },
			eau 				= { "Eau"		, 1 }
		},
		Price = 25,
		CookingTime = 15 * seconde,
		Item = 'hamburger',
		Name = 'Hamburger'
	}
}

Config.Zones = {
	Actions = {
		Pos   = {x = 189.525, y = -1445.308, z = 28.1416},
		Size  = {x = 1.5, y = 1.5, z = 0.4},
		Color = {r = 102, g = 102, b = 204},
		Type  = 1
	},
	VehicleSpawnPoint = {
		Pos   = {x = 193.417, y = -1456.56, z = 28.1416},
		Size  = {x = 3.0, y = 3.0, z = 0.4},
		Type  = -1
	},
	VehicleDeleter = {
		Pos   = {x = 185.189, y = -1439.23, z = 28.1602},
		Size  = {x = 3.0, y = 3.0, z = 0.4},
		Color = {r = 255, g = 0, b = 0},
		Type  = 1

	}
}