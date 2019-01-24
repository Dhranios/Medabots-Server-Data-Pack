# Tags new spring walls with what block they'll replace
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
# Delete this
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:stone_bricks run tag @s add stone_bricks
execute unless entity @s[scores={Time=0..}] if block ~ ~-1 ~ minecraft:cyan_terracotta run tag @s add cyan_terracotta

# New spring walls need scores
execute unless entity @s[scores={Time=-3..300}] run scoreboard players set @s Time 40

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
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @s[tag=dead]

# Force a push if a round stone or ice block moves into the face
execute if block ~ ~ ~ minecraft:piston[facing=east] positioned ~1.2 ~-0.38 ~ if entity @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=3}] run scoreboard players set @s[scores={Time=40..}] Time 40
execute if block ~ ~ ~ minecraft:piston[facing=east] positioned ~1.2 ~-0.38 ~ if entity @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=3}] run scoreboard players set @s[scores={Time=40..}] Time 40
execute if block ~ ~ ~ minecraft:piston[facing=south] positioned ~ ~-0.38 ~-1.2 if entity @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=2}] run scoreboard players set @s[scores={Time=40..}] Time 40
execute if block ~ ~ ~ minecraft:piston[facing=south] positioned ~ ~-0.38 ~-1.2 if entity @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=2}] run scoreboard players set @s[scores={Time=40..}] Time 40
execute if block ~ ~ ~ minecraft:piston[facing=west] positioned ~-1.2 ~-0.38 ~ if entity @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=1}] run scoreboard players set @s[scores={Time=40..}] Time 40
execute if block ~ ~ ~ minecraft:piston[facing=west] positioned ~-1.2 ~-0.38 ~ if entity @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=1}] run scoreboard players set @s[scores={Time=40..}] Time 40
execute if block ~ ~ ~ minecraft:piston[facing=north] positioned ~ ~-0.38 ~1.2 if entity @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=4}] run scoreboard players set @s[scores={Time=40..}] Time 40
execute if block ~ ~ ~ minecraft:piston[facing=north] positioned ~ ~-0.38 ~1.2 if entity @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=4}] run scoreboard players set @s[scores={Time=40..}] Time 40

# Push
execute if entity @s[scores={Time=-2}] run setblock ~ ~-1 ~ minecraft:observer[facing=down,powered=false]
scoreboard players set @s[scores={Time=-2},tag=delay_2] Time 40
scoreboard players set @s[scores={Time=-2},tag=delay_10] Time 200
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=east] positioned ~1 ~-0.3 ~ run scoreboard players set @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1] Moving 1
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=east] positioned ~1 ~-0.3 ~ run scoreboard players set @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1] Moving 1
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=south] positioned ~ ~-0.3 ~1 run scoreboard players set @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1] Moving 2
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=south] positioned ~ ~-0.3 ~1 run scoreboard players set @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1] Moving 2
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=west] positioned ~-1 ~-0.3 ~ run scoreboard players set @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1] Moving 3
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=west] positioned ~-1 ~-0.3 ~ run scoreboard players set @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1] Moving 3
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=north] positioned ~ ~-0.3 ~-1 run scoreboard players set @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1] Moving 4
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=north] positioned ~ ~-0.3 ~-1 run scoreboard players set @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1] Moving 4
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=east] positioned ~1 ~-0.3 ~ run teleport @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1] ~1 ~ ~
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=east] positioned ~1 ~-0.3 ~ run teleport @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1] ~1 ~ ~
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=south] positioned ~ ~-0.3 ~1 run teleport @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1] ~ ~ ~1
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=south] positioned ~ ~-0.3 ~1 run teleport @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1] ~ ~ ~1
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=west] positioned ~-1 ~-0.3 ~ run teleport @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1] ~-1 ~ ~
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=west] positioned ~-1 ~-0.3 ~ run teleport @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1] ~-1 ~ ~
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=north] positioned ~ ~-0.3 ~-1 run teleport @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1] ~ ~ ~-1
execute if entity @s[tag=push] if block ~ ~ ~ minecraft:piston[facing=north] positioned ~ ~-0.3 ~-1 run teleport @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1] ~ ~ ~-1
execute if entity @s[tag=push] run setblock ~ ~-1 ~ minecraft:observer[facing=down,powered=true]
tag @s[tag=push] remove push

# Timer based pushing if enabled
scoreboard players remove @s[scores={Time=..39}] Time 1
scoreboard players remove @s[scores={Time=40},tag=enabled] Time 1
scoreboard players remove @s[scores={Time=41..}] Time 1
tag @s[scores={Time=-1}] add push