QBCore = exports['qb-core']:GetCoreObject()
local zones = {}
local PlayerJob

local function completeFine(multiplier, index)
    TriggerServerEvent('speedcam:server:take', multiplier, index)
end

local function multiplier(index, speed)
    local multiplier = 1
    if not Config.SpeedCams[index].multiplieron then
        return multiplier
    end
    for k, v in pairs(Config.SpeedCams[index].multiplier) do
        if speed >= Config.SpeedCams[index].multiplier[k].speed then
            multiplier = Config.SpeedCams[index].multiplier[k].multiply
        end
    end
    return multiplier
end

local function figureSpeeds()
    local speed
    if Config.Type.mph then
        speed = GetEntitySpeed(PlayerPedId()) * 2.236936
    else
        speed = GetEntitySpeed(PlayerPedId()) * 3.6
    end
    return speed
end

local function fine(index)
    PlayerJob = QBCore.Functions.GetPlayerData().job.name
    for k, v in pairs(Config.ExemptJobs) do
        if (Config.ExemptJobs[k] == PlayerJob) then
            return
        end
    end
    local speed = figureSpeeds()
    if speed < Config.SpeedCams[index].speedlimit then
        return
    end
    local multiplier = multiplier(index, speed)
    completeFine(multiplier, index)
    TriggerServerEvent('qb-phone:server:sendNewMail', {sender = Config.Message.sender, subject = Config.Message.subject, message = Config.Message.message, button = {}})
end



-- Threads

CreateThread(function()
    for k, v in pairs(Config.SpeedCams) do
        zones[k] = BoxZone:Create(vector3(Config.SpeedCams[k].coords.x, Config.SpeedCams[k].coords.y, Config.SpeedCams[k].coords.z), Config.SpeedCams[k].length, Config.SpeedCams[k].width, {
            name= 'RedZone' .. k,
            heading = Config.SpeedCams[k].coords.w,
            offset={0.0, 0.0, 0.0},
            scale={1.0, 1.0, 1.0},
            minZ = Config.SpeedCams[k].coords.z - 5.0,
            maxZ = Config.SpeedCams[k].coords.z + 5.0,
            debugPoly=true,
        })
    end
end)

CreateThread(function()
    for k, v in pairs(zones) do
        zones[k]:onPlayerInOut(function(isPointInside)
            if isPointInside then
                if IsPedInAnyVehicle(PlayerPedId(), true) then
                    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                    local driverPed = GetPedInVehicleSeat(vehicle, -1)
                    if PlayerPedId() == driverPed then
                        fine(k)
                    end
                end
            end
        end)
    end
end)