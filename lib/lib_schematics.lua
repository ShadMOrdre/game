
-- Schematics Library

game.lib.schematics = {}
game.lib.schematics.name = "schematics"
game.lib.schematics.path = game.lib.path .. "/lib_schematics"
game.lib.schematics.ver_maj = 0
game.lib.schematics.ver_min = 0
game.lib.schematics.ver_rev = 1


local schem_list = {
	schem_name = "",
	--local schem_size = {
	--	local x = nil,
	--	local y = nil,
	--	local z = nil
	--},
	--local schem_data = {},
	--local schem_yslice = {}
	schem_def = {}
}



--game.lib.schematics.delete

game.lib.schematics.insert = function(name, def)
	schem_list[name] = def
end

game.lib.schematics.select = function(name)
	return schem_list[name].def
end

--game.lib.schematics.update


game.lib.schematics.convert = dofile(game.lib.schematics.path .. "/lib_schematics_convert.lua")
--game.lib.schematics.convert = {}
--game.lib.schematics.convert.mts2lua = dofile(game.lib.schematics.path .. "/lib_schematics_convert/lib_schematics_convert_mts2lua.lua")
--game.lib.schematics.convert_mts2lua = dofile(game.lib.schematics.path .. "/lib_schematics_convert/lib_schematics_convert_mts2lua.lua")
--game.lib.schematics.convert.mts2we
--game.lib.schematics.convert.lua2mts
--game.lib.schematics.convert.lua2we
--game.lib.schematics.convert.we2lua
--game.lib.schematics.convert.we2mts

--game.lib.schematics.load.lua
--game.lib.schematics.load.mts
--game.lib.schematics.load.we

--game.lib.schematics.save.lua
--game.lib.schematics.save.mts
--game.lib.schematics.save.we

--game.lib.schematics.place
--game.lib.schematics.get_node_list

