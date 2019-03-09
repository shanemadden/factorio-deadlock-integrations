-- Update speeds to match belts after they've been updated
-- t1
if data.raw.loader["transport-belt-loader"] then
	data.raw.loader["transport-belt-loader"].speed = data.raw["transport-belt"]["transport-belt"].speed
end
if data.raw.furnace["transport-belt-beltbox"] then
	data.raw.furnace["transport-belt-beltbox"].crafting_speed = data.raw["transport-belt"]["transport-belt"].speed * 18
end
-- t2
if data.raw.loader["fast-transport-belt-loader"] then
	data.raw.loader["fast-transport-belt-loader"].speed = data.raw["transport-belt"]["fast-transport-belt"].speed
end
if data.raw.furnace["fast-transport-belt-beltbox"] then
	data.raw.furnace["fast-transport-belt-beltbox"].crafting_speed = data.raw["transport-belt"]["fast-transport-belt"].speed * 18
end
-- t3
if data.raw.loader["express-transport-belt-loader"] then
	data.raw.loader["express-transport-belt-loader"].speed = data.raw["transport-belt"]["express-transport-belt"].speed
end
if data.raw.furnace["express-transport-belt-beltbox"] then
	data.raw.furnace["express-transport-belt-beltbox"].crafting_speed = data.raw["transport-belt"]["express-transport-belt"].speed * 18
end

-- Bob's
-- t0
if data.raw.loader["basic-transport-belt-loader"] then
	data.raw.loader["basic-transport-belt-loader"].speed = data.raw["transport-belt"]["basic-transport-belt"].speed
end
if data.raw.furnace["basic-transport-belt-beltbox"] then
	data.raw.furnace["basic-transport-belt-beltbox"].crafting_speed = data.raw["transport-belt"]["basic-transport-belt"].speed * 18
end
-- t4
if data.raw.loader["turbo-transport-belt-loader"] then
	data.raw.loader["turbo-transport-belt-loader"].speed = data.raw["transport-belt"]["turbo-transport-belt"].speed
end
if data.raw.furnace["turbo-transport-belt-beltbox"] then
	data.raw.furnace["turbo-transport-belt-beltbox"].crafting_speed = data.raw["transport-belt"]["turbo-transport-belt"].speed * 18
end
-- t5
if data.raw.loader["ultimate-transport-belt-loader"] then
	data.raw.loader["ultimate-transport-belt-loader"].speed = data.raw["transport-belt"]["ultimate-transport-belt"].speed
end
if data.raw.furnace["ultimate-transport-belt-beltbox"] then
	data.raw.furnace["ultimate-transport-belt-beltbox"].crafting_speed = data.raw["transport-belt"]["ultimate-transport-belt"].speed * 18
end
