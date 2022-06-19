# qb-drugplanting
QBCore drug system with seeds
- Can plant anywhere
- Can add more drugs if you want
- Can work with ps-drugproccesing https://github.com/Project-Sloth/ps-drugprocessing

# Issues:
- Need to add soil check (can plant anywhere)
- Small plants are able to be knocked over

# Planned updates
- Use target instead of inside plant z,y,z zone

# Preview:
No preview yet

# Config:
```
Config = {}

Config.ShopPed = vector4(2932.23, 4624.04, 47.72, 53.66) -- Location For Shop Ped
Config.ShopPedTarget = vector3(2932.23, 4624.04, 47.72) -- Target location for Shop Ped

Config.WaterLoc = vector3(2954.79, 4672.29, 50.46) -- Location to water fill station

Config.GrowRate = 1 -- In how many seconds it takes to update the plant (At 100% rate plant will grow 1% every update)


Config.WaterQuantity = math.random(50, 100) -- Quantity of water that 1 water can can fill the plant
Config.FertilizerQuantity = math.random(50, 100) -- Quantity of fertilizer that 1 fertilizer can fill the plant

Config.ProcessPedTarget = vector3(441.94, 6457.66, 35.86) -- Target Location for Process Ped
Config.ProcessPed = vector4(441.94, 6457.66, 34.86, 49.13) -- Location for Process Ped

Config.SellPedTarget = vector3(1469.66, 6549.95, 14.9) -- Target Location for Sell Ped
Config.SellPed = vector4(1469.66, 6549.95, 13.9, 357.71) -- Location for Sell Ped

-- Sell Prices
Config.AfghaniPrice = math.random(10, 20)
Config.LemonhazePrice = math.random(10, 20)
Config.WhitewidowPrice = math.random(10, 20)
Config.MasterkushPrice = math.random(10, 20)
Config.SkunkPrice = math.random(10, 20)
Config.SkywalkerOGPrice = math.random(10, 20)
--if adding more
```

# Installation:

- Run SQL File


- Add to qb-core/shared/items.lua

```
		-- Seed And Weed
	["weed_whitewidow"]             = {
		["name"] = "weed_whitewidow",
		["label"] = "White Widow 2g",
		["weight"] = 200,
		["type"] = "item",
		["image"] = "weed_baggy.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = false,
		["combinable"] = nil,
		["description"] = "A weed bag with 2g White Widow"
	},
	["weed_skunk"]                   = {
		["name"] = "weed_skunk",
		["label"] = "Skunk 2g",
		["weight"] = 200,
		["type"] = "item",
		["image"] = "weed_baggy.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = false,
		["combinable"] = nil,
		["description"] = "A weed bag with 2g Skunk"
	},
	["weed_lemonhaze"]            = {
		["name"] = "weed_lemonhaze",
		["label"] = "Lemon Haze 2g",
		["weight"] = 200,
		["type"] = "item",
		["image"] = "weed_baggy.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = false,
		["combinable"] = nil,
		["description"] = "A weed bag with 2g Lemon Haze"
	},
	["weed_masterkusk"]                 = {
		["name"] = "weed_masterkusk",
		["label"] = "Master Kush 2g",
		["weight"] = 200,
		["type"] = "item",
		["image"] = "weed_baggy.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = false,
		["combinable"] = nil,
		["description"] = "A weed bag with 2g Master Kush"
	},
	["weed_afghani"]                 = {
		["name"] = "weed_afghani",
		["label"] = "Afghani 2g",
		["weight"] = 200,
		["type"] = "item",
		["image"] = "weed_baggy.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = false,
		["combinable"] = nil,
		["description"] = "A weed bag with 2g Afgani"
	},
	["weed_skywalkerog"]                    = {
		["name"] = "weed_skywalkerog",
		["label"] = "Skywalker OG 2g",
		["weight"] = 200,
		["type"] = "item",
		["image"] = "weed_baggy.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = false,
		["combinable"] = nil,
		["description"] = "A weed bag with 2g Skywalker OG"
	},
	-- Seeds
	["seed_weed_whitewidow"]        = {
		["name"] = "weed_white-widow_seed",
		["label"] = "White Widow Seed",
		["weight"] = 2,
		["type"] = "item",
		["image"] = "weed-plant-seed.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = false,
		["combinable"] = nil,
		["description"] = "A weed seed of White Widow"
	},
	["seed_weed_skunk"]              = {
		["name"] = "seed_weed_skunk",
		["label"] = "Skunk Seed",
		["weight"] = 2,
		["type"] = "item",
		["image"] = "weed-plant-seed.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A weed seed of Skunk"
	},
	["seed_weed_lemonhaze"]        = {
		["name"] = "seed_weed_lemonhaze",
		["label"] = "Lemon Haze Seed",
		["weight"] = 2,
		["type"] = "item",
		["image"] = "weed-plant-seed.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A weed seed of Lemon Haze"
	},
	["seed_weed_masterkush"]            = {
		["name"] = "seed_weed_masterkush",
		["label"] = "Master Seed",
		["weight"] = 2,
		["type"] = "item",
		["image"] = "weed-plant-seed.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A weed seed of Master Kush"
	},
	["seed_weed_afghani"]            = {
		["name"] = "seed_weed_afghani",
		["label"] = "Afghani Seed",
		["weight"] = 2,
		["type"] = "item",
		["image"] = "weed-plant-seed.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A weed seed of Afghani"
	},
	["seed_weed_skywalkerog"]               = {
		["name"] = "seed_weed_skywalkerog",
		["label"] = "Skywalker OG Seed",
		["weight"] = 2,
		["type"] = "item",
		["image"] = "weed-plant-seed.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A weed seed of Skywalker OG"
	},
	--raw weed
	["raw_weed_whitewidow"]        = {
		["name"] = "weed_white-widow_seed",
		["label"] = "White Widow Plant",
		["weight"] = 2,
		["type"] = "item",
		["image"] = "harvested_weed.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = false,
		["combinable"] = nil,
		["description"] = "Raw Plant of White Widow"
	},
	["raw_weed_skunk"]              = {
		["name"] = "seed_weed_skunk",
		["label"] = "Skunk Plant",
		["weight"] = 2,
		["type"] = "item",
		["image"] = "harvested_weed.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Raw Plant of Skunk"
	},
	["raw_weed_lemonhaze"]        = {
		["name"] = "seed_weed_lemonhaze",
		["label"] = "Lemon Haze Plant",
		["weight"] = 2,
		["type"] = "item",
		["image"] = "harvested_weed.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Raw Plant of Lemon Haze"
	},
	["raw_weed_masterkush"]            = {
		["name"] = "seed_weed_masterkush",
		["label"] = "Master Kush Plant",
		["weight"] = 2,
		["type"] = "item",
		["image"] = "harvested_weed.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Raw Plant of Master Kush"
	},
	["raw_weed_afghani"]            = {
		["name"] = "seed_weed_afghani",
		["label"] = "Afghani Plant",
		["weight"] = 2,
		["type"] = "item",
		["image"] = "harvested_weed.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Raw Plant of Afghani"
	},
	["raw_weed_skywalkerog"]               = {
		["name"] = "raw_weed_skywalkerog",
		["label"] = "Skywalker OG Plant",
		["weight"] = 2,
		["type"] = "item",
		["image"] = "harvested_weed.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Raw Plant of Skywalker OG"
	},
	-- Shovel and scissors
		["farm_tesoura"]            = {
		["name"] = "farm_tesoura",
		["label"] = "Farm Scisors",
		["weight"] = 100,
		["type"] = "item",
		["image"] = "farm_tesoura.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = ""
	},
	["farm_pa"]                 = {
        ["name"] = "farm_pa",
        ["label"] = "Shovel",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "farm_pa.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = ""
    },
If you are adding more drugs to the script, make sure you add them to items.lua

```
- To add More Drugs


# Client/main.lua

```
{
    header = "Buy DRUGNAME seeds",
    txt = "Price: 20$ per 1",
    params = {
        event = "qb-drugs:client:BuyDRUGNAME",
    }
},

RegisterNetEvent('qb-drugs:client:BuyDRUGNAME', function()
    TriggerServerEvent('qb-drugs:server:BuySkunk')
    TriggerEvent('qb-drugs:client:SeedsMenu')
end)
```


# Server/main.lua

```
QBCore.Functions.CreateUseableItem('drugname', function(source, item)
    TriggerClientEvent("qb-drugs:client:startPlanting", source, 'drugname') 
end)


 elseif weedseed == 'drugname' then
     Player.Functions.AddItem('drugname', plantplantamount)  

["drugname"] =  Config.drugnamePrice,
```


- Add your own images to YOURINVENTORY/html/images


##

# Credits:
Marttins011 Farm2.0 - https://github.com/Marttins011/mt-farm2.0

# Dependicies:
- qb-core: https://github.com/qbcore-framework/qb-core
- qb-target: https://github.com/qbcore-framework/qb-target
- qb-menu: https://github.com/qbcore-framework/qb-menu
- dpemotes: https://github.com/qbcore-framework/dpemotes
