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
scoreboard players operation @s[scores={Time=0}] Time = @s DelayTime

# Timer based pushing if powered
scoreboard players remove @s[scores={Time=..19}] Time 1
execute if score @s[scores={Time=20}] PowerAmount >= @s PowerNeeded run scoreboard players remove @s Time 1
scoreboard players remove @s[scores={Time=21..}] Time 1
scoreboard players set @e[tag=custom_stage] PowerAmount 0