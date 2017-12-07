data:extend({
    {
        type = "recipe",
        name = "bone-bullets",
        enabled = false,
        energy_required = 5,
        ingredients = {{"meat-bones", 10}},
        result = "bone-bullets"
    },
    {
        type = "ammo",
        name = "bone-bullets",
        icon = "__TheyreMadeOutofMeat__/graphics/icons/bone-bullets.png",
        flags = {"goes-to-main-inventory"},
        ammo_type = {
            category = "bullet",
            action = {
                {
                    type = "direct",
                    action_delivery = {
                        {
                            type = "instant",
                            source_effects = {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot"
                                }
                            },
                            target_effects = {
                                {
                                    type = "create-entity",
                                    entity_name = "blood-explosion-small" --"explosion-hit"
                                },
                                {
                                    type = "damage",
                                    damage = {amount = 7, type = "physical"}
                                }
                            }
                        }
                    }
                }
            }
        },
        magazine_size = 50,
        subgroup = "ammo",
        order = "a[basic-clips]-a[firearm-magazine-bone]",
        stack_size = 200
    },
    {
        type = "recipe",
        name = "bone-axe",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {"iron-stick", 2},
            {"meat-bones", 10}
        },
        result = "bone-axe"
    },
    {
        type = "mining-tool",
        name = "bone-axe",
        icon = "__base__/graphics/icons/steel-axe.png", -- todo
        flags = {"goes-to-main-inventory"},
        action = {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    type = "damage",
                    damage = {amount = 50, type = "physical"}
                }
            }
        },
        durability = 5000,
        subgroup = "tool",
        order = "a[mining]-bb[bone-axe]",
        speed = 4,
        stack_size = 20
    }
})
