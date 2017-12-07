data:extend({
    {
        type = "recipe",
        name = "dry-meat",
        category = "crafting-with-fluid", -- "liquifying" via angelsrefining
        subgroup = "meat-products",
        energy_required = 2,
        enabled = false,
        ingredients = {
            {type = "item", name = "raw-meat", amount = 1}
        },
        results = {
            {type = "item", name = "dry-meat", amount = 1},
            {type = "fluid", name = "liquid-blood", amount = 100}
        },
        icon = "__TheyreMadeOutofMeat__/graphics/icons/dry-meat.png",
        order = "a[meat-1]"
    },
    {
        type = "recipe",
        name = "process-meat",
        subgroup = "meat-products",
        energy_required = 4,
        enabled = false,
        ingredients = {
            {type = "item", name = "dry-meat", amount = 2}
        },
        results = {
            {type = "item", name = "boneless-meat", amount = 4},
            {type = "item", name = "meat-bones", amount = 2}
        },
        icon = "__TheyreMadeOutofMeat__/graphics/icons/boneless-meat.png",
        order = "a[meat-2]"
    },
    {
        type = "recipe",
        name = "compress-meat",
        -- category = "blast-smelting", via angelsrefining
        subgroup = "meat-products",
        energy_required = 16,
        enabled = false,
        ingredients = {
            {type = "item", name = "boneless-meat", amount = 16},
            {type = "item", name = "wood", amount = 4} -- angelsbioprocessing: 8 cellulose-fibre
        },
        results = {
            {type = "item", name = "compressed-meat-cube", amount = 1}
        },
        icon = "__TheyreMadeOutofMeat__/graphics/icons/compressed-meat-cube.png",
        order = "a[meat-3]"
    },
    {
        type = "recipe",
        name = "solid-fuel-meat",
        category = "chemistry", -- "liquifying" via angelsrefining
        energy_required = 3,
        ingredients = {
            {type = "item", name = "compressed-meat-cube", amount = 1},
            {type = "fluid", name = "heavy-oil", amount = 20} -- {type = "fluid", name = "liquid-naphtha", amount = 50} via angelsrefining
        },
        results = {
            {type = "item", name = "solid-fuel", amount = 1} -- produces 2 via angelsrefining
        },
        icon = "__base__/graphics/icons/solid-fuel-from-heavy-oil.png", -- "__angelspetrochem__/graphics/icons/solid-fuel-naphtha.png" via angelsrefining
        subgroup = "meat-products",
        enabled = false,
        order = "a[meat-4]",
        crafting_machine_tint = {
            primary = {r = 0.160, g = 0.095, b = 0.095, a = 0.000}, -- #28181800
            secondary = {r = 0.470, g = 0.215, b = 0.190, a = 0.000}, -- #77363000
            tertiary = {r = 0.435, g = 0.144, b = 0.135, a = 0.000}, -- #6e242200
        }
    },
    {
        type = "recipe",
        name = "meat-burger",
        category = "smelting",
        subgroup = "meat-products",
        energy_required = 10,
        enabled = false,
        ingredients = {{"boneless-meat", 5}},
        results = {
            {type = "item", name = "meat-burger", amount = 1}
        },
        icon = "__TheyreMadeOutofMeat__/graphics/icons/meat-burger.png", -- todo
        order = "a[meat-burger]"
    }
})
