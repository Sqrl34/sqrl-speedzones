QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('speedcam:server:take', function(multiplier, index)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveMoney('cash', Config.SpeedCams[index].basefine * multiplier, 'Speed Cam Fine')
    TriggerClientEvent('QBCore:Notify', src, 'Fined for speeding', 'error')
end)
