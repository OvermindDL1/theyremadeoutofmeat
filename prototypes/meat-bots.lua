data:extend({
    {
        type = "item",
        name = "meat-roboport",
        icon = "__base__/graphics/icons/roboport.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "meat-products",
        order = "a[meat-robotics]-a[roboport]",
        place_result = "meat-roboport",
        stack_size = 5
    },
    {
        type = "recipe",
        name = "meat-roboport",
        enabled = false,
        ingredients = {
            {"roboport", 1},
            {"boneless-meat", 20}
        },
        result = "meat-roboport",
        energy_required = 1
    },

    {
        type = "item",
        name = "meat-chest",
        icon = "__base__/graphics/icons/logistic-chest-storage.png",
        flags = {"goes-to-quickbar"},
        subgroup = "meat-products",
        order = "a[meat-robotics]-b[chest]",
        place_result = "meat-chest",
        stack_size = 50
    },
    {
        type = "recipe",
        name = "meat-chest",
        enabled = false,
        ingredients = {
            {"logistic-chest-storage", 1},
            {"boneless-meat", 5}
        },
        result = "meat-chest",
        requester_paste_multiplier = 4
    },
    {
        type = "logistic-container",
        name = "meat-chest",
        icon = "__base__/graphics/icons/logistic-chest-storage.png",
        flags = {"placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "meat-chest"},
        max_health = 350,
        corpse = "small-remnants",
        collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        resistances = {
            {
                type = "fire",
                percent = 90
            },
            {
                type = "impact",
                percent = 60
            }
        },
        fast_replaceable_group = "container",
        inventory_size = 48,
        logistic_mode = "storage",
        open_sound = {filename = "__base__/sound/metallic-chest-open.ogg", volume = 0.65},
        close_sound = {filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7},
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        picture = {
            filename = "__base__/graphics/entity/logistic-chest/logistic-chest-storage.png",
            priority = "extra-high",
            width = 38,
            height = 32,
            shift = {0.09375, 0}
        },
        circuit_wire_connection_point = {
            shadow = {
                red = {0.734375, 0.453125},
                green = {0.609375, 0.515625}
            },
            wire = {
                red = {0.40625, 0.21875},
                green = {0.40625, 0.375}
            }
        },
        circuit_wire_max_distance = 9,
        circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18)
    },
    {
        type = "item",
        name = "meat-robot",
        icon = "__base__/graphics/icons/construction-robot.png", -- todo cover in meat
        flags = {"goes-to-main-inventory"},
        subgroup = "meat-products",
        order = "a[meat-robotics]-c[robot]",
        place_result = "meat-robot",
        stack_size = 50
    },
    {
        type = "recipe",
        name = "meat-robot",
        enabled = false,
        ingredients = {
            {"construction-robot", 1},
            {"boneless-meat", 2}
        },
        result = "meat-robot"
    },
    {
        type = "construction-robot",
        name = "meat-robot",
        icon = "__base__/graphics/icons/construction-robot.png",
        flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
        minable = {hardness = 0.1, mining_time = 0.1, result = "meat-robot"},
        resistances = {{type = "fire", percent = 85}},
        max_health = 100,
        collision_box = {{0, 0}, {0, 0}},
        selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
        max_payload_size = 2,
        speed = 0.06,
        transfer_distance = 0.5,
        max_energy = "1.5MJ",
        energy_per_tick = "0.05kJ",
        speed_multiplier_when_out_of_energy = 0.25,
        energy_per_move = "2.5kJ",
        min_to_charge = 0.2,
        max_to_charge = 0.95,
        working_light = {intensity = 0.8, size = 3, color = {r = 0.8, g = 0.5, b = 0.5}},
        idle = {
            filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
            priority = "high",
            line_length = 16,
            width = 32,
            height = 36,
            frame_count = 1,
            shift = {0, -0.15625},
            direction_count = 16
        },
        in_motion = {
            filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
            priority = "high",
            line_length = 16,
            width = 32,
            height = 36,
            frame_count = 1,
            shift = {0, -0.15625},
            direction_count = 16,
            y = 36
        },
        shadow_idle = {
            filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 50,
            height = 24,
            frame_count = 1,
            shift = {1.09375, 0.59375},
            direction_count = 16
        },
        shadow_in_motion = {
            filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 50,
            height = 24,
            frame_count = 1,
            shift = {1.09375, 0.59375},
            direction_count = 16
        },
        working = {
            filename = "__base__/graphics/entity/construction-robot/construction-robot-working.png",
            priority = "high",
            line_length = 2,
            width = 28,
            height = 36,
            frame_count = 2,
            shift = {0, -0.15625},
            direction_count = 16,
            animation_speed = 0.3
        },
        shadow_working = {
            stripes = util.multiplystripes(
                2,
                {
                    {
                        filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
                        width_in_frames = 16,
                        height_in_frames = 1
                    }
                }
            ),
            priority = "high",
            width = 50,
            height = 24,
            frame_count = 2,
            shift = {1.09375, 0.59375},
            direction_count = 16
        },
        smoke = {
            filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
            width = 39,
            height = 32,
            frame_count = 19,
            line_length = 19,
            shift = {0.078125, -0.15625},
            animation_speed = 0.3
        },
        sparks = {
            {
                filename = "__base__/graphics/entity/sparks/sparks-01.png",
                width = 39,
                height = 34,
                frame_count = 19,
                line_length = 19,
                shift = {-0.109375, 0.3125},
                tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
                animation_speed = 0.3
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-02.png",
                width = 36,
                height = 32,
                frame_count = 19,
                line_length = 19,
                shift = {0.03125, 0.125},
                tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
                animation_speed = 0.3
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-03.png",
                width = 42,
                height = 29,
                frame_count = 19,
                line_length = 19,
                shift = {-0.0625, 0.203125},
                tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
                animation_speed = 0.3
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-04.png",
                width = 40,
                height = 35,
                frame_count = 19,
                line_length = 19,
                shift = {-0.0625, 0.234375},
                tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
                animation_speed = 0.3
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-05.png",
                width = 39,
                height = 29,
                frame_count = 19,
                line_length = 19,
                shift = {-0.109375, 0.171875},
                tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
                animation_speed = 0.3
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-06.png",
                width = 44,
                height = 36,
                frame_count = 19,
                line_length = 19,
                shift = {0.03125, 0.3125},
                tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
                animation_speed = 0.3
            }
        },
        working_sound = flying_robot_sounds(),
        cargo_centered = {0.0, 0.2},
        construction_vector = {0.30, 0.22}
    }
})

local meatport = table.deepcopy(data.raw.roboport["roboport"])
meatport.name = "meat-roboport"
meatport.logistics_radius = 4
meatport.construction_radius = 50
meatport.robot_slots_count = 8
meatport.material_slots_count = 0
meatport.minable.result = "meat-roboport"
data:extend({meatport})
