data:extend({
    {
        type = "item",
        name = "raw-meat",
        icon = "__TheyreMadeOutofMeat__/graphics/icons/raw-meat.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        fuel_value = "500kJ",
        fuel_category = "chemical",
        subgroup = "meat-products",
        order = "a[meat-1]",
        stack_size = 50
    },
    {
        type = "item",
        name = "dry-meat",
        icon = "__TheyreMadeOutofMeat__/graphics/icons/dry-meat.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        fuel_value = "1MJ",
        fuel_category = "meat",
        subgroup = "meat-products",
        order = "a[meat-2]",
        stack_size = 50
    },
    {
        type = "item",
        name = "boneless-meat",
        icon = "__TheyreMadeOutofMeat__/graphics/icons/boneless-meat.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        fuel_value = "1MJ",
        fuel_category = "meat",
        subgroup = "meat-products",
        order = "a[meat-3]",
        stack_size = 100
    },
    {
        type = "item",
        name = "compressed-meat-cube",
        icon = "__TheyreMadeOutofMeat__/graphics/icons/compressed-meat-cube.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        fuel_value = "24MJ",
        fuel_category = "meat",
        subgroup = "meat-products",
        order = "a[meat-4]",
        stack_size = 50
    },
    {
        type = "fluid",
        name = "liquid-blood",
        icon = "__TheyreMadeOutofMeat__/graphics/icons/liquid-blood.png",
        icon_size = 32,
        default_temperature = 25,
        max_temperature = 100,
        heat_capacity = "0.1kJ",
        base_color = {r = 0.7, g = 0.2, b = 0.1},
        flow_color = {r = 0.9, g = 0.2, b = 0.1},
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    {
        type = "item",
        name = "meat-bones",
        icon = "__TheyreMadeOutofMeat__/graphics/icons/meat-bones.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "meat-products",
        order = "a[meat-5]",
        stack_size = 100
    },
    {
        type = "capsule",
        name = "meat-burger",
        icon = "__TheyreMadeOutofMeat__/graphics/icons/meat-burger.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "meat-products",
        capsule_action = {
          type = "use-on-self",
          attack_parameters = {
            type = "projectile",
            ammo_category = "capsule",
            cooldown = 30,
            range = 0,
            ammo_type = {
              category = "capsule",
              target_type = "position",
              action = {
                type = "direct",
                action_delivery = {
                  type = "instant",
                  target_effects = {
                    type = "damage",
                    damage = {type = "physical", amount = -80}
                  }
                }
              }
            }
          }
        },
        order = "a[meat-z-burger]",
        stack_size = 10
    }
})
