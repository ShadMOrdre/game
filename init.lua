
game = {}
game.version = "1.0"
game.path_mod = minetest.get_modpath(minetest.get_current_modname())
game.path_world = minetest.get_worldpath()

-- Intllib
local S
local NS
if minetest.get_modpath("intllib") then
	S = intllib.Getter()
else
	S, NS = dofile(game.path_mod.."/intllib.lua")
end
game.intllib = S

minetest.log(S("[MOD] game:  Loading..."))

--game.world_type = minetest.settings:get("game_world_type")
--minetest.log(S("[MOD]: game:  Using world type " .. tostring(game.world_type)))


game.api = {}  --provides hooks for accessing the installed APIs
game.library = {} --Provides access to libraries functions called JIT.
game.players = {}  --controls all aspects of player.  Sets the definition of and controls attributes of(avatar and game stats)
game.rules = {}  --Provides a library of functions for creating the "rules" of a game based on the type of game chosen.
game.world = {}  --Provides general world data during runtime



dofile(game.path_mod .. "/game_api.lua")
dofile(game.path_mod .. "/game_lib.lua")





		--API functionality.  This is concept, not official.  May not even possilble.
		--game.register_library
		--game.register_api = function(name, def)
		--game.register_player = function(player, def)
		--game.register_ruleset = function(ruleset, def)
		
		--game.callbacks = function(name, callbacks)





minetest.log(S("[MOD] game:  Successfully loaded."))

