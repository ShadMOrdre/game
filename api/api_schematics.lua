
game.api.schematics = {}
game.api.schematics.path = game.api.path .. "/api_schematics"
game.api.schematics.ver_maj = 0
game.api.schematics.ver_min = 0
game.api.schematics.ver_rev = 1

--game.api.schematics.read = dofile(game.api.schematics.path .. "/lib_csv_read.lua")


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
--game.api.schematics.delete
game.api.schematics.insert = function(name, def)
	schem_list[name] = def
end
--game.api.schematics.select
--game.api.schematics.update

game.api.schematics.convert_mts2lua = dofile(game.api.schematics.path .. "/api_schematics_convert/api_schematics_convert_mts2lua.lua")
--game.api.schematics.convert.mts2we
--game.api.schematics.convert.lua2mts
--game.api.schematics.convert.lua2we
--game.api.schematics.convert.we2lua
--game.api.schematics.convert.we2mts

--game.api.schematics.load.lua
--game.api.schematics.load.mts
--game.api.schematics.load.we

--game.api.schematics.save.lua
--game.api.schematics.save.mts
--game.api.schematics.save.we

--game.api.schematics.place
--game.api.schematics.get_node_list

