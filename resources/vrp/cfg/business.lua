
local cfg = {}

-- minimum capital to open a business
cfg.minimum_capital = 250000

-- capital transfer reset interval in minutes
-- default: reset every 24h
cfg.transfer_reset_interval = 60

-- commerce chamber {blipid,blipcolor}
cfg.blip = {} 

-- positions of commerce chambers
cfg.commerce_chambers = {
	{-266.61505126953,-968.71441650391,31.224632263184},
	{-562.84,289.29,82.18},
	{126.72,-1283.49,29.28},
	{-150.04,6135.98,31.38},
	{811,-2115.16,29.36}
}

return cfg
