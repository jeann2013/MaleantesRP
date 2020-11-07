local safezones = {
	{x = 216.85, y = -803.52, z = 30.78}, --GARAGE CENTRAL
	{x = -600.67, y = 336.82, z = 85.15}, --GARAGE TEQUILA
	{x = 145.58, y = 6607.83, z = 31.85}, --GARAGE PALETO
	{x = 1680.51, y = 3590.51, z = 35.53}, --GARAGE SANDY
	{x = -545.31, y = -203.7, z = 38.22}, --PUNTO DE INEM
	{x = -1046.04, y = -2751.85, z = 21.36}, --REAPARICION
	{x = 235.54, y = -412.26, z = 48.11}, --JUZGADOS
	{x = 1003.2, y = -2314.11, z = 30.52}, --LS CUSTOMS
	{x = 448.65, y = -987.99, z = 30.69}, --COMISARIA
	{x = 310.04, y = -587.54, z = 43.13}, --HOSPITAL
	{x = -36.58, y = -1101.49, z = 26.42}, --CONCESIONARIO
	{x = -364.85, y = -123.46, z = 81.09}, --LSCUSTOMS
}
local distance = 75.0

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local coords = GetEntityCoords(GetPlayerPed(-1))
		for i,v in pairs(safezones) do
			if GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < distance then
				drawTxt("Estas en ~g~zona segura",2, 1, 0.890, 0.973, 0.50,255,255,255,255)
			end
		end
	end
end)

function drawTxt(text,font,centre,x,y,scale,r,g,b,a)
    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(0.300, 0.300)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(centre)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x , y)
end
