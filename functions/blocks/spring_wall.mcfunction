# Remove when cleaning up a stage
execute if entity @s[tag=dead] run function medabots_server:blocks/spring_wall/clean_up

# Force a push if a round stone or ice block moves into the face
execute if block ~ ~ ~ minecraft:piston[facing=east] positioned ~1.6 ~-0.38 ~ if entity @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=3}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if block ~ ~ ~ minecraft:piston[facing=east] positioned ~1.6 ~-0.38 ~ if entity @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=3}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if block ~ ~ ~ minecraft:piston[facing=south] positioned ~ ~-0.38 ~-1.6 if entity @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=2}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if block ~ ~ ~ minecraft:piston[facing=south] positioned ~ ~-0.38 ~-1.6 if entity @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=2}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if block ~ ~ ~ minecraft:piston[facing=west] positioned ~-1.6 ~-0.38 ~ if entity @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=1}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if block ~ ~ ~ minecraft:piston[facing=west] positioned ~-1.6 ~-0.38 ~ if entity @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=1}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if block ~ ~ ~ minecraft:piston[facing=north] positioned ~ ~-0.38 ~1.6 if entity @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=4}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if block ~ ~ ~ minecraft:piston[facing=north] positioned ~ ~-0.38 ~1.6 if entity @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=4}] run scoreboard players set @s[scores={Time=40..}] Time 39

# Push
execute if entity @s[scores={Time=-2}] run setblock ~ ~-1 ~ minecraft:observer[facing=down,powered=false]
scoreboard players set @s[scores={Time=-2},tag=delay_2] Time 40
scoreboard players set @s[scores={Time=-2},tag=delay_10] Time 200
execute if entity @s[tag=push] run function medabots_server:blocks/spring_wall/push

# Timer based pushing if enabled
scoreboard players remove @s[scores={Time=..39}] Time 1
scoreboard players remove @s[scores={Time=40},tag=enabled] Time 1
scoreboard players remove @s[scores={Time=41..}] Time 1
tag @s[scores={Time=-1}] add push