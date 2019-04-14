if mods["xander-mod"] then
	require("prototypes.xander")
end
if mods["boblogistics"] then
	if settings.startup["deadlock-integrations-new-bob-recipes"].value then
		require("prototypes.bob-new")
	else
		require("prototypes.bob")
	end
end
if mods["FactorioExtended-Plus-Transport"] then
	require("prototypes.fextendedplus")
end
if mods["FactorioExtended-Transport"] then
	require("prototypes.fextended")
end
