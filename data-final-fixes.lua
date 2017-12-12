for _, types in pairs({"unit-spawner", "unit", "turret"}) do
    for _, unit in pairs(data.raw[types]) do
        if unit.max_health > 0 and (unit.name:find("biter") or unit.name:find("spitter") or unit.name:find("worm")) then
            if not unit.loot then unit.loot = {} end
            unit.loot[#unit.loot+1] = {
                count_max = math.min(50, math.max(1, math.floor(math.sqrt(unit.max_health/10)))),
                count_min = 1,
                item = "raw-meat",
                to_be_looted = false,
                probability = 1
            }
        end
    end
end
