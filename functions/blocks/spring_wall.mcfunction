# Remove when cleaning up a stage
execute if entity @s[tag=dead] run function medabots_server:blocks/spring_wall/clean_up

# Force a push if a round stone or ice block moves into the face
execute if block ~ ~ ~ minecraft:piston[facing=east] positioned ~1.6 ~-0.38 ~ if entity @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=3}] run scoreboard players set @s[scores={Time=20..}] Time 19
execute if block ~ ~ ~ minecraft:piston[facing=east] positioned ~1.6 ~-0.38 ~ if entity @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=3}] run scoreboard players set @s[scores={Time=20..}] Time 19
execute if block ~ ~ ~ minecraft:piston[facing=north] positioned ~ ~-0.38 ~-1.6 if entity @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=2}] run scoreboard players set @s[scores={Time=20..}] Time 19
execute if block ~ ~ ~ minecraft:piston[facing=north] positioned ~ ~-0.38 ~-1.6 if entity @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=2}] run scoreboard players set @s[scores={Time=20..}] Time 19
execute if block ~ ~ ~ minecraft:piston[facing=west] positioned ~-1.6 ~-0.38 ~ if entity @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=1}] run scoreboard players set @s[scores={Time=20..}] Time 19
execute if block ~ ~ ~ minecraft:piston[facing=west] positioned ~-1.6 ~-0.38 ~ if entity @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=1}] run scoreboard players set @s[scores={Time=20..}] Time 19
execute if block ~ ~ ~ minecraft:piston[facing=south] positioned ~ ~-0.38 ~1.6 if entity @e[tag=round_stone,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=4}] run scoreboard players set @s[scores={Time=20..}] Time 19
execute if block ~ ~ ~ minecraft:piston[facing=south] positioned ~ ~-0.38 ~1.6 if entity @e[tag=ice_block,type=minecraft:area_effect_cloud,distance=..1,scores={Moving=4}] run scoreboard players set @s[scores={Time=20..}] Time 19

# Push
execute if entity @s[scores={Time=5}] run function medabots_server:blocks/spring_wall/push
execute if entity @s[scores={Time=0}] run setblock ~ ~-1 ~ minecraft:observer[facing=down,powered=false]
scoreboard players set @s[scores={Time=0},tag=delay_1] Time 20
scoreboard players set @s[scores={Time=0},tag=delay_2] Time 40
scoreboard players set @s[scores={Time=0},tag=delay_3] Time 60
scoreboard players set @s[scores={Time=0},tag=delay_4] Time 80
scoreboard players set @s[scores={Time=0},tag=delay_5] Time 100
scoreboard players set @s[scores={Time=0},tag=delay_6] Time 120
scoreboard players set @s[scores={Time=0},tag=delay_7] Time 140
scoreboard players set @s[scores={Time=0},tag=delay_8] Time 160
scoreboard players set @s[scores={Time=0},tag=delay_9] Time 180
scoreboard players set @s[scores={Time=0},tag=delay_10] Time 200

# Timer based pushing if enabled
scoreboard players remove @s[scores={Time=..19}] Time 1
scoreboard players remove @s[scores={Time=20},tag=enabled] Time 1
scoreboard players remove @s[scores={Time=21..}] Time 1