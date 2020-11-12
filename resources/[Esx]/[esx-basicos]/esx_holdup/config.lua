Config = {}
Config.Locale = 'es'

Config.Marker = {
	r = 250, g = 0, b = 0, a = 100,  -- red color
	x = 1.0, y = 1.0, z = 1.5,       -- tiny, cylinder formed circle
	DrawDistance = 15.0, Type = 1    -- default circle type, low draw distance due to indoors area
}

Config.PoliceNumberRequired = 0
Config.TimerBeforeNewRob    = 2100 -- The cooldown timer on a store after robbery was completed / canceled, in seconds

Config.MaxDistance    = 20   -- max distance from the robbary, going any longer away from it will to cancel the robbary
Config.GiveBlackMoney = true -- give black money? If disabled it will give cash instead

Stores = {
	["paleto_twentyfourseven"] = {
		position = { x = 1736.32, y = 6419.47, z = 35.03 },
		reward = math.random(35000, 95000),
		nameOfStore = "24/7. (Paleto Bay)",
		secondsRemaining = 170, -- seconds
		lastRobbed = 0
	},
	["sandyshores_twentyfoursever"] = {
		position = { x = 1961.24, y = 3749.46, z = 32.34 },
		reward = math.random(35000, 95000),
		nameOfStore = "24/7. (Sandy Shores)",
		secondsRemaining = 170, -- seconds
		lastRobbed = 0
	},
	["littleseoul_twentyfourseven"] = {
		position = { x = -709.17, y = -904.21, z = 19.21 },
		reward = math.random(35000, 95000),
		nameOfStore = "24/7. (Little Seoul)",
		secondsRemaining = 170, -- seconds
		lastRobbed = 0
	},
	["bar_one"] = {
		position = { x = 1990.57, y = 3044.95, z = 47.21 },
		reward = math.random(35000, 95000),
		nameOfStore = "Yellow Jack. (Sandy Shores)",
		secondsRemaining = 170, -- seconds
		lastRobbed = 0
	},
	["ocean_liquor"] = {
		position = { x = -2959.33, y = 388.21, z = 14.00 },
		reward = math.random(30000, 85000),
		nameOfStore = "Robs Liquor. (Great Ocean Highway)",
		secondsRemaining = 170, -- seconds
		lastRobbed = 0
	},
	["rancho_liquor"] = {
		position = { x = 1126.80, y = -980.40, z = 45.41 },
		reward = math.random(50000, 95000),
		nameOfStore = "Robs Liquor. (El Rancho Blvd)",
		secondsRemaining = 10, -- seconds
		lastRobbed = 0
	},
	["sanandreas_liquor"] = {
		position = { x = -1219.85, y = -916.27, z = 11.32 },
		reward = math.random(30000, 90000),
		nameOfStore = "Robs Liquor. (San Andreas Avenue)",
		secondsRemaining = 170, -- seconds
		lastRobbed = 0
	},
	["grove_ltd"] = {
		position = { x = -43.40, y = -1749.20, z = 29.42 },
		reward = math.random(30000, 90000),
		nameOfStore = "LTD Gasoline. (Grove Street)",
		secondsRemaining = 170, -- seconds
		lastRobbed = 0
	},
	["mirror_ltd"] = {
		position = { x = 1160.67, y = -314.40, z = 69.20 },
		reward = math.random(30000, 90000),
		nameOfStore = "LTD Gasoline. (Mirror Park Boulevard)",
		secondsRemaining = 170, -- seconds
		lastRobbed = 0
	},
	--Bank
	["fleeca"] = {
		position = { x = 147.04908752441, y = -1044.9448242188, z = 29.36802482605 },
		reward = math.random(300000, 900000),
		nameOfStore = "Fleeca Bank",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["fleeca2"] = {
		position = { x = 147.04908752441, y = -1044.9448242188, z = 29.36802482605 },
		reward = math.random(300000, 900000),
		nameOfStore = "Fleeca Bank (Highway)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["rockford_jewlery"] = {
		position = { x = -621.989135742188, y = -230.804443359375, z = 38.0570297241211 },
		reward = math.random(300000, 900000),
		nameOfStore = "Vangelico Jewelry name. (Rockford Hills)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	}
}
