execute if block ~ ~-1 ~ minecraft:air run tag @s add air
execute if block ~ ~-1 ~ minecraft:water run tag @s add water
execute if block ~ ~-1 ~ minecraft:grass_block run tag @s add grass_block
execute if block ~ ~-1 ~ minecraft:cobblestone run tag @s add cobblestone
execute if block ~ ~-1 ~ minecraft:coarse_dirt run tag @s add coarse_dirt
execute if block ~ ~-1 ~ minecraft:sand run tag @s add sand
execute if block ~ ~-1 ~ minecraft:packed_ice run tag @s add packed_ice
execute if block ~ ~-1 ~ minecraft:smooth_stone_slab run tag @s add smooth_stone_slab
execute if block ~ ~-1 ~ minecraft:snow_block run tag @s add snow_block
execute if block ~ ~-1 ~ minecraft:oak_planks run tag @s add oak_planks
execute if block ~ ~-1 ~ minecraft:orange_terracotta run tag @s add orange_terracotta
execute if block ~ ~-1 ~ minecraft:polished_granite run tag @s add polished_granite
execute if block ~ ~-1 ~ minecraft:red_wool run tag @s add red_wool
execute if block ~ ~-1 ~ minecraft:quartz_block run tag @s add quartz_block
execute if block ~ ~-1 ~ minecraft:terracotta run tag @s add terracotta
execute if block ~ ~-1 ~ minecraft:polished_andesite run tag @s add polished_andesite
execute if block ~ ~-1 ~ minecraft:smooth_red_sandstone run tag @s add smooth_red_sandstone
execute if block ~ ~-1 ~ minecraft:red_nether_bricks run tag @s add red_nether_bricks
execute if block ~ ~-1 ~ minecraft:iron_block run tag @s add iron_block
execute if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=north] run tag @s add black_glazed_terracotta_north
execute if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=south] run tag @s add black_glazed_terracotta_south
execute if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=east] run tag @s add black_glazed_terracotta_east
execute if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=west] run tag @s add black_glazed_terracotta_west
# Delete this
execute if block ~ ~-1 ~ minecraft:stone_bricks run tag @s add stone_bricks
execute if block ~ ~-1 ~ minecraft:cyan_terracotta run tag @s add cyan_terracotta
scoreboard players add @s Time 0
setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"medabots_server:stage/goal_area",mode:"LOAD"}
setblock ~ ~ ~ minecraft:redstone_block