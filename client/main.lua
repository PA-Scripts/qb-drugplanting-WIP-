local QBCore = exports['qb-core']:GetCoreObject()
local spawnedPlants = 0
local DrugPlants = {}

-- Menu

RegisterNetEvent('qb-drugs:client:MenuList', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Weed Shop",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Buy Acessories",
            txt = "",
            params = {
                event = "qb-drugs:client:MenuAccessories",
            }
        },
        {
            header = "Buy Seeds",
            txt = "",
            params = {
                event = "qb-drugs:client:SeedsMenu",
            }
        },
    })
end)

RegisterNetEvent('qb-drugs:client:MenuAccessories', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Farm shop - Acessories",
            isMenuHeader = true,
        },
        {
            header = "< Back",
            params = {
                event = "qb-drugs:client:MenuList",
            }
        },
        {
            header = "Buy fertilizer",
            txt = "Price: 10$ per 1",
            params = {
                event = "qb-drugs:client:BuyFertilizer",
            }
        },
        {
            header = "Buy Shovel",
            txt = "Price: 50$ per 1",
            params = {
                event = "qb-drugs:client:BuyShovel",
            }
        },
    })
end)

RegisterNetEvent('qb-drugs:client:SeedsMenu', function()
    exports['qb-menu']:openMenu({
        {
            header = "Farm shop - Seeds",
            isMenuHeader = true,
        },
        {
            header = "< Back",
            params = {
                event = "qb-drugs:client:MenuList",
            }
        },
        --Simplified
        {
            header = "Buy weed seeds",
            txt = "Price: 20$ per 1",
            params = {
                event = "qb-drugs:client:BuyWeed",
            }
        },
        --complex
        -- {
        --     header = "Buy Afghani seeds",
        --     txt = "Price: 20$ per 1",
        --     params = {
        --         event = "qb-drugs:client:BuyAfghani",
        --     }
        -- },
        -- {
        --     header = "Buy Skywalker OG seeds",
        --     txt = "Price: 20$ per 1",
        --     params = {
        --         event = "qb-drugs:client:BuySkywalkerOG",
        --     }
        -- },
        -- {
        --     header = "Buy Lemon Haze seeds",
        --     txt = "Price: 20$ per 1",
        --     params = {
        --         event = "qb-drugs:client:BuyLemonHaze",
        --     }
        -- },
        -- {
        --     header = "Buy White Widow seeds",
        --     txt = "Price: 20$ per 1",
        --     params = {
        --         event = "qb-drugs:client:BuyWhiteWidow",
        --     }
        -- },
        -- {
        --     header = "Buy Master Kush seeds",
        --     txt = "Price: 20$ per 1",
        --     params = {
        --         event = "qb-drugs:client:BuyMasterKush",
        --     }
        -- },
        -- {
        --     header = "Buy Skunk seeds",
        --     txt = "Price: 20$ per 1",
        --     params = {
        --         event = "qb-drugs:client:BuySkunk",
        --     }
        -- },
    })
end)

RegisterNetEvent('qb-drugs:client:BuyFertilizer', function()
    TriggerServerEvent('qb-drugs:server:BuyFertilizer')
    TriggerEvent('qb-drugs:client:MenuAccessories')
end)

--Simplified
RegisterNetEvent('qb-drugs:client:BuyWeed', function()
    TriggerServerEvent('qb-drugs:server:BuyWeed')
    TriggerEvent('qb-drugs:client:SeedsMenu')
end)

--Complex
-- RegisterNetEvent('qb-drugs:client:BuyAfghani', function()
--     TriggerServerEvent('qb-drugs:server:BuyAfghani')
--     TriggerEvent('qb-drugs:client:SeedsMenu')
-- end)

-- RegisterNetEvent('qb-drugs:client:BuySkywalkerOG', function()
--     TriggerServerEvent('qb-drugs:server:BuySkywalkerOG')
--     TriggerEvent('qb-drugs:client:SeedsMenu')
-- end)

-- RegisterNetEvent('qb-drugs:client:BuyLemonHaze', function()
--     TriggerServerEvent('qb-drugs:server:BuyLemonHaze')
--     TriggerEvent('qb-drugs:client:SeedsMenu')
-- end)

-- RegisterNetEvent('qb-drugs:client:BuyWhiteWidow', function()
--     TriggerServerEvent('qb-drugs:server:BuyWhiteWidow')
--     TriggerEvent('qb-drugs:client:SeedsMenu')
-- end)

-- RegisterNetEvent('qb-drugs:client:BuyMasterKush', function()
--     TriggerServerEvent('qb-drugs:server:BuyMasterKush')
--     TriggerEvent('qb-drugs:client:SeedsMenu')
-- end)

-- RegisterNetEvent('qb-drugs:client:BuySkunk', function()
--     TriggerServerEvent('qb-drugs:server:BuySkunk')
--     TriggerEvent('qb-drugs:client:SeedsMenu')
-- end)


RegisterNetEvent('qb-drugs:client:BuyShovel', function()
    TriggerServerEvent('qb-drugs:server:BuyShovel')
    TriggerEvent('qb-drugs:client:MenuAccessories')
end)



-- Threads

CreateThread(function()
    RequestModel(`a_m_m_farmer_01`)
      while not HasModelLoaded(`a_m_m_farmer_01`) do
      Wait(1)
    end
      seedmerchant = CreatePed(2, `a_m_m_farmer_01`, Config.ShopPed, false, false)
      SetPedFleeAttributes(seedmerchant, 0, 0)
      SetPedDiesWhenInjured(seedmerchant, false)
      TaskStartScenarioInPlace(seedmerchant, "missheistdockssetup1clipboard@base", 0, true)
      SetPedKeepTask(seedmerchant, true)
      SetBlockingOfNonTemporaryEvents(seedmerchant, true)
      SetEntityInvincible(seedmerchant, true)
      FreezeEntityPosition(seedmerchant, true)

    exports['qb-target']:AddBoxZone("seedmerchant", Config.ShopPedTarget, 1, 1, {
        name="seedmerchant",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
                event = "qb-drugs:client:MenuList",
                icon = "fas fa-farm",
                label = "Talk to Merchant",
            },
        },
        distance = 1.5
    })
end)


-- Plantas

crop_type = {
    ["crop_stage"] = {
        stage_1 = {"prop_weed_02", -1.05},
        stage_2 = {"prop_weed_02", -1.05},
        stage_3 = {"prop_weed_02", -1.05},
        stage_4 = {"prop_weed_01", -1.05},
        stage_5 = {"prop_weed_01", -1.05},
        stage_6 = {"prop_weed_01", -1.05}
    }
}

Plants = {}
SpawnedPlants = {}
CurrentPlant = nil
CurrentPlantInfo = nil

local nearPlant = true
local shown = false

CreateThread(function(percent)
    while true do 
        if LocalPlayer.state.isLoggedIn then
            local ped = PlayerPedId() 
            local nPlant = nearPlant(ped)
            if nPlant ~= false then
                if not shown then
                    shown = true
                    QBCore.Functions.TriggerCallback("qb-drugs:server:getPlant",function(info)
                        CurrentPlant = nPlant
                        CurrentPlantInfo = info
                        if CurrentPlantInfo.food and CurrentPlantInfo.water == 0 then
                            PlantMenuDead()
                        elseif CurrentPlantInfo.stage >= 100 then
                            PlantMenuHaverst()
                        else
                            PlantMenuAlive()
                        end
                    end,nPlant)
                end
            else
                if shown then
                    CurrentPlant = nil
                    CurrentPlantInfo = nil
                    exports['qb-menu']:closeMenu() 
                    shown = false
                end
            end
            if nPlant == false then
                Wait(1000)
            else
                Wait(1)
            end
        end
        Wait(100)
    end
end)

QBCore.Functions.TriggerCallback("qb-drugs:server:getInfo",function(plants)
    Plants = plants
    for k, v in pairs(Plants) do
        spawnPlant(v.seed, v.coords, v.info.stage, k)
    end
end)

RegisterNetEvent("qb-drugs:client:DeleteEntity",function()
    exports['qb-menu']:closeMenu() 
    Wait(2000)
    if SpawnedPlants[CurrentPlant] ~= nil then
        DeleteEntity(SpawnedPlants[CurrentPlant])
    end
    Plants[CurrentPlant] = nil
    SpawnedPlants[CurrentPlant] = nil
    CurrentPlant = nil
    CurrentPlantInfo = nil
    ClearPedTasks(ped)
    Wait(4000)
    action = false
    ClearPedTasksImmediately(ped)
end)

RegisterNetEvent("qb-drugs:client:growPlant",function(id, percent)
    if Plants[id] ~= nil and SpawnedPlants[id] ~= nil then
        setPlant(id, percent)
    end
end)

RegisterNetEvent("qb-drugs:client:growthUpdate",function()
    if CurrentPlantInfo ~= nil then
        CurrentPlantInfo.water = CurrentPlantInfo.water - (0.02 * CurrentPlantInfo.rate)
        CurrentPlantInfo.food = CurrentPlantInfo.food - (0.02 * CurrentPlantInfo.rate)
        CurrentPlantInfo.stage = CurrentPlantInfo.stage + (0.01 * CurrentPlantInfo.rate) 
    end
end)

RegisterNetEvent("qb-drugs:client:startPlanting",function(plant)
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)

    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
    if HasItem then
    TaskStartScenarioInPlace(PlayerPedId(), 'world_human_gardener_plant', 0, false)
    QBCore.Functions.Progressbar("plant_seeds", "PLANTING SEEDS..", 6500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("qb-drugs:server:addPlantToDatabase", plant, coords)
        end)
    else
        QBCore.Functions.Notify('You need a Shovel to plant that...', 'error', 7500)
    end
    end, "trowel")
end)

RegisterNetEvent("qb-drugs:client:addPlant",function(seed, coords, id)
    local entity = 'crop_stage'
    local ped = PlayerPedId()
    Plants[id] = {seed = seed, coords = coords}
    SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_1[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_1[2],false,true,1)
    SetEntityAsMissionEntity(SpawnedPlants[id], true, true)  
    SetEntityInvincible(SpawnedPlants, true)
    FreezeEntityPosition(SpawnedPlants, true)
end)

RegisterNetEvent('qb-drugs:client:plantOptions', function(args, data)
    local args = tonumber(args)
	if args == 1 then
        local percent = Config.FertilizerQuantity
        QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
            if HasItem then
                QBCore.Functions.Notify("+"..percent.." fertilizer", "success")
                if percent > 0 then
                    CurrentPlantInfo.food = CurrentPlantInfo.food + percent
                    if CurrentPlantInfo.food > 100 then
                        CurrentPlantInfo.food = 100
                    end
                    TaskStartScenarioInPlace(PlayerPedId(), 'world_human_gardener_plant', 0, false)
                    QBCore.Functions.Progressbar('add_fertilizante', 'ADDING FERTILIZER...', 5000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, { }, {}, {}, function()
                    TriggerServerEvent("qb-drugs:server:updatePlant", CurrentPlant, CurrentPlantInfo)
                    TriggerServerEvent("QBCore:Server:RemoveItem", "weed_nutrition", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["weed_nutrition"], "remove", 1) 
                    --PlantMenuStacic()
                    end)
                end
            else
                PlantMenuAlive()
                QBCore.Functions.Notify("You dont have any fertilizer", "error")
            end
        end, "weed_nutrition")
    elseif args == 2 then
        local percent = Config.WaterQuantity
        QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
            if HasItem then
                QBCore.Functions.Notify("+"..percent.." Water", "success")
                if percent > 0 then
                    CurrentPlantInfo.water = CurrentPlantInfo.water + percent
                    if CurrentPlantInfo.water > 100 then
                        CurrentPlantInfo.water = 100
                    end
                    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
                    QBCore.Functions.Progressbar('add_water', 'ADDING WATER...', 5000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, { }, {}, {}, function()
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    TriggerServerEvent("qb-drugs:server:updatePlant", CurrentPlant, CurrentPlantInfo)
                    TriggerServerEvent("QBCore:Server:RemoveItem", "water_bottle", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["water_bottle"], "remove", 1)
                    --PlantMenuStacic()
                    end)
                end
            else
                PlantMenuAlive()
                QBCore.Functions.Notify("You dont have any water", "error")
            end
        end, "water_bottle")
    elseif args == 3 then
        local ped = PlayerPedId()
        TaskStartScenarioInPlace(ped, "world_human_gardener_plant", 0, false)
        exports['qb-menu']:closeMenu() 
        QBCore.Functions.Progressbar('haverst_plant', 'HAVERSTING PLANT...', 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
        if SpawnedPlants[CurrentPlant] ~= nil then
            DeleteEntity(SpawnedPlants[CurrentPlant])
        end
        TriggerServerEvent("qb-drugs:server:deletePlant", CurrentPlant)
        TriggerServerEvent("qb-drugs:server:addFood", Plants[CurrentPlant].seed, CurrentPlantInfo) 
        Plants[CurrentPlant] = nil
        SpawnedPlants[CurrentPlant] = nil
        CurrentPlant = nil
        CurrentPlantInfo = nil
        ClearPedTasks(ped)
        ClearPedTasksImmediately(ped)
    end)
    elseif args == 4 then
        local ped = PlayerPedId()
        TaskStartScenarioInPlace(ped, "world_human_gardener_plant", 0, false)
        exports['qb-menu']:closeMenu() 
        QBCore.Functions.Progressbar('delete_plant', 'DESTROYING PLANT...', 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
        if SpawnedPlants[CurrentPlant] ~= nil then
            DeleteEntity(SpawnedPlants[CurrentPlant])
        end
        Plants[CurrentPlant] = nil
        SpawnedPlants[CurrentPlant] = nil
        TriggerServerEvent("qb-drugs:server:deletePlant", CurrentPlant)
        CurrentPlant = nil
        CurrentPlantInfo = nil
        ClearPedTasks(ped)
        ClearPedTasksImmediately(ped)
    end)
    else
        exports['qb-menu']:closeMenu() 
        Wait(100)
        PlantMenuAlive()
    end
end)

function spawnPlant(plant, coords, percent, id)
    local entity = 'crop_stage'
    if percent < 20 then
        SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_1[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_1[2],false,true,1)
    elseif percent < 30 then
        SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_2[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_2[2],false,true,1)
    elseif percent < 45 then
        SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_3[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_3[2],false,true,1)
    elseif percent < 60 then
        SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_4[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_4[2],false,true,1)
    elseif percent < 85 then
        SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_5[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_5[2],false,true,1)
    elseif percent <= 100 then
        SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_6[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_6[2],false,true,1)
    end
    SetEntityAsMissionEntity(SpawnedPlants[id], true, true)
end

function setPlant(id, percent)
    local plant = Plants[id].type
    local entity = 'crop_stage'
    if SpawnedPlants[id] ~= nil then
        local coords = Plants[id].coords
        DeleteEntity(SpawnedPlants[id])
        if percent < 20 then
            SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_1[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_1[2],false,true,1)
        elseif percent < 30 then
            SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_2[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_2[2],false,true,1)
        elseif percent < 45 then
            SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_3[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_3[2],false,true,1)
        elseif percent < 60 then
            SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_4[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_4[2],false,true,1)
        elseif percent < 85 then
            SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_5[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_5[2],false,true,1)
        elseif percent <= 100 then
            SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_6[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_6[2],false,true,1)
        end
        SetEntityAsMissionEntity(SpawnedPlants[id], true, true)
    else
        print("There was an error loading a plant!")
    end
end

function GetGroundHash(ped)
    local posped = GetEntityCoords(ped)
    local num = StartShapeTestCapsule(posped.x, posped.y, posped.z + 4, posped.x, posped.y, posped.z - 2.0, 2, 1, ped, 7)
    local arg1, arg2, arg3, arg4, arg5 = GetShapeTestResultEx(num)
    return arg5
end

function nearPlant(ped)
    for k, v in pairs(Plants) do
        if #(v.coords - GetEntityCoords(ped)) < 1.0 then
            return k
        end
    end
    return false
end

function PlantMenuDead()
    exports['qb-menu']:showHeader({
        {
            header = "Dead Marijuana Plant: "..CurrentPlant,
            txt = "Stage: "..math.floor(CurrentPlantInfo.stage).."%", 
            isMenuHeader = true
        },
        {
            header = "Progress",
            txt = "Stage: "..math.floor(CurrentPlantInfo.stage).."%",
        },
        {
            header = "Destroy dead plant",
            txt = "",
            params = {
                event = "qb-drugs:client:plantOptions",
                args = 4
            }
        },
    })
end

-- function PlantMenuStacic()
--     exports['qb-menu']:openMenu({
--         { 
--             header = "Plant: "..CurrentPlant,
--             txt = "",
--             isMenuHeader = true
--         },
--         {
--             header = "Progress",
--             txt = "Stage: "..math.floor(CurrentPlantInfo.stage).."%<p>Rate: "..math.floor(CurrentPlantInfo.rate).."%",
--         },
--         {
--             header = "Fertilizer",
--             txt = "Nutrition: "..math.floor(CurrentPlantInfo.food).."%",
--             params = {
--                 event = "qb-drugs:client:plantOptions",
--                 args = 1
--             }
--         },
--         {
--             header = "Water",
--             txt = "Water: "..math.floor(CurrentPlantInfo.water).."%",
--             params = {
--                 event = "qb-drugs:client:plantOptions",
--                 args = 2
--             }
--         },
--         {
--             header = "Destroy",
--             txt = "",
--             params = {
--                 event = "qb-drugs:client:plantOptions",
--                 args = 4
--             }
--         },
--         {
--             header = "Return",
--             params = {
--                 event = "qb-drugs:client:plantOptions",
--                 args = 5
--             }
--         },
--     })
-- end

function PlantMenuAlive()
    exports['qb-menu']:showHeader({
        {
            header = "Plant: "..CurrentPlant,
            txt = "",
            isMenuHeader = true
        },
        {
            header = "Progress",
            txt = "Stage: "..math.floor(CurrentPlantInfo.stage).."%<p>Rate: "..math.floor(CurrentPlantInfo.rate).."%",
        },
        {
            header = "Fertilizer",
            txt = "Nutrition: "..math.floor(CurrentPlantInfo.food).."%",
            params = {
                event = "qb-drugs:client:plantOptions",
                args = 1
            }
        },
        {
            header = "Water",
            txt = "Water: "..math.floor(CurrentPlantInfo.water).."%",
            params = {
                event = "qb-drugs:client:plantOptions",
                args = 2
            }
        },
        {
            header = "Destroy",
            txt = "",
            params = {
                event = "qb-drugs:client:plantOptions",
                args = 4
            }
        },
    })
end

function PlantMenuHaverst()
    exports['qb-menu']:showHeader({
        {
            header = "Plant: "..CurrentPlant,
            txt = "",
            isMenuHeader = true
        },
        {
            header = "Progress",
            txt = "Stage: "..math.floor(CurrentPlantInfo.stage).."%<p>Rate: "..math.floor(CurrentPlantInfo.rate).."%",
        },
        {
            header = "Harvest",
            txt = "",
            params = {
                event = "qb-drugs:client:plantOptions",
                args = 3
            }
        },
    })
end
