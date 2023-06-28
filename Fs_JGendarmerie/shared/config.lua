ConfigWebhookRendezVousgendarmerie = "https://discord.com/api/webhooks/929428974134775811/lekeqtWveo2Bn8TL5aYUfByleBaajMuV9rh_yGStdwIF58OWdfwpLFcjFI07tuK7w5fB" -- Metez le webhook de votre salon disocrd configure pour le job ems 


Config = {

     MarkerType = 22, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
     MarkerSizeLargeur = 0.3, -- Largeur du marker
     MarkerSizeEpaisseur = 0.3, -- Épaisseur du marker
     MarkerSizeHauteur = 0.3, -- Hauteur du marker
     MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
     MarkerColorR = 69, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
     MarkerColorG = 112, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
     MarkerColorB = 246, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
     MarkerOpacite = 180, -- Opacité du marker (min: 0, max: 255)
     MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
     MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)

    --  TextCoffre = "Appuyez sur ~b~[E] ~s~pour accèder au ~b~coffre ~s~!",  -- Text Menu coffre
     TextVestaire = "Appuyez sur ~b~[E] ~s~pour pour accèder au ~b~vestaire ~s~!", -- Text Menu Vestaire
    --  TextBoss = "Appuyez sur ~b~[E] ~s~pour pour accèder au ~b~action patron ~s~!",  -- Text Menu Boss
     TextGarageVehicule = "Appuyez sur ~b~[E] ~s~pour accèder au ~b~garage ~s~!",  -- Text Garage Voiture
     TextGarageHeli = "Appuyez sur ~b~[E] ~s~pour accèder au ~b~garage ~s~!",  -- Text Garage Hélico
     TextAccueil = "Appuyez sur ~b~[E] ~s~pour parler à l'accueil ~s~!",  -- Text Ascenseur
	

 Vehiculesgendarmerie = { 
    {buttoname = "↓ ~y~Gendarmerie ~s~↓", rightlabel = "→", spawnname = "", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},     
 	{buttoname = "Renault Kangoo", rightlabel = "→", spawnname = "kangoogn", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Peugeot Expert", rightlabel = "→", spawnname = "expertgend", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
 	{buttoname = "Volkswagen e-Golf", rightlabel = "→", spawnname = "egolfgn", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
 	{buttoname = "Peugeot Expert 2017", rightlabel = "→", spawnname = "expertgn", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
 	{buttoname = "Ford Focus 3", rightlabel = "→", spawnname = "focus3gn", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
 	{buttoname = "Peugeot Partner", rightlabel = "→", spawnname = "partnergend", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Peugeot Partner 2", rightlabel = "→", spawnname = "partner3gn1", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},         
 	{buttoname = "Peugeot Rifter", rightlabel = "→", spawnname = "rifter", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
 	{buttoname = "Skoda Kodiaq", rightlabel = "→", spawnname = "kodiaqgn", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
 	{buttoname = "Renault Megane 4", rightlabel = "→", spawnname = "megane4gend", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
 	{buttoname = "Renault Megane 3", rightlabel = "→", spawnname = "megane3gn", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
 	{buttoname = "Ford Ranger", rightlabel = "→", spawnname = "rangergn", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
 	{buttoname = "↓ ~y~Edsr ~s~↓", rightlabel = "", spawnname = "", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Renault Megane 4 RS", rightlabel = "→", spawnname = "megpolvir", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Megane RS", rightlabel = "→", spawnname = "policeold2", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Alpine A110", rightlabel = "→", spawnname = "al1", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Mitsubishi Evo X", rightlabel = "→", spawnname = "mitsubishi", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "BMW 1200RT", rightlabel = "→", spawnname = "1200rtgn", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Yamaha Tracer", rightlabel = "→", spawnname = "tracergend", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "↓ ~y~Psig ~s~↓", rightlabel = "", spawnname = "", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},      
    {buttoname = "Citroën C4", rightlabel = "→", spawnname = "c4bana", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Volkswagen t6", rightlabel = "→", spawnname = "t6ban", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Renault Megane 4 Banalisé", rightlabel = "→", spawnname = "megane4estate", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Titus Blindé", rightlabel = "→", spawnname = "tituspsig", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Volkswagen Passat", rightlabel = "→", spawnname = "passatnonels", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Volkswagen Sharan 2", rightlabel = "→", spawnname = "sharan2gn", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Renault Megane 3 Banalisé", rightlabel = "→", spawnname = "megane3bana", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Peugeot 308 2022 Banalisé", rightlabel = "→", spawnname = "3082022bana", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Audi Q8", rightlabel = "→", spawnname = "q8ban", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "↓ ~y~Gmo ~s~↓", rightlabel = "", spawnname = "", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Renault TRM10000", rightlabel = "→", spawnname = "drap", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Berliet VXB 170", rightlabel = "→", spawnname = "vbrg", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Iveco Daily", rightlabel = "→", spawnname = "ivecogn", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Renault Master", rightlabel = "→", spawnname = "mastergend", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "↓ ~y~S R ~s~↓", rightlabel = "", spawnname = "", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Renault Master Banalisé", rightlabel = "→", spawnname = "masterbana", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Peugeot 5008", rightlabel = "→", spawnname = "5008bana", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "↓ ~y~Gign~s~↓", rightlabel = "", spawnname = "", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Volkswagen t6", rightlabel = "→", spawnname = "t6ban", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Pvp gign", rightlabel = "→", spawnname = "pvpgign", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
    {buttoname = "Renault Master Banalisé", rightlabel = "→", spawnname = "masterbana", spawnzone = vector3(1869.9798583984, 3709.5456542969, 33.94310760498), headingspawn = 209.4506988525391},
 },

Helicogendarmerie = { 
 	{buttonameheli = "Hélicoptère", rightlabel = "→", spawnnameheli = "polmav", spawnzoneheli = vector3(1863.7127685547, 3649.1218261719, 35.641635894775), headingspawnheli = 11.93577194213867}, -- Garage Hélico
 },

gendarmerieCloak = {
    clothes = {
        specials = {
                [0] = {
                    label = "Reprendre sa tenue : ~y~Civile",
                    minimum_grade = 0,
                    variations = {male = {}, female = {}},
                    onEquip = function()
                        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin) TriggerEvent('skinchanger:loadSkin', skin) end)
                        SetPedArmour(PlayerPedId(), 0)
                    end
                },
                  [1] = {
                    minimum_grade = 0,
                    label = "Prendre Tenue : ~b~EDSR Moto",
                    variations = {
                    male = {
                        ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
                        ['torso_1'] = 151,   ['torso_2'] = 2,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 42,
                        ['pants_1'] = 5,   ['pants_2'] = 1,
                        ['shoes_1'] = 25,   ['shoes_2'] = 0,
                        ['helmet_1'] = -1,  ['helmet_2'] = 0,
                        ['chain_1'] = 3,    ['chain_2'] = 0,
                        ['mask_1'] = -1,  ['mask_2'] = 0,
                        ['bproof_1'] = 0,  ['bproof_2'] = 0,
                        ['ears_1'] = 2,     ['ears_2'] = 0,
                   },
                },
                onEquip = function()  
                end
                }
            },
            grades = {
                [2] = {
                    label = "Prendre Tenue : ~b~Pull GN",
                    minimum_grade = 0,
                    variations = {
                    male = {
                        ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
                        ['torso_1'] = 92,   ['torso_2'] = 0,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 42,
                        ['pants_1'] = 46,   ['pants_2'] = 0,
                        ['shoes_1'] = 25,   ['shoes_2'] = 0,
                        ['helmet_1'] = -1,  ['helmet_2'] = 0,
                        ['chain_1'] = 3,    ['chain_2'] = 0,
                        ['mask_1'] = -1,  ['mask_2'] = 0,
                        ['bproof_1'] = 0,  ['bproof_2'] = 0,
                        ['ears_1'] = 2,     ['ears_2'] = 0,
                    }
                },
                onEquip = function()
                end
            },
                [1] = {
                    minimum_grade = 0,
                    label = "Prendre Tenue : ~b~Tee-Shirt + Pull",
                    variations = {
                    male = {
                       ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
                       ['torso_1'] = 108,   ['torso_2'] = 0,
                       ['decals_1'] = 0,   ['decals_2'] = 0,
                       ['arms'] = 41,
                       ['pants_1'] = 46,   ['pants_2'] = 0,
                       ['shoes_1'] = 25,   ['shoes_2'] = 0,
                       ['helmet_1'] = -1,  ['helmet_2'] = 0,
                       ['chain_1'] = 3,    ['chain_2'] = 0,
                       ['mask_1'] = -1,  ['mask_2'] = 0,
                       ['bproof_1'] = 0,  ['bproof_2'] = 0,
                       ['ears_1'] = 0,     ['ears_2'] = 0,
                    }
               },
                onEquip = function()
                end
            },

            [4] = {
                minimum_grade = 0,
                label = "Prendre Tenue : ~b~Polo GAV",
                variations = {
                male = {
                    ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
                    ['torso_1'] = 9,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 41,
                    ['pants_1'] = 46,   ['pants_2'] = 0,
                    ['shoes_1'] = 25,   ['shoes_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['chain_1'] = 3,    ['chain_2'] = 0,
                    ['mask_1'] = -1,  ['mask_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                    ['ears_1'] = 0,     ['ears_2'] = 0,
                },
                female = {
                   ['tshirt_1'] = 1,  ['tshirt_2'] = 0,
                   ['torso_1'] = 2,   ['torso_2'] = 0,
                   ['decals_1'] = 0,   ['decals_2'] = 0,
                   ['arms'] = 57,
                   ['pants_1'] = 30,   ['pants_2'] = 0,
                   ['shoes_1'] = 25,   ['shoes_2'] = 0,
                   ['helmet_1'] = -1,  ['helmet_2'] = 0,
                   ['chain_1'] = 0,    ['chain_2'] = 0,
                   ['mask_1'] = -1,  ['mask_2'] = 0,
                   ['bproof_1'] = 0,  ['bproof_2'] = 0,
                   ['ears_1'] = 0,     ['ears_2'] = 0,
                }
           },
            onEquip = function()
            end
        }, 

        [5] = {
            minimum_grade = 0,
            label = "Prendre Tenue : ~b~Polo MDL",
            variations = {
                male = {
                    ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
                    ['torso_1'] = 9,   ['torso_2'] = 14,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 41,
                    ['pants_1'] = 46,   ['pants_2'] = 0,
                    ['shoes_1'] = 25,   ['shoes_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['chain_1'] = 3,    ['chain_2'] = 0,
                    ['mask_1'] = -1,  ['mask_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                    ['ears_1'] = 0,     ['ears_2'] = 0,
                 }
       },
        onEquip = function()
        end
    }, 

    [6] = {
        minimum_grade = 0,
        label = "Prendre Tenue : ~b~Polo GND",
        variations = {
            male = {
                ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
                ['torso_1'] = 9,   ['torso_2'] = 12,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 41,
                ['pants_1'] = 46,   ['pants_2'] = 0,
                ['shoes_1'] = 25,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 3,    ['chain_2'] = 0,
                ['mask_1'] = -1,  ['mask_2'] = 0,
                ['bproof_1'] = 0,  ['bproof_2'] = 0,
                ['ears_1'] = 0,     ['ears_2'] = 0,
             }
   },
    onEquip = function()
    end
}, 

[7] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo MDC",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 9,   ['torso_2'] = 13,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},

[8] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~polo ADJ",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 9,   ['torso_2'] = 1,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},

[9] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo ADC",
    variations = {
    male = {
        ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
        ['torso_1'] = 9,   ['torso_2'] = 2,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 41,
        ['pants_1'] = 46,   ['pants_2'] = 0,
        ['shoes_1'] = 25,   ['shoes_2'] = 0,
        ['helmet_1'] = -1,  ['helmet_2'] = 0,
        ['chain_1'] = 3,    ['chain_2'] = 0,
        ['mask_1'] = -1,  ['mask_2'] = 0,
        ['bproof_1'] = 0,  ['bproof_2'] = 0,
        ['ears_1'] = 0,     ['ears_2'] = 0,
     }
},
onEquip = function()
end
},

[10] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo MAJOR",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 9,   ['torso_2'] = 11,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},


[11] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo S/LTN",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 9,   ['torso_2'] = 15,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},
[12] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo LTN",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 9,   ['torso_2'] = 10,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},
[14] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo CPT",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 9,   ['torso_2'] = 5,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},
[15] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo CMD",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 9,   ['torso_2'] = 7,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},
[16] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo LTN-COL",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 9,   ['torso_2'] = 9,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},

[17] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo COL",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 9,   ['torso_2'] = 6,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},

           [18] = {
                minimum_grade = 0,
                label = "Prendre Tenue : ~b~Polo Long GAV",
                variations = {
                male = {
                    ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
                    ['torso_1'] = 14,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 41,
                    ['pants_1'] = 46,   ['pants_2'] = 0,
                    ['shoes_1'] = 25,   ['shoes_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['chain_1'] = 3,    ['chain_2'] = 0,
                    ['mask_1'] = -1,  ['mask_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                    ['ears_1'] = 0,     ['ears_2'] = 0,
                 }
           },
            onEquip = function()
            end
        }, 

        [19] = {
            minimum_grade = 0,
            label = "Prendre Tenue : ~b~Polo Long MDL",
            variations = {
                male = {
                    ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
                    ['torso_1'] = 14,   ['torso_2'] = 1,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 41,
                    ['pants_1'] = 46,   ['pants_2'] = 0,
                    ['shoes_1'] = 25,   ['shoes_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['chain_1'] = 3,    ['chain_2'] = 0,
                    ['mask_1'] = -1,  ['mask_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                    ['ears_1'] = 0,     ['ears_2'] = 0,
                 }
       },
        onEquip = function()
        end
    }, 

    [20] = {
        minimum_grade = 0,
        label = "Prendre Tenue : ~b~Polo Long GND",
        variations = {
            male = {
                ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
                ['torso_1'] = 14,   ['torso_2'] = 5,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 41,
                ['pants_1'] = 46,   ['pants_2'] = 0,
                ['shoes_1'] = 25,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 3,    ['chain_2'] = 0,
                ['mask_1'] = -1,  ['mask_2'] = 0,
                ['bproof_1'] = 0,  ['bproof_2'] = 0,
                ['ears_1'] = 0,     ['ears_2'] = 0,
             }
   },
    onEquip = function()
    end
}, 

[21] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo long MDC",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 14,   ['torso_2'] = 14,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},

[22] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~polo Long ADJ",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 14,   ['torso_2'] = 3,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},

[23] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo Long ADC",
    variations = {
    male = {
        ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
        ['torso_1'] = 14,   ['torso_2'] = 2,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 41,
        ['pants_1'] = 46,   ['pants_2'] = 0,
        ['shoes_1'] = 25,   ['shoes_2'] = 0,
        ['helmet_1'] = -1,  ['helmet_2'] = 0,
        ['chain_1'] = 3,    ['chain_2'] = 0,
        ['mask_1'] = -1,  ['mask_2'] = 0,
        ['bproof_1'] = 0,  ['bproof_2'] = 0,
        ['ears_1'] = 0,     ['ears_2'] = 0,
     }
},
onEquip = function()
end
},

[24] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo Long MAJOR",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 14,   ['torso_2'] = 12,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},

[25] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo Long LTN",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 14,   ['torso_2'] = 11,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},
[26] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo Long CPT",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 14,   ['torso_2'] = 6,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},
[27] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo long CMD",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 14,   ['torso_2'] = 8,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},
[28] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo Long LTN-COL",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 14,   ['torso_2'] = 10,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},

[29] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo Long COL",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 14,   ['torso_2'] = 7,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},

[30] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo PSIG",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 94,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 4,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},

[31] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Polo Long Psig",
    variations = {
        male = {
            ['tshirt_1'] = 105,  ['tshirt_2'] = 0,
            ['torso_1'] = 96,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 42,
            ['pants_1'] = 46,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
},
onEquip = function()
end
},

[0] = {
    minimum_grade = 0,
    label = "Prendre Tenue : ~b~Femme",
    variations = {
        female = {
            ['tshirt_1'] = 1,  ['tshirt_2'] = 0,
            ['torso_1'] = 2,   ['torso_2'] = 1,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 57,
            ['pants_1'] = 30,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
         }
    },
     onEquip = function()
     end
 }, 


},
        [21] = {
           minimum_grade = 0,
           label = "Tenue Comissaire",
           variations = {
           male = {
               tshirt_1 = 58,  tshirt_2 = 0,
               torso_1 = 55,   torso_2 = 0,
               decals_1 = 8,   decals_2 = 3,
               arms = 41,
               pants_1 = 25,   pants_2 = 0,
               shoes_1 = 25,   shoes_2 = 0,
               helmet_1 = -1,  helmet_2 = 0,
               chain_1 = 0,    chain_2 = 0,
               ears_1 = 2,     ears_2 = 0
           },
           female = {
               tshirt_1 = 35,  tshirt_2 = 0,
               torso_1 = 48,   torso_2 = 0,
               decals_1 = 7,   decals_2 = 3,
               arms = 44,
               pants_1 = 34,   pants_2 = 0,
               shoes_1 = 27,   shoes_2 = 0,
               helmet_1 = -1,  helmet_2 = 0,
               chain_1 = 0,    chain_2 = 0,
               ears_1 = 2,     ears_2 = 0
          }
      },
       onEquip = function()
       end
      },
    }
},


Position = {
 	    -- Boss = {vector3(462.2895, -985.4934, 30.7280)}, -- Menu boss 
 	    -- Coffre = {vector3(448.94113, -997.3993, 30.6895)}, -- Menu coffre 
        Vestaire = {vector3(1855.2448730469, 3698.1577148438, 34.32731628418)}, -- Menu Vestaire 
        Accueil = {vector3(1862.3557128906, 3691.4111328125, 34.327262878418)}, -- Menu Pour Accueil 
        GarageVehicule = {vector3(1859.9079589844, 3710.8342285156, 33.947021484375)}, -- Menu Garage Vehicule
 	    GarageHeli = {vector3(1866.8171386719, 3663.3386230469, 33.87349319458)}, -- Menu Garage Helico
    }
}

