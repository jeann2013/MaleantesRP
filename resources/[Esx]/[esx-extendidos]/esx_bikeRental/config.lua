Config                            = {}
Config.Locale                     = 'en'

--- #### BASICS
Config.EnablePrice = true -- false = bikes for free
Config.EnableEffects = false
Config.EnableBlips = true


--- #### PRICES	
Config.PriceTriBike = 89
Config.PriceScorcher = 99
Config.PriceCruiser = 129
Config.PriceBmx = 109


--- #### MARKER EDITS
Config.TypeMarker = 25
Config.MarkerScale = { x = 2.000, y = 2.000, z = 0.500}
Config.MarkerColor = { r = 0, g = 255, b = 255}
	
Config.MarkerZones = { 

    {x = -246.980,y = -339.820,z = 29.000},
    {x = -6.986,y = -1081.704,z = 25.7},
    {x = -1085.78,y = -263.01,z = 36.80}, 
    {x = -1262.36,y = -1438.98,z = 3.45},
    {x = -512.76, y = -261.91, z = 34.45},
    {x = -237.19, y = -985.44, z = 28.32},

}


-- Edit blip titles
Config.BlipZones = { 

   {title="Bikes Rental", colour=46, id=409, x = -248.938, y = -339.955, z = 29.969},
   {title="Bikes Rental", colour=46, id=409, x = -6.892, y = -1081.734, z = 26.829},
   {title="Bikes Rental", colour=46, id=409, x = -1262.36, y = -1438.98, z = 3.45},
   {title="Bikes Rental", colour=46, id=409, x = -512.76, y = -261.91, z = 32.45},
   {title="Bikes Rental", colour=46, id=409, x = -237.19, y = -985.44, z = 28.65},
}
