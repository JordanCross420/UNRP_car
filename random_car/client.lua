local QBCore = exports['qb-core']:GetCoreObject()
local car = 'bmx'

RegisterCommand('rcar', function()
    local coords = GetEntityCoords(PlayerPedId())
    QBCore.Functions.SpawnVehicle(car, function(veh)
       -- SetEntityHeading(veh, coords.w)
        exports['LegacyFuel']:SetFuel(veh, 100.0)
        TaskWarpPedIntoVehicle(ped, veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
        SetVehicleEngineOn(veh, true, true)
    end, coords, true)
    QBCore.Functions.Notify('Your car has been spawned by the UNRP', 'success')
end)