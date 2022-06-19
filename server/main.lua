local QBCore = exports['qb-core']:GetCoreObject()

-- Events

RegisterNetEvent('qb-drugs:server:BuyFertilizer', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'weed_nutrition'
    local money = 'bank'
    local plantamount = 1
    local price = 10

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, plantamount)
end)

RegisterNetEvent('qb-drugs:server:BuyShovel', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_pa'
    local money = 'bank'
    local plantamount = 1
    local price = 50

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, plantamount)
end)


RegisterNetEvent('qb-drugs:server:BuySkywalkerOG', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'seed_weed_skywalkerog'
    local money = 'bank'
    local plantamount = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, plantamount)
end)

RegisterNetEvent('qb-drugs:server:BuyLemonHaze', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'seed_weed_lemonhaze'
    local money = 'bank'
    local plantamount = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, plantamount)
end)

RegisterNetEvent('qb-drugs:server:BuyWhiteWidow', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'seed_weed_whitewidow'
    local money = 'bank'
    local plantamount = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, plantamount)
end)

RegisterNetEvent('qb-drugs:server:BuyMasterKush', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'seed_weed_masterkush'
    local money = 'bank'
    local plantamount = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, plantamount)
end)

RegisterNetEvent('qb-drugs:server:BuySkunk', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'seed_weed_skunk'
    local money = 'bank'
    local plantamount = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, plantamount)
end)

RegisterNetEvent('qb-drugs:server:BuyAfghani', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'seed_weed_afghani'
    local money = 'bank'
    local plantamount = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, plantamount)
end)

-- Can add more
-- RegisterNetEvent('qb-drugs:server:BuyDRUGNAME', function()
--     local src = source
--     local Player = QBCore.Functions.GetPlayer(src)
--     local item = 'DRUGNAME'
--     local money = 'bank'
--     local plantamount = 1
--     local price = 20

--     Player.Functions.RemoveMoney(money, price)
--     Player.Functions.AddItem(item, plantamount)
-- end)

RegisterNetEvent('qb-drugs:server:BuyWateringCan', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_regador'
    local money = 'bank'
    local plantamount = 1
    local price = 10

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, plantamount)
end)

RegisterNetEvent('qb-drugs:server:BuyScissors', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_tesoura'
    local money = 'bank'
    local plantamount = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, plantamount)
end)

RegisterNetEvent('qb-drugs:server:FillWater', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local farm_regador = Player.Functions.GetItemByName('farm_regador')
    local item = 'farm_regador'
    local item2 = 'farm_regador_cheio'
    local plantamount = 1

    if farm_regador ~= nil then

        Player.Functions.RemoveItem(item, plantamount)
        Player.Functions.AddItem(item2, plantamount)
    else
        TriggerClientEvent("QBCore:Notify", src, "You need a empty water can...", "error")
    end
end)

-- Items

QBCore.Functions.CreateUseableItem('seed_weed_afghani', function(source, item)
    TriggerClientEvent("qb-drugs:client:startPlanting", source, 'seed_weed_afghani') 
end)

QBCore.Functions.CreateUseableItem('seed_weed_skywalkerog', function(source, item)
    TriggerClientEvent("qb-drugs:client:startPlanting", source, 'seed_weed_skywalkerog') 
end)

QBCore.Functions.CreateUseableItem('seed_weed_lemonhaze', function(source, item)
    TriggerClientEvent("qb-drugs:client:startPlanting", source, 'seed_weed_lemonhaze') 
end)

QBCore.Functions.CreateUseableItem('seed_weed_whitewidow', function(source, item)
    TriggerClientEvent("qb-drugs:client:startPlanting", source, 'seed_weed_whitewidow') 
end)

QBCore.Functions.CreateUseableItem('seed_weed_masterkush', function(source, item)
    TriggerClientEvent("qb-drugs:client:startPlanting", source, 'seed_weed_masterkush') 
end)

QBCore.Functions.CreateUseableItem('seed_weed_skunk', function(source, item)
    TriggerClientEvent("qb-drugs:client:startPlanting", source, 'seed_weed_skunk') 
end)
--Can add more
-- QBCore.Functions.CreateUseableItem('drugname', function(source, item)
--     TriggerClientEvent("qb-drugs:client:startPlanting", source, 'drugname') 
-- end)




-- Plants

CreateThread(function()
    updatePlants()
end)

function updatePlants()
    SetTimeout(Config.GrowRate * 1000, function()
        updatePlants()
    end)
    --DEAD PLANTS
    MySQL.query("SELECT id FROM player_drugs WHERE (water = 0 OR food = 0) AND rate = 0",{},function(id)
        for _, v in ipairs(id) do
            MySQL.update('DELETE FROM player_drugs WHERE id = ?', {v.id}, function()
                TriggerClientEvent("qb-drugs:client:DeleteEntity", -1)  
            end)
        end
    end)
    -- ALIVE PLANT REDUCTION
    MySQL.update("UPDATE `player_drugs` SET `stage`=`stage` + (0.01 * `rate`) , `food` = `food` - (0.02 * `rate`), `water` = `water` -  (0.02 * `rate`) WHERE water >= 2 OR food >= 2",{},
    function()
        TriggerClientEvent("qb-drugs:client:growthUpdate", -1)
    end)
    -- GROW PLANTS
    MySQL.query("SELECT id, stage FROM player_drugs WHERE (stage >= 30 AND stage <= 31) OR (stage >= 80 AND stage <= 81)",{},
    function(info)
        for _, v in ipairs(info) do
            TriggerClientEvent("qb-drugs:client:growPlant", -1, v.id, v.stage)
        end
    end)
end

function addPlant(seed, coords, id)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local zone = nil
    MySQL.insert('INSERT INTO player_drugs (coords, seed, stage, rate, water, food) VALUES (?, ?, ?, ?, ?, ?)',{
        json.encode({x = coords[1], y = coords[2], z = coords[3]}),
        seed,
        0,
        10,
        10,
        10
    },function(id)
        TriggerClientEvent("qb-drugs:client:addPlant", src, seed, coords, id)
    end)
end

RegisterNetEvent("qb-drugs:server:addPlantToDatabase",function(seed, coords)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    addPlant(seed, coords, src)
    Player.Functions.RemoveItem(seed, 1)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[seed], "remove", 1)
end)

RegisterNetEvent("qb-drugs:server:deletePlant",function(id)
    MySQL.update('DELETE FROM player_drugs WHERE id = ?', {id})
end)

RegisterNetEvent("qb-drugs:server:updatePlant",function(id, info)
    MySQL.update('UPDATE player_drugs SET stage = ?, rate = ?, food = ?, water = ? WHERE id = ?',{info.stage, info.rate, info.food, info.water, id})
end)

QBCore.Functions.CreateCallback("qb-drugs:server:getInfo",function(source, cb)
    MySQL.query('SELECT * FROM player_drugs WHERE 1',{}, function(infoPlants)
        local plants = {}
        for _, v in ipairs(infoPlants) do
            local coords = json.decode(v.coords) or {x = 0, y = 0, z = 0}
            local data = {stage = v.stage, rate = v.rate, water = v.water, food = v.food} 
            coords = vector3(coords.x, coords.y, coords.z)
            plants[v.id] = {seed = v.seed, coords = coords, info = data}
        end
        cb(plants)
    end)
end)

QBCore.Functions.CreateCallback("qb-drugs:server:getPlant",function(source, cb, id)
    MySQL.query("SELECT stage,rate,food,water FROM player_drugs WHERE id = @id LIMIT 1",{["@id"] = id},function(info)
        local data = {stage = info[1].stage, rate = info[1].rate, water = info[1].water, food = info[1].food}
        cb(data)
    end)
end)

RegisterNetEvent("qb-drugs:server:addFood", function(seed, info)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
    local amount = 3 * tonumber(info.stage) / 100
    local weedseed = seed
    local plantplantamount = Config.PlantAlimentsQuantity
    
 
    if weedseed == 'seed_weed_skywalkerog' then
        Player.Functions.AddItem('raw_weed_skywalkerog', 1)
        Player.Functions.AddItem('seed_weed_skywalkerog', math.random(2, 5))
    elseif weedseed == 'seed_weed_afghani' then
        Player.Functions.AddItem('raw_weed_afghani', 1)
        Player.Functions.AddItem('seed_weed_afghani', math.random(2, 5))
    elseif weedseed == 'seed_weed_lemonhaze' then
        Player.Functions.AddItem('raw_weed_lemonhaze', 1)
        Player.Functions.AddItem('seed_weed_lemonhaze', math.random(2, 5))
    elseif weedseed == 'seed_weed_whitewidow' then
        Player.Functions.AddItem('raw_weed_whitewidow', 1)
        Player.Functions.AddItem('seed_weed_whitewidow', math.random(2, 5))
    elseif weedseed == 'seed_weed_masterkush' then
        Player.Functions.AddItem('raw_weed_masterkush', 1)
        Player.Functions.AddItem('seed_weed_masterkush', math.random(2, 5))
    elseif weedseed == 'seed_weed_skunk' then
        Player.Functions.AddItem('raw_weed_skunk', 1)
        Player.Functions.AddItem('seed_weed_skunk', math.random(2, 5))    
         --can add more
        -- elseif weedseed == 'drugname' then
        --     Player.Functions.AddItem('drugname', 1)  
    end

end)

-- vendor

local ItemList = {
    ["weed_afghani"] =  Config.AfghaniPrice,
    ["weed_lemonhaze"] =  Config.LemonhazePrice,
    ["weed_whitewidow"] =  Config.WhitewidowPrice,
    ["weed_masterkush"] =  Config.MasterkushPrice,
    ["weed_skunk"] =  Config.SkunkPrice,
    ["weed_skywalkerog"] =  Config.SkywalkerOGPrice,
--can add more here
--["drugname"] =  Config.drugnamePrice,
}