Config.Jobs.tailor = {

	BlipInfos = {
		Sprite = 366,
		Color = 4
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = "youga2",
			Trailer = "none",
			HasCaution = true
		}

	},

	Zones = {

		CloakRoom = {
			Pos = {x = 706.73, y = -960.90, z = 29.45},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 23,
			Blip = true,
			Name = _U("dd_dress_locker"),
			Type = "cloakroom",
			Hint = _U("cloak_change"),
			GPS = {x = 740.80, y = -970.06, z = 23.46}
		},

		Wool = {
			Pos = {x = 1978.92, y = 5171.70, z = 46.75},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 23,
			Blip = true,
			Name = _U("dd_wool"),
			Type = "work",
			Item = {
				{
					name = _U("dd_wool"),
					db_name = "wool",
					time = 3000,
					max = 40,
					add = 1,
					remove = 1,
					requires = "nothing",
					requires_name = "Nothing",
					drop = 100
				}
			},
			Hint = _U("dd_pickup"),
			GPS = {x = 715.95, y = -959.63, z = 29.39}
		},

		Fabric = {
			Pos = {x = 715.95, y = -959.63, z = 29.45},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 23,
			Blip = false,
			Name = _U("dd_fabric"),
			Type = "work",
			Item = {
				{
					name = _U("dd_fabric"),
					db_name = "fabric",
					time = 5000,
					max = 80,
					add = 2,
					remove = 1,
					requires = "wool",
					requires_name = _U("dd_wool"),
					drop = 100
				}
			},
			Hint = _U("dd_makefabric"),
			GPS = {x = 712.92, y = -970.58, z = 29.39}
		},

		Clothe = {
			Pos = {x = 712.92, y = -970.58, z = 29.45},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 23,
			Blip = false,
			Name = _U("dd_clothing"),
			Type = "work",
			Item = {
				{
					name = _U("dd_clothing"),
					db_name = "clothe",
					time = 4000,
					max = 40,
					add = 1,
					remove = 2,
					requires = "fabric",
					requires_name = _U("dd_fabric"),
					drop = 100
				}
			},
			Hint = _U("dd_makeclothing"),
			GPS = {x = 429.59, y = -807.34, z = 28.49}
		},

		VehicleSpawner = {
			Pos = {x = 740.80, y = -970.06, z = 23.55},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 23,
			Blip = false,
			Name = _U("spawn_veh"),
			Type = "vehspawner",
			Spawner = 1,
			Hint = _U("spawn_veh_button"),
			Caution = 200,
			GPS = {x = 1978.92, y = 5171.70, z = 46.63}
		},

		VehicleSpawnPoint = {
			Pos = {x = 747.31, y = -966.23, z = 23.70},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Name = _U("service_vh"),
			Type = "vehspawnpt",
			Spawner = 1,
			Heading = 270.1,
			GPS = 0
		},

		VehicleDeletePoint = {
			Pos = {x = 757.38, y = -954.47, z = 24.10},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			Marker = 23,
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
			Pos = {x = -1177.71, y = -813.37, z = 13.65},
			Color = {r = 204, g = 204, b = 0},
			Size = {x = 5.0, y = 5.0, z = 3.0},
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
					price = 20,
					requires = "clothe",
					requires_name = _U("dd_clothing"),
					drop = 100
				}
			},
			Hint = _U("dd_deliver_clothes"),
			GPS = {x = 1978.92, y = 5171.70, z = 46.63}
		}
	}
}
