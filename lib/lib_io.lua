
--IO Library

game.lib.io = {}
game.lib.io.name = "lib_io"
game.lib.io.path = game.lib.path .. "/lib_io"
game.lib.io.ver_maj = 0
game.lib.io.ver_min = 0
game.lib.io.ver_rev = 1


game.lib.io.get_file_list = dofile(game.lib.io.path .. "/lib_io_get_file_list.lua")

game.lib.io.get_file_list_by_type = dofile(game.lib.io.path .. "/lib_io_get_file_list_by_type.lua")


