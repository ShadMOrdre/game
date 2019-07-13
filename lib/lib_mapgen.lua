
--Mapgen Library

game.lib.mapgen = {}
game.lib.mapgen.name = "lib_mapgen"
game.lib.mapgen.path = game.lib.path .. "/lib_mapgen"
game.lib.mapgen.ver_maj = 0
game.lib.mapgen.ver_min = 0
game.lib.mapgen.ver_rev = 1



game.lib.mapgen.mg_params = minetest.get_mapgen_params()
game.lib.mapgen.mg_seed = game.lib.mapgen.mg_params.seed

game.lib.mapgen.mgv7_mapgen_scale_factor =  8
game.lib.mapgen.biome_altitude_range =  40

--DEFAULTS
-- -192, -4, 0, 4, 30, 60, 90, 120, 150, 285, 485, 1250
-- -192, -4, 0, 4, 40, 80, 120, 160, 200, 380, 780, 1800
game.lib.mapgen.ocean_depth = -192
game.lib.mapgen.beach_depth = -4
game.lib.mapgen.sea_level = 0
game.lib.mapgen.maxheight_beach = 4
game.lib.mapgen.maxheight_coastal = game.lib.mapgen.sea_level + game.lib.mapgen.biome_altitude_range
game.lib.mapgen.maxheight_lowland = game.lib.mapgen.maxheight_coastal + game.lib.mapgen.biome_altitude_range
game.lib.mapgen.maxheight_shelf = game.lib.mapgen.maxheight_lowland + game.lib.mapgen.biome_altitude_range
game.lib.mapgen.maxheight_highland = game.lib.mapgen.maxheight_shelf + game.lib.mapgen.biome_altitude_range
game.lib.mapgen.maxheight_mountain = game.lib.mapgen.maxheight_highland + game.lib.mapgen.biome_altitude_range
game.lib.mapgen.minheight_snow = game.lib.mapgen.maxheight_mountain + game.lib.mapgen.biome_altitude_range
game.lib.mapgen.maxheight_snow = game.lib.mapgen.minheight_snow  + (game.lib.mapgen.biome_altitude_range * 2)
game.lib.mapgen.maxheight_strato = game.lib.mapgen.maxheight_snow  + (game.lib.mapgen.biome_altitude_range * (game.lib.mapgen.mgv7_mapgen_scale_factor / 2))

-- 100, 75, 50, 25, 0
-- 90, 75, 50, 25, 10
-- 90, 70, 50, 30, 10
game.lib.mapgen.temperature_hot = 100
game.lib.mapgen.temperature_warm = 75
game.lib.mapgen.temperature_temperate = 50
game.lib.mapgen.temperature_cool = 25
game.lib.mapgen.temperature_cold = 0
game.lib.mapgen.humidity_humid = 100
game.lib.mapgen.humidity_semihumid = 75
game.lib.mapgen.humidity_temperate = 50
game.lib.mapgen.humidity_semiarid = 25
game.lib.mapgen.humidity_arid = 0

-- 8, 4
game.lib.mapgen.biome_vertical_blend = game.lib.mapgen.biome_altitude_range / 5

minetest.clear_registered_biomes()
minetest.clear_registered_decorations()
minetest.clear_registered_ores()

