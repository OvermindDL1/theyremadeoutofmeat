data:extend({
    {
        type = "item",
        name = "bone-floor",
        icon = "__TheyreMadeOutofMeat__/graphics/icons/meat-bones.png", -- todo
        flags = {"goes-to-main-inventory"},
        subgroup = "meat-products",
        order = "a[meat-bone-floor]",
        place_as_tile = {
            result = "bone-floor",
            condition_size = 4,
            condition = {"water-tile"}
        },
        stack_size = 50
    },
    {
        type = "recipe",
        name = "bone-floor",
        enabled = false,
        energy_required = 4,
        ingredients = {{"meat-bones", 5}},
        results = {
            {type = "item", name = "bone-floor", amount = 10}
        }
    },
    {
        type = "tile",
        name = "bone-floor",
        needs_correction = false,
        minable = {hardness = 0.2, mining_time = 0.5, result = "bone-floor"},
        mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
        collision_mask = {"ground-tile"},
        walking_speed_modifier = 0.6,
        layer = 60,
        decorative_removal_probability = 0.25,
        variants = {
            main = {
                {
                    picture = "__base__/graphics/terrain/stone-path/stone-path-1.png",
                    count = 16,
                    size = 1
                },
                {
                    picture = "__base__/graphics/terrain/stone-path/stone-path-2.png",
                    count = 4,
                    size = 2,
                    probability = 0.39,
                },
                {
                    picture = "__base__/graphics/terrain/stone-path/stone-path-4.png",
                    count = 4,
                    size = 4,
                    probability = 1,
                },
            },
            inner_corner = {
                picture = "__base__/graphics/terrain/stone-path/stone-path-inner-corner.png",
                count = 8
            },
            outer_corner = {
                picture = "__base__/graphics/terrain/stone-path/stone-path-outer-corner.png",
                count = 1
            },
            side = {
                picture = "__base__/graphics/terrain/stone-path/stone-path-side.png",
                count = 10
            },
            u_transition = {
                picture = "__base__/graphics/terrain/stone-path/stone-path-u.png",
                count = 10
            },
            o_transition = {
                picture = "__base__/graphics/terrain/stone-path/stone-path-o.png",
                count = 10
            }
        },
        walking_sound = {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },
        map_color = {r = 50, g = 50, b = 50},
        ageing = 0.0004,
        vehicle_friction_modifier = 10
    }
})
