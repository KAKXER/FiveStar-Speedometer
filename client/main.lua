-- ! ███████╗██╗██╗   ██╗███████╗███████╗████████╗ █████╗ ██████╗ 
-- ! ██╔════╝██║██║   ██║██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗
-- ! █████╗  ██║██║   ██║█████╗  ███████╗   ██║   ███████║██████╔╝
-- ! ██╔══╝  ██║╚██╗ ██╔╝██╔══╝  ╚════██║   ██║   ██╔══██║██╔══██╗
-- ! ██║     ██║ ╚████╔╝ ███████╗███████║   ██║   ██║  ██║██║  ██║
-- ! ╚═╝     ╚═╝  ╚═══╝  ╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝
-- ! 		    5star.tebex.io | Discord/HdEzqEJBdh
local Seat_belt = false
Citizen.CreateThread(function()
    local OneHide = true
    while true do
        Citizen.Wait(50)
        local WaitSleep = true
        local Ped = PlayerPedId()
        local playerVehicle = GetVehiclePedIsIn(Ped, false)
 
        if (IsPedInAnyVehicle(Ped, false)) and not IsPauseMenuActive() then
            if GetPedInVehicleSeat(playerVehicle, -1) or GetPedInVehicleSeat(playerVehicle, 0) then
                if OneHide then
                    Citizen.CreateThread(function()
                        HideComponent()
                    end) 
                    OneHide = false
                end
                local VehicleDamageSource = GetEntityHealth(playerVehicle)
                local VehicleDamage = math.ceil(VehicleDamageSource / 10)
                local vehicleFuel = math.floor(GetVehicleFuelLevel(playerVehicle))
                local VehicleEngine = GetIsVehicleEngineRunning(playerVehicle)
                local VehicleLock = GetVehicleDoorLockStatus(playerVehicle)
                local VehicleSpeedSource = GetEntitySpeed(playerVehicle)
                local VehicleSpeed = math.ceil(VehicleSpeedSource * 3.6)
                local _, VehicleLight = GetVehicleLightsState(playerVehicle)
                local VehicleEngineSpeed = GetVehicleCurrentRpm(playerVehicle) or VehicleSpeed
                WaitSleep = false
                SendNUIMessage({
                    action = "DataLoad",
                    opacity = 1,
                    Light = VehicleLight,
                    Speed = VehicleSpeed,
                    Fuel = vehicleFuel,
                    Damage = VehicleDamage,
                    Lock = VehicleLock,
                    Engine = VehicleEngine,
                    Seatbelt = Seat_belt,
                    EngineSpeed = VehicleEngineSpeed
                })
            end
        else
            SendNUIMessage({
                action = "DataLoad",
                opacity = 0
            })
            if not OneHide then
                Citizen.CreateThread(function()
                    HideComponent()
                end) 
                OneHide = true
            end
        end

        if WaitSleep then
            Citizen.Wait(1250)
        end
    end
end)

local OFForON = false
function HideComponent()
    OFForON = not OFForON
    while OFForON do
        Citizen.Wait(5)
        HideHudComponentThisFrame(9)
        HideHudComponentThisFrame(6)
        HideHudComponentThisFrame(7)
        HideHudComponentThisFrame(8)
    end
end

function Seatbelt(result)
    Seat_belt = result
end
exports("Seatbelt", Seatbelt)


-- -- To set the seat belt, refer to the FiveStar-Speedometer script document in GitBook
-- ---@alias GitBook: https://fivestar-development.gitbook.io/docs/scripts/fivestar-speedometer-free