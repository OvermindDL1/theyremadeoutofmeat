script.on_event({defines.events.on_player_removed_equipment}, function (e)
    if e.equipment == "bone-armor-speedmod" then
        e.grid.put({name="bone-armor-speedmod"})
    end
end)
--[[
script.on_event({defines.events.on_player_main_inventory_changed}, function (e)
    local player = game.players[e.player_index]
    player.remove_item({name="bone-armor-speedmod"})
end)
]]
script.on_event({defines.events.on_player_cursor_stack_changed}, function (e)
    local player = game.players[e.player_index]
    local stack = player.cursor_stack
    if not stack.valid or not stack.valid_for_read then return end
    if stack.name == "bone-armor-speedmod" then
        stack.clear()
    end
end)

script.on_event({defines.events.on_player_armor_inventory_changed}, function (e)
    local player = game.players[e.player_index]
    if player == nil then return end
    local armor_inventory = player.get_inventory(defines.inventory.player_armor)
    if armor_inventory == nil or armor_inventory.is_empty() then return end
    local armor = armor_inventory[1]
    if armor == nil then return end
    if not armor.valid then return end
    if not armor.valid_for_read then return end
    if armor.name ~= "bone-armor" then return end
    armor.grid.put({name="bone-armor-speedmod"})
end)