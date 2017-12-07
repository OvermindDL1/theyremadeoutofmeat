-- Construction Bots will only deliver if they have a Roboport (of their force) and Chest (of their force) in range of items marked for deconstruction by their force

local meat_ports
script.on_init(function(e)
    global.meat_ports = {}
    meat_ports = global.meat_ports

    game.create_force("meat-bot-force")
    local meat_force = game.forces["meat-bot-force"]
    for i, force in pairs(game.forces) do
        force.set_friend(meat_force, true)
        meat_force.set_friend(force, true)
    end
end)
script.on_load(function(e)
    meat_ports = global.meat_ports
end)

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(e)
    if e.created_entity.name == "meat-robot" or e.created_entity.name == "meat-chest" or e.created_entity.name == "meat-roboport" then
        e.created_entity.force = "meat-bot-force"
        if e.created_entity.name == "meat-roboport" then
            table.insert(meat_ports, e.created_entity)
        end
    end
end)
script.on_event({defines.events.on_force_created}, function(e)
    local meat_force = game.forces["meat-bot-force"]
    e.force.set_friend(meat_force, true)
    meat_force.set_friend(e.force, true)
end)

script.on_event({defines.events.on_tick}, function(e)
    if e.tick % 120 ~= 52 then return end
    
    for i=#meat_ports, 1, -1 do
        local meatport = meat_ports[i]
        if not meatport.valid then
            table.remove(meat_ports, i)
        else
            local items = meatport.surface.find_entities_filtered({
                area={{meatport.position.x - 50, meatport.position.y - 50}, {meatport.position.x + 50, meatport.position.y + 50}},
                name = "item-on-ground"
            })
            local scheduled_meat = 0
            for i2=1, #items do
                local item = items[i2]
                if item.stack.name == "raw-meat" then
                    item.order_deconstruction("meat-bot-force")
                    scheduled_meat = scheduled_meat + 1
                    if scheduled_meat >= 8 then
                        break
                    end
                end
            end
        end
    end
end)
