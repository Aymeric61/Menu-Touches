ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(50)
	end
end)

----------------------------------- Création du menu ----------------------------

RMenu.Add('touches', 'main', RageUI.CreateMenu("~m~Touches", "~p~Touches du serveur"))

Citizen.CreateThread(function()
    while true do 
        RageUI.IsVisible(RMenu:Get('touches', 'main'), true, true, true, function()

            RageUI.ButtonWithStyle("~b~Téléphone", "F1 est la touche du Portable", {RightLabel = "~r~F1"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Menu Emote", "F3 est la touche de l'emote", {RightLabel = "~r~F3"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Menu F5", "F5 est la Touche du Menu Inventaire", {RightLabel = "~r~F5"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Menu Interaction Jobs", "F6 est la Touche du Menu Interaction Job", {RightLabel = "~r~F6"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Menu Interaction Gang", "F6 est la Touche du Menu Interaction Gang", {RightLabel = "~r~F7"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Radio", "F10 est la Touche de la Radio", {RightLabel = "~r~F10"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Menu Touches du Serveur", "F11 est la Touche du menu Touche", {RightLabel = "~r~F11"}, true, function(Hovered, Active, Selected)
            end)
        end, function()
        end)
        Citizen.Wait(0)
    end
end)

----------------------------------- Open menu ----------------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1,344) then 
            RageUI.Visible(RMenu:Get('touches', 'main'), not RageUI.Visible(RMenu:Get('touches', 'main')))
        end
    end
end)