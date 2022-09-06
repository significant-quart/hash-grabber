local hashText = false -- prevents the chat message from being sent continuously

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped, false) then
            if not hashText then
                hashText = true

                local vehHash = GetEntityModel(GetVehiclePedIsIn(ped, false))

                TriggerEvent("chatMessage", "[^3Hash Grabber^7]", { 255, 255, 255 }, string.format("%s is the %s hash!", vehHash, GetDisplayNameFromVehicleModel(vehHash))) -- chat message displaying the vehicle display name and model hash that the player is driving
            end
        else
            if hashText == true then
                hashText = false
            end
        end

        Wait(50)
    end
end)