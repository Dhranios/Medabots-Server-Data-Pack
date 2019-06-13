execute if block ~ ~ ~ minecraft:piston[facing=east] positioned ~1 ~-0.3 ~ run scoreboard players set @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1] Moving 1
execute if block ~ ~ ~ minecraft:piston[facing=east] positioned ~1 ~-0.3 ~ run scoreboard players set @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1] Moving 1
execute if block ~ ~ ~ minecraft:piston[facing=south] positioned ~ ~-0.3 ~1 run scoreboard players set @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1] Moving 2
execute if block ~ ~ ~ minecraft:piston[facing=south] positioned ~ ~-0.3 ~1 run scoreboard players set @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1] Moving 2
execute if block ~ ~ ~ minecraft:piston[facing=west] positioned ~-1 ~-0.3 ~ run scoreboard players set @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1] Moving 3
execute if block ~ ~ ~ minecraft:piston[facing=west] positioned ~-1 ~-0.3 ~ run scoreboard players set @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1] Moving 3
execute if block ~ ~ ~ minecraft:piston[facing=north] positioned ~ ~-0.3 ~-1 run scoreboard players set @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1] Moving 4
execute if block ~ ~ ~ minecraft:piston[facing=north] positioned ~ ~-0.3 ~-1 run scoreboard players set @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1] Moving 4
execute if block ~ ~ ~ minecraft:piston[facing=east] positioned ~1 ~ ~ unless entity @e[tag=action_floor,scores={Time=1..},distance=..0.7] at @s run setblock ~ ~-1 ~ minecraft:observer[facing=down,powered=true]
execute if block ~ ~ ~ minecraft:piston[facing=south] positioned ~ ~ ~1 unless entity @e[tag=action_floor,scores={Time=1..},distance=..0.7] at @s run setblock ~ ~-1 ~ minecraft:observer[facing=down,powered=true]
execute if block ~ ~ ~ minecraft:piston[facing=west] positioned ~-1 ~ ~ unless entity @e[tag=action_floor,scores={Time=1..},distance=..0.7] at @s run setblock ~ ~-1 ~ minecraft:observer[facing=down,powered=true]
execute if block ~ ~ ~ minecraft:piston[facing=north] positioned ~ ~ ~-1 unless entity @e[tag=action_floor,scores={Time=1..},distance=..0.7] at @s run setblock ~ ~-1 ~ minecraft:observer[facing=down,powered=true]
tag @s remove push