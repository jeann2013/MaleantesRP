Stress = {}
local MFS = Stress

MFS.Version = '1.0.10'

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj; end)
Citizen.CreateThread(function(...)
  while not ESX do 
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj; end) 
    Citizen.Wait(0)
  end
end)

MFS.GetSickAt       = 40 -- only change the first value (percent player gets sick at)
MFS.ExtremelySickAt = 70 -- only change the first value (percent player vomits at)

MFS.CoughTimer      = 30 -- seconds between cough
MFS.VomitTimer      = 45 -- seconds between vomit
MFS.VomitHealthLoss = 10 -- from vomiting

MFS.DrugsTimer      = 60 -- how long drugs last (seconds)
MFS.SmokeRelief     = 10 -- from smoking cigarette
MFS.JointRelief     = 20 -- from smoking joint
MFS.AlchoholRelief  = 20 -- from drinking alchohol beverage
MFS.DrinkingRelief  = 10 -- from drinking non-alchoholic beverage

MFS.StaticRelief    = 0.1 -- % stress relieved over time from events like swimming, riding bikes, etc.
MFS.StaticAdder     = 0.2 -- % stress gained over time from things like driving too fast.
MFS.CombatAdder     = 0.3 -- % stress gained while in combat
MFS.ShootingAdder   = 0.4 -- % stress gained while shooting
MFS.StressAtSpeed   = 230 -- kph
MFS.RelaxAtSpeed    = 60  -- kph