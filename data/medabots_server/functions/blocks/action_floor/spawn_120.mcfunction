scoreboard players set @s Time -100
execute as @e[distance=..0.7,tag=no_processing] run data merge entity @s {Invulnerable:0b}
tag @e[distance=..0.7,tag=!action_floor,tag=no_ticking] remove no_ticking
fill ~ ~ ~ ~ ~1 ~ minecraft:air