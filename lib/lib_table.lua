
--Table Library

game.lib.table = {}
game.lib.table.name = "table"
game.lib.table.path = game.lib.path .. "/lib_table"
game.lib.table.ver_maj = 0
game.lib.table.ver_min = 0
game.lib.table.ver_rev = 1

game.lib.table.contains_substring = dofile(game.lib.table.path .. "/lib_table_contains_substring.lua")