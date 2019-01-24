execute rotated ~ 0 if block ^ ^ ^0.6 minecraft:barrier if block ^ ^1 ^0.6 minecraft:barrier run tag @s add ignore_footstool
execute if entity @s[tag=!ignore_footstool] rotated ~ 0 unless block ^ ^ ^0.6 minecraft:air run tag @s add follow_wall
execute if entity @s[tag=!ignore_footstool] rotated ~ 0 unless block ^ ^1 ^0.6 minecraft:air run tag @s add follow_wall
execute if entity @s[tag=!ignore_footstool] rotated ~ 0 unless block ^ ^ ^0.6 minecraft:air run scoreboard players set @s Time 20
execute if entity @s[tag=!ignore_footstool] rotated ~ 0 unless block ^ ^1 ^0.6 minecraft:air run scoreboard players set @s Time 20
tag @s remove ignore_footstool