Config.Jobs.slaughterer = {

	BlipInfos = {
		Sprite = 270,
		Color = 33
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = "benson",
			Trailer = "none",
			HasCaution = true
		}
	},

	Zones = {

		CloakRoom = {
			Pos = {x = 865.84, y = -1056.12, z = 28.05},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 0, g = 255, b = 50},
			Marker = 23,
			Blip = true,
			Name = _U("s_slaughter_locker"),
			Type = "cloakroom",
			Hint = _U("cloak_change")
		},

		AliveChicken = {
			Pos = {x = -62.90, y = 6241.46, z = 30.10},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 94, g = 89, b = 41},
			Marker = 23,
			Blip = true,
			Name = _U("s_hen"),
			Type = "work",
			Item = {
				{
					name = _U("s_alive_chicken"),
					db_name = "alive_chicken",
					time = 500,
					max = 20,
					add = 1,
					remove = 1,
					requires = "nothing",
					requires_name = "Nothing",
					drop = 100
				}
			},
			Hint = _U("s_catch_hen")
		},

		SlaughterHouse = {
			Pos = {x = -77.99, y = 6229.06, z = 30.10,},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 94, g = 89, b = 41},
			Marker = 23,
			Blip = false,
			Name = _U("s_slaughtered"),
			Type = "work",
			Item = {
				{
					name = _U("s_slaughtered_chicken"),
					db_name = "slaughtered_chicken",
					time = 500,
					max = 20,
					add = 1,
					remove = 1,
					requires = "alive_chicken",
					requires_name = _U("s_alive_chicken"),
					drop = 100
				}
			},
			Hint = _U("s_chop_animal")
		},

		Packaging = {
			Pos = {x = -101.97, y = 6208.79, z = 30.10},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 94, g = 89, b = 41},
			Marker = 23,
			Blip = false,
			Name = _U("s_package"),
			Type = "work",
			Item = {
				{
					name = _U("s_packagechicken"),
					db_name = "packaged_chicken",
					time = 5000,
					max = 100,
					add = 5,
					remove = 1,
					requires = "slaughtered_chicken",
					requires_name = _U("s_unpackaged"),
					drop = 100
				}
			},
			Hint = _U("s_unpackaged_button")
		},

		VehicleSpawner = {
			Pos = {x = 864.56, y = -1066.33, z = 27.90},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 23,
			Blip = false,
			Name = _U("spawn_veh"),
			Type = "vehspawner",
			Spawner = 1,
			Hint = _U("spawn_veh_button"),
			Caution = 200
		},

		VehicleSpawnPoint = {
			Pos = {x = 854.59, y = -1047.29, z = 27.50},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Name = _U("service_vh"),
			Type = "vehspawnpt",
			Spawner = 1,
			Heading = 130.1
		},

		VehicleDeletePoint = {
			Pos = {x = 848.87, y = -1054.41, z = 27.0},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			Marker = 1,
			Blip = false,
			Name = _U("return_vh"),
			Type = "vehdelete",
			Hint = _U("return_vh_button"),
			Spawner = 1,
			Caution = 200,
			GPS = 0,
			Teleport = 0
		},

		Delivery = {
			Pos = {x = -584.91, y = -897.92, z = 25.00},
			Color = {r = 0, g = 255, b = 0},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Marker = 23,
			Blip = true,
			Name = _U("delivery_point"),
			Type = "delivery",
			Spawner = 1,
			Item = {
				{
					name = _U("delivery"),
					time = 500,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 17,
					requires = "packaged_chicken",
					requires_name = _U("s_packagechicken"),
					drop = 100
				}
			},
			Hint = _U("s_deliver")
		}
	}
}
