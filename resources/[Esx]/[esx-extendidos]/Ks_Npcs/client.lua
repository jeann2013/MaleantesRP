Citizen.CreateThread(function()
  for _,v in pairs(Config.Peds) do

    RequestModel(GetHashKey(v[7]))

    while not HasModelLoaded(GetHashKey(v[7])) do

      Wait(1)

    end

    ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)

    SetEntityHeading(ped, v[5])

    FreezeEntityPosition(ped, true)

    SetEntityInvincible(ped, true)

    SetBlockingOfNonTemporaryEvents(ped, true)

  end
  
end)