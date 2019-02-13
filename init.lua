

--print(dump2(xpfw.mod_store))
minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- start loading from "..minetest.get_modpath(minetest.get_current_modname()))
-- Load files

-- remove glooptest ruby, if technic ruby is defined
if glooptest ~= nil and minetest.registered_items["technic_aluminum:ruby"] ~= nil then
	if minetest.registered_items["glooptest:mineral_ruby"] ~= nil then
		minetest.unregister_item("glooptest:mineral_ruby")
	end
end

-- remove glooptest sapphire, if technic sapphire is defined
if glooptest ~= nil and minetest.registered_items["technic_aluminum:sapphire"] ~= nil then
	if minetest.registered_items["glooptest:mineral_sapphire"] ~= nil then
		minetest.unregister_item("glooptest:mineral_sapphire")
	end
end

-- add bags to treasures
if treasures ~= nil and minetest.registered_items["bags:small"] ~= nil then
	if minetest.registered_items["bags:small"] ~= nil then
		treasures.add_drop("treasures:treasure1",{items="bags:small",rarety=15})
		treasures.add_drop("treasures:treasure2",{items="bags:small",rarety=10})
	end
end
if treasures ~= nil and minetest.registered_items["bags:medium"] ~= nil then
	if minetest.registered_items["bags:medium"] ~= nil then
		treasures.add_drop("treasures:treasure3",{items="bags:medium",rarety=15})
		treasures.add_drop("treasures:treasure4",{items="bags:medium",rarety=15})
	end
end
if treasures ~= nil and minetest.registered_items["bags:big"] ~= nil then
	if minetest.registered_items["bags:big"] ~= nil then
		treasures.add_drop("treasures:treasure5",{items="bags:big",rarety=15})
	end
end

minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- loaded ")
