local RSGCore = exports['rsg-core']:GetCoreObject()

-- Define a table to track the last gathering time for each player
local lastGatherTime = {}

RegisterNetEvent('rsgchickencoop:eggs')
AddEventHandler('rsgchickencoop:eggs', function()
    local _source = source
    local Player = RSGCore.Functions.GetPlayer(_source)
    local giveeggs = 12 -- Replace with your desired quantity
    local gatherCooldown = 30 * 60 * 1000 -- 30 minutes in milliseconds

    local currentTime = os.time() * 1000 -- Current time in milliseconds

    -- Check if the player has gathered eggs recently
    if lastGatherTime[_source] and currentTime - lastGatherTime[_source] < gatherCooldown then
        local remainingTime = gatherCooldown - (currentTime - lastGatherTime[_source])
        local remainingMinutes = math.floor(remainingTime / (60 * 1000))
        TriggerClientEvent('RSGCore:Notify', _source, 'You must wait ' .. remainingMinutes .. ' minutes before gathering again', 'error', 4000)
        return -- Exit the event handler
    end

    TriggerClientEvent('rsgchickencoop:eggs', _source)

    Citizen.Wait(27000)

    Player.Functions.AddItem('eggs', giveeggs) -- Adjust the item name and quantity accordingly

    Citizen.Wait(200)

    TriggerClientEvent('RSGCore:Notify', _source, 'You Gathered some Eggs', 'success', 4000)

    -- Record the current time as the last gathering time for this player
    lastGatherTime[_source] = currentTime
end)
