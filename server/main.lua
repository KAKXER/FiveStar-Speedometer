Citizen.CreateThread(function()
    local resourcename = "FiveStar-Speedometer"
    if resourcename == GetCurrentResourceName() then
        local VersionMetaData = tonumber(GetResourceMetadata(resourcename, "version"))
        if VersionMetaData ~= nil and type(VersionMetaData) then
            PerformHttpRequest("https://raw.githubusercontent.com/kakxer/fivestar-version/master/Version.json", function(errorCode, resultData, resultHeaders)
                local Version = json.decode(resultData)
                if Version == nil then
                    print("A connection to check your Update Version could not be established")
                    Wait(500)
                    os.exit()
                end
                local VersionMain = Version[resourcename]
                if errorCode ~= 200 then
                    print("A connection to check your Update Version could not be established")
                    Wait(500)
                    os.exit()
                    return
                elseif (type(Version) ~= "table" and Version == nil) or (type(VersionMain) ~= "number" and VersionMain == nil) then
                    print("^8The data Request is invalid^0")
                    Wait(500)
                    os.exit()
                    return
                elseif VersionMetaData == VersionMain then
                    local color = {
                        [1] = math.random(1, 9),
                        [2] = math.random(1, 9),
                        [3] = math.random(1, 9),
                        [4] = math.random(1, 9)
                    }
                    if GetConvar("FiveStar", "disable") == "enable" then
                        SetConvar("FiveStar", "disable")
                        print("^" .. color[3] .. "            Hello, Welcome To ^" .. color[2] .. "FiveStar Development ^" ..color[3])
                        print(" ███████╗██╗██╗   ██╗███████╗███████╗████████╗ █████╗ ██████╗  ")
                        print(" ██╔════╝██║██║   ██║██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗ ")
                        print(" ██╔════╝██║██║   ██║██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗ ")
                        print(" █████╗  ██║██║   ██║█████╗  ███████╗   ██║   ███████║██████╔╝ ")
                        print(" ██╔══╝  ██║╚██╗ ██╔╝██╔══╝  ╚════██║   ██║   ██╔══██║██╔══██╗ ")
                        print(" ██║     ██║ ╚████╔╝ ███████╗███████║   ██║   ██║  ██║██║  ██║ ")
                        print(" ╚═╝     ╚═╝  ╚═══╝  ╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ")
                        print("                    ^" .. color[2] .. "FiveStar Development                      ")
                        print("                    Discord.gg/PK6g3CMe5z                     ")
                        print("             Resource Name: ^" .. color[1] .. "" .. resourcename .. "                ^" .. color[3])
                        print("                    Resource Version: ^" .. color[1] .. "" .. VersionMain .. "                ^" .. color[3])
                    else
                        print("                    ^" .. color[2] .. "FiveStar Development                      ")
                        print("             Resource Name: ^" .. color[1] .. "" .. resourcename .. "                ^" .. color[3])
                        print("                    Resource Version: ^" .. color[1] .. "" .. VersionMain .. "                ^" .. color[3])
                    end
                else
                    print("^2UPDATE: The new Update of "..resourcename.." Version ["..VersionMain.."] has been Released, please go to your ControlPanel and update the "..resourcename.." Script.")
                    Citizen.Wait(500)
                    print("^2UPDATE: The new Update of "..resourcename.." Version ["..VersionMain.."] has been Released, please go to your ControlPanel and update the "..resourcename.." Script.")
                    os.exit()
                end              
            end)
        else
            print("^8ERROR: Please Change the Script Version in fxmanifest.lua and Change to Default Mode")
            Citizen.Wait(500)
            print("^8ERROR: Please Change the Script Version in fxmanifest.lua and Change to Default Mode")
            os.exit()
        end
    else
        print("^8WARNING: Source Name ".. resourcename .." Do Change This Source Name!")
        Citizen.Wait(500)
        print("^8WARNING: Source Name ".. resourcename .." Do Change This Source Name!")
        os.exit()
    end
end)
