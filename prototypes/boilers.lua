data:extend({
    {
        type = "trivial-smoke",
        name = "meat-smoke",
        flags = {"not-on-map"},
        duration = 900,
        fade_in_duration = 0,
        fade_away_duration = 450,
        spread_duration = 450,
        start_scale = 0.20,
        end_scale = 1.3,
        color = {r = 0.5, g = 0.1, b = 0.1, a = 0.4},
        cyclic = true,
        affected_by_wind = true,
        animation = {
            width = 152,
            height = 120,
            line_length = 5,
            frame_count = 60,
            axially_symmetrical = false,
            direction_count = 1,
            shift = {-0.53125, -0.4375},
            priority = "high",
            animation_speed = 0.25,
            filename = "__base__/graphics/entity/smoke/smoke.png",
            flags = {"smoke"}
        }
    },
    {
        type = "recipe",
        name = "meat-boiler",
        enabled = false,
        ingredients = {{"boiler", 1}, {"raw-meat", 4}},
        result = "meat-boiler"
    },
    {
        type = "item",
        name = "meat-boiler",
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "meat-products",
        order = "b[steam-power]-a[boiler]",
        place_result = "meat-boiler",
        stack_size = 50
    },
    {
        type = "boiler",
        name = "meat-boiler",
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "meat-boiler"},
        max_health = 250,
        corpse = "small-remnants",
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        mode = "output-to-separate-pipe",
        resistances = {
          {
            type = "fire",
            percent = 90
          },
          {
            type = "explosion",
            percent = 30
          },
          {
            type = "impact",
            percent = 30
          }
        },
        fast_replaceable_group = "boiler",
        collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
        selection_box = {{-1.5, -1}, {1.5, 1}},
        target_temperature = 165,
        fluid_box = {
          base_area = 1,
          height = 2,
          base_level = -1,
          pipe_covers = pipecoverspictures(),
          pipe_connections = {
            {type = "input-output", position = {-2, 0.5}},
            {type = "input-output", position = {2, 0.5}}
          },
          production_type = "input-output",
          filter = "liquid-blood"
        },
        output_fluid_box = {
          base_area = 1,
          height = 2,
          base_level = 1,
          pipe_covers = pipecoverspictures(),
          pipe_connections = {
            {type = "output", position = {0, -1.5}}
          },
          production_type = "output",
          filter = "steam"
        },
        energy_consumption = "1.8MW",
        energy_source = {
            type = "burner",
            fuel_category = "meat",
            effectivity = 0.7,
            fuel_inventory_size = 1,
            emissions = 0.1 / 13,
            smoke = {
                {
                    name = "meat-smoke",
                    north_position = util.by_pixel(-38, -47.5),
                    south_position = util.by_pixel(38.5, -32),
                    east_position = util.by_pixel(20, -70),
                    west_position = util.by_pixel(-19, -8.5),
                    frequency = 15,
                    starting_vertical_speed = 0.0,
                    starting_frame_deviation = 60
                }
            }
        },
        working_sound = {
            sound = {
                filename = "__base__/sound/boiler.ogg",
                volume = 0.8
            },
            max_sounds_per_type = 3
        },
        structure = table.deepcopy(data.raw.boiler["boiler"].structure),
        patch = table.deepcopy(data.raw.boiler["boiler"].patch),
        fire_flicker_enabled = true,
        fire = table.deepcopy(data.raw.boiler["boiler"].fire),
        fire_glow_flicker_enabled = true,
        fire_glow = table.deepcopy(data.raw.boiler["boiler"].fire_glow),
        burning_cooldown = 20
    }
})
