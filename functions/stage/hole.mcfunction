# Tags new hamer punches with what block they'll replace
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

# New holes need scores
execute unless entity @s[scores={Time=0..}] run scoreboard players add @s Time 0

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
kill @s[tag=dead]

# Countdown punching
scoreboard players remove @s[scores={Time=1..}] Time 1
scoreboard players remove @s[scores={Time=..-1}] Time 1
execute positioned ~ ~-1 ~ if entity @e[tag=hostile,type=!minecraft:item,distance=..0.7] run scoreboard players remove @s[scores={Time=0}] Time 1

# Ambient sound
execute if entity @s[scores={Time=0}] run playsound medabots_server:block.hole.ambient hostile @a ~ ~ ~ 1

# Looks
execute if entity @s[scores={Time=-1..0},tag=!dead] run setblock ~ ~-1 ~ minecraft:black_carpet
execute if entity @s[scores={Time=-40..-31},tag=!dead] run setblock ~ ~-1 ~ minecraft:black_carpet
execute if entity @s[scores={Time=1..},tag=!dead] run setblock ~ ~-1 ~ minecraft:chiseled_quartz_block
execute if entity @s[scores={Time=-30..-2},tag=!dead] run setblock ~ ~-1 ~ minecraft:chiseled_quartz_block

# Something in the hole!
execute if entity @s[scores={Time=0}] positioned ~ ~-1 ~ store result entity @e[type=minecraft:item,distance=..0.7,sort=random,limit=1] Pos[1] double 0.01 run data get entity @s Pos[1] 100
execute if entity @s[scores={Time=-1}] positioned ~ ~-1 ~ if entity @e[tag=hostile,type=!minecraft:item,distance=..0.7] run playsound medabots_server:block.hole.swallow hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=-1}] positioned ~ ~-1 ~ as @e[tag=hostile,type=!minecraft:item,distance=..0.7] run teleport @s ~ ~-2 ~
execute if entity @s[scores={Time=-39..-2}] positioned ~ ~-3 ~ as @e[tag=hostile,type=!minecraft:item,distance=..0.7] run teleport @s ~ ~ ~
execute if entity @s[scores={Time=-39..-2}] positioned ~ ~-3 ~ run tag @e[tag=hostile,tag=ice_block,distance=..0.7] add dead
execute if entity @s[scores={Time=-39..-2}] positioned ~ ~-3 ~ run tag @e[tag=hostile,tag=round_stone,distance=..0.7] add dead
execute if entity @s[scores={Time=-39..-2}] positioned ~ ~-3 ~ run tag @e[tag=hostile,tag=bomb,distance=..0.7] add dead
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ if entity @e[tag=hostile,type=!minecraft:item,distance=..0.7] run playsound medabots_server:block.hole.spit hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=..0,HeadArmor=1..9}] HeadArmor 0
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=..0,HeadArmor=10..}] HeadArmor 10
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=1..9}] RightArmArmor 0
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=10..}] RightArmArmor 10
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=..0,LeftArmArmor=1..9}] LeftArmArmor 0
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=..0,LeftArmArmor=10..}] LeftArmArmor 10
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=1..9}] LegsArmor 0
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @a[tag=hostile,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=10..}] LegsArmor 10
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=..0,HeadArmor=1..9}] HeadArmor 0
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=..0,HeadArmor=10..}] HeadArmor 10
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=1..9}] RightArmArmor 0
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=..0,LeftArmArmor=..0,RightArmArmor=10..}] RightArmArmor 10
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=..0,LeftArmArmor=1..9}] LeftArmArmor 0
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=..0,LeftArmArmor=10..}] LeftArmArmor 10
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players set @s[scores={LegsArmor=1..9}] LegsArmor 0
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @e[tag=hostile,tag=enemy_medabot,distance=..0.7] run scoreboard players remove @s[scores={LegsArmor=10..}] LegsArmor 10
execute if entity @s[scores={Time=-40}] positioned ~ ~-3 ~ as @e[tag=hostile,type=!minecraft:item,distance=..0.7] run teleport @s ~ ~5 ~
execute positioned ~ ~2 ~ if entity @e[tag=hostile,type=!minecraft:item,distance=..0.7] run scoreboard players set @s[scores={Time=-40},tag=delay_5] Time 100
execute positioned ~ ~2 ~ if entity @e[tag=hostile,type=!minecraft:item,distance=..0.7] run scoreboard players set @s[scores={Time=-40},tag=delay_10] Time 200
execute positioned ~ ~2 ~ unless entity @e[tag=hostile,type=!minecraft:item,distance=..0.7] run scoreboard players set @s[scores={Time=-40}] Time 1
