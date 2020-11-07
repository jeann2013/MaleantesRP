Config = {}

-- Dejar en False si se quiere que todo el mundo pueda acceder a la armeria, no recomendado.
Config.OnlyPolicemen = true

-- Municion recibida.
Config.ReceiveAmmo = 210

-- Editar si usas otra comisaria que no sea MissionRow.
Config.Armory = { ["x"] = 452.32196044922, ["y"] = -980.03033447266, ["z"] = 30.689582824707, ["h"] = 270.0 }
Config.ArmoryPed = { ["x"] = 454.18048095703, ["y"] = -980.11981201172, ["z"] = 30.689603805542, ["h"] = 90.0, ["hash"] = "s_m_y_cop_01" }

-- Armas disponibles para utilizar.
Config.ArmoryWeapons = {
	{ ["hash"] = "weapon_assaultsmg", ["type"] = "rifle" },
	{ ["hash"] = "weapon_specialcarbine", ["type"] = "rifle" },
	{ ["hash"] = "weapon_combatpistol", ["type"] = "pistol" },
	{ ["hash"] = "weapon_nightstick", ["type"] = "pistol" },
	{ ["hash"] = "weapon_stungun", ["type"] = "pistol" },
	{ ["hash"] = "weapon_flashlight", ["type"] = "pistol" },
	{ ["hash"] = "weapon_fireextinguisher", ["type"] = "pistol" },
	{ ["hash"] = "weapon_flaregun", ["type"] = "pistol" },
	{ ["hash"] = "weapon_pumpshotgun", ["type"] = "rifle" }
}

