function medabots_server:blocks/tag_for_replacing_block
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:air run tag @s add air_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:water run tag @s add water_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:grass_block run tag @s add grass_block_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:cobblestone run tag @s add cobblestone_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:coarse_dirt run tag @s add coarse_dirt_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:sand run tag @s add sand_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:packed_ice run tag @s add packed_ice_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:smooth_stone run tag @s add smooth_stone_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:jungle_slab[type=top,waterlogged=true] run tag @s add waterlogged_top_jungle_slab_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:oak_slab[type=top,waterlogged=true] run tag @s add waterlogged_top_oak_slab_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:dark_oak_slab[type=top,waterlogged=true] run tag @s add waterlogged_top_dark_oak_slab_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:snow_block run tag @s add snow_block_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:andesite run tag @s add andesite_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:orange_terracotta run tag @s add orange_terracotta_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:light_blue_terracotta run tag @s add light_blue_terracotta_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:light_gray_terracotta run tag @s add light_gray_terracotta_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:purple_terracotta run tag @s add purple_terracotta_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:green_terracotta run tag @s add green_terracotta_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:lime_terracotta run tag @s add lime_terracotta_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:gray_terracotta run tag @s add yellow_terracotta_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:blue_ice run tag @s add gray_terracotta_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:yellow_terracotta run tag @s add blue_ice_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:polished_granite run tag @s add polished_granite_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:red_wool run tag @s add red_wool_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:quartz_block run tag @s add quartz_block_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:terracotta run tag @s add terracotta_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:polished_andesite run tag @s add polished_andesite_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:smooth_red_sandstone run tag @s add smooth_red_sandstone_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:red_nether_bricks run tag @s add red_nether_bricks_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:iron_block run tag @s add iron_block_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:black_glazed_terracotta[facing=north] run tag @s add north_black_glazed_terracotta_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:black_glazed_terracotta[facing=south] run tag @s add south_black_glazed_terracotta_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:black_glazed_terracotta[facing=east] run tag @s add east_black_glazed_terracotta_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:black_glazed_terracotta[facing=west] run tag @s add west_black_glazed_terracotta_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:barrier run tag @s add barrier_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:air run tag @s add air_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:water run tag @s add water_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:grass_block run tag @s add grass_block_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:cobblestone run tag @s add cobblestone_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:coarse_dirt run tag @s add coarse_dirt_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:sand run tag @s add sand_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:packed_ice run tag @s add packed_ice_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:smooth_stone run tag @s add smooth_stone_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:jungle_slab[type=top,waterlogged=true] run tag @s add waterlogged_top_jungle_slab_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:oak_slab[type=top,waterlogged=true] run tag @s add waterlogged_top_oak_slab_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:dark_oak_slab[type=top,waterlogged=true] run tag @s add waterlogged_top_dark_oak_slab_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:snow_block run tag @s add snow_block_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:andesite run tag @s add andesite_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:orange_terracotta run tag @s add orange_terracotta_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:light_blue_terracotta run tag @s add light_blue_terracotta_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:light_gray_terracotta run tag @s add light_gray_terracotta_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:purple_terracotta run tag @s add purple_terracotta_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:green_terracotta run tag @s add green_terracotta_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:lime_terracotta run tag @s add lime_terracotta_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:yellow_terracotta run tag @s add yellow_terracotta_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:gray_terracotta run tag @s add gray_terracotta_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:blue_ice run tag @s add blue_ice_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:polished_granite run tag @s add polished_granite_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:red_wool run tag @s add red_wool_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:quartz_block run tag @s add quartz_block_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:terracotta run tag @s add terracotta_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:polished_andesite run tag @s add polished_andesite_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:smooth_red_sandstone run tag @s add smooth_red_sandstone_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:red_nether_bricks run tag @s add red_nether_bricks_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:iron_block run tag @s add iron_block_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:black_glazed_terracotta[facing=north] run tag @s add north_black_glazed_terracotta_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:black_glazed_terracotta[facing=south] run tag @s add south_black_glazed_terracotta_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:black_glazed_terracotta[facing=east] run tag @s add east_black_glazed_terracotta_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:black_glazed_terracotta[facing=west] run tag @s add west_black_glazed_terracotta_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:barrier run tag @s add barrier_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:air run tag @s add air_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:water run tag @s add water_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:grass_block run tag @s add grass_block_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:cobblestone run tag @s add cobblestone_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:coarse_dirt run tag @s add coarse_dirt_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:sand run tag @s add sand_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:packed_ice run tag @s add packed_ice_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:smooth_stone run tag @s add smooth_stone_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:jungle_slab[type=top,waterlogged=true] run tag @s add waterlogged_top_jungle_slab_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:oak_slab[type=top,waterlogged=true] run tag @s add waterlogged_top_oak_slab_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:dark_oak_slab[type=top,waterlogged=true] run tag @s add waterlogged_top_dark_oak_slab_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:snow_block run tag @s add snow_block_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:andesite run tag @s add andesite_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:orange_terracotta run tag @s add orange_terracotta_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:light_blue_terracotta run tag @s add light_blue_terracotta_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:light_gray_terracotta run tag @s add light_gray_terracotta_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:purple_terracotta run tag @s add purple_terracotta_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:green_terracotta run tag @s add green_terracotta_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:lime_terracotta run tag @s add lime_terracotta_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:yellow_terracotta run tag @s add yellow_terracotta_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:gray_terracotta run tag @s add gray_terracotta_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:blue_ice run tag @s add blue_ice_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:polished_granite run tag @s add polished_granite_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:red_wool run tag @s add red_wool_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:quartz_block run tag @s add quartz_block_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:terracotta run tag @s add terracotta_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:polished_andesite run tag @s add polished_andesite_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:smooth_red_sandstone run tag @s add smooth_red_sandstone_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:red_nether_bricks run tag @s add red_nether_bricks_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:iron_block run tag @s add iron_block_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:black_glazed_terracotta[facing=north] run tag @s add north_black_glazed_terracotta_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:black_glazed_terracotta[facing=south] run tag @s add south_black_glazed_terracotta_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:black_glazed_terracotta[facing=east] run tag @s add east_black_glazed_terracotta_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:black_glazed_terracotta[facing=west] run tag @s add west_black_glazed_terracotta_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:barrier run tag @s add barrier_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:air run tag @s add air_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:water run tag @s add water_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:grass_block run tag @s add grass_block_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:cobblestone run tag @s add cobblestone_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:coarse_dirt run tag @s add coarse_dirt_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:sand run tag @s add sand_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:packed_ice run tag @s add packed_ice_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:smooth_stone run tag @s add smooth_stone_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:jungle_slab[type=top,waterlogged=true] run tag @s add waterlogged_top_jungle_slab_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:oak_slab[type=top,waterlogged=true] run tag @s add waterlogged_top_oak_slab_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:dark_oak_slab[type=top,waterlogged=true] run tag @s add waterlogged_top_dark_oak_slab_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:snow_block run tag @s add snow_block_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:andesite run tag @s add andesite_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:orange_terracotta run tag @s add orange_terracotta_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:light_blue_terracotta run tag @s add light_blue_terracotta_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:light_gray_terracotta run tag @s add light_gray_terracotta_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:purple_terracotta run tag @s add purple_terracotta_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:green_terracotta run tag @s add green_terracotta_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:lime_terracotta run tag @s add lime_terracotta_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:yellow_terracotta run tag @s add yellow_terracotta_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:gray_terracotta run tag @s add gray_terracotta_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:blue_ice run tag @s add blue_ice_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:polished_granite run tag @s add polished_granite_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:red_wool run tag @s add red_wool_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:quartz_block run tag @s add quartz_block_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:terracotta run tag @s add terracotta_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:polished_andesite run tag @s add polished_andesite_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:smooth_red_sandstone run tag @s add smooth_red_sandstone_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:red_nether_bricks run tag @s add red_nether_bricks_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:iron_block run tag @s add iron_block_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:black_glazed_terracotta[facing=north] run tag @s add north_black_glazed_terracotta_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:black_glazed_terracotta[facing=south] run tag @s add south_black_glazed_terracotta_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:black_glazed_terracotta[facing=east] run tag @s add east_black_glazed_terracotta_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:black_glazed_terracotta[facing=west] run tag @s add west_black_glazed_terracotta_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:barrier run tag @s add barrier_1
# Delete this
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:cyan_terracotta run tag @s add cyan_terracotta_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:cyan_terracotta run tag @s add cyan_terracotta_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:cyan_terracotta run tag @s add cyan_terracotta_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:cyan_terracotta run tag @s add cyan_terracotta_1
execute if entity @s[tag=east] if block ~1 ~-1 ~ minecraft:stone_bricks run tag @s add stone_bricks_1
execute if entity @s[tag=west] if block ~-1 ~-1 ~ minecraft:stone_bricks run tag @s add stone_bricks_1
execute if entity @s[tag=north] if block ~ ~-1 ~-1 minecraft:stone_bricks run tag @s add stone_bricks_1
execute if entity @s[tag=south] if block ~ ~-1 ~1 minecraft:stone_bricks run tag @s add stone_bricks_1

scoreboard players set @s Time 0