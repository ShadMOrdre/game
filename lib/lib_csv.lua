
--CSV library

game.lib.csv = {}
game.lib.csv.name = "lib_csv"
game.lib.csv.path = game.lib.path .. "/lib_csv"
game.lib.csv.ver_maj = 0
game.lib.csv.ver_min = 0
game.lib.csv.ver_rev = 1

game.lib.csv.read = dofile(game.lib.csv.path .. "/lib_csv_read.lua")