# Tags new floor switches with what block they'll replace
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:air run tag @s add air
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:water run tag @s add water
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:grass_block run tag @s add grass_block
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:cobblestone run tag @s add cobblestone
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:coarse_dirt run tag @s add coarse_dirt
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:sand run tag @s add sand
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:packed_ice run tag @s add packed_ice
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:stone_slab run tag @s add stone_slab
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:snow_block run tag @s add snow_block
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:oak_planks run tag @s add oak_planks
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:orange_terracotta run tag @s add orange_terracotta
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:polished_granite run tag @s add polished_granite
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:red_wool run tag @s add red_wool
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:quartz_block run tag @s add quartz_block
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:terracotta run tag @s add terracotta
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:polished_andesite run tag @s add polished_andesite
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:smooth_red_sandstone run tag @s add smooth_red_sandstone
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:red_nether_bricks run tag @s add red_nether_bricks
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:iron_block run tag @s add iron_block
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=north] run tag @s add black_glazed_terracotta_north
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=south] run tag @s add black_glazed_terracotta_south
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=east] run tag @s add black_glazed_terracotta_east
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:black_glazed_terracotta[facing=west] run tag @s add black_glazed_terracotta_west
# Delete this
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:stone_bricks run tag @s add stone_bricks
execute unless entity @s[scores={FloorSwitchTime=0..}] if block ~ ~-1 ~ minecraft:cyan_terracotta run tag @s add cyan_terracotta

# New floor switches needs the score
execute unless entity @s[scores={FloorSwitchTime=0..}] run scoreboard players set @s FloorSwitchTime 0

# Not a green
scoreboard players remove @s[scores={FloorSwitchTime=1..},tag=!green_floor_switch] FloorSwitchTime 1

# Play sound
execute if entity @s[scores={FloorSwitchTime=0}] if block ~ ~ ~ minecraft:chest run playsound medabots_server:block.floor_switch block @a ~ ~ ~ 1
execute if entity @s[scores={FloorSwitchTime=0}] if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=hostile,type=!minecraft:item,tag=!guard,tag=!move_target,tag=!guard] run playsound medabots_server:block.floor_switch block @a ~ ~ ~ 1
execute if entity @s[scores={FloorSwitchTime=0}] if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=guard] unless entity @e[distance=..0.7,tag=hostile,type=minecraft:item] run playsound medabots_server:block.floor_switch block @a ~ ~ ~ 1

# Not a yellow floor switch
execute if block ~ ~ ~ minecraft:chest run scoreboard players set @s[tag=!yellow_floor_switch] FloorSwitchTime 2
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=hostile,type=!minecraft:item,tag=!guard,tag=!move_target] run scoreboard players set @s[tag=!yellow_floor_switch] FloorSwitchTime 2
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=guard] unless entity @e[distance=..0.7,tag=hostile,type=minecraft:item] run scoreboard players set @s[tag=!yellow_floor_switch] FloorSwitchTime 2

# Yellow floor switch
execute if entity @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_2] if block ~ ~ ~ minecraft:chest run scoreboard players set @s FloorSwitchTime 40
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=hostile,type=!minecraft:item,tag=!guard,tag=!move_target] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_2] FloorSwitchTime 40
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=guard] unless entity @e[distance=..0.7,tag=hostile,type=minecraft:item] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_2] FloorSwitchTime 40
execute if entity @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_5] if block ~ ~ ~ minecraft:chest run scoreboard players set @s FloorSwitchTime 100
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=hostile,type=!minecraft:item,tag=!guard,tag=!move_target] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_5] FloorSwitchTime 100
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=guard] unless entity @e[distance=..0.7,tag=hostile,type=minecraft:item] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_5] FloorSwitchTime 100
execute if entity @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_10] if block ~ ~ ~ minecraft:chest run scoreboard players set @s FloorSwitchTime 200
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=hostile,type=!minecraft:item,tag=!guard,tag=!move_target] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_10] FloorSwitchTime 200
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=guard] unless entity @e[distance=..0.7,tag=hostile,type=minecraft:item] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_10] FloorSwitchTime 200
execute if entity @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_20] if block ~ ~ ~ minecraft:chest run scoreboard players set @s FloorSwitchTime 400
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=hostile,type=!minecraft:item,tag=!guard,tag=!move_target] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_20] FloorSwitchTime 400
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=guard] unless entity @e[distance=..0.7,tag=hostile,type=minecraft:item] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_20] FloorSwitchTime 400
execute if entity @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_30] if block ~ ~ ~ minecraft:chest run scoreboard players set @s FloorSwitchTime 600
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=hostile,type=!minecraft:item,tag=!guard,tag=!move_target] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_30] FloorSwitchTime 600
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=guard] unless entity @e[distance=..0.7,tag=hostile,type=minecraft:item] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_30] FloorSwitchTime 600
execute if entity @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_40] if block ~ ~ ~ minecraft:chest run scoreboard players set @s FloorSwitchTime 800
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=hostile,type=!minecraft:item,tag=!guard,tag=!move_target] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_40] FloorSwitchTime 800
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=guard] unless entity @e[distance=..0.7,tag=hostile,type=minecraft:item] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_40] FloorSwitchTime 800
execute if entity @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_60] if block ~ ~ ~ minecraft:chest run scoreboard players set @s FloorSwitchTime 1200
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=hostile,type=!minecraft:item,tag=!guard,tag=!move_target] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_60] FloorSwitchTime 1200
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=guard] unless entity @e[distance=..0.7,tag=hostile,type=minecraft:item] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_60] FloorSwitchTime 1200
execute if entity @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_120] if block ~ ~ ~ minecraft:chest run scoreboard players set @s FloorSwitchTime 2400
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=hostile,type=!minecraft:item,tag=!guard,tag=!move_target] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_120] FloorSwitchTime 2400
execute if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=guard] unless entity @e[distance=..0.7,tag=hostile,type=minecraft:item] run scoreboard players set @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0},tag=delay_120] FloorSwitchTime 2400

# Set the lit/unlit floor switch block
execute if entity @s[tag=green_floor_switch,scores={FloorSwitchTime=0}] run setblock ~ ~-1 ~ minecraft:green_wool
execute if entity @s[tag=green_floor_switch,scores={FloorSwitchTime=1..}] run setblock ~ ~-1 ~ minecraft:lime_wool
execute if entity @s[tag=blue_floor_switch,scores={FloorSwitchTime=0}] run setblock ~ ~-1 ~ minecraft:blue_wool
execute if entity @s[tag=blue_floor_switch,scores={FloorSwitchTime=1..}] run setblock ~ ~-1 ~ minecraft:light_blue_wool
execute if entity @s[tag=yellow_floor_switch,scores={FloorSwitchTime=0}] run setblock ~ ~-1 ~ minecraft:orange_wool
execute if entity @s[tag=yellow_floor_switch,scores={FloorSwitchTime=1..}] run setblock ~ ~-1 ~ minecraft:yellow_wool

# Remove when cleaning up stage
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
execute if entity @s[tag=dead,tag=stone_bricks] run setblock ~ ~-1 ~ minecraft:stone_bricks
execute if entity @s[tag=dead,tag=cyan_terracotta] run setblock ~ ~-1 ~ minecraft:cyan_terracotta
kill @s[tag=dead]