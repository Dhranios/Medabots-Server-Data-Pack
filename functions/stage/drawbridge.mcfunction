# Tags new draw bridges with what blocks they'll replace
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:air run tag @s add air
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:water run tag @s add water
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:grass_block run tag @s add grass_block
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:cobblestone run tag @s add cobblestone
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:coarse_dirt run tag @s add coarse_dirt
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:sand run tag @s add sand
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:packed_ice run tag @s add packed_ice
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:stone_slab run tag @s add stone_slab
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:snow_block run tag @s add snow_block
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:oak_planks run tag @s add oak_planks
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:orange_terracotta run tag @s add orange_terracotta
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:polished_granite run tag @s add polished_granite
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:red_wool run tag @s add red_wool
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:quartz_block run tag @s add quartz_block
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:terracotta run tag @s add terracotta
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:polished_andesite run tag @s add polished_andesite
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:smooth_red_sandstone run tag @s add smooth_red_sandstone
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:red_nether_bricks run tag @s add red_nether_bricks
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:iron_block run tag @s add iron_block
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=north] run tag @s add black_glazed_terracotta_north
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=south] run tag @s add black_glazed_terracotta_south
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=east] run tag @s add black_glazed_terracotta_east
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=west] run tag @s add black_glazed_terracotta_west
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:air run tag @s add air_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:water run tag @s add water_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:grass_block run tag @s add grass_block_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:cobblestone run tag @s add cobblestone_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:coarse_dirt run tag @s add coarse_dirt_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:sand run tag @s add sand_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:packed_ice run tag @s add packed_ice_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:stone_slab run tag @s add stone_slab_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:snow_block run tag @s add snow_block_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:orange_terracotta run tag @s add orange_terracotta_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:polished_granite run tag @s add polished_granite_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:red_wool run tag @s add red_wool_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:quartz_block run tag @s add quartz_block_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:terracotta run tag @s add terracotta_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:polished_andesite run tag @s add polished_andesite_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:smooth_red_sandstone run tag @s add smooth_red_sandstone_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:red_nether_bricks run tag @s add red_nether_bricks_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:iron_block run tag @s add iron_block_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:black_glazed_terracotta[facing=north] run tag @s add black_glazed_terracotta_north_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:black_glazed_terracotta[facing=south] run tag @s add black_glazed_terracotta_south_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:black_glazed_terracotta[facing=east] run tag @s add black_glazed_terracotta_east_1
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:black_glazed_terracotta[facing=west] run tag @s add black_glazed_terracotta_west_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:air run tag @s add air_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:water run tag @s add water_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:grass_block run tag @s add grass_block_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:cobblestone run tag @s add cobblestone_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:coarse_dirt run tag @s add coarse_dirt_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:sand run tag @s add sand_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:packed_ice run tag @s add packed_ice_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:stone_slab run tag @s add stone_slab_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:snow_block run tag @s add snow_block_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:orange_terracotta run tag @s add orange_terracotta_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:polished_granite run tag @s add polished_granite_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:red_wool run tag @s add red_wool_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:quartz_block run tag @s add quartz_block_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:terracotta run tag @s add terracotta_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:polished_andesite run tag @s add polished_andesite_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:smooth_red_sandstone run tag @s add smooth_red_sandstone_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:red_nether_bricks run tag @s add red_nether_bricks_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:iron_block run tag @s add iron_block_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:black_glazed_terracotta[facing=north] run tag @s add black_glazed_terracotta_north_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:black_glazed_terracotta[facing=south] run tag @s add black_glazed_terracotta_south_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:black_glazed_terracotta[facing=east] run tag @s add black_glazed_terracotta_east_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:black_glazed_terracotta[facing=west] run tag @s add black_glazed_terracotta_west_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:air run tag @s add air_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:water run tag @s add water_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:grass_block run tag @s add grass_block_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:cobblestone run tag @s add cobblestone_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:coarse_dirt run tag @s add coarse_dirt_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:sand run tag @s add sand_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:packed_ice run tag @s add packed_ice_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:stone_slab run tag @s add stone_slab_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:snow_block run tag @s add snow_block_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:orange_terracotta run tag @s add orange_terracotta_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:polished_granite run tag @s add polished_granite_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:red_wool run tag @s add red_wool_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:quartz_block run tag @s add quartz_block_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:terracotta run tag @s add terracotta_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:polished_andesite run tag @s add polished_andesite_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:smooth_red_sandstone run tag @s add smooth_red_sandstone_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:red_nether_bricks run tag @s add red_nether_bricks_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:iron_block run tag @s add iron_block_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:black_glazed_terracotta[facing=north] run tag @s add black_glazed_terracotta_north_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:black_glazed_terracotta[facing=south] run tag @s add black_glazed_terracotta_south_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:black_glazed_terracotta[facing=east] run tag @s add black_glazed_terracotta_east_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:black_glazed_terracotta[facing=west] run tag @s add black_glazed_terracotta_west_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:air run tag @s add air_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:water run tag @s add water_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:grass_block run tag @s add grass_block_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:cobblestone run tag @s add cobblestone_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:coarse_dirt run tag @s add coarse_dirt_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:sand run tag @s add sand_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:packed_ice run tag @s add packed_ice_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:stone_slab run tag @s add stone_slab_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:snow_block run tag @s add snow_block_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:orange_terracotta run tag @s add orange_terracotta_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:polished_granite run tag @s add polished_granite_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:red_wool run tag @s add red_wool_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:quartz_block run tag @s add quartz_block_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:terracotta run tag @s add terracotta_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:polished_andesite run tag @s add polished_andesite_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:smooth_red_sandstone run tag @s add smooth_red_sandstone_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:red_nether_bricks run tag @s add red_nether_bricks_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:iron_block run tag @s add iron_block_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:black_glazed_terracotta[facing=north] run tag @s add black_glazed_terracotta_north_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:black_glazed_terracotta[facing=south] run tag @s add black_glazed_terracotta_south_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:black_glazed_terracotta[facing=east] run tag @s add black_glazed_terracotta_east_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:black_glazed_terracotta[facing=west] run tag @s add black_glazed_terracotta_west_1
# Delete this
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:cyan_terracotta run tag @s add cyan_terracotta
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:cyan_terracotta run tag @s add cyan_terracotta_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:cyan_terracotta run tag @s add cyan_terracotta_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:cyan_terracotta run tag @s add cyan_terracotta_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:cyan_terracotta run tag @s add cyan_terracotta_1
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:stone_bricks run tag @s add stone_bricks
execute unless entity @s[scores={Time=0..},tag=east] if block ~1 ~-1 ~ minecraft:stone_bricks run tag @s add stone_bricks_1
execute unless entity @s[scores={Time=0..},tag=west] if block ~-1 ~-1 ~ minecraft:stone_bricks run tag @s add stone_bricks_1
execute unless entity @s[scores={Time=0..},tag=north] if block ~ ~-1 ~-1 minecraft:stone_bricks run tag @s add stone_bricks_1
execute unless entity @s[scores={Time=0..},tag=south] if block ~ ~-1 ~1 minecraft:stone_bricks run tag @s add stone_bricks_1

# New braw bridges need scores
execute unless entity @s[scores={Time=0..}] run scoreboard players set @s Time 0

# Count down timer
scoreboard players remove @s[scores={Time=1..}] Time 1
scoreboard players set @s[tag=dead] Time 0

# Lift the bridge
setblock ~ ~-1 ~ minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east] run setblock ~ ~ ~ minecraft:oak_stairs[facing=east,shape=straight,half=bottom]
execute if entity @s[scores={Time=0},tag=west] run setblock ~ ~ ~ minecraft:oak_stairs[facing=west,shape=straight,half=bottom]
execute if entity @s[scores={Time=0},tag=north] run setblock ~ ~ ~ minecraft:oak_stairs[facing=north,shape=straight,half=bottom]
execute if entity @s[scores={Time=0},tag=south] run setblock ~ ~ ~ minecraft:oak_stairs[facing=south,shape=straight,half=bottom]
execute if entity @s[scores={Time=0}] run setblock ~ ~1 ~ minecraft:black_stained_glass
execute if entity @s[scores={Time=0},tag=east,tag=air_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:air replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=water_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:water replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=grass_block_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:grass_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=cobblestone_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:cobblestone replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=coarse_dirt_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:coarse_dirt replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=sand_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:sand replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=packed_ice_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:packed_ice replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=stone_slab_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:stone_slab[type=double] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=snow_block_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:snow_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=orange_terracotta_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:orange_terracotta replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=polished_granite_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:polished_granite replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=red_wool_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:red_wool replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=quartz_block_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:quartz_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=terracotta_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:terracotta replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=polished_andesite_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:polished_andesite replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=smooth_red_sandstone_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:smooth_red_sandstone replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=red_nether_bricks_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:red_nether_bricks replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=iron_block_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:iron_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=black_glazed_terracotta_north_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:black_glazed_terracotta[facing=north] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=black_glazed_terracotta_south_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:black_glazed_terracotta[facing=south] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=black_glazed_terracotta_east_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:black_glazed_terracotta[facing=east] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=black_glazed_terracotta_west_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:black_glazed_terracotta[facing=west] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=air_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:air replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=water_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:water replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=grass_block_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:grass_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=cobblestone_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:cobblestone replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=coarse_dirt_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:coarse_dirt replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=sand_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:sand replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=packed_ice_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:packed_ice replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=stone_slab_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:stone_slab[type=double] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=snow_block_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:snow_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=orange_terracotta_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:orange_terracotta replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=polished_granite_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:polished_granite replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=red_wool_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:red_wool replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=quartz_block_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:quartz_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=terracotta_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:terracotta replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=polished_andesite_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:polished_andesite replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=smooth_red_sandstone_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:smooth_red_sandstone replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=red_nether_bricks_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:red_nether_bricks replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=iron_block_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:iron_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=black_glazed_terracotta_north_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:black_glazed_terracotta[facing=north] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=black_glazed_terracotta_south_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:black_glazed_terracotta[facing=south] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=black_glazed_terracotta_east_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:black_glazed_terracotta[facing=east] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=black_glazed_terracotta_west_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:black_glazed_terracotta[facing=west] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=air_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:air replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=water_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:water replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=grass_block_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:grass_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=cobblestone_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:cobblestone replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=coarse_dirt_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:coarse_dirt replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=sand_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:sand replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=packed_ice_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:packed_ice replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=stone_slab_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:stone_slab[type=double] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=snow_block_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:snow_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=orange_terracotta_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:orange_terracotta replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=polished_granite_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:polished_granite replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=red_wool_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:red_wool replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=quartz_block_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:quartz_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=terracotta_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:terracotta replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=polished_andesite_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:polished_andesite replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=smooth_red_sandstone_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:smooth_red_sandstone replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=red_nether_bricks_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:red_nether_bricks replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=iron_block_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:iron_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=black_glazed_terracotta_north_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:black_glazed_terracotta[facing=north] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=black_glazed_terracotta_south_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:black_glazed_terracotta[facing=south] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=black_glazed_terracotta_east_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:black_glazed_terracotta[facing=east] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=black_glazed_terracotta_west_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:black_glazed_terracotta[facing=west] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=air_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:air replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=water_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:water replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=grass_block_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:grass_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=cobblestone_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:cobblestone replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=coarse_dirt_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:coarse_dirt replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=sand_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:sand replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=packed_ice_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:packed_ice replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=stone_slab_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:stone_slab[type=double] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=snow_block_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:snow_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=orange_terracotta_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:orange_terracotta replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=polished_granite_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:polished_granite replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=red_wool_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:red_wool replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=quartz_block_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:quartz_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=terracotta_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:terracotta replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=polished_andesite_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:polished_andesite replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=smooth_red_sandstone_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:smooth_red_sandstone replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=red_nether_bricks_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:red_nether_bricks replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=iron_block_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:iron_block replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=black_glazed_terracotta_north_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:black_glazed_terracotta[facing=north] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=black_glazed_terracotta_south_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:black_glazed_terracotta[facing=south] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=black_glazed_terracotta_east_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:black_glazed_terracotta[facing=east] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=black_glazed_terracotta_west_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:black_glazed_terracotta[facing=west] replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=cyan_terracotta_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:cyan_terracotta replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=cyan_terracotta_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:cyan_terracotta replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=cyan_terracotta_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:cyan_terracotta replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=cyan_terracotta_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:cyan_terracotta replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=east,tag=stone_bricks_1] run fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:stone_bricks replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=west,tag=stone_bricks_1] run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:stone_bricks replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=north,tag=stone_bricks_1] run fill ~ ~-1 ~-1 ~ ~-1 ~-1 minecraft:stone_bricks replace minecraft:oak_planks
execute if entity @s[scores={Time=0},tag=south,tag=stone_bricks_1] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:stone_bricks replace minecraft:oak_planks

# Reset the pushing
scoreboard players set @s Moving 0

# Push me
execute if entity @s[scores={Time=0}] positioned ~-1 ~ ~ at @a[distance=..1,scores={Destroy=1..}] run scoreboard players set @s Moving 1
execute if entity @s[scores={Time=0}] positioned ~ ~ ~-1 at @a[distance=..1,scores={Destroy=1..}] run scoreboard players set @s Moving 2
execute if entity @s[scores={Time=0}] positioned ~1 ~ ~ at @a[distance=..1,scores={Destroy=1..}] run scoreboard players set @s Moving 3
execute if entity @s[scores={Time=0}] positioned ~ ~ ~1 at @a[distance=..1,scores={Destroy=1..}] run scoreboard players set @s Moving 4
execute if entity @s[scores={Time=0}] positioned ~-1 ~ ~ at @a[distance=..1,scores={Press=1..}] run scoreboard players set @s Moving 1
execute if entity @s[scores={Time=0}] positioned ~ ~ ~-1 at @a[distance=..1,scores={Press=1..}] run scoreboard players set @s Moving 2
execute if entity @s[scores={Time=0}] positioned ~1 ~ ~ at @a[distance=..1,scores={Press=1..}] run scoreboard players set @s Moving 3
execute if entity @s[scores={Time=0}] positioned ~ ~ ~1 at @a[distance=..1,scores={Press=1..}] run scoreboard players set @s Moving 4
execute if entity @s[scores={Time=0}] positioned ~-1 ~ ~ at @a[distance=..1,scores={Hammer=1..}] run scoreboard players set @s Moving 1
execute if entity @s[scores={Time=0}] positioned ~ ~ ~-1 at @a[distance=..1,scores={Hammer=1..}] run scoreboard players set @s Moving 2
execute if entity @s[scores={Time=0}] positioned ~1 ~ ~ at @a[distance=..1,scores={Hammer=1..}] run scoreboard players set @s Moving 3
execute if entity @s[scores={Time=0}] positioned ~ ~ ~1 at @a[distance=..1,scores={Hammer=1..}] run scoreboard players set @s Moving 4

# Fall if pushed from the correct side
tag @s[scores={Moving=1},tag=east] add fall
tag @s[scores={Moving=2},tag=south] add fall
tag @s[scores={Moving=3},tag=west] add fall
tag @s[scores={Moving=4},tag=north] add fall
scoreboard players set @s[tag=fall] Time 192
tag @s[tag=fall] remove Fall

# Lower the bridge
execute if entity @s[scores={Time=1..}] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute if entity @s[scores={Time=1..},tag=east,tag=!dead] run setblock ~1 ~-1 ~ minecraft:oak_planks
execute if entity @s[scores={Time=1..},tag=south,tag=!dead] run setblock ~ ~-1 ~1 minecraft:oak_planks
execute if entity @s[scores={Time=1..},tag=west,tag=!dead] run setblock ~-1 ~-1 ~ minecraft:oak_planks
execute if entity @s[scores={Time=1..},tag=north,tag=!dead] run setblock ~ ~-1 ~-1 minecraft:oak_planks


# Remove when cleaning up a stage
execute if entity @s[tag=dead,tag=air] run setblock ~ ~-1 ~ minecraft:air
execute if entity @s[tag=dead,tag=water] run setblock ~ ~-1 ~ minecraft:water
execute if entity @s[tag=dead,tag=grass_block] run setblock ~ ~-1 ~ minecraft:grass_block
execute if entity @s[tag=dead,tag=cobblestone] run setblock ~ ~-1 ~ minecraft:cobblestone
execute if entity @s[tag=dead,tag=coarse_dirt] run setblock ~ ~-1 ~ minecraft:coarse_dirt
execute if entity @s[tag=dead,tag=sand] run setblock ~ ~-1 ~ minecraft:sand
execute if entity @s[tag=dead,tag=packed_ice] run setblock ~ ~-1 ~ minecraft:packed_ice
execute if entity @s[tag=dead,tag=stone_slab] run setblock ~ ~-1 ~ minecraft:stone_slab[type=double]
execute if entity @s[tag=dead,tag=oak_planks] run setblock ~ ~-1 ~ minecraft:oak_planks
execute if entity @s[tag=dead,tag=snow_block] run setblock ~ ~-1 ~ minecraft:snow_block
execute if entity @s[tag=dead,tag=stone_bricks] run setblock ~ ~-1 ~ minecraft:stone_bricks
execute if entity @s[tag=dead,tag=orange_terracotta] run setblock ~ ~-1 ~ minecraft:orange_terracotta
execute if entity @s[tag=dead,tag=polished_granite] run setblock ~ ~-1 ~ minecraft:polished_granite
execute if entity @s[tag=dead,tag=red_wool] run setblock ~ ~-1 ~ minecraft:red_wool
execute if entity @s[tag=dead,tag=quartz_block] run setblock ~ ~-1 ~ minecraft:quartz_block
execute if entity @s[tag=dead,tag=terracotta] run setblock ~ ~-1 ~ minecraft:terracotta
execute if entity @s[tag=dead,tag=polished_andesite] run setblock ~ ~-1 ~ minecraft:polished_andesite
execute if entity @s[tag=dead,tag=smooth_red_sandstone] run setblock ~ ~-1 ~ minecraft:smooth_red_sandstone
execute if entity @s[tag=dead,tag=red_nether_bricks] run setblock ~ ~-1 ~ minecraft:red_nether_bricks
execute if entity @s[tag=dead,tag=iron_block] run setblock ~ ~-1 ~ minecraft:iron_block
execute if entity @s[tag=dead,tag=black_glazed_terracotta_north] run setblock ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=north]
execute if entity @s[tag=dead,tag=black_glazed_terracotta_south] run setblock ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=south]
execute if entity @s[tag=dead,tag=black_glazed_terracotta_east] run setblock ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=east]
execute if entity @s[tag=dead,tag=black_glazed_terracotta_west] run setblock ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=west]
execute if entity @s[tag=dead,tag=cyan_terracotta] run setblock ~ ~-1 ~ minecraft:cyan_terracotta
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @s[tag=dead]