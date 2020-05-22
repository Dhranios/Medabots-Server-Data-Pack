execute rotated ~ 0 positioned ^ ^ ^0.6 if block ~ ~ ~ minecraft:barrier if block ~ ~1 ~ minecraft:barrier unless entity @e[tag=!footstool,distance=..0.7,type=minecraft:armor_stand] run tag @s add ignore_footstool
execute rotated ~ 0 positioned ^ ^ ^0.6 if entity @e[type=minecraft:husk,distance=..0.7,tag=cannon] run tag @s add follow_wall
execute if entity @s[tag=!ignore_footstool] rotated ~ 0 unless block ^ ^ ^0.6 minecraft:air run tag @s add follow_wall
execute if entity @s[tag=!ignore_footstool] rotated ~ 0 unless block ^ ^1 ^0.6 minecraft:air run tag @s add follow_wall
execute rotated ~ 0 positioned ^ ^ ^0.6 if entity @e[type=minecraft:husk,distance=..0.7,tag=cannon] run scoreboard players set @s Time 20
execute if entity @s[tag=!ignore_footstool] rotated ~ 0 unless block ^ ^ ^0.6 minecraft:air run scoreboard players set @s Time 20
execute if entity @s[tag=!ignore_footstool] rotated ~ 0 unless block ^ ^1 ^0.6 minecraft:air run scoreboard players set @s Time 20
tag @s remove ignore_footstool