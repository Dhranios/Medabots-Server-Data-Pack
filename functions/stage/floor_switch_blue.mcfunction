scoreboard players remove @s[scores={FloorSwitchTime=0..}] FloorSwitchTime 1
scoreboard players set @s[tag=trigger] FloorSwitchTime 1
execute if entity @s[scores={FloorSwitchTime=0}] run setblock ~ ~-1 ~ minecraft:blue_wool
execute if entity @s[scores={FloorSwitchTime=1..}] run setblock ~ ~-1 ~ minecraft:light_blue_wool