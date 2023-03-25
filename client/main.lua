local QBCore = exports['qb-core']:GetCoreObject()

-- Events --

RegisterNetEvent('g-vehiclecloset:client:changeOutfit', function()
    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'Clothes1', 0.4)
    TriggerEvent('qb-clothing:client:openOutfitMenu')
end)

-- Threads --

CreateThread(function()
    exports['qb-target']:AddTargetBone(Config.TargetableVehicleBones, {
        options = {
            {
                action = function(vehicleEntity)
                    if Config.KeysRequired then
                        local plate = QBCore.Functions.GetPlate(vehicleEntity)
                        local hasKeys = exports['qb-vehiclekeys']:HasKeys(plate)
                        if hasKeys then
                            TriggerEvent('g-vehiclecloset:client:changeOutfit')
                        else
                            QBCore.Functions.Notify(Lang:t('error.no_keys'), 'error')
                        end
                    else
                        TriggerEvent('g-vehiclecloset:client:changeOutfit')
                    end
                end,
                icon = 'fas fa-shirt',
                label = Lang:t('target.label'),
            }
        },
        distance = 2.5,
    })
end)