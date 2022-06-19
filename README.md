# mt-farm2.0
QBCore farm system with seeds and some more things

##

# Preview:

# Instalation:

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
		["image"] = "weed_seed.png",
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
		["image"] = "weed_seed.png",
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
		["image"] = "weed_seed.png",
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
		["image"] = "weed_seed.png",
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
		["image"] = "weed_seed.png",
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
		["image"] = "weed_seed.png",
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
		["image"] = "weed_seed.png",
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
		["image"] = "weed_seed.png",
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
		["image"] = "weed_seed.png",
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
		["image"] = "weed_seed.png",
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
		["image"] = "weed_seed.png",
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
		["image"] = "weed_seed.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Raw Plant of Skywalker OG"
	},

```

- Add images to qb-inventory/html/images

##

# Credits:
Mt-farm

# Dependicies:
- qb-core: https://github.com/qbcore-framework/qb-core
- qb-target: https://github.com/qbcore-framework/qb-target
- qb-menu: https://github.com/qbcore-framework/qb-menu
- dpemotes: https://github.com/qbcore-framework/dpemotes
