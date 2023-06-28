TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('esx_phone:registerNumber', 'gendarmerie', 'alerte gendarmerie', true, true)

TriggerEvent('esx_society:registerSociety', 'gendarmerie', 'gendarmerie', 'society_gendarmerie', 'society_gendarmerie', 'society_gendarmerie', {type = 'public'})


-- Coffre

ESX.RegisterServerCallback('gendarmerie:playerinventory', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local items   = xPlayer.inventory
	local all_items = {}
	
	for k,v in pairs(items) do
		if v.count > 0 then
			table.insert(all_items, {label = v.label, item = v.name,nb = v.count})
		end
	end

	cb(all_items)

	
end)


ESX.RegisterServerCallback('gendarmerie:getStockItems', function(source, cb)
	local all_items = {}
	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_gendarmerie', function(inventory)
		for k,v in pairs(inventory.items) do
			if v.count > 0 then
				table.insert(all_items, {label = v.label,item = v.name, nb = v.count})
			end
		end

	end)
	cb(all_items)
end)

RegisterServerEvent('gendarmerie:putStockItems')
AddEventHandler('gendarmerie:putStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	local item_in_inventory = xPlayer.getInventoryItem(itemName).count

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_gendarmerie', function(inventory)
		if item_in_inventory >= count and count > 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
			TriggerClientEvent('esx:showNotification', xPlayer.source, "- ~g~Dépot\n~s~- ~g~Item ~s~: "..itemName.."\n~s~- ~o~Quantitée ~s~: "..count.."")
			exports['okokNotify']:Alert("Gendarmerie Nationale", "Dépot\n- ~g~Item ~s~: "..itemName.."\n~s~- ~o~Quantitée ~s~: "..count.."", 5000, 'error')
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, "~r~Vous n'en avez pas assez sur vous")
			exports['okokNotify']:Alert("Gendarmerie Nationale", "Aucun joueur à proximitée", 5000, 'error')
		end
	end)
end)

RegisterServerEvent('gendarmerie:takeStockItems')
AddEventHandler('gendarmerie:takeStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_gendarmerie', function(inventory)
			xPlayer.addInventoryItem(itemName, count)
			inventory.removeItem(itemName, count)
			TriggerClientEvent('esx:showNotification', xPlayer.source, "- ~r~Retrait\n~s~- ~g~Item ~s~: "..itemName.."\n~s~- ~o~Quantitée ~s~: "..count.."")
	end)
end)




-- Boss

RegisterServerEvent('gendarmerie:withdrawMoney')
AddEventHandler('gendarmerie:withdrawMoney', function(society, amount, money_soc)
	local xPlayer = ESX.GetPlayerFromId(source)
	local src = source
  
	TriggerEvent('esx_addonaccount:getSharedAccount', society, function(account)
	  if account.money >= tonumber(amount) then
		  xPlayer.addMoney(amount)
		  account.removeMoney(amount)
		  TriggerClientEvent("esx:showNotification", src, "- ~o~Retiré \n~s~- ~g~Somme : "..amount.."€")
	  else
		  TriggerClientEvent("esx:showNotification", src, "- ~r~L'entreprise \n~s~- ~g~Pas assez d'argent")
	  end
	end)
	  
  end)

RegisterServerEvent('gendarmerie:depositMoney')
AddEventHandler('gendarmerie:depositMoney', function(society, amount)

	local xPlayer = ESX.GetPlayerFromId(source)
	local money = xPlayer.getMoney()
	local src = source
  
	TriggerEvent('esx_addonaccount:getSharedAccount', society, function(account)
	  if money >= tonumber(amount) then
		  xPlayer.removeMoney(amount)
		  account.addMoney(amount)
		  TriggerClientEvent("esx:showNotification", src, "- ~o~Déposé \n~s~- ~g~Somme : "..amount.."€")
	  else
		  TriggerClientEvent("esx:showNotification", src, "- ~r~Erreur \n~s~- ~g~Pas assez d'argent")
	  end
	end)
	
end)

ESX.RegisterServerCallback('gendarmerie:getSocietyMoney', function(source, cb, soc)
	local money = nil
		MySQL.Async.fetchAll('SELECT * FROM addon_account_data WHERE account_name = @society ', {
			['@society'] = soc,
		}, function(data)
			for _,v in pairs(data) do
				money = v.money
			end
			cb(money)
		end)
end)

--- Prise de service

function sendToDiscordWithSpecialURL(name,message,color,url)
    local DiscordWebHook = url
	local embeds = {
		{
			["title"]=message,
			["type"]="rich",
			["color"] =color,
			["footer"]=  {
			["text"]= "Aurezia gendarmerie",
			},
		}
	}
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(ConfigWebhookRendezVousgendarmerie, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

RegisterNetEvent('gendarmerie:prisedeservice')
AddEventHandler('gendarmerie:prisedeservice', function()
	local _src = source
	local xPlayer = ESX.GetPlayerFromId(_src)
	sendToDiscordWithSpecialURL("Prise de service",xPlayer.getName().." à prise son service", 16744192, ConfigWebhookRendezVousgendarmerie)
end)

RegisterNetEvent('gendarmerie:quitteleservice')
AddEventHandler('gendarmerie:quitteleservice', function()
	local _src = source
	local xPlayer = ESX.GetPlayerFromId(_src)
	sendToDiscordWithSpecialURL("Fin de service",xPlayer.getName().." à quitter son service", 16744192, ConfigWebhookRendezVousgendarmerie)
end)

--- Accueil

local function sendToDiscordWithSpecialURL(Color, Title, Description)
	local Content = {
	        {
	            ["color"] = Color,
	            ["title"] = Title,
	            ["description"] = Description,
		        ["footer"] = {
	            ["text"] = "Gendarmerie",
	            ["icon_url"] = nil,
	            },
	        }
	    }
	PerformHttpRequest(ConfigWebhookRendezVousgendarmerie, function(err, text, headers) end, 'POST', json.encode({username = Name, embeds = Content}), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent("Rdv:gendarmerieMotif")
AddEventHandler("Rdv:gendarmerieMotif", function(nomprenom, numero, heurerdv, rdvmotif)
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local ident = xPlayer.getIdentifier()
	local date = os.date('*t')

	if date.day < 10 then date.day = '' .. tostring(date.day) end
	if date.month < 10 then date.month = '' .. tostring(date.month) end
	if date.hour < 10 then date.hour = '' .. tostring(date.hour) end
	if date.min < 10 then date.min = '' .. tostring(date.min) end
	if date.sec < 10 then date.sec = '' .. tostring(date.sec) end

	if ident == 'steam:11' then--Special character in username just crash the server
	else 
		sendToDiscordWithSpecialURL(16744192, "Nouveau Rendez-Vous\n\n```Nom : "..nomprenom.."\n\nNuméro de Téléphone: "..numero.."\n\nHeure du Rendez Vous : " ..heurerdv.."\n\nMotif du Rendez-vous : " ..rdvmotif.. "\n\n```Date : " .. date.day .. "." .. date.month .. "." .. date.year .. " | " .. date.hour .. " h " .. date.min .. " min " .. date.sec)
	end
end)

RegisterServerEvent('Appel:gendarmerie')
AddEventHandler('Appel:gendarmerie', function()
    
	local xPlayers = ESX.GetPlayers()
	for i = 1, #xPlayers, 1 do
		local thePlayer = ESX.GetPlayerFromId(xPlayers[i])
		if thePlayer.job.name == 'gendarmerie' then
		-- TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'gendarmerie', '~r~Accueil', 'Un gendarme est appelé à l\'accueil !', 'CHAR_MICHAEL', 8)
		TriggerClientEvent('okokNotify:Alert', xPlayers[i], "Gendarmerie Nationale", "Un Agent est appelé à l\'accueil !", 5000, 'info')
        end
    end
end)

-- Infos gendarmerie

RegisterServerEvent('gendarmerie:PriseEtFinservice')
AddEventHandler('gendarmerie:PriseEtFinservice', function(PriseOuFin)
	local _source = source
	local _raison = PriseOuFin
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()
	local name = xPlayer.getName(_source)

	for i = 1, #xPlayers, 1 do
		local thePlayer = ESX.GetPlayerFromId(xPlayers[i])
		if thePlayer.job.name == 'gendarmerie' then
			TriggerClientEvent('gendarmerie:InfoService', xPlayers[i], _raison, name)
		end
	end
end)

-- Renfort

RegisterServerEvent('renfort')
AddEventHandler('renfort', function(coords, raison)
	local _source = source
	local _raison = raison
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()

	for i = 1, #xPlayers, 1 do
		local thePlayer = ESX.GetPlayerFromId(xPlayers[i])
		if thePlayer.job.name == 'gendarmerie' then
			TriggerClientEvent('renfort:setBlip', xPlayers[i], coords, _raison)
		end
	end
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---- FOUILLE ----
-----------------

RegisterNetEvent('gendarmerie:confiscatePlayerItem')
AddEventHandler('gendarmerie:confiscatePlayerItem', function(target, itemType, itemName, amount)
    local _source = source
    local sourceXPlayer = ESX.GetPlayerFromId(_source)
    local targetXPlayer = ESX.GetPlayerFromId(target)

    if itemType == 'item_standard' then
        local targetItem = targetXPlayer.getInventoryItem(itemName)
		local sourceItem = sourceXPlayer.getInventoryItem(itemName)
		
			targetXPlayer.removeInventoryItem(itemName, amount)
			sourceXPlayer.addInventoryItem(itemName, amount)
			TriggerClientEvent('okokNotify:Alert', source, "Gendarmerie Nationale", "Vous avez volé "..amount..' '..sourceItem.label..".", 5000, 'info')
			TriggerClientEvent('okokNotify:Alert', source, "Gendarmerie Nationale", "Il t'a été volé "..amount..' '..sourceItem.label.."~s~.", 5000, 'info')
        else
			--TriggerClientEvent("esx:showNotification", source, "~r~quantité invalide")
		end
        
    if itemType == 'item_account' then
        targetXPlayer.removeAccountMoney(itemName, amount)
        sourceXPlayer.addAccountMoney   (itemName, amount)
        
        TriggerClientEvent("esx:showNotification", source, "Vous avez volé "..amount.."€ ~s~Argent sale~s~.")
        TriggerClientEvent("esx:showNotification", target, "Il t'a été volé "..amount.."€ ~s~Argent sale~s~.")        
    elseif itemType == 'item_weapon' then
        if amount == nil then amount = 0 end
        targetXPlayer.removeWeapon(itemName, amount)
        sourceXPlayer.addWeapon   (itemName, amount)

        TriggerClientEvent("esx:showNotification", source, "Vous avez volé ~b~"..ESX.GetWeaponLabel(itemName).."~s~ avec ~b~"..amount.."~s~ munitions.")
        TriggerClientEvent("esx:showNotification", target, "Il t'a été volé ~b~"..ESX.GetWeaponLabel(itemName).."~s~ avec ~b~"..amount.."~s~ munitions.")
    end
end)


ESX.RegisterServerCallback('gendarmerie:getOtherPlayerData', function(source, cb, target, notify)
    local xPlayer = ESX.GetPlayerFromId(target)

    TriggerClientEvent("esx:showNotification", target, "~r~Tu es fouillé...")

    if xPlayer then
        local data = {
            name = xPlayer.getName(),
            job = xPlayer.job.label,
            grade = xPlayer.job.grade_label,
            inventory = xPlayer.getInventory(),
            accounts = xPlayer.getAccounts(),
            weapons = xPlayer.getLoadout()
        }

        cb(data)
    end
end)

--- Menotter

RegisterServerEvent('gendarmerie:handcuff')
AddEventHandler('gendarmerie:handcuff', function(target)
  TriggerClientEvent('gendarmerie:handcuff', target)
end)

RegisterServerEvent('gendarmerie:drag')
AddEventHandler('gendarmerie:drag', function(target)
  local _source = source
  TriggerClientEvent('gendarmerie:drag', target, _source)
end)

RegisterServerEvent('gendarmerie:putInVehicle')
AddEventHandler('gendarmerie:putInVehicle', function(target)
  TriggerClientEvent('gendarmerie:putInVehicle', target)
end)

RegisterServerEvent('gendarmerie:OutVehicle')
AddEventHandler('gendarmerie:OutVehicle', function(target)
    TriggerClientEvent('gendarmerie:OutVehicle', target)
end)

-- Ppa

RegisterNetEvent('donner:ppa')
AddEventHandler('donner:ppa', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 2500
    local xMoney = xPlayer.getMoney()
	local societyAccount

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_gendarmerie', function(account)
        societyAccount = account
	end)


            if price < societyAccount.money then

					societyAccount.removeMoney(price)

    else
        TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent dans votre société")
end
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---- FOUILLE ----
-----------------

ESX.RegisterServerCallback('gendarmerie:getOtherPlayerData', function(source, cb, target)
	local xPlayer = ESX.GetPlayerFromId(target)

	TriggerClientEvent("esx:showAdvancedNotification", target, "Vous êtes en train de vous faire fouiller.", 5000, "danger")

	if xPlayer then
		local data = {
			inventory = xPlayer.getInventory(),
			accounts = xPlayer.getAccounts(),
			weapons = xPlayer.getLoadout()
		}

		cb(data)
	end
end)


RegisterNetEvent('gendarmerie:confiscatePlayerItem')
AddEventHandler('gendarmerie:confiscatePlayerItem', function(target, itemType, itemName, amount)
	local _source = source
	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)

	if itemType == 'item_standard' then
		local targetItem = targetXPlayer.getInventoryItem(itemName)
		local sourceItem = sourceXPlayer.getInventoryItem(itemName)

		if targetItem.count > 0 and targetItem.count <= amount then

			targetXPlayer.removeInventoryItem(itemName, amount)
			sourceXPlayer.addInventoryItem(itemName, amount)
		end

	elseif itemType == 'item_account' then
		targetXPlayer.removeAccountMoney(itemName, amount)
		sourceXPlayer.addAccountMoney(itemName, amount)

	elseif itemType == 'item_weapon' then
		if amount == nil then amount = 0 end
		targetXPlayer.removeWeapon(itemName, amount)
		sourceXPlayer.addWeapon(itemName, amount)

	end
	--TriggerEvent('Logger:SendToDiscordIfPossible', 'gendarmerie-confiscate', false, 0, GetPlayerName(source), itemName, amount, GetPlayerName(target));

end)


-- équipement

RegisterNetEvent('equipementrecrue')
AddEventHandler('equipementrecrue', function()
local _source = source
local xPlayer = ESX.GetPlayerFromId(source)
local identifier
	local steam
	local playerId = source
	local PcName = GetPlayerName(playerId)
	for k,v in ipairs(GetPlayerIdentifiers(playerId)) do
		if string.match(v, 'license:') then
			identifier = string.sub(v, 9)
			break
		end
	end
	for k,v in ipairs(GetPlayerIdentifiers(playerId)) do
		if string.match(v, 'steam:') then
			steam = string.sub(v, 7)
			break
		end
	end

xPlayer.addWeapon('weapon_flashlight', 42)
xPlayer.addWeapon('weapon_stungun', 42)
xPlayer.addWeapon('WEAPON_NIGHTSTICK', 42)
TriggerClientEvent('esx:showNotification', source, "Vous avez reçu votre ~b~équipement de recrue")
end)


RegisterNetEvent('equipementofficer')
AddEventHandler('equipementofficer', function()
local _source = source
local xPlayer = ESX.GetPlayerFromId(source)
local identifier
	local steam
	local playerId = source
	local PcName = GetPlayerName(playerId)
	for k,v in ipairs(GetPlayerIdentifiers(playerId)) do
		if string.match(v, 'license:') then
			identifier = string.sub(v, 9)
			break
		end
	end
	for k,v in ipairs(GetPlayerIdentifiers(playerId)) do
		if string.match(v, 'steam:') then
			steam = string.sub(v, 7)
			break
		end
	end

xPlayer.addWeapon('WEAPON_PISTOL', 42)
xPlayer.addWeapon('WEAPON_NIGHTSTICK', 42)
xPlayer.addWeapon('WEAPON_STUNGUN', 42)
xPlayer.addWeapon('WEAPON_FLASHLIGHT', 42)
TriggerClientEvent('esx:showNotification', source, "Vous avez reçu votre ~b~équipement de officer")
end)


RegisterNetEvent('equipementsergeant')
AddEventHandler('equipementsergeant', function()
local _source = source
local xPlayer = ESX.GetPlayerFromId(source)
local identifier
	local steam
	local playerId = source
	local PcName = GetPlayerName(playerId)
	for k,v in ipairs(GetPlayerIdentifiers(playerId)) do
		if string.match(v, 'license:') then
			identifier = string.sub(v, 9)
			break
		end
	end
	for k,v in ipairs(GetPlayerIdentifiers(playerId)) do
		if string.match(v, 'steam:') then
			steam = string.sub(v, 7)
			break
		end
	end

xPlayer.addWeapon('WEAPON_PISTOL', 42)
xPlayer.addWeapon('WEAPON_SMG', 42)
xPlayer.addWeapon('WEAPON_BZGAS', 5)
xPlayer.addWeapon('WEAPON_NIGHTSTICK', 42)
xPlayer.addWeapon('WEAPON_STUNGUN', 42)
xPlayer.addWeapon('WEAPON_FLASHLIGHT', 42)
TriggerClientEvent('esx:showNotification', source, "Vous avez reçu votre ~b~équipement de officer")
end)

RegisterNetEvent('equipementlieutenant')
AddEventHandler('equipementlieutenant', function()
local _source = source
local xPlayer = ESX.GetPlayerFromId(source)
local identifier
	local steam
	local playerId = source
	local PcName = GetPlayerName(playerId)
	for k,v in ipairs(GetPlayerIdentifiers(playerId)) do
		if string.match(v, 'license:') then
			identifier = string.sub(v, 9)
			break
		end
	end
	for k,v in ipairs(GetPlayerIdentifiers(playerId)) do
		if string.match(v, 'steam:') then
			steam = string.sub(v, 7)
			break
		end
	end

xPlayer.addWeapon('weapon_carbinerifle', 42)
xPlayer.addWeapon('WEAPON_BZGAS', 5)
xPlayer.addWeapon('WEAPON_NIGHTSTICK', 42)
xPlayer.addWeapon('WEAPON_STUNGUN', 42)
xPlayer.addWeapon('WEAPON_FLASHLIGHT', 42)
TriggerClientEvent('esx:showNotification', source, "Vous avez reçu votre ~b~équipement de officer")
end)


RegisterNetEvent('equipementboss')
AddEventHandler('equipementboss', function()
local _source = source
local xPlayer = ESX.GetPlayerFromId(source)
local identifier
	local steam
	local playerId = source
	local PcName = GetPlayerName(playerId)
	for k,v in ipairs(GetPlayerIdentifiers(playerId)) do
		if string.match(v, 'license:') then
			identifier = string.sub(v, 9)
			break
		end
	end
	for k,v in ipairs(GetPlayerIdentifiers(playerId)) do
		if string.match(v, 'steam:') then
			steam = string.sub(v, 7)
			break
		end
	end

xPlayer.addWeapon('weapon_carbinerifle', 42)
xPlayer.addWeapon('weapon_pumpshotgun', 42)
xPlayer.addWeapon('WEAPON_BZGAS', 5)
xPlayer.addWeapon('WEAPON_NIGHTSTICK', 42)
xPlayer.addWeapon('WEAPON_STUNGUN', 42)
xPlayer.addWeapon('WEAPON_FLASHLIGHT', 42)
TriggerClientEvent('esx:showNotification', source, "Vous avez reçu votre ~b~équipement de officer")
end)


-- Plaque

ESX.RegisterServerCallback('gendarmerie:getVehicleInfos', function(source, cb, plate)

	MySQL.Async.fetchAll('SELECT owner, vehicle FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function(result)

		local retrivedInfo = {
			plate = plate
		}

		if result[1] then
			MySQL.Async.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = @identifier',  {
				['@identifier'] = result[1].owner
			}, function(result2)

				retrivedInfo.owner = result2[1].firstname .. ' ' .. result2[1].lastname

				retrivedInfo.vehicle = json.decode(result[1].vehicle)

				cb(retrivedInfo)

			end)
		else
			cb(retrivedInfo)
		end
	end)
end)

-- Facture

RegisterNetEvent("gendarmerie:SendFacture")
AddEventHandler("gendarmerie:SendFacture", function(target, price)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name ~= 'gendarmerie' or xPlayer.job.name == "fratsecu" or xPlayer.job.name == "gardien"  or xPlayer.job.name == "gouvernement"  or xPlayer.job.name == "gouvernement2" then
		TriggerEvent("AC:Violations", 24, "Event: gendarmerie:SendFacture job: "..xPlayer.job.name, source)
		return
	end

	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_gouvernement', function(account)
        if account ~= nil then
			societyAccount = account
			local xPlayer = ESX.GetPlayerFromId(target)
			xPlayer.removeAccountMoney('bank', price)
			societyAccount.addMoney(price)
			TriggerClientEvent("esx:showNotification", target, "Votre compte en banque à été réduit de ~r~"..price.."e~s~.", 5000, "danger")
			TriggerClientEvent("esx:showNotification", source, "Vous avez donné une amende de ~r~"..price.."~s~e", 5000, "danger")
		end
	end)
end)