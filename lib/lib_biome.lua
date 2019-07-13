
--Biome library

game.lib.biome = {}
game.lib.biome.name = "lib_biome"
game.lib.biome.path = game.lib.path .. "/lib_biome"
game.lib.biome.ver_maj = 0
game.lib.biome.ver_min = 0
game.lib.biome.ver_rev = 1

game.lib.biome.register_csv = dofile(game.lib.biome.path .. "/lib_biome_register_csv.lua")

