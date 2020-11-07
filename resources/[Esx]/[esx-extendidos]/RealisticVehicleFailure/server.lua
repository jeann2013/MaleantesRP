------------------------------------------
--	iEnsomatic RealisticVehicleFailure  --
------------------------------------------
--
--	Created by Jens Sandalgaard
--
--	This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
--
--	https://github.com/iEns/RealisticVehicleFailure
--


ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('firas:removemoney')
AddEventHandler('firas:removemoney', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeMoney(tonumber(amount))
end)


local function notification(msg)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(false, false)
end

local function checkWhitelist(id)
	for key, value in pairs(RepairWhitelist) do
		if id == value then
			return true
		end
	end	
	return false
end


RegisterCommand('repair', function(source)
	if RepairEveryoneWhitelisted == true then
		TriggerClientEvent('iens:repair', source)
	else
		if checkWhitelist(identifier) then
			TriggerClientEvent('iens:repair', source)
		else
			TriggerClientEvent('iens:notAllowed', source)
		end
	end
end)


