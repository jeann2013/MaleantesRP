Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 102, g = 0, b = 102 }
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.ReviveReward               = 500  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = true -- disable if you're using fivem-ipl or other IPL loaders
Config.Locale = 'fr' -- Dejar en frances!

local second = 1000
local minute = 60 * second

-- How much time before auto respawn at hospital
Config.RespawnDelayAfterRPDeath   = 10 * minute

-- How much time before a menu opens to ask the player if he wants to respawn at hospital now
-- The player is not obliged to select YES, but he will be auto respawn
-- at the end of RespawnDelayAfterRPDeath just above.
Config.RespawnToHospitalMenuTimer   = true
Config.MenuRespawnToHospitalDelay   = 5 * minute

Config.EnablePlayerManagement       = true
Config.EnableSocietyOwnedVehicles   = false

Config.RemoveWeaponsAfterRPDeath    = true
Config.RemoveCashAfterRPDeath       = true
Config.RemoveItemsAfterRPDeath      = true

-- Will display a timer that shows RespawnDelayAfterRPDeath time remaining
Config.ShowDeathTimer               = true

-- Will allow to respawn at any time, don't use with RespawnToHospitalMenuTimer enabled!
Config.EarlyRespawn                 = false
-- The player can have a fine (on bank account)
Config.RespawnFine                  = false
Config.RespawnFineAmount            = 400

Config.Blip = {
	Pos     = { x = 295.574, y = -583.045, z = 43.15 },
	Sprite  = 61,
	Display = 4,
	Scale   = 0.8,
	Colour  = 17
}

Config.HelicopterSpawner = {
	SpawnPoint = {x = 351.72,  y = -600.16,  z = -10.0},
	Heading    = 0.0
}

-- https://wiki.fivem.net/wiki/Vehicles
Config.AuthorizedVehicles = {
	{
		model = 'ambulance',
		label = 'Ambulancia'
	},

}

Config.Zones = {

	--HospitalInteriorEntering1 = { -- Main entrance
	--	Pos	= { x = 307.634, y = -606.516, z = 180.63 },
	--	Type = -1
	--},

	HospitalInteriorInside1 = {
		Pos	= { x = 302.634, y = -586.516, z = 43.80 },
		Type = -1
	},

	--[[HospitalInteriorOutside1 = {
		Pos	= { x = 302.634, y = -586.516, z = 43.80 },
		Type = -1
	},

	HospitalInteriorExit1 = {
		Pos	= { x = 302.634, y = -586.516, z = 43.80 },
		Type = -1
	},]]


	AmbulanceActions = { -- Cloakroom
		Pos	= { x = 301.44, y = -599.47, z = 43.28 },
		Type = 21
	},

	VehicleSpawner = {
		Pos	= { x = 299.01, y = -573.48, z = 43.2, },
		Type = 21
	},

	VehicleSpawnPoint = {
		Pos	= { x = 289.38, y = -570.76, z = 43.2, },
		Type = -1
	},

	VehicleDeleter = {
		Pos	= { x = 291.03, y = -589.56, z = 42.21 },
		Type = 25
	},

	Pharmacy = {
		Pos	= { x = 309.72, y = -561.9, z = 43.28 },
		Type = 21
	},

	HospitalInteriorEntering2 = {
		Pos = {x = 351.72,  y = -588.16,  z = 10.16},
		Type = 1
	}

	--[[ParkingDoorGoOutInside = {
		Pos	= { x = 234.56, y = -1373.77, z = 20.97 },
		Type = 1
	},

	ParkingDoorGoOutOutside = {
		Pos	= { x = 1136.6, y = -1597.2, z = 33.73 },
		Type = -1
	},

	ParkingDoorGoInInside = {
		Pos	= { x = 238.64, y = -1368.48, z = 23.53 },
		Type = -1
	},

	ParkingDoorGoInOutside = {
		Pos	= { x = 1132.6, y = -1597.2, z = 33.7 },
		Type = 1
	},

	StairsGoTopTop = {
		Pos	= { x = 251.91, y = -1363.3, z = 38.53 },
		Type = -1
	},

	StairsGoTopBottom = {
		Pos	= { x = 237.45, y = -1373.89, z = 26.30 },
		Type = -1
	},

	StairsGoBottomTop = {
		Pos	= { x = 256.58, y = -1357.7, z = 37.30 },
		Type = -1
	},

	StairsGoBottomBottom = {
		Pos	= { x = 235.45, y = -1372.89, z = 26.30 },
		Type = -1
	}]]

}


Config.Teleporters = {
	['hospitalheli'] = {
		['Job'] = 'none',
		['Enter'] = { 
			['x'] = 327.36, 
			['y'] = -603.12, 
			['z'] = 42.32,
			['Information'] = '[E] Subir al Helipuerto',
		},
		['Exit'] = {
			['x'] = 339.44, 
			['y'] = -584.08, 
			['z'] = 73.19, 
			['Information'] = '[E] Bajar a recepción' 
		}
	}
	--Next here
}

-- ambulance Car Garage Marker Settings:
Config.ambulanceCarMarker = 27 													-- marker type
Config.ambulanceCarMarkerColor = { r = 50, g = 50, b = 204, a = 100 } 			-- rgba color of the marker
Config.ambulanceCarMarkerScale = { x = 1.5, y = 1.5, z = 1.0 }  				-- the scale for the marker on the x, y and z axis
Config.CarDraw3DText = "[E] Para abrir el garage"								-- set your desired text here

-- ambulance Heli Garage Marker Settings:
Config.ambulanceHeliMarker = 27 												-- marker type
Config.ambulanceHeliMarkerColor = { r = 50, g = 50, b = 204, a = 100 } 			-- rgba color of the marker
Config.ambulanceHeliMarkerScale = { x = 5.5, y = 5.5, z = 1.0 }  				-- the scale for the marker on the x, y and z axis
Config.HeliDraw3DText = "[E] Para abrir el garage"								-- set your desired text here

-- ambulance Boat Garage Marker Settings:
Config.ambulanceBoatMarker = 27 												-- marker type
Config.ambulanceBoatMarkerColor = { r = 50, g = 50, b = 204, a = 100 } 			-- rgba color of the marker
Config.ambulanceBoatMarkerScale = { x = 3.0, y = 3.0, z = 1.0 }  				-- the scale for the marker on the x, y and z axis
Config.BoatDraw3DText = "[E] Para abrir el garage"								-- set your desired text here


-- ambulance Cars:
Config.ambulanceVehicles = {		
	{
		model = 'ambulance',
		label = '<span style="color: #80fffb;">Ambulancia Normal'
	},
	{
		model = 'ems4',
		label = '<span style="color: #80fffb;">Coche AUDI'
	},
}

-- ambulance Helicopters:
Config.ambulanceHelicopters = {
	{ model = 'ambuheli', label = 'Helicoptero LSFD', livery = 0, price = 0 },
}

-- ambulance Boats:
Config.ambulanceBoats = {
	--{ model = 'predator', label = '<span style="margin: 1px auto;border-bottom: 1px solid #ccc; color:rgb(213, 195, 147);font-weight: normal;font-style: normal;}>Extendedmode_V2', livery = 0, price = 0 },
}

-- Menu Labels & Titles:
Config.LabelStoreVeh = "Devolver un vehiculo"
Config.LabelGetVeh = "Pedir un vehiculo"
Config.TitleambulanceGarage = "Vehiculos Policiales"
Config.TitleambulanceLivery = "Livery"
Config.TitleValues = "Value"

--ESX.ShowNotifications:
Config.VehicleParked = "�su veh�culo est� guardado!"
Config.NoVehicleNearby = "�no tienes veh�culo!"
Config.CarOutFromPolGar = "�Sacaste un ~b~ Veh�culo ~s~  ~s~!"
Config.HeliOutFromPolGar = "�Sacaste un ~b~ Helic�ptero ~s~ del garage ~s~!"
Config.BoatOutFromPolGar = "�Sacaste un ~b~ Barco ~s~ del ~y~ garage ~s~!"

Config.KeyToOpenCarGarage = 38            -- default 38 is E
Config.KeyToOpenHeliGarage = 38            -- default 38 is E
Config.KeyToOpenBoatGarage = 38            -- default 38 is E

Config.ambulanceDatabaseName = 'ambulance'    -- set the exact name from your jobs database for ambulance

--ambulance Car Garage:
Config.CarZones = {
    ambulanceCarGarage = {
        Pos = {
            -- Principal
            { x = 364.62579345703,  y = -591.07635498047, z = 28.688177108765},
            -- Trasera
            { x = 320.54968261719,  y = -553.87042236328, z = 28.743455886841},
            -- Sandi Adelante
            { x = 1835.7855224609,  y = 3665.3134765625, z = 33.703876495361},
            -- Sandy atras
            { x = 1830.9643554688,  y = 3695.8293457031, z = 34.224296569824},
            -- Paleto
            { x = -258.740234375,  y = 6340.1469726563, z = 32.426193237305}
        }
    }
}

--ambulance Heli Garage:
Config.HeliZones = {
    ambulanceHeliGarage = {
        Pos = {
            { x = 351.72222900391,  y = -588.22448730469, z = 74.165565490723}
        }
    }
}

--ambulance Boat Garage:
Config.BoatZones = {
    ambulanceBoatGarage = {
        Pos = {
            {x = 1538.69,  y = 3901.5, z = -30.35},
            {x = 2000.42,  y = 4500, z = -33.437}
        }
    }
}