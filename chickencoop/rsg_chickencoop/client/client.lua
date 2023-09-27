-- local keys = { ['G'] = 0x760A9C6F, ['S'] = 0xD27782E3, ['W'] = 0x8FD015D8, ['H'] = 0x24978A28, ['G'] = 0x5415BE48, ["ENTER"] = 0xC7B5340A, ['E'] = 0xDFF812F9,["BACKSPACE"] = 0x156F7119 }

-- --menu

-- Citizen.CreateThread(function()
-- 	while true do
--         Citizen.Wait(1)
--         local sleep = true
-- 		local coords = GetEntityCoords(PlayerPedId())
--     if (Vdist(coords.x, coords.y, coords.z, -1583.41, -1393.52, 82.02) < 2.0) then
--         sleep = false
--             DrawTxt("Press [~e~G~q~] to Start Gathering Eggs.", 0.50, 0.85, 0.7, 0.7, true, 255, 255, 255, 255, true)
--             if IsControlJustReleased(0, 0x760A9C6F) then -- g
            
--                 TriggerServerEvent("rsgchickencoop:eggs")
              

--             end
--         end
--     end
--     if sleep then
--         Citizen.Wait(1000)
--     end
-- end)

-- Citizen.CreateThread(function()
-- 	while true do
--         Citizen.Wait(1)
--         local sleep = true
-- 		local coords = GetEntityCoords(PlayerPedId())
--     if (Vdist(coords.x, coords.y, coords.z, -248.13, 673.79, 114.14) < 2.0) then
--         sleep = false
--             DrawTxt("Press [~e~G~q~] to Start Gathering Eggs.", 0.50, 0.85, 0.7, 0.7, true, 255, 255, 255, 255, true)
--             if IsControlJustReleased(0, 0x760A9C6F) then -- g
             
--                 TriggerServerEvent("rsgchickencoop:eggs")
            

--             end
--         end
--     end
--     if sleep then
--         Citizen.Wait(1000)
--     end
-- end)


-- AddEventHandler('gathering:eggs', function()
-- local _source = source
-- 		if cauldron ~= 0 then
--             SetEntityAsMissionEntity(cauldron)
--             DeleteObject(cauldron)
--             cauldron = 0
--             end
--             local playerPed = PlayerPedId()
-- 			Citizen.Wait(0)
--             ClearPedTasksImmediately(PlayerPedId())
-- 			WarMenu.OpenMenu('gathering')
--             TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_HAMMER_TABLE'), -1, true, false, false, false)
       
--             local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
          
--             SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
--             PlaceObjectOnGroundProperly(prop)
--             cauldron = prop


-- end)

-- Citizen.CreateThread(function()
--     while true do
-- 	local playerPed = PlayerPedId()
--         Citizen.Wait(0)
		
--         if whenKeyJustPressed(keys['BACKSPACE']) then
--             if cauldron ~= 0 then
--             SetEntityAsMissionEntity(cauldron)
--             DeleteObject(cauldron)
-- 			ClearPedTasksImmediately(PlayerPedId())
--             cauldron = 0
--             end
--      end
-- 	end
-- end)


-- RegisterNetEvent('rsgchickencoop:eggs')
-- AddEventHandler('rsgchickencoop:eggs', function()

--     local playerPed = PlayerPedId()
--     TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 27000, true, false, false, false)
--     exports['progressBars']:startUI(27000, "Gathering...")
--     Citizen.Wait(27000)
--     ClearPedTasksImmediately(PlayerPedId())

-- end)

-- function whenKeyJustPressed(key)
--     if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
--         return true
--     else
--         return false
--     end
-- end



-- RegisterNetEvent("rsg_chickencraft:prompt")
-- AddEventHandler("rsg_chickencraft:prompt", function(msg)
--     SetTextScale(0.5, 0.5)
--     local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", msg, Citizen.ResultAsLong())
--     Citizen.InvokeNative(0xFA233F8FE190514C, str)
--     Citizen.InvokeNative(0xE9990552DEC71600)
-- end)

-- function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
--     local str = CreateVarString(10, "LITERAL_STRING", str, Citizen.ResultAsLong())
--    SetTextScale(w, h)
--    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
--    SetTextCentre(centre)
--    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
--    Citizen.InvokeNative(0xADA9255D, 10);
--    DisplayText(str, x, y)
-- end


-- Define key bindings
local keys = {
    ['G'] = 0x760A9C6F,
    ['S'] = 0xD27782E3,
    ['W'] = 0x8FD015D8,
    ['H'] = 0x24978A28,
    ['G'] = 0x5415BE48,  -- Note: You have two 'G' keys with different values.
    ["ENTER"] = 0xC7B5340A,
    ['E'] = 0xDFF812F9,
    ["BACKSPACE"] = 0x156F7119
}

-- Menu handling
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local sleep = true
        local coords = GetEntityCoords(PlayerPedId())

        -- Check if player is near a location
        if (Vdist(coords.x, coords.y, coords.z, -1583.41, -1393.52, 82.02) < 2.0) then
            sleep = false
            DrawTxt("Press [~e~G~q~] to Start Gathering Eggs.", 0.50, 0.85, 0.7, 0.7, true, 255, 255, 255, 255, true)
            
            -- Check if 'G' key is pressed
            if IsControlJustReleased(0, 0x760A9C6F) then
                TriggerServerEvent("rsgchickencoop:eggs")
            end
        end
    end
    if sleep then
        Citizen.Wait(1000)
    end
end)

-- Another menu handling section with different coordinates
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local sleep = true
        local coords = GetEntityCoords(PlayerPedId())

        -- Check if player is near a different location
        if (Vdist(coords.x, coords.y, coords.z, -248.13, 673.79, 114.14) < 2.0) then
            sleep = false
            DrawTxt("Press [~e~G~q~] to Start Gathering Eggs.", 0.50, 0.85, 0.7, 0.7, true, 255, 255, 255, 255, true)
            
            -- Check if 'G' key is pressed
            if IsControlJustReleased(0, 0x760A9C6F) then
                TriggerServerEvent("rsgchickencoop:eggs")
            end
        end
    end
    if sleep then
        Citizen.Wait(1000)
    end
end)

-- Event handler for gathering eggs
AddEventHandler('gathering:eggs', function()
    local _source = source
    if cauldron ~= 0 then
        SetEntityAsMissionEntity(cauldron)
        DeleteObject(cauldron)
        cauldron = 0
    end
    local playerPed = PlayerPedId()
    Citizen.Wait(0)
    ClearPedTasksImmediately(PlayerPedId())
    WarMenu.OpenMenu('gathering')
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_HAMMER_TABLE'), -1, true, false, false, false)
    
    local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    cauldron = prop
end)

-- Clean up cauldron object when the BACKSPACE key is pressed
Citizen.CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        Citizen.Wait(0)
        
        if whenKeyJustPressed(keys['BACKSPACE']) then
            if cauldron ~= 0 then
                SetEntityAsMissionEntity(cauldron)
                DeleteObject(cauldron)
                ClearPedTasksImmediately(PlayerPedId())
                cauldron = 0
            end
        end
    end
end)

-- Event handler for gathering eggs (server event)
RegisterNetEvent('rsgchickencoop:eggs')
AddEventHandler('rsgchickencoop:eggs', function()
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 27000, true, false, false, false)
    exports['progressBars']:startUI(27000, "Gathering...")
    Citizen.Wait(27000)
    ClearPedTasksImmediately(PlayerPedId())
end)

-- Function to check if a key is just pressed
function whenKeyJustPressed(key)
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end

-- Event handler for displaying prompts
RegisterNetEvent("rsg_chickencraft:prompt")
AddEventHandler("rsg_chickencraft:prompt", function(msg)
    SetTextScale(0.5, 0.5)
    local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", msg, Citizen.ResultAsLong())
    Citizen.InvokeNative(0xFA233F8FE190514C, str)
    Citizen.InvokeNative(0xE9990552DEC71600)
end)

-- Function to draw text on the screen
function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str, Citizen.ResultAsLong())
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
    SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
    Citizen.InvokeNative(0xADA9255D, 10)
    DisplayText(str, x, y)
end
