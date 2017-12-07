if bobsmods and bobmods.greenhouse then
    data:extend({
        {
            type = "recipe",
            name = "meat-bones-bob-fertiliser",
            category = "chemistry",
            energy_required = 3,
            enabled = false,
            ingredients = {
                {type = "item", name = "meat-bones", amount = 2},
                {type = "item", name = "stone", amount = 1}
            },
            result = "fertiliser"
        },
    })
    if bobmods.lib then
        bobmods.lib.tech.add_recipe_unlock("bob-fertiliser", "meat-bones-bob-fertiliser")
    end
end
