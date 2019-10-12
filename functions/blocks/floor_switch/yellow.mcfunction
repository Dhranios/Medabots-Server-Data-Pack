scoreboard players remove @s[scores={Time=0..}] Time 1
scoreboard players operation @s Time = @s DelayTime
execute if entity @s[scores={Time=-1..0}] run setblock ~ ~-1 ~ minecraft:orange_wool
execute if entity @s[scores={Time=1..}] run setblock ~ ~-1 ~ minecraft:yellow_wool