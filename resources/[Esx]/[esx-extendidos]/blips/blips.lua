local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

     {title="Club Comedia", colour=27, id=468, x = 53.27, y = -803.26, z = 50.009},
     {title="Plaza Central", colour=30, id=487, x = 199.66, y = -932.45, z = 109.287},
     {title="Parque Atracciones", colour=30, id=266, x = -1669.66, y = -1124.33, z = 109.287}
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.9)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)