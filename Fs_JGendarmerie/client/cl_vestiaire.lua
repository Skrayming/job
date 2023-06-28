Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
    end
    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
    end
    if ESX.IsPlayerLoaded() then

		ESX.PlayerData = ESX.GetPlayerData()

    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

-- Function --

function applySkinSpecific(infos)
	TriggerEvent('skinchanger:getSkin', function(skin)
		local uniformObject
		if skin.sex == 0 then
			uniformObject = infos.variations.male
		else
			uniformObject = infos.variations..female
		end
		if uniformObject then
			TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
		end

		infos.onEquip()
	end)
end

-- MENU FUNCTION --

local open = false 
local mainMenu6 = RageUI.CreateMenu('', 'Vestaire')
mainMenu6.Display.Header = true 
mainMenu6.Closed = function()
  open = false
end

function Vestiairegendarmerie()
     if open then 
         open = false
         RageUI.Visible(mainMenu6, false)
         return
     else
         open = true 
         RageUI.Visible(mainMenu6, true)
         CreateThread(function()
         while open do 
            RageUI.IsVisible(mainMenu6,function() 

              
              RageUI.Separator("↓ ~y~Equipement ~s~↓")

               RageUI.Button("Prendre le : ~r~GPB Housse 1", nil,{RightLabel = "→"}, true,{
                onSelected = function()
                  AddArmourToPed(playerPed,100)
                  vgillet1()
              end
              })

            RageUI.Button("Prendre le : ~r~BPB Housse 2", nil,{RightLabel = "→"}, true,{
                onSelected = function()
                  AddArmourToPed(playerPed,100)
                  vgillet2()
              end
              })

              RageUI.Button("Prendre le : ~r~GPB Lourd", nil,{RightLabel = "→"}, true,{
                onSelected = function()
                  AddArmourToPed(playerPed,100)
                  vgillet3()
              end
              })

              RageUI.Button("Prendre le : ~r~GPB PSIG", nil,{RightLabel = "→"}, true,{
                onSelected = function()
                  AddArmourToPed(playerPed,100)
                  vgillet5()
              end
              })

              RageUI.Button("Prendre le : ~r~GHV", nil,{RightLabel = "→"}, true,{
                onSelected = function()
                  AddArmourToPed(playerPed,100)
                  vgillet6()
              end
              })

              RageUI.Separator("↓ ~y~Equipement ~s~↓")


              RageUI.Button("Prendre le : ~r~Calot", nil,{RightLabel = "→"}, true,{
                onSelected = function()
                  AddArmourToPed(playerPed,100)
                  vgilletraid()
              end
              })

              RageUI.Button("Prendre le : ~r~Casque Anti Emeute", nil,{RightLabel = "→"}, true,{
                onSelected = function()
                  AddArmourToPed(playerPed,100)
                  vgilletbac()
              end
              })

              RageUI.Button("Prendre le : ~r~Casque Moto", nil,{RightLabel = "→"}, true,{
                onSelected = function()
                  AddArmourToPed(playerPed,100)
                  vgilletnego()
              end
              })

              RageUI.Button("Prendre le : ~r~Brassard T-Shirt", nil,{RightLabel = "→"}, true,{
                onSelected = function()
                  AddArmourToPed(playerPed,100)
                  vgilletbri()
              end
              })

              RageUI.Button("Prendre le : ~r~Brassard Chaine", nil,{RightLabel = "→"}, true,{
                onSelected = function()
                  AddArmourToPed(playerPed,100)
                  vgilletjaune()
              end
              })


              -- RageUI.Button("S'équiper d'un : ~r~Sac à dos", nil,{RightLabel = "→"}, true,{
              --   onSelected = function()
              --     AddArmourToPed(playerPed,100)
              --     vsac()
              -- end
              -- })

              RageUI.Separator("↓ ~b~Tenues Civil ~s~↓")
			
              for _,infos in pairs(Config.gendarmerieCloak.clothes.specials) do
                RageUI.Button(infos.label, nil, {RightLabel = "→"}, ESX.PlayerData.job.grade >= infos.minimum_grade, {
                onSelected = function()
                     applySkinSpecific(infos)
                  end
                })	

                RageUI.Separator("↓ ~y~Tenues de service ~s~↓")
                for _,infos in pairs(Config.gendarmerieCloak.clothes.grades) do
                  RageUI.Button(infos.label, nil, {RightLabel = "→"}, ESX.PlayerData.job.grade >= infos.minimum_grade, {
                    onSelected = function()
                        applySkinSpecific(infos)
                      end
                    })

            


                  end
              end
            end)
          Wait(0)
         end
      end)
   end
end

Citizen.CreateThread(function()
  while true do
  local wait = 750
      if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    for k in pairs(Config.Position.Vestaire) do
              local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
              local pos = Config.Position.Vestaire
              local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pos[k].x, pos[k].y, pos[k].z)

              if dist <= Config.MarkerDistance then
                  wait = 0
                  DrawMarker(Config.MarkerType, pos[k].x, pos[k].y, pos[k].z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, Config.MarkerSizeLargeur, Config.MarkerSizeEpaisseur, Config.MarkerSizeHauteur, Config.MarkerColorR, Config.MarkerColorG, Config.MarkerColorB, Config.MarkerOpacite, Config.MarkerSaute, true, p19, Config.MarkerTourne)  
              end

              if dist <= 1.0 then
                  wait = 0
                  Visual.Subtitle(Config.TextVestaire, 1)
                  if IsControlJustPressed(1,51) then
                    Vestiairegendarmerie()
                  end
              end
          end
  end
  Citizen.Wait(wait)
  end
end)


function vgillet1()
  local model = GetEntityModel(GetPlayerPed(-1))

  AddArmourToPed(playerPed,100)
  SetPedArmour(playerPed, 100)
  TriggerEvent('skinchanger:getSkin', function(skin)
      if model == GetHashKey("mp_m_freemode_01") then
          clothesSkin = {
              ['bproof_1'] = 9,  ['bproof_2'] = 1
          }
      end
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
  end)
end

function vgillet2()
  local model = GetEntityModel(GetPlayerPed(-1))

  AddArmourToPed(playerPed,100)
  SetPedArmour(playerPed, 100)
  TriggerEvent('skinchanger:getSkin', function(skin)
      if model == GetHashKey("mp_m_freemode_01") then
          clothesSkin = {
              ['bproof_1'] = 9,  ['bproof_2'] = 3
          }
      end
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
  end)
end

function vgillet3()
  local model = GetEntityModel(GetPlayerPed(-1))

  AddArmourToPed(playerPed,100)
  SetPedArmour(playerPed, 100)
  TriggerEvent('skinchanger:getSkin', function(skin)
      if model == GetHashKey("mp_m_freemode_01") then
          clothesSkin = {
              ['bproof_1'] = 4,  ['bproof_2'] = 2
          }
      end
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
  end)
end

function vgillet5()
  local model = GetEntityModel(GetPlayerPed(-1))

  AddArmourToPed(playerPed,100)
  SetPedArmour(playerPed, 100)
  TriggerEvent('skinchanger:getSkin', function(skin)
      if model == GetHashKey("mp_m_freemode_01") then
          clothesSkin = {
              ['bproof_1'] = 7,  ['bproof_2'] = 2
          }
      end
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
  end)
end

function vgillet6()
  local model = GetEntityModel(GetPlayerPed(-1))

  AddArmourToPed(playerPed,100)
  SetPedArmour(playerPed, 100)
  TriggerEvent('skinchanger:getSkin', function(skin)
      if model == GetHashKey("mp_m_freemode_01") then
          clothesSkin = {
              ['bproof_1'] = 6,  ['bproof_2'] = 1
          }
      end
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
  end)
end

function vgilletraid()
  local model = GetEntityModel(GetPlayerPed(-1))

  AddArmourToPed(playerPed,100)
  SetPedArmour(playerPed, 100)
  TriggerEvent('skinchanger:getSkin', function(skin)
      if model == GetHashKey("mp_m_freemode_01") then
          clothesSkin = {
              ['helmet_1'] = 88,  ['helmet_2'] = 0
          }
      end
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
  end)
end

function vgilletbac()
  local model = GetEntityModel(GetPlayerPed(-1))

  AddArmourToPed(playerPed,100)
  SetPedArmour(playerPed, 100)
  TriggerEvent('skinchanger:getSkin', function(skin)
      if model == GetHashKey("mp_m_freemode_01") then
          clothesSkin = {
              ['helmet_1'] = 18,  ['helmet_2'] = 1
          }
      end
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
  end)
end

function vgilletnego()
  local model = GetEntityModel(GetPlayerPed(-1))

  AddArmourToPed(playerPed,100)
  SetPedArmour(playerPed, 100)
  TriggerEvent('skinchanger:getSkin', function(skin)
      if model == GetHashKey("mp_m_freemode_01") then
          clothesSkin = {
              ['helmet_1'] = 17,  ['helmet_2'] = 1
          }
      end
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
  end)
end

function vgilletbri()
  local model = GetEntityModel(GetPlayerPed(-1))

  AddArmourToPed(playerPed,100)
  SetPedArmour(playerPed, 100)
  TriggerEvent('skinchanger:getSkin', function(skin)
      if model == GetHashKey("mp_m_freemode_01") then
          clothesSkin = {
              ['tshirt_1'] = 56,  ['tshirt_2'] = 1
          }
      end
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
  end)
end

function vgilletjaune()
  local model = GetEntityModel(GetPlayerPed(-1))

  AddArmourToPed(playerPed,100)
  SetPedArmour(playerPed, 100)
  TriggerEvent('skinchanger:getSkin', function(skin)
      if model == GetHashKey("mp_m_freemode_01") then
          clothesSkin = {
              ['chain_1'] = 7,  ['chain_2'] = 2
          }
      end
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
  end)
end