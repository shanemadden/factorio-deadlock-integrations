local function add_technology_prerequisite(technology, prerequisite)
    for _, techname in ipairs(technology.prerequisites) do
        if techname == prerequisite then return end
    end
    table.insert(technology.prerequisites, prerequisite)
end

-- Factorio-Extended

-- [Stainless steel tech]
deadlock.add_stack("stainless-steel", nil, "stainless-steel", 32)
deadlock.add_tier({
    transport_belt = "transport-belt-1",
    colour = {r = 169, g = 118, b = 21},
    underground_belt = "underground-belt-1",
    splitter = "splitter-1",
    technology = "stainless-steel-tech",
    order = "d",
    loader_ingredients = {
        {"express-transport-belt-loader", 1}, {"stainless-steel", 40},
        {"iron-gear-wheel", 20},
        {amount = 40, name = "lubricant", type = "fluid"}
    },
    loader_category = "crafting-with-fluid",
    beltbox_ingredients = {
        {"express-transport-belt-beltbox", 1}, {"stainless-steel", 40},
        {"iron-gear-wheel", 40}, {"processing-unit", 5}
    },
    beltbox_technology = "deadlock-stacking-4"
})

if data.raw.technology["deadlock-stacking-4"] then
    add_technology_prerequisite(data.raw.technology["deadlock-stacking-4"],
                                "stainless-steel-tech")
    add_technology_prerequisite(data.raw.technology["deadlock-stacking-4"],
                                "deadlock-stacking-3")
end

if data.raw.furnace["transport-belt-1-beltbox"] then
    data.raw.furnace["express-transport-belt-beltbox"].next_upgrade =
        "transport-belt-1-beltbox"
end
if data.raw["loader-1x1"]["transport-belt-1-loader"] then
    data.raw["loader-1x1"]["express-transport-belt-loader"].next_upgrade =
        "transport-belt-1-loader"
end

-- [Titanium tech]
deadlock.add_stack("titanium-ore", nil, "titanium-processing", 32)
deadlock.add_stack("titanium-rod", nil, "titanium-processing", 32)
deadlock.add_tier({
    transport_belt = "transport-belt-2",
    colour = {r = 10, g = 225, b = 25},
    underground_belt = "underground-belt-2",
    splitter = "splitter-2",
    technology = "titanium-tech",
    order = "d",
    loader_ingredients = {
        {"transport-belt-1-loader", 1}, {"titanium-rod", 40},
        {"iron-gear-wheel", 20},
        {amount = 40, name = "lubricant", type = "fluid"}
    },
    loader_category = "crafting-with-fluid",
    beltbox_ingredients = {
        {"transport-belt-1-beltbox", 1}, {"titanium-rod", 40},
        {"iron-gear-wheel", 40}, {"processing-unit", 5}
    },
    beltbox_technology = "deadlock-stacking-5"
})

if data.raw.technology["deadlock-stacking-5"] then
    add_technology_prerequisite(data.raw.technology["deadlock-stacking-5"],
                                "titanium-tech")
    add_technology_prerequisite(data.raw.technology["deadlock-stacking-5"],
                                "deadlock-stacking-4")
end

if data.raw.furnace["transport-belt-2-beltbox"] then
    data.raw.furnace["transport-belt-1-beltbox"].next_upgrade =
        "transport-belt-2-beltbox"
end
if data.raw["loader-1x1"]["transport-belt-2-loader"] then
    data.raw["loader-1x1"]["transport-belt-1-loader"].next_upgrade =
        "transport-belt-2-loader"
end

-- [Graphene tech]
deadlock.add_stack("graphene", nil, "graphene-processing", 32)
deadlock.add_tier({
    transport_belt = "transport-belt-3",
    colour = {r = 225, g = 25, b = 225},
    underground_belt = "underground-belt-3",
    splitter = "splitter-3",
    technology = "graphene-tech",
    order = "d",
    loader_ingredients = {
        {"transport-belt-2-loader", 1}, {"graphene", 40},
        {"iron-gear-wheel", 20},
        {amount = 40, name = "lubricant", type = "fluid"}
    },
    loader_category = "crafting-with-fluid",
    beltbox_ingredients = {
        {"transport-belt-1-beltbox", 1}, {"graphene", 40},
        {"iron-gear-wheel", 40}, {"processing-unit", 5}
    },
    beltbox_technology = "deadlock-stacking-6"
})

if data.raw.technology["deadlock-stacking-6"] then
    add_technology_prerequisite(data.raw.technology["deadlock-stacking-6"],
                                "graphene-tech")
    add_technology_prerequisite(data.raw.technology["deadlock-stacking-6"],
                                "deadlock-stacking-5")
end

if data.raw.furnace["transport-belt-3-beltbox"] then
    data.raw.furnace["transport-belt-2-beltbox"].next_upgrade =
        "transport-belt-3-beltbox"
end
if data.raw["loader-1x1"]["transport-belt-3-loader"] then
    data.raw["loader-1x1"]["transport-belt-2-loader"].next_upgrade =
        "transport-belt-3-loader"
end
