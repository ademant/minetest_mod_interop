

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

minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- loaded ")
