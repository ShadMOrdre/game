
--library object.

game.lib.path = game.path_mod .. "/lib"
game.path_lib = game.lib.path

game.lib.ver_maj = 0
game.lib.ver_min = 0
game.lib.ver_rev = 1



dofile(game.lib.path .. "/lib_io.lua")

dofile(game.lib.path .. "/lib_table.lua")

dofile(game.lib.path .. "/lib_csv.lua")

dofile(game.lib.path .. "/lib_config.lua")


dofile(game.lib.path .. "/lib_node.lua")

dofile(game.lib.path .. "/lib_schematics.lua")

dofile(game.lib.path .. "/lib_mapgen.lua")

dofile(game.lib.path .. "/lib_biome.lua")

dofile(game.lib.path .. "/lib_ore.lua")

dofile(game.lib.path .. "/lib_ecosystem.lua")

dofile(game.lib.path .. "/lib_decoration.lua")

