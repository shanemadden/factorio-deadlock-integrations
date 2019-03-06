-- Factorio-Extended
deadlock.add_tier({
	transport_belt      = "blistering-transport-belt",
	colour              = {r=10, g=225, b=25},
	underground_belt    = "blistering-transport-belt-to-ground",
	splitter            = "blistering-splitter",
	technology          = "logistics-4",
	order               = "d",
	loader_ingredients  = {
		{"express-transport-belt-loader",1},
		{"iron-gear-wheel",20},
		{amount = 40,name = "lubricant",type = "fluid"},
	},
	loader_category     = "crafting-with-fluid",
	beltbox_ingredients = {
		{"express-transport-belt-beltbox",1},
		{"iron-plate",40},
		{"iron-gear-wheel",40},
		{"processing-unit",5},
	},
	beltbox_technology  = "deadlock-stacking-4",
})
if data.raw.technology["deadlock-stacking-4"] then
	local found = false
	for _, techname in ipairs(data.raw.technology["deadlock-stacking-4"].prerequisites) do
		if techname == "deadlock-stacking-3" then
			found = true
			break
		end
	end
	if not found then
		table.insert(data.raw.technology["deadlock-stacking-4"].prerequisites, "deadlock-stacking-3")
	end
end

deadlock.add_tier({
	transport_belt      = "furious-transport-belt",
	colour              = {r=10, g=25, b=225},
	underground_belt    = "furious-transport-belt-to-ground",
	splitter            = "furious-splitter",
	technology          = "logistics-5",
	order               = "e",
	loader_ingredients  = {
		{"blistering-transport-belt-loader",1},
		{"iron-gear-wheel",20},
		{amount = 80,name = "lubricant",type = "fluid"}
	},
	loader_category     = "crafting-with-fluid",
	beltbox_ingredients = {
		{"blistering-transport-belt-beltbox",1},
		{"iron-plate",50},
		{"iron-gear-wheel",50},
		{"processing-unit",20}
	},
	beltbox_technology = "deadlock-stacking-5",
})
if data.raw.technology["deadlock-stacking-5"] then
	local found = false
	for _, techname in ipairs(data.raw.technology["deadlock-stacking-5"].prerequisites) do
		if techname == "deadlock-stacking-4" then
			found = true
			break
		end
	end
	if not found then
		table.insert(data.raw.technology["deadlock-stacking-5"].prerequisites, "deadlock-stacking-4")
	end
end
