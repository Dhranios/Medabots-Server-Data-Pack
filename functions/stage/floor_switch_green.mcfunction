scoreboard players set @s[tag=trigger] FloorSwitchTime 1
execute if entity @s[scores={FloorSwitchTime=-1..0}] run setblock ~ ~-1 ~ minecraft:green_wool
execute if entity @s[scores={FloorSwitchTime=1..}] run setblock ~ ~-1 ~ minecraft:lime_wool