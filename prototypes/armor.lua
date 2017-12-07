data:extend({
    {
        type = "recipe",
        name = "bone-armor",
        enabled = false,
        energy_required = 30,
        ingredients = {{"meat-bones", 200}},
        result = "bone-armor"
    },
    {
        type = "armor",
        name = "bone-armor",
        icon = "__TheyreMadeOutofMeat__/graphics/icons/bone-armor.png", -- todo
        flags = {"goes-to-quickbar"},
        resistances = {
            {
                type = "physical",
                decrease = 8,
                percent = 40
            },
            {
                type = "acid",
                decrease = 8,
                percent = 40
            },
            {
                type = "explosion",
                decrease = 40,
                percent = 30
            },
            {
                type = "fire",
                decrease = 1,
                percent = 40
            }
        },
        durability = 2500,
        subgroup = "armor",
        order = "a[meat-bone-armor]",
        equipment_grid = "bone-armor-equipment-grid",
        stack_size = 1
    },
    {
        type = "item",
        name = "bone-armor-speedmod",
        icon = "__base__/graphics/icons/exoskeleton-equipment.png",
        flags = {"goes-to-main-inventory", "hidden"},
        subgroup = "meat-products",
        order = "a[meat-bone-armor-speedmod]",
        placed_as_equipment_result = "bone-armor-speedmod",
        stack_size = 1
    },
    {
        type = "movement-bonus-equipment",
        name = "bone-armor-speedmod",
        sprite = {
            filename = "__base__/graphics/equipment/exoskeleton-equipment.png",
            width = 64,
            height = 128,
            priority = "medium"
        },
        shape = {
            width = 2,
            height = 2,
            type = "full"
        },
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input"
        },
        energy_consumption = "0W",
        movement_bonus = -0.3,
        categories = {"bone"}
    }
})
