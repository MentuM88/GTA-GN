
local cfg = {}

-- define static item transformers
-- see https://github.com/ImagicTheCat/vRP to understand the item transformer concept/definition

cfg.item_transformers = {
 -- SECTE PATISSERIE
 
 {
    name="Secte", -- menu name
	permissions = {"craft.gourou"}, -- job drug dealer required to use
    r=0,g=255,b=0, -- color
    max_units=1000000,
    units_per_minute=6,
    x=-693.15,y=76.66,z=55.86, -- pos (needed for public use lab tools)
    radius=1.1, height=1.5, -- area
    recipes = {
      ["idole de foi"] = { -- action name
        description="prier", -- action description
        in_money=0, -- money taken per unit
        out_money=10, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 5,
          ["metal"] = 3
        },
        products={ -- items given per unit
          ["idole de foi"] = 1
        },
        aptitudes={ -- optional
          ["science.chemicals"] = 2
        }
      },

        ["donuts"] = { -- action name
        description="Patisser des donuts", -- action description
        in_money=0, -- money taken per unit
        out_money=10, -- money earned per unit
        reagents={	 -- items taken per unit
          ["ble"] = 2,
          ["eau"] = 1,
          ["lait"] = 1 
        },
        products={ -- items given per unit
          ["donut"] = 5
        },
        aptitudes={ -- optional
          ["science.chemicals"] = 2,
		      ["strength"] = 2
         }
        },

        ["Premium Donuts"] = { -- action name
        description="Patisser le gros donut", -- action description
        in_money=0, -- money taken per unit
        out_money=10, -- money earned per unit
        reagents={ -- items taken per unit
          ["donut"] = 5,
          ["lsd"] = 5
        },
        products={ -- items given per unit
          ["pdonut"] = 5
        },
        aptitudes={ -- optional
          ["science.chemicals"] = 2,
          ["strength"] = 2
        }
      }
	  }
  },

  -- FOODTRUCK
 
 {
    name="Grossiste", -- menu name
    permissions = {}, -- job drug dealer required to use
    r=0,g=255,b=0, -- color
    max_units=1000000,
    units_per_minute=6,
    x=-70.23, y=6262.43, z=31.09, -- pos (needed for public use lab tools)
    radius=3, height=1.5, -- area
    recipes = {
      ["Viande hachée"] = { -- action name
        description="Achat de viande hachée", -- action description
        in_money=10, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
                  },
        products={ -- items given per unit
        ["boeuf"] = 1
        },
        aptitudes={}
      },

        ["Blancs de poulet"] = { -- action name
        description="Achats de rebuts de poulets", -- action description
        in_money=10, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={        },
        products={ -- items given per unit
        ["poulet"] = 1
        },
        aptitudes={ -- optional
        ["strength"] = 1
                 }
      }
    }
  },

   {
    name="Cuisine", -- menu name
    permissions = {"craft.food"}, -- job drug dealer required to use
    r=0,g=255,b=0, -- color
    max_units=1000000,
    units_per_minute=6,
    x=970.05, y=-1635.54, z=30.11, -- pos (needed for public use lab tools)
    radius=3, height=1.5, -- area
    recipes = {
      ["Cheeseburger"] = { -- action name
        description="Conception de Cheeseburger", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ 
        ["boeuf"] = 1,
        ["bread"] = 2,
        ["lait"] = 1-- items taken per unit
                  },
        products={ -- items given per unit
        ["cheeseburger"] = 1
        },
        aptitudes={}
      },
        
        ["Chicken"] = { -- action name
        description="Preparation du Chicken", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["poulet"] = 1,
          ["bread"] = 2           
        },
        products={ -- items given per unit
          ["chicken"] = 1
        },
        aptitudes={ -- optional
        ["strength"] = 1
        }
      },
        

        ["Milkshake"] = { -- action name
        description="Conception du milkshake", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
          ["lait"] = 2
          },
        products={ -- items given per unit
          ["milkshake"] = 1
          
        },
        aptitudes={}
        
      }
    }
  },

-- TRESORS

--[[{
    name="diamant", -- menu name
    r=0,g=255,b=0, -- color
    max_units=5,
    units_per_minute=1,
    x=3066.52,y=2208.76,z=3.35, -- pos (needed for public use lab tools)
    radius=1.1, height=1.5, -- area
    recipes = {
      ["Diamant recolte"] = { -- action name
        description="recolte diamant", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ },
        products={ -- items given per unit
          ["diamant"] = 1
                 }      
                            }
              }
},        
{
    name="meteorite", -- menu name
    r=0,g=255,b=0, -- color
    max_units=5,
    units_per_minute=1,
    x=499.33,y=5620.08,z=791.39, -- pos (needed for public use lab tools)
    radius=1.1, height=1.5, -- area
    recipes = {
      ["Meteorite recolte"] = { -- action name
        description="recolte Meteorite", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ },
        products={ -- items given per unit
          ["meteorite"] = 1         
                 }      
                              }
              }
},
{
    name="sel", -- menu name
    r=0,g=255,b=0, -- color
    max_units=5,
    units_per_minute=1,
    x=3673.1,y=5648.12,z=10.78, -- pos (needed for public use lab tools)
    radius=1.1, height=1.5, -- area
    recipes = {
      ["Sel recolte"] = { -- action name
        description="recolte Sel", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ },
        products={ -- items given per unit
          ["sel"] = 1
                 }      
                        }
              }
},  ]]--      
{
    name="Fabrication Produits", -- menu name
    r=0,g=255,b=0, -- color
    max_units=5,
    units_per_minute=1,
    x=-1149.62,y=4940.55,z=222.27, -- pos (needed for public use lab tools)
    radius=1.1, height=1.5, -- area
    recipes = {
      ["Moonshine"] = { -- action name
        description="fabrication moonshine", -- action description
        in_money=10000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["ble"] = 10,
          ["cafe"] = 10,
          ["lait"] = 10,
          ["the"] = 10,
          ["raisin"] = 5,
          ["lsd"] = 3

                 },
        products={ -- items given per unit
          ["moonshine"] = 1
                 }
                   },

       ["SpaceCake"] = { -- action name
        description="fabrication Spacecake", -- action description
        in_money=10000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["ble"] = 10,
          ["cafe"] = 10,
          ["lait"] = 10,
          ["the"] = 10,
          ["raisin"] = 5,
          ["cocaine"] = 3

                 },
        products={ -- items given per unit
          ["spacecake"] = 1
                 }
                   },
               }
},         
--]]
--[[{
    name="vente tresor", -- menu name
    description="craft.casino",
    r=0,g=255,b=0, -- color
    max_units=10,
    units_per_minute=1,
    x=-1636.15,y=180.5,z=61.76, -- pos (needed for public use lab tools)
    radius=1.1, height=1.5, -- area
    recipes = {
      ["vente tresor"] = { -- action name
        description="vendre tresor", -- action description
        in_money=0, -- money taken per unit
        out_money=300000, -- money earned per unit
        reagents={ -- items taken per unit
          ["tresor"] = 1 },
        products={ }
       }
     }
},--]]

 -- BAR DES MOTARDS
{
    name="Sandyshore", -- menu name
    permissions = {"craft.sandy"}, -- job drug dealer required to use
    r=0,g=255,b=0, -- color
    max_units=1000000,
    units_per_minute=6,
    x=940.47,y=-1785.95,z=35.48, -- pos (needed for public use lab tools)
    radius=2, height=1.5, -- area
    recipes = {
        ["icetea"] = { -- action name
        description="infuser le the", -- action description
        in_money=0, -- money taken per unit
        out_money=10, -- money earned per unit
        reagents={ -- items taken per unit
          ["the"] = 3,
          ["eau"] = 2           
        },
        products={ -- items given per unit
          ["icetea"] = 5
        },
        aptitudes={ -- optional
          ["science.chemicals"] = 6
        }
      },
        ["Redbull"] = { -- action name
        description="Creer redbull", -- action description
        in_money=0, -- money taken per unit
        out_money=10, -- money earned per unit
        reagents={ -- items taken per unit
        ["cafe"] = 3,
        ["icetea"] = 1
        },
        products={ -- items given per unit
        ["redbull"] = 5
        },
        aptitudes={ -- optional
        ["science.chemicals"] = 6
          }
      }
   }
},

 
 -- BAR DES MOTARDS
{
    name="Brasserie", -- menu name
	   permissions = {"craft.motards"}, -- job drug dealer required to use
    r=0,g=255,b=0, -- color
    max_units=1000000,
    units_per_minute=6,
    x=940.47,y=-1785.95,z=35.48, -- pos (needed for public use lab tools)
    radius=2, height=1.5, -- area
    recipes = {
      ["biere"] = { -- action name
        description="brasser la biere", -- action description
        in_money=0, -- money taken per unit
        out_money=10, -- money earned per unit
        reagents={ -- items taken per unit
          ["ble"] = 3,
          ["eau"] = 1
        },
        products={ -- items given per unit
          ["biere"] = 5
        },
        aptitudes={ -- optional
          ["science.chemicals"] = 6
        }
      },
      ["icetea"] = { -- action name
        description="infuser le the", -- action description
        in_money=0, -- money taken per unit
        out_money=10, -- money earned per unit
        reagents={ -- items taken per unit
          ["the"] = 3,
          ["eau"] = 2           
        },
        products={ -- items given per unit
          ["icetea"] = 5
        },
        aptitudes={ -- optional
          ["science.chemicals"] = 6
        }
      },
        ["sandwich au saumon"] = { -- action name
        description="preparer sandwich", -- action description
        in_money=0, -- money taken per unit
        out_money=10, -- money earned per unit
        reagents={ -- items taken per unit
          ["saumon"] = 2,
          ["bread"] = 1           
        },
        products={ -- items given per unit
          ["sandwich"] = 5
        },
        aptitudes={ -- optional
          ["science.chemicals"] = 6
        }
      },
      ["Faire Cappuccino"] = { -- action name
          description="Faire un cappuccino", -- action description
          in_money=0, -- money taken per unit
          out_money=0, -- money earned per unit
          reagents={ -- items taken per unit
			     ["cafe"] = 2,
           ["lait"] = 1
          },
          products={ -- items given per unit
            ["cappucino"] = 5
          },
          aptitudes={ -- optional
            ["science.chemicals"] = 6,
			     ["strength"] = 2
          }
        }
      }
     },

-- MEDICS
{
  name="Pharmacie", -- menu name
	permissions = {"craft.medkits"}, -- job drug dealer required to use
    r=0,g=255,b=0, -- color
    max_units=1000000,
    units_per_minute=6,
    x=342.56,y=-1397.65,z=32.51, -- pos (needed for public use lab tools)
    radius=3, height=1.5, -- area
    recipes = {
      ["medkit"] = { -- action name
        description="Creation du Medkit", -- action description
        in_money=0, -- money taken per unit
        out_money=50, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 2,
          ["eau"] = 1,
          ["cafe"] = 2
        },
        products={ -- items given per unit
          ["medkit"] = 1
        },
        aptitudes={ -- optional
          ["science.chemicals"] = 5
        }
       }
    }
},

-- UNICORN
{
    name="Unicorn", -- menu name
	 permissions = {"craft.unicorn"}, -- job drug dealer required to use
    r=0,g=255,b=0, -- color
    max_units=1000000,
    units_per_minute=6,
    x=940.47,y=-1785.95,z=35.48, -- pos (needed for public use lab tools)
    radius=1.1, height=1.5, -- area
    recipes = {
      ["Vodka"] = { -- action name
        description="Creer vodka", -- action description
        in_money=0, -- money taken per unit
        out_money=10, -- money earned per unit
        reagents={ -- items taken per unit
          ["ble"] = 2,
          ["eau"] = 1
        },
        products={ -- items given per unit
          ["vodka"] = 3
        },
        aptitudes={ -- optional
          ["science.chemicals"] = 6
        }
      },
      ["Vodka Redbull"] = { -- action name
        description="infuser le the", -- action description
        in_money=0, -- money taken per unit
        out_money=10, -- money earned per unit
        reagents={ -- items taken per unit
          ["vodka"] = 1,
          ["redbull"] = 1           
        },
        products={ -- items given per unit
          ["vodkarb"] = 1
        },
        aptitudes={ -- optional
          ["science.chemicals"] = 5
         }
        }
      }
},

 -- example of harvest item transformer

      {
    name="Pêche au Saumon", -- menu name
    permissions = {}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=8,
    x=743.19586181641,y=3895.3967285156,z=30.5, 
    radius=15, height=20, -- area
    recipes = {
        ["Pêche au Saumon"] = { -- action name
        description="Taquine le saumon", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["saumon"] = 2
        }
       }
     }
    
  },


 {
    name="Pêche en mer", -- menu name
    permissions = {"mission.delivery.fish"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=10,
    x=750.77,y=-3896.89,z=0, 
    radius=20, height=20, -- area
    recipes = {
      ["Pêche au poisson chat"] = { -- action name
        description="Taquine le poisson chat", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["catfish"] = 2
      }
    },    
      ["Pêche au Bass"] = { -- action name
        description="Taquine le Bass", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["bass"] = 2
        }
      }
     }
    
  },
--BAZZAR

{
    name="BAZZAR", -- menu name
    permissions = {"craft.casino"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=20,
    x=44.38,y=-1747.18,z=29.47, 
    radius=10, height=1.5, -- area
    recipes = {

      ["Vente Saumon"] = { -- action name
        description="VENDRE", -- action description
        in_money=0, -- money taken per unit
        out_money=1500, -- money earned per unit
        reagents={ ["saumon"] = 10 }, -- items taken per unit
        products={}
      
    },    
      ["Vente Bass"] = { -- action name
        description="VENDRE", -- action description
        in_money=0, -- money taken per unit
        out_money=1500, -- money earned per unit
        reagents={ ["bass"] = 10 }, -- items taken per unit
        products={}
       
    
    }, 
      ["Vente Metal"] = { -- action name
        description="VENDRE", -- action description
        in_money=0, -- money taken per unit
        out_money=1500, -- money earned per unit
        reagents={ ["metal"] = 10 }, -- items taken per unit
        products={}
       
    
    }, 
      ["Vente Plastique"] = { -- action name
        description="VENDRE", -- action description
        in_money=0, -- money taken per unit
        out_money=1500, -- money earned per unit
        reagents={ ["plastique"] = 10 }, -- items taken per unit
        products={}
       
    
    }, 
      ["Vente Café"] = { -- action name
        description="VENDRE", -- action description
        in_money=0, -- money taken per unit
        out_money=1500, -- money earned per unit
        reagents={ ["cafe"] = 10 }, -- items taken per unit
        products={}
       
    
    }, 
      ["Vente Thé"] = { -- action name
        description="VENDRE", -- action description
        in_money=0, -- money taken per unit
        out_money=1500, -- money earned per unit
        reagents={ ["the"] = 10 }, -- items taken per unit
        products={}
       
    
    }, 
      ["Vente Lait"] = { -- action name
        description="VENDRE", -- action description
        in_money=0, -- money taken per unit
        out_money=1500, -- money earned per unit
        reagents={ ["lait"] = 10 }, -- items taken per unit
        products={}
       
    
    }, 
      ["Vente Blé"] = { -- action name
        description="VENDRE", -- action description
        in_money=0, -- money taken per unit
        out_money=1500, -- money earned per unit
        reagents={ ["ble"] = 10 }, -- items taken per unit
        products={}
       
    
    
   
     }
    }
  },
-- EXPORT
{
    name="EXPORT", -- menu name
    permissions = {"craft.casino"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=20,
    x=915.6083, y=-2918.35669, z=4.88864136, 
    radius=10, height=1.5, -- area
    recipes = {

      ["Export Sushis"] = { -- action name
        description="Exporter des Sushis", -- action description
        in_money=0, -- money taken per unit
        out_money=2000, -- money earned per unit
        reagents={ ["sushi"] = 10 }, -- items taken per unit
        products={}
       
    
    }, 
      ["Export Sandwichs"] = { -- action name
        description="Exporter des Sandwichs", -- action description
        in_money=0, -- money taken per unit
        out_money=2000, -- money earned per unit
        reagents={ ["sandwich"] = 10 }, -- items taken per unit
        products={}
    
    }, 
      ["Export Redbull"] = { -- action name
        description="Exporter Pack de Redbull", -- action description
        in_money=0, -- money taken per unit
        out_money=15000, -- money earned per unit
        reagents={ ["redbull"] = 30 }, -- items taken per unit
        products={}
       
      }, 

      ["Export Pneu"] = { -- action name
        description="Exporter pneus 2eme main", -- action description
        in_money=0, -- money taken per unit
        out_money=20000, -- money earned per unit
        reagents={ ["pneu"] = 30 },
        products={}
      },

       ["Export Bière"] = { -- action name
        description="Exporter Pack de Bières", -- action description
        in_money=0, -- money taken per unit
        out_money=10000, -- money earned per unit
        reagents={ ["biere"] = 30 }, -- items taken per unit
        products={}
    
     },
       ["Export Vodka"] = { -- action name
        description="Exporter caisse de Vodka", -- action description
        in_money=0, -- money taken per unit
        out_money=10000, -- money earned per unit
        reagents={ ["vodka"] = 30 }, -- items taken per unit
        products={}
    
     },

      ["Export Idoles"] = { -- action name
        description="Exporter des idoles en afrique", -- action description
        in_money=0, -- money taken per unit
        out_money=6000, -- money earned per unit
        reagents={ ["idole de foi"] = 6 }, -- items taken per unit
        products={}

    },

    ["Export Vin"] = { -- action name
        description="Exporter des caisse de vin", -- action description
        in_money=0, -- money taken per unit
        out_money=30000, -- money earned per unit
        reagents={ ["vin"] = 30 }, -- items taken per unit
        products={}

    },


      ["Export Cubes"] = { -- action name
        description="Exporter des Bagnoles compressées", -- action description
        in_money=0, -- money taken per unit
        out_money=10000, -- money earned per unit
        reagents={ ["cube"] = 1 }, -- items taken per unit
        products={}
    
     },

      ["Export Medical"] = { -- action name
        description="Envoyer des Médicaments périmés au Soudan", -- action description
        in_money=0, -- money taken per unit
        out_money=2500, -- money earned per unit
        reagents={ ["caisse"] = 6 }, -- items taken per unit
        products={}
       
     
    }
    }
  },

-- VENTE DROGUE

--[[{
    name="Dealer d'Herbe", -- menu name
    --permissions = {"mission.delivery.fish"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=5000,
    units_per_minute=3,
    x=-61.56,y=-1217.83,z=28.74, 
    radius=5, height=1.5, -- area
    recipes = {
      ["Vente d'Herbe"] = { -- action name
        description="VENDRE", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ ["weed"] = 1 }, -- items taken per unit
        products={["dirty_money"] = 500}
       }
     }
    
  },

  {
    name="Dealer de Coke", -- menu name
    --permissions = {"mission.delivery.fish"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=5000,
    units_per_minute=3,
    x=-1055.04,y=-506.33,z=35.32, 
    radius=5, height=1.5, -- area
    recipes = {
      ["Vente de Coke"] = { -- action name
        description="VENDRE", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ ["cocaine"] = 1 }, -- items taken per unit
        products={["dirty_money"] = 700}
       }
     }
    
  },
{
      name="Dealer de LSD", -- menu name
    --permissions = {"mission.delivery.fish"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=5000,
    units_per_minute=4,
    x=-282.15,y=-2030.93,z=30.15, 
    radius=5, height=1.5, -- area
    recipes = {
      ["Vente de LSD"] = { -- action name
        description="VENDRE", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ ["lsd"] = 1 }, -- items taken per unit
        products={["dirty_money"] = 1000}
                        }
               }
    
  },--]]
-- Trafiquant    
--[[
	{
    name="Trafic d'armes", -- menu name
    permissions = {"mission.weapons.smuggler"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=2,
    x=-343.28500366211,y=6098.6586914063,z=31.327739715576,
    radius=3, height=1.5, -- area
    recipes = {
      ["ramassage d'AK"] = { -- action name
        description="en train d'attraper une AK", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["AK47"] = 1
        }
      },
      ["ramassage de M4A1"] = { -- action name
        description="en train d'attraper un M4", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["M4A1"] = 1
        }
      }
    }
  },
  
  ]]--
{
    name="Fabrication d 'armes", -- menu name
  permissions = {"craft.armes"}, -- job drug dealer required to use
    r=0,g=255,b=0, -- color
    max_units=1000000,
    units_per_minute=1,
    x=819.48,y=-2116.07,z=29.36, -- pos (needed for public use lab tools)
    radius=4, height=1.5, -- area
    recipes = {
      ["Caisse de pièces"] = { -- action name
        description="emballer les pièces pour l'export", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 7,
          ["metal"] = 7
        },
        products={ -- items given per unit
          ["caissearme"] = 1
       },
        aptitudes={ -- optional
          ["strength"] = 0.2
        }
      },


      ["carabine"] = { -- action name
        description="forger", -- action description
        in_money=1000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 10,
          ["metal"] = 10
        },
        products={ -- items given per unit
          ["wbody|WEAPON_CARBINERIFLE"] = 1
       },
        aptitudes={ -- optional
          ["strength"] = 1
        }
      },
    
    ["Mini smg"] = { -- action name
        description="forger", -- action description
        in_money=1000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 10,
          ["metal"] = 10
        },
        products={ -- items given per unit
          ["wbody|WEAPON_COMPACTRIFLE"] = 1
       },
       aptitudes={ -- optional
          ["strength"] = 1
        }
      },

    ["mitraillette d'assault"] = { -- action name
        description="forger", -- action description
        in_money=1000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 10,
          ["metal"] = 10
        },
        products={ -- items given per unit
          ["wbody|WEAPON_ASSAULTRIFLE"] = 1
       },
       aptitudes={ -- optional
          ["strength"] = 1
        }
      },

    ["sniper"] = { -- action nametresor
        description="forger", -- action description
        in_money=1000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 10,
          ["metal"] = 10
        },
        products={ -- items given per unit
          ["wbody|WEAPON_SNIPERRIFLE"] = 1
       },
       aptitudes={ -- optional
          ["strength"] = 1
        }
      },

    ["sniper lourd"] = { -- action name
        description="forger", -- action description
        in_money=1000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 15,
          ["metal"] = 15
        },
        products={ -- items given per unit
          ["wbody|WEAPON_HEAVYSNIPER"] = 1
       },
       aptitudes={ -- optional
          ["strength"] = 1
        }
      },

    ["carabine special"] = { -- action name
        description="forger", -- action description
        in_money=1000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 10,
          ["metal"] = 10
        },
        products={ -- items given per unit
          ["wbody|WEAPON_SPECIALCARBINE"] = 1
      },
      aptitudes={ -- optional
          ["strength"] = 1
        }
      },

    ["fusil a pompe"] = { -- action name
        description="forger", -- action description
        in_money=1000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 10,
          ["metal"] = 10
        },
        products={ -- items given per unit
          ["wbody|WEAPON_PUMPSHOTGUN"] = 1
       },
       aptitudes={ -- optional
          ["strength"] = 1
        }
      },

    ["micro smg"] = { -- action name
        description="forger", -- action description
        in_money=1000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 5,
          ["metal"] = 5
        },
        products={ -- items given per unit
          ["wbody|WEAPON_MICROSMG"] = 1
      },
      aptitudes={ -- optional
          ["strength"] = 1
        }
      },

    ["smg classic"] = { -- action name
        description="forger", -- action description
        in_money=1000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 10,
          ["metal"] = 10
        },
        products={ -- items given per unit
          ["wbody|WEAPON_SMG"] = 1
      
       },
      aptitudes={ -- optional
          ["strength"] = 1
        }
      },



--MUN
      ["MUN carabine"] = { -- action name
        description="forger", -- action description
        in_money=100, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 5,
          ["metal"] = 5
        },
        products={ -- items given per unit
          ["wammo|WEAPON_CARBINERIFLE"] = 50
       },
        aptitudes={ -- optional
          ["strength"] = 1
        }
      },
    
    ["MUN Mini smg"] = { -- action name
        description="forger", -- action description
        in_money=100, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 2,
          ["metal"] = 2
        },
        products={ -- items given per unit
          ["wammo|WEAPON_COMPACTRIFLE"] = 50
       },
       aptitudes={ -- optional
          ["strength"] = 1
        }
      },

    ["MUN mitraillette d'assault"] = { -- action name
        description="forger", -- action description
        in_money=100, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 5,
          ["metal"] = 5
        },
        products={ -- items given per unit
          ["wammo|WEAPON_ASSAULTRIFLE"] = 50
       },
       aptitudes={ -- optional
          ["strength"] = 1
        }
      },

    ["MUN sniper"] = { -- action name
        description="forger", -- action description
        in_money=100, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 5,
          ["metal"] = 5
        },
        products={ -- items given per unit
          ["wammo|WEAPON_SNIPERRIFLE"] = 50
       },
       aptitudes={ -- optional
          ["strength"] = 1
        }
      },

    ["MUN sniper lourd"] = { -- action name
        description="forger", -- action description
        in_money=100, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 5,
          ["metal"] = 5
        },
        products={ -- items given per unit
          ["wammo|WEAPON_HEAVYSNIPER"] = 50
       },
       aptitudes={ -- optional
          ["strength"] = 1
        }
      },

    ["MUN smg d assault"] = { -- action name
        description="forger", -- action description
        in_money=100, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 5,
          ["metal"] = 5
        },
        products={ -- items given per unit
          ["wammo|WEAPON_ASSAULTSMG"] = 20
       },
       aptitudes={ -- optional
          ["strength"] = 1
        }
      },

    
    ["MUN fusil a pompe"] = { -- action name
        description="forger", -- action description
        in_money=100, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 5,
          ["metal"] = 5
        },
        products={ -- items given per unit
          ["wammo|WEAPON_PUMPSHOTGUN"] = 50
       },
       aptitudes={ -- optional
          ["strength"] = 1
        }
      },

       ["MUN smg classic"] = { -- action name
        description="forger", -- action description
        in_money=1000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 5,
          ["metal"] = 5
        },
        products={ -- items given per unit
          ["wammo|WEAPON_SMG"] = 50
      
       },
      aptitudes={ -- optional
          ["strength"] = 1
        }
      },


    ["MUN micro smg"] = { -- action name
        description="forger", -- action description
        in_money=100, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 5,
          ["metal"] = 5
        },
        products={ -- items given per unit
          ["wammo|WEAPON_MICROSMG"] = 50
      },
      aptitudes={ -- optional
          ["strength"] = 1
        }
      }


  
    
     }
   },
  --Transports medicaux farm
	  {
    name="Transports médicaux", -- menu name
    permissions = {"mission.delivery.medical"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=5,
    x=2232.19,y=5575.15,z=53.82,
    radius=8, height=1.5, -- area
    recipes = {
      ["Ramasser de la Weed Médicinale"] = { -- action name
        description="Ramassage de la weed médicinale", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["Medical Weed"] = 1
        }
      }
    }
  },
    {
    name="Vieux médocs", -- menu name
    permissions = {"craft.medkits"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=5,
    x=2232.19,y=5575.15,z=53.82,
    radius=8, height=1.5, -- area
    recipes = {
      ["Récupérer Caisses"] = { -- action name
        description="Ramassage de vieux médocs", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["caisse"] = 1
        }
      }
    }
  },

  {
    name="Outillage", -- menu name
    permissions = {"craft.outils"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=5,
    x = -201.07, y = -1318.63, z = 31.09,
    radius=5, height=1.5, -- area
    recipes = {
      ["Fabriquer RepairKit"] = { -- action name
        description="Création de Kit de Réparation", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
          ["metal"] = 1,
          ["plastique"] = 3

        }, -- items taken per unit
        products={ -- items given per unit
          ["repairkit"] = 1
           }
         },
        ["pneu"] = { -- action name
        description="Rechapper pneu", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["plastique"] = 2,
          ["metal"] = 1
        },
        products={ -- items given per unit
          ["pneu"] = 1
        }
      },
        ["Fabriquer Chalumeau"] = { -- action name
        description="Création de Chalumeau", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
          ["metal"] = 2,
          ["plastique"] = 2

        }, -- items taken per unit
        products={ -- items given per unit
          ["chalumeau"] = 1
        }
      }
    }
  },

-- EXPORT

{
    name="Cubes de ferraille", -- menu name
    permissions = {"craft.export"},
    r=0,g=255,b=0, -- color
    max_units=100000,
    units_per_minute=6,
    x=122.16756439209, y=-3103.0808105469, z=5.9962339401245, -- pos (needed for public use lab tools)
    radius=15, height=3.0, -- area
    recipes = {
      ["Fabrication Cube ferraille"] = { -- action name
        description="Compression d'une bagnole", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["metal"] = 5,
          ["plastique"] = 5
        },
        products={ 
          ["cube"] = 1
           }
      }
    }
    },

-- TRANSPORTS

{
    name="Fonderie", -- menu name
    permissions = {"craft.trans"},
    r=0,g=255,b=0, -- color
    max_units=100000,
    units_per_minute=6,
    x=1109.1716308594, y=-2008.5230712891, z=31.034673690796, -- pos (needed for public use lab tools)
    radius=15, height=3.0, -- area
    recipes = {
      ["Fabrication lingot"] = { -- action name
        description="fabrication d'un lingot", -- action description
        in_money=50000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["metal"] = 5,
          ["plastique"] = 5
        },
        products={ 
          ["lingot"] = 1
           }
      }
    }
    },

   {
    name="Vente Lingots", -- menu name
    r=0,g=255,b=0, -- color
    max_units=100000,
    units_per_minute=6,
    x=252.40670776367, y=221.41265869141, z=106.28657531738, -- pos (needed for public use lab tools)
    radius=8, height=1.5, -- area
    recipes = {
      ["Vente de lingots"] = { -- action name
        description="fabrication d'un lingot", -- action description
        in_money=0, -- money taken per unit
        out_money=100000, -- money earned per unit
        reagents={ -- items taken per unit
          ["lingot"] = 1        
        },
        products={  }
      }
    }
    }, 

--CHAMPS
 {
    name="Champ de blé", -- menu name
    --permissions = {"mission.delivery.medical"}, -- you can add permissions
    r=255,g=242,b=0, -- color
    max_units=1000000,
    units_per_minute=6	,
    x=2624.244,y=4482.061,z=37.929,
    radius=15, height=1.5, -- area
    recipes = {
      ["Ramasser du Blé"] = { -- action name
        description="Ramassage du blé", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["ble"] = 1
        }
      }
    }
  },
 {
    name="Champ de Thé", -- menu name
    --permissions = {"mission.delivery.medical"}, -- you can add permissions
    r=255,g=242,b=0, -- color
    max_units=1000000,
    units_per_minute=6	,
    x=382.150,y=6626.874,z=28.701,
    radius=15, height=1.5, -- area
    recipes = {
      ["Ramasser du Thé"] = { -- action name
        description="Ramassage du Thé", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["the"] = 1
        }
      }
    }
  },
 {
    name="Laiterie", -- menu name
    --permissions = {"mission.delivery.medical"}, -- you can add permissions
    r=255,g=242,b=0, -- color
    max_units=1000000,
    units_per_minute=6	,
    x=436.935,y=6462.551,z=28.745,
    radius=6, height=1.5, -- area
    recipes = {
      ["Traire des vaches"] = { -- action name
        description="Récupération du lait", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["lait"] = 1
        }
      }
    }
  },
  {
    name="Mine de Métal", -- menu name
    --permissions = {"mission.delivery.medical"}, -- you can add permissions
    r=255,g=242,b=0, -- color
    max_units=1000000,
    units_per_minute=10	,
    x=2623.59, y=2786.91,z=33.16,
    radius=10, height=1.5, -- area
    recipes = {
      ["Recolte du métal"] = { -- action name
        description="Récolte du métal", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["metal"] = 1
        }
      }
    }
  },
 {
    name="Labo Plastique", -- menu name
    --permissions = {"mission.delivery.medical"}, -- you can add permissions
    r=255,g=242,b=0, -- color
    max_units=1000000,
    units_per_minute=10	,
    x=-2197.223,y=238.051,z=174.602,
    radius=6, height=1.5, -- area
    recipes = {
      ["Recolte du Plastique"] = { -- action name
        description="Récolte du Plastique", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["plastique"] = 1
        }
      }
	 }
 }, 
 {
    name="Champ de Café", -- menu name
    --permissions = {"mission.delivery.medical"}, -- you can add permissions
    r=255,g=242,b=0, -- color
    max_units=1000000,
    units_per_minute=6	,
    x=1993.167,y=4847.001,z=43.882,
    radius=15, height=1.5, -- area
    recipes = {
      ["Recolte du café"] = { -- action name
        description="Récolte du Café", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["cafe"] = 1
        }
      }
	 }
 }, 
 {
    name="Santa's Workshop", -- menu name
    permissions = {"harvest.presents"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=2,
    x=2213.0520019531,y=5577.5981445313,z=53.795757293701, -- UPDATE THIS
    radius=3, height=1.5, -- area
    recipes = {
      ["Gather Presents"] = { -- action name
        description="Gathering Presents", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["Presents"] = 1
        }
      }
	 }
  },

  {
    name="Poste", -- menu name
    permissions = {"harvest.delivery"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=8,
    x=68.42,y=125.62,z=79.19, -- UPDATE THIS
    radius=3, height=1.5, -- area
    recipes = {
      ["Ramasser Colis"] = { -- action name
        description="Tri des colis", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["colis"] = 1
        }
      },
        ["Ramasser Lettres"] = { -- action name
        description="Tri des lettres", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["lettres"] = 1
        }
      }
   }
  },
--CASINO
  {
    name="Fabrication du Foin", -- menu name
    permissions = {"craft.casino"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=5,
    x=990.07,y=76.4,z=80.99, -- UPDATE THIS
    radius=3, height=1.5, -- area
    recipes = {
      ["Craft FOIN"] = { -- action name
        description="Faire du foin", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
        ["eau"] = 2,
        ["ble"] = 3

        }, -- items taken per unit
        products={ -- items given per unit
          ["foin"] = 1
        }
      }
   }
  },

{
    name="Nourrir les chevaux", -- menu name
    permissions = {"craft.casino"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=2,
    x=1213.85,y=343.63,z=81.99, -- UPDATE THIS
    radius=3, height=1.5, -- area
    recipes = {
      ["Nourrir Chevaux"] = { -- action name
        description="Vous remplissez les mangeoires", -- action description
        in_money=0, -- money taken per unit
        out_money=200, -- money earned per unit
        reagents={
        ["eau"] = 1,
        ["foin"] = 1

        }, -- items taken per unit
        products={}
      }
   }
  },

{
    name="Fabriquer jetons", -- menu name
    permissions = {"craft.casino"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=2,
    x=966.52,y=2.05,z=80.99, -- UPDATE THIS
    radius=3, height=1.5, -- area
    recipes = {
      ["Faire des jetons"] = { -- action name
        description="Fabriquer des jetons", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
        ["plastique"] = 3,
        ["metal"] = 1

        }, -- items taken per unit
        products={
        ["jeton"] = 1
      }
      }
   }
  },

{
    name="Banker jetons", -- menu name
    permissions = {"craft.casino"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=5,
    x=986.05, y=36.62, z=80.99, -- UPDATE THIS
    radius=3, height=1.5, -- area
    recipes = {
      ["Encaisser jetons"] = { -- action name
        description="Encaisser des jetons", -- action description
        in_money=0, -- money taken per unit
        out_money=2000, -- money earned per unit
        reagents={
        ["jeton"] = 1,
        ["biere"] = 1
                }, -- items taken per unit
        products={}
      }
   }
  },
-- VIGNOBLE

 {
    name="Chais", -- menu name
    permissions = {"craft.vigne"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=6,
    x=-1855.89, y=2061.55, z=141.04, -- UPDATE THIS
    radius=2, height=1.5, -- area
    recipes = {
      ["champagne"] = { -- action name
        description="Affinage du Champagne", -- action description
        in_money=0, -- money taken per unit
        out_money=50, -- money earned per unit
        reagents={
        ["raisin"] = 1,
        ["vin"] = 1

        }, -- items taken per unit
        products={ -- items given per unit
          ["champagne"] = 1
        }
      },
      ["vin"] = { -- action name
        description="Affinage du Vin", -- action description
        in_money=0, -- money taken per unit
        out_money=20, -- money earned per unit
        reagents={ ["raisin"] = 5 }, -- items taken per unit
        products={ -- items given per unit
          ["vin"] = 1
        }
      },

       ["jus de raisin"] = { -- action name
        description="presser du jus", -- action description
        in_money=0, -- money taken per unit
        out_money=20, -- money earned per unit
        reagents={ ["raisin"] = 3,
        ["plastique"] = 1,

         }, -- items taken per unit
        products={ -- items given per unit
          ["jraisin"] = 5
        }
      },

        ["Melange Apero"] = { -- action name
        description="Conception melange a grignoter", -- action description
        in_money=0, -- money taken per unit
        out_money=10, -- money earned per unit
        reagents={
        ["raisin"] = 1,
        ["ble"] = 1
        }, -- items taken per unit
        products={ -- items given per unit
          ["apero"] = 1
        }
      }

   }
  },  

  {
    name="Vigne", -- menu name
    r=0,g=255,b=0, -- color
    max_units=100000,
    units_per_minute=5,
    x=-1845.8, y=2151.63, z=117.96, -- pos (needed for public use lab tools)
    radius=5, height=1.5, -- area
    recipes = {
      ["Vendange"] = { -- action name
        description="recolte du raisin", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ },
        products={ -- items given per unit
          ["raisin"] = 1
                 }      
                            }
              }
},  

--CRAFT MAISON

{
    name="Craft Maison", -- menu name
    permissions = {}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=6,
    x=-377.54867553711, y=297.44076538086,z=84.891914367676, -- UPDATE THIS
    radius=8, height=1.5, -- area
    recipes = {
      ["Cappuccino"] = { -- action name
        description="Couler un cappuccino", -- action description
        in_money=0, -- money taken per unit
        out_money=10, -- money earned per unit
        reagents={
        ["cafe"] = 2,
        ["eau"] = 1,
        ["lait"] = 1

        }, -- items taken per unit
        products={ -- items given per unit
          ["cappucino"] = 1
        }
      },

      ["Thé au lait"] = { -- action name
        description="Infuser du thé au lait", -- action description
        in_money=0, -- money taken per unit
        out_money=10, -- money earned per unit
        reagents={ 
        ["the"] = 2,
        ["eau"] = 1,
        ["lait"] = 1
         }, -- items taken per unit
        products={ -- items given per unit
        ["thelait"] = 1        
        }
      },

      ["nuggets"] = { -- action name
        description="faire des nuggets", -- action description
        in_money=0, -- money taken per unit
        out_money=10, -- money earned per unit
        reagents={
        ["poulet"] = 2,
        ["ble"] = 5
        
        }, -- items taken per unit
        products={ -- items given per unit
          ["nuggets"] = 1
        }
      }
   }
  },  
--[[    {
    name="Recolte du raisin", -- menu name
    r=0,g=255,b=0, -- color
    max_units=50000,
    units_per_minute=5,
    x=-1845.8, y=2151.63, z=117.96, -- pos (needed for public use lab tools)
    radius=1.1, height=1.5, -- area
    recipes = {
      ["Vendange"] = { -- action name
        description="Récolte du raisin", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        },
        products={ -- items given per unit
          ["raisin"] = 1
         }       
        }
       }
      },--]]


  --[[{
    name="eau bottles/tacos tree", -- menu name
    -- permissions = {"harvest.eau_bottle_tacos"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=1000000,
    units_per_minute=10,
    x=-1692.6646728516,y=-1086.3079833984,z=13.152559280396, -- pos
    radius=5, height=1.5, -- area
    recipes = {
      ["Harvest eau"] = { -- action name
        description="Harvest some eau bottles.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["eau"] = 1
        }
      },
      ["Harvest tacos"] = { -- action name
        description="Harvest some tacos.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["tacos"] = 1
        }
      }
    }--]]
    --, onstart = function(player,recipe) end, -- optional start callback
    -- onstep = function(player,recipe) end, -- optional step callback
    -- onstop = function(player,recipe) end -- optional stop callback
 
  {
    name="Muscu", -- menu name
    r=255,g=125,b=0, -- color
    max_units=1000000,
    units_per_minute=3,
    x=-1202.96252441406,y=-1566.14086914063,z=4.61040639877319,
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Strength"] = { -- action name
        description="Augmente votre force.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={}, -- items given per unit
        aptitudes={ -- optional
          ["physical.strength"] = 0.4 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },
{
    name="Foi", -- menu name
    r=255,g=125,b=0, -- color
    max_units=1000000,
    units_per_minute=1,
    x=-1102.96252441406,y=-1366.14086914063,z=4.61040639877319,
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Prière"] = { -- action name
        description="Augmente votre foi.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={}, -- items given per unit
        aptitudes={ -- optional
          ["foi.apt"] = 0.5 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },

  {
    name="Hacker", -- menu name
	--permissions = {"hacker.credit_cards"}, -- you can add permissions
    r=255,g=125,b=0, -- color
    max_units=1000000,
    units_per_minute=5,
    x=707.357238769531,y=-966.98876953125,z=30.4128551483154,
    radius=2, height=1.0, -- area
    recipes = {
      ["hacking"] = { -- action name
        description="Hacking credit cards.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["credit"] = 1,
		["dirty_money"] = 1
		}, -- items given per unit
        aptitudes={ -- optional
          ["hacker.hacking"] = 0.5 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },
  
  {
    name="Mission Convoyeur", -- menu name
	permissions = {"bankdriver.money"}, -- you can add permissions
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=5,
    x=236.87298583984,y=217.09535217285,z=106.28678894043,
    radius=2, height=1.0, -- area
    recipes = {
      ["Bank Money"] = { -- action name
       description="récupérer la Bank money.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["bank_money"] = 500000
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
 -- {
   -- name="Robbery Bank", -- menu name
   -- r=255,g=125,b=0, -- color
   -- max_units=600,
   -- units_per_minute=1,
   -- x=265.94982910156,y=213.54983520508,z=101.68338775635,
   -- radius=2, height=1.0, -- area
   -- recipes = {
     -- ["Bank Money"] = { -- action name
      -- description="get the money.", -- action description
       -- in_money=0, -- money taken per unit
       -- out_money=0, -- money earned per unit
      --  reagents={}, -- items taken per unit
      --  products={
	--	["dirty_money"] = 0
	--	}, -- items given per unit
       -- aptitudes={} -- optional
     -- }
   -- }
 -- },
  {
    name="Labo de coke", -- menu name
	--permissions = {"harvest.weed"}, -- job drug dealer required to use
    r=0,g=255,b=0, -- color
    max_units=1000000,
    units_per_minute=15,
    x=1095.8940429688,y=-3197.453125,z=-38.993461608887, -- pos (needed for public use lab tools)
    radius=20, height=1.5, -- area
    recipes = {
      ["cocaine emballée"] = { -- action name
        description="Fabrication de cocaine, emballage", -- action description
        in_money=50, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["benzoilmetilecgonina"] = 1,
          ["metal"] = 1
        },
        products={ -- items given per unit
          ["cocaine"] = 3
        },
        aptitudes={ -- optional
          ["laboratory.cocaine"] = 3, -- "group.aptitude", give 1 exp per unit
          ["science.chemicals"] = 6
        }
      }
  }
},


{
    name="Labo Weed", -- menu name
  --permissions = {"harvest.weed"}, -- job drug dealer required to use
    r=0,g=255,b=0, -- color
    max_units=1000000,
    units_per_minute=15,
    x=1057.7453613281, y=-3194.3061523438,z=-39.161334991455, -- pos (needed for public use lab tools)
    radius=20, height=1.5, -- area
    recipes = {
        ["weed emballée"] = { -- action name
        description="fabrication de weed, emballage", -- action description
        in_money=50, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["seeds"] = 1,
          ["plastique"] = 1
        },
        products={ -- items given per unit
          ["weed"] = 3
        },
        aptitudes={ -- optional
          ["laboratory.weed"] = 3, -- "group.aptitude", give 1 exp per unit
          ["science.chemicals"] = 6
        }
      }
      
      }
     },

{
    name="Labo LSD", -- menu name
  --permissions = {"harvest.weed"}, -- job drug dealer required to use
    r=0,g=255,b=0, -- color
    max_units=1000000,
    units_per_minute=15,
    x=1006.8201904297,y=-3196.6950683594,z=-38.993118286133, -- pos (needed for public use lab tools)
    radius=20, height=1.5, -- area
    recipes = {
      ["lsd emballé"] = { -- action name
          description="fabrication de lsd, emballage", -- action description
          in_money=50, -- money taken per unit
          out_money=0, -- money earned per unit
          reagents={ -- items taken per unit
            ["harness"] = 1,
            ["plastique"] = 1,
            ["metal"] = 1
          },
          products={ -- items given per unit
            ["lsd"] = 3
          },
          aptitudes={ -- optional
            ["laboratory.lsd"] = 3, -- "group.aptitude", give 1 exp per unit
            ["science.chemicals"] = 6
          }
        }
      }
     }

	}
-- define transformers randomly placed on the map
cfg.hidden_transformers = {
  ["weed field"] = {
    def = {
      name="Champ de weed", -- menu name
      --permissions = {"harvest.weed"}, -- you can add permissions
      r=0,g=200,b=0, -- color
      max_units=1000000,
      units_per_minute=5,
      x=0,y=0,z=0, -- pos
      radius=5, height=1.5, -- area
      recipes = {
        ["Harvest"] = { -- action name
          description="Ramassage de drogue.", -- action description
          in_money=0, -- money taken per unit
          out_money=0, -- money earned per unit
          reagents={}, -- items taken per unit
          products={ -- items given per unit
            ["seeds"] = 1
          }
        }
      }
    },
    positions = {
      {2208.0104980469,5577.6987304688,53.739212036133}
    }
  },
  ["cocaine dealer"] = {
    def = {
      name="Dealer", -- menu name
      --permissions = {"harvest.weed"}, -- you can add permissions
      r=0,g=200,b=0, -- color
      max_units=1000000,
      units_per_minute=5,
      x=0,y=0,z=0, -- pos
      radius=5, height=1.5, -- area
      recipes = {
        ["Harvest"] = { -- action name
          description="ramassage de drogue.", -- action description
          in_money=0, -- money taken per unit
          out_money=0, -- money earned per unit
          reagents={}, -- items taken per unit
          products={ -- items given per unit
            ["benzoilmetilecgonina"] = 1
          }
        }
      }
    },
    positions = {
      {-631.00543212891,-229.42568969727,38.057052612305}
    }
  },
  ["lsd bar"] = {
    def = {
      name="LSD Bar", -- menu name
      --permissions = {"harvest.weed"}, -- you can add permissions
      r=0,g=200,b=0, -- color
      max_units=1000000,
      units_per_minute=5,
      x=0,y=0,z=0, -- pos
      radius=5, height=1.5, -- area
      recipes = {
        ["Harvest"] = { -- action name
          description="ramassage de drogues.", -- action description
          in_money=0, -- money taken per unit
          out_money=0, -- money earned per unit
          reagents={}, -- items taken per unit
          products={ -- items given per unit
      			["harness"] = 1
          }
        }
      }
    },
    positions = {
      {1992.5993652344,3044.1806640625,47.215068817139}
    }
  }
}

-- time in minutes before hidden transformers are relocated (min is 5 minutes)
cfg.hidden_transformer_duration = 5*24*60 -- 5 days

-- configure the information reseller (can sell hidden transformers positions)
cfg.informer = {
  infos = {
    ["weed field"] = 20000,
	["cocaine dealer"] = 20000,
	["lsd bar"] = 20000
  },
  positions = {
    {2208.0104980469,5577.6987304688,53.739212036133},
    {-631.00543212891,-229.42568969727,38.057052612305},
	{1992.5993652344,3044.1806640625,47.215068817139}
  },
  interval = 60, -- interval in minutes for the reseller respawn
  duration = 10, -- duration in minutes of the spawned reseller
  blipid = 133,
  blipcolor = 2
}

return cfg
