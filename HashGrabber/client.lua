----------Made By Pegi 16™/AntwanR942----------
--This also works with add-on vehicles!
--Make sure to replace the PUTMODELNAMEHERE with the vehicle spawn name!
----------CONFIG----------
Model = "PUTMODELNAMEHERE" --Put the model name for the vehicle you are trying to find the hash of. E.g. "police1"
----------CODE!-----------
hash_text = false --Only the 1 chat message will appear. Do not remove this unless you want your chat to be filled with the same message.

Citizen.CreateThread(function()
    while true do
        local PlayerPed = GetPlayerPed(-1) 
        local hash = GetHashKey(Model)
        if IsPedInAnyVehicle(PlayerPed, false) then 
            local veh = GetVehiclePedIsIn(GetPlayerPed(-1), false) 
            if IsVehicleModel(veh, hash) and not hash_text then 
                hash_text = true
                TriggerEvent('chatMessage', "[^3Hash Grabber^7]", { 255, 255, 255}, hash.." is the "..Model.." hash!") --Chat message displaying the vehicles model name and more importantly its hash!
            end  
        end
        Citizen.Wait(0)
    end
end)
----------END OF SCRIPT:(----------