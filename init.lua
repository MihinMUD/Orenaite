minetest.register_tool("orenaite:orenaite_shovel", {
	description = "Orenaite Shovel",
	inventory_image = "orenaite_shovel.png",
	wield_image = "orenaite_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=0.50, [2]=0.50, [3]=0.30}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	groups = {shovel = 1}
})

minetest.register_craft({
	output = "orenaite:orenaite_shovel",
	recipe = {
		{"", "orenaite:orenaite", ""},
		{"", "default:stick",""},
		{"", "default:stick",""},
	}
})


minetest.register_tool("orenaite:orenaite_axe", {
	description = "Orenaite Axe",
	inventory_image = "orenaite_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=0.90, [2]=0.90, [3]=0.50}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
	groups = {axe = 1}
})

minetest.register_craft({
	output = "orenaite:orenaite_axe",
	recipe = {
		{"orenaite:orenaite", "orenaite:orenaite", ""},
		{"orenaite:orenaite", "default:stick",""},
		{"", "default:stick",""},
	}
})


minetest.register_tool("orenaite:orenaite_sword", {
	description = "Orenaite Sword",
	inventory_image = "orenaite_sword.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.90, [2]=0.90, [3]=0.30}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	groups = {sword = 1}
})

minetest.register_craft({
	output = "orenaite:orenaite_sword",
	recipe = {
		{"", "orenaite:orenaite", ""},
		{"", "orenaite:orenaite",""},
		{"", "default:stick", ""},
	}
})




minetest.register_craft({
	output = "orenaite:pick_orenaite",
	recipe = {
		{"orenaite:orenaite", "orenaite:orenaite", "orenaite:orenaite"},
		{"", "default:stick",""},
		{"", "default:stick",""},
	}
})

minetest.register_tool("orenaite:pick_orenaite", {
	description = "Orenaite Pickaxe",
	inventory_image = "orenaitepickaxe.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.0, [2]=1.0, [3]=0.50}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	groups = {pickaxe = 1}
})



minetest.register_node("orenaite:orenaite_ore", {
	description = "Ornaite Ore",
	tiles = {"default_stone.png^orenaite_ore.png"},
	groups = {cracky = 3},
	drop = "orenaite:orenaite",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "orenaite:orenaite_ore",
	wherein        = "default:stone",
	clust_scarcity = 8 * 8 * 8,
	clust_num_ores = 8,
	clust_size     = 3,
	y_max          = -1000,
	y_min          = -31000,
})



minetest.register_node("orenaite:orenaite_block", {
	description = "Orenaite Block",
	tiles = {"orenaite_block.png"},
	groups = {cracky = 1},
})

minetest.register_craft({
	output = "orenaite:orenaite_block",
	recipe = {
		{"orenaite:orenaite", "orenaite:orenaite", "orenaite:orenaite"},
		{"orenaite:orenaite", "orenaite:orenaite", "orenaite:orenaite"},
		{"orenaite:orenaite", "orenaite:orenaite", "orenaite:orenaite"},
	}
})


minetest.register_craftitem("orenaite:orenaite", {
	description = "Orenaite",
	inventory_image = "orenaite.png",
})

minetest.register_craft({
	output = "orenaite:orenaite 9",
	recipe = {{"orenaite:orenaite_block"}}
})



