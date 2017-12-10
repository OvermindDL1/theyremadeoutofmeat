if angelsmods and angelsmods.petrochem then
    data.raw.recipe["dry-meat"].category = "liquifying"
    table.insert(data.raw["technology"]["meat-blood-processing"].prerequisites, "basic-chemistry")

	angelsmods.functions.OV.remove_input("solid-fuel-meat", "heavy-oil")
    angelsmods.functions.OV.patch_recipes({
        {
            name = "solid-fuel-meat",
            category = "liquifying",
            icon = "__angelspetrochem__/graphics/icons/solid-fuel-naphtha.png",
            ingredients = {
                {type = "item", name = "compressed-meat-cube", amount = 1},
                {type = "fluid", name = "liquid-naphtha", amount = 50}
            },
            results = {
                {type = "item", name = "solid-fuel", amount = 2}
            },
        }
    })
end

if angelsmods and angelsmods.smelting then
    data.raw.recipe["compress-meat"].category = "blast-smelting"
    table.insert(data.raw["technology"]["meat-fuel-processing"].prerequisites, "angels-metallurgy-1")
end

if angelsmods and angelsmods.bioprocessing then
	angelsmods.functions.OV.remove_input("compressed-meat-cube", "wood")
    angelsmods.functions.OV.patch_recipes({
        {
            name = "compressed-meat-cube",
            ingredients = {
                {type = "item", name = "cellulose-fibre", amount = 8}
            },
        }
    })
end
