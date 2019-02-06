

--print(dump2(xpfw.mod_store))
minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- start loading from "..minetest.get_modpath(minetest.get_current_modname()))
-- Load files

if glooptest ~= nil and minetest.registered_items["technic_aluminum:ruby"] ~= nil then
end

if glooptest ~= nil and minetest.registered_items["technic_aluminum:sapphire"] ~= nil then
end

minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- loaded ")
