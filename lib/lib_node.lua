
--Node library

game.lib.node = {}
game.lib.node.name = "lib_node"
game.lib.node.path = game.lib.path .. "/lib_node"
game.lib.node.ver_maj = 0
game.lib.node.ver_min = 0
game.lib.node.ver_rev = 1

node_registration_override = false
if node_registration_override then
	local mt_register_node = minetest.register_node
	function minetest.register_node(name, def)
		mt_register_node(":game:" .. name, def)
	end
else

end


game.lib.node.register_csv = dofile(game.lib.node.path .. "/lib_node_register_csv.lua")

game.lib.node.register = dofile(game.lib.node.path .. "/lib_node_register.lua")

game.lib.node.register_to_game = dofile(game.lib.node.path .. "/lib_node_register_to_game.lua")

game.lib.node.register_alias = dofile(game.lib.node.path .. "/lib_node_register_alias.lua")

game.lib.node.register_alias_to_game = dofile(game.lib.node.path .. "/lib_node_register_alias_to_game.lua")


