  
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
--################################################################
RegisterNetEvent("lod-weapons:tabanca")
AddEventHandler("lod-weapons:tabanca", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.canCarryItem("weapon_pistol", 1) then --item ismi girebilirsiniz :) 
        xPlayer.addInventoryItem("weapon_pistol", 1) --item ismi girebilirsiniz :) 
    else
        TriggerClientEvent('esx:showNotification', source, 'Kuşanıldı')

    end
end)
--################################################################
RegisterNetEvent("lod-weapons:hafifmakina")
AddEventHandler("lod-weapons:hafifmakina", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.canCarryItem("weapon_smg", 1) then --item ismi girebilirsiniz :) 
        xPlayer.addInventoryItem("weapon_smg", 1) --item ismi girebilirsiniz :) 
    else
        TriggerClientEvent('esx:showNotification', source, 'Kuşanıldı')
    end
end)
--################################################################
RegisterNetEvent("lod-weapons:m4a1")
AddEventHandler("lod-weapons:m4a1", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.canCarryItem("weapon_assaultsmg", 1) then --item ismi girebilirsiniz :) 
        xPlayer.addInventoryItem("weapon_assaultsmg", 1)  --item ismi girebilirsiniz :) 
    else
        TriggerClientEvent('esx:showNotification', source, 'Kuşanıldı')
    end
end)


