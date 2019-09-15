scoreboard players remove @s[scores={Time=0..}] Time 1
scoreboard players set @s[tag=trigger] Time 1
execute if entity @s[scores={Time=-1..0}] run setblock ~ ~-1 ~ minecraft:blue_wool
execute if entity @s[scores={Time=1..}] run setblock ~ ~-1 ~ minecraft:light_blue_wool
tag @s[scores={Time=0}] add toggle