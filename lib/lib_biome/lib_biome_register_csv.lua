--
-- Register biomes
--

-- Define constants that can be used in csv
local heights = {
	ocean_depth = game.lib.mapgen.ocean_depth,
	beach_depth = game.lib.mapgen.beach_depth,
	sea_level = game.lib.mapgen.sea_level,
	beach = game.lib.mapgen.maxheight_beach,
	coastal = game.lib.mapgen.maxheight_coastal,
	lowland = game.lib.mapgen.maxheight_lowland,
	shelf = game.lib.mapgen.maxheight_shelf,
	highland = game.lib.mapgen.maxheight_highland,
	mountain = game.lib.mapgen.maxheight_mountain,
	snow_min = game.lib.mapgen.minheight_snow,
	snow_max = game.lib.mapgen.maxheight_snow,
	strato = game.lib.mapgen.maxheight_strato,
}

local temperatures = {
	hot = game.lib.mapgen.temperature_hot,
	warm = game.lib.mapgen.temperature_warm,
	temperate = game.lib.mapgen.temperature_temperate,
	cool = game.lib.mapgen.temperature_cool,
	cold = game.lib.mapgen.temperature_cold,
}

local humidities = {
	humid = game.lib.mapgen.humidity_humid,
	semihumid = game.lib.mapgen.humidity_semihumid,
	temperate = game.lib.mapgen.humidity_temperate,
	semiarid = game.lib.mapgen.humidity_semiarid,
	arid = game.lib.mapgen.humidity_arid,
}

local function read_node_str(node_str)
	if #node_str > 0 then
		local node, count = node_str:match("([^%s]+)%s*(%d*)")
		return node, tonumber(count) or 1
	end
end

local function biome_register_csv(separator, biome_csv_path)
	for i, biome in ipairs(game.lib.csv.read(separator, biome_csv_path)) do
		local a, b, c, d, e, f, g, h, i, j, k, l = unpack(biome)
		--minetest.log(a .. ", " .. b .. ", " .. c .. ", " .. d .. ", " .. e .. ", " .. f .. ", " .. g .. ", " .. h .. ", " .. i .. ", " .. j .. ", " .. k .. ", " .. l)
	
		-- Parse node names: transform empty strings into nil and separate node and count
		b = read_node_str(b)
		local c1, c2 = read_node_str(c)
		local d1, d2 = read_node_str(d)
		e = read_node_str(e)
		local f1, f2 = read_node_str(f)
		g = read_node_str(g)
		h = read_node_str(h)
	
		minetest.register_biome({
			name = a,
			node_dust = b,
			node_top = c1,
			depth_top = c2,
			node_filler = d1,
			depth_filler = d2,
			node_stone = e,
			node_water_top = f1,
			depth_water_top = f2,
			node_water = g,
			node_river_water = h,
			y_min = tonumber(i) or heights[i],
			y_max = tonumber(j) or heights[j],
			vertical_blend = game.lib.mapgen.biome_vertical_blend,
			heat_point = tonumber(k) or temperatures[k],
			humidity_point = tonumber(l) or humidities[l],
		})
	end
end

return biome_register_csv

