
game.library.table = {}
game.library.table.path = game.library.path .. "/lib_table"
game.library.table.ver_maj = 0
game.library.table.ver_min = 0
game.library.table.ver_rev = 1

game.library.table.contains_substring = dofile(game.library.table.path .. "/lib_table_contains_substring.lua")