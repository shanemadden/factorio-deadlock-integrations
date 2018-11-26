-- Bob's Logistics
if data.raw["transport-belt"]["basic-transport-belt"] then
	deadlock.add_tier({
		transport_belt      = "basic-transport-belt",
		colour              = {r=165, g=165, b=165},
		underground_belt    = "basic-underground-belt",
		splitter            = "basic-splitter",
		technology          = "bob-logistics-0",
		order               = "0",
		loader_ingredients  = {
			{"basic-transport-belt",1},
			{"stone",1},
			{"wood",1}
		},
		beltbox_ingredients = {
			{"basic-transport-belt",1},
			{"stone",4},
			{"wood",4}
		},
	})
end

local t4_loader_ingredients = {
	{"express-transport-belt-loader",1}
}
if data.raw.item["titanium-plate"] then
	table.insert(t4_loader_ingredients, {"titanium-plate",7})
else
	table.insert(t4_loader_ingredients, {"steel-plate",7})
end
if data.raw.item["titanium-bearing"] then
	table.insert(t4_loader_ingredients, {amount = 10,name = "titanium-bearing"})
end
if data.raw.item["titanium-gear-wheel"] then
	table.insert(t4_loader_ingredients, {"titanium-gear-wheel",10})
else
	table.insert(t4_loader_ingredients, {"iron-gear-wheel",10})
end

deadlock.add_tier({
	transport_belt      = "turbo-transport-belt",
	colour              = {r=165,g=10,b=225},
	underground_belt    = "turbo-underground-belt",
	splitter            = "turbo-splitter",
	technology          = "bob-logistics-4",
	order               = "d",
	loader_ingredients  = t4_loader_ingredients,
	beltbox_ingredients = {
		{"express-transport-belt-beltbox",1},
		{"iron-plate",40},
		{"iron-gear-wheel",40},
		{"processing-unit",5}
	},
	beltbox_technology  = "deadlock-stacking-4",
})


local t5_loader_ingredients = {
	{"turbo-transport-belt-loader",1}
}
if data.raw.item["nitinol-alloy"] then
	table.insert(t5_loader_ingredients, {"nitinol-alloy",7})
else
	table.insert(t5_loader_ingredients, {"steel-plate",7})
end
if data.raw.item["nitinol-bearing"] then
	table.insert(t5_loader_ingredients, {amount = 10,name = "titanium-bearing"})
end
if data.raw.item["nitinol-gear-wheel"] then
	table.insert(t5_loader_ingredients, {"nitinol-gear-wheel",10})
else
	table.insert(t5_loader_ingredients, {"iron-gear-wheel",10})
end
deadlock.add_tier({
	transport_belt      = "ultimate-transport-belt",
	colour              = {r=10,g=225,b=25},
	underground_belt    = "ultimate-underground-belt",
	splitter            = "ultimate-splitter",
	technology          = "bob-logistics-5",
	order               = "e",
	loader_ingredients  = t5_loader_ingredients,
	beltbox_ingredients = {
		{"turbo-transport-belt-beltbox",1},
		{"iron-plate",50},
		{"iron-gear-wheel",50},
		{"processing-unit",20}
	},
	beltbox_technology  = "deadlock-stacking-5",
})
