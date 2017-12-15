data:extend({
    {
        type = "technology",
        name = "meat-blood-processing",
        icon = "__TheyreMadeOutofMeat__/graphics/icons/technology/liquid-blood.png",
        icon_size = 128,
        prerequisites = {"automation-2"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "dry-meat"
            },
            {
                type = "unlock-recipe",
                recipe = "meat-boiler"
            }
        },
        unit = {
            count = 50,
            ingredients = {
                {"science-pack-1", 1},
            },
            time = 15
        },
        order = "meat-a-a"
    },
    {
        type = "technology",
        name = "meat-bone-processing",
        icon = "__TheyreMadeOutofMeat__/graphics/icons/technology/bone-processing.png",
        icon_size = 128,
        prerequisites = {"meat-blood-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "process-meat"
            },
            {
                type = "unlock-recipe",
                recipe = "meat-burger"
            },
            {
                type = "unlock-recipe",
                recipe = "bone-floor"
            },
            {
                type = "unlock-recipe",
                recipe = "bone-armor"
            },
            {
                type = "unlock-recipe",
                recipe = "bone-bullets"
            },
            {
                type = "unlock-recipe",
                recipe = "bone-axe"
            }
        },
        unit = {
            count = 100,
            ingredients = {
                {"science-pack-1", 1},
            },
            time = 25
        },
        order = "meat-a-b"
    },
    {
        type = "technology",
        name = "meat-fuel-processing",
        icon = "__TheyreMadeOutofMeat__/graphics/icons/technology/meat-cube.png",
        icon_size = 128,
        prerequisites = {"meat-bone-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "compress-meat"
            },
            {
                type = "unlock-recipe",
                recipe = "solid-fuel-meat"
            }
        },
        unit = {
            count = 50,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
            },
            time = 30
        },
        order = "meat-a-c"
    },
    {
        type = "technology",
        name = "meat-robotics",
        icon = "__base__/graphics/technology/construction-robotics.png",
        icon_size = 128,
        prerequisites = {
            "meat-bone-processing",
            "construction-robotics"
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "meat-roboport"
            },
            {
                type = "unlock-recipe",
                recipe = "meat-chest"
            },
            {
                type = "unlock-recipe",
                recipe = "meat-robot"
            }
        },
        unit = {
            count = 50,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1}
            },
            time = 30
        },
        order = "meat-b-g"
    },
})
