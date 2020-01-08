execute unless block ~ ~ ~-0.3 minecraft:air run tag @s add no
execute unless block ~ ~ ~0.3 minecraft:air run tag @s add no
execute unless block ~-0.3 ~ ~ minecraft:air run tag @s add no
execute unless block ~0.3 ~ ~ minecraft:air run tag @s add no
execute unless block ~ ~1.8 ~-0.3 minecraft:air run tag @s add no
execute unless block ~ ~1.8 ~0.3 minecraft:air run tag @s add no
execute unless block ~-0.3 ~1.8 ~ minecraft:air run tag @s add no
execute unless block ~0.3 ~1.8 ~ minecraft:air run tag @s add no
execute unless block ~ ~0.9 ~-0.3 minecraft:air run tag @s add no
execute unless block ~ ~0.9 ~0.3 minecraft:air run tag @s add no
execute unless block ~-0.3 ~0.9 ~ minecraft:air run tag @s add no
execute unless block ~0.3 ~0.9 ~ minecraft:air run tag @s add no
execute unless block ~ ~-0.5 ~ minecraft:air run tag @s add no

execute if entity @s[tag=!no,tag=ally_medabot] positioned ~ ~1.7 ~ if entity @e[scores={Fly=1..},tag=!dying,sort=nearest,limit=1,tag=ally_medabot,tag=!carrying,distance=..1] run tag @s[tag=!no] add carried
execute if entity @s[tag=!no,tag=enemy_medabot] positioned ~ ~1.7 ~ if entity @e[scores={Fly=1..},tag=!dying,sort=nearest,limit=1,tag=enemy_medabot,tag=!carrying,distance=..1] run tag @s[tag=!no] add carried
execute if entity @s[tag=!no,tag=ally_medabot] positioned ~ ~1.7 ~ run tag @e[scores={Fly=1..},tag=!dying,sort=nearest,limit=1,tag=ally_medabot,tag=!carrying,distance=..1] add carrying
execute if entity @s[tag=!no,tag=enemy_medabot] positioned ~ ~1.7 ~ run tag @e[scores={Fly=1..},tag=!dying,sort=nearest,limit=1,tag=enemy_medabot,tag=!carrying,distance=..1] add carrying
tag @s[tag=no] remove no
