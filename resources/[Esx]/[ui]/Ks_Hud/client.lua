-- Inicio Libreria ESX
ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(100)
    end
end)
-- Fin Libreria ESX

-- Inicio Config
Config = {}
Config['Hud'] = true

Config['Zones'] = {
    {
		x = 216.85, 
		y = -803.52, 
		z = 30.78,
		type = 'nostress'
    }
}

local distance = 70.0
-- Fin Config

-- Inicio Commandos
RegisterCommand('Hud',function(source,args)
    if (actived) then
        Config['Hud'] = false
        actived = false
    else
        actived = true
        Config['Hud'] = true
    end
end,false)
-- fin Comandos

-- Inicio Funciones
RegisterNetEvent("Ks_Hud:onTick")
AddEventHandler("Ks_Hud:onTick", function(status)

    TriggerEvent('esx_status:getStatus', 'hunger', function(status)
        food = status.val / 10000
    end)
    
    TriggerEvent('esx_status:getStatus', 'thirst', function(status)
        thirst = status.val / 10000
    end)

    TriggerEvent('esx_status:getStatus', 'stress', function(status)
        stress = status.val / 10000
    end)

end)
-- Fin Funciones

-- Inicio Hilo Principal
Citizen.CreateThread(function()
    while true do 

        Citizen.Wait(1000)

        if IsPedSittingInAnyVehicle(PlayerPedId()) then
            DisplayRadar(true)
        else
            DisplayRadar(false)
        end

        SendNUIMessage({
            hud = Config['Hud'];
            pauseMenu = IsPauseMenuActive();
            armour = GetPedArmour(PlayerPedId());
            health = GetEntityHealth(PlayerPedId())-100;
            food = food;
            thirst = thirst;
            stress = stress;
            veh  = IsPedSittingInAnyVehicle(PlayerPedId());
            zone = getZone();

        })
        
    end
    
end)

getZone = function()
    local coords = GetEntityCoords(GetPlayerPed(-1))

    for i,v in pairs(Config['Zones']) do

        if GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < distance then
            zone = v.type
        else
            zone = 'none'
        end

    end

    return zone;

end
-- Fin Hilo Principal