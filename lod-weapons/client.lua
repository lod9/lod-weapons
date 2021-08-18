ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)
local display = false

RegisterCommand("silah", function(source, args)
    SetDisplay(not display)
end)

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end


RegisterNUICallback("pistol", function(data)
  TriggerServerEvent("lod-weapons:tabanca")
end)
-- ###########################################
RegisterNUICallback("smg", function(data)
  TriggerServerEvent("lod-weapons:hafifmakina")
end)
-- ###########################################
RegisterNUICallback("m4", function(data)
  TriggerServerEvent("lod-weapons:m4a1")
end)
-- ###########################################
RegisterNUICallback('close', function()
  SetNuiFocus(false, false)
end)