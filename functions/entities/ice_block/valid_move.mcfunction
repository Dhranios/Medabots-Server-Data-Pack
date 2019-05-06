tag @s remove valid_move
execute if entity @s[scores={Moving=1}] unless blocks ~0.5 ~ ~ ~0.5 ~ ~ ~1 ~ ~ masked run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.5 ~ ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.5 ~ ~ minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.5 ~ ~ minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.5 ~ ~ minecraft:gray_carpet run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.5 ~ ~ minecraft:comparator run tag @s add valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.7 ~ ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.7,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.7 ~ ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.7,tag=ice_block] run tag @s remove valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.7 ~ ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.7,tag=balloon_bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] unless blocks ~ ~ ~0.5 ~ ~ ~0.5 ~ ~ ~1 masked run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~0.5 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~0.5 minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~0.5 minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~0.5 minecraft:gray_carpet run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~0.5 minecraft:comparator run tag @s add valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.7 if entity @e[type=minecraft:area_effect_cloud,distance=..0.7,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.7 if entity @e[type=minecraft:area_effect_cloud,distance=..0.7,tag=ice_block] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.7 if entity @e[type=minecraft:area_effect_cloud,distance=..0.7,tag=balloon_bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] unless blocks ~-0.5 ~ ~ ~-0.5 ~ ~ ~-1 ~ ~ masked run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.5 ~ ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.5 ~ ~ minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.5 ~ ~ minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.5 ~ ~ minecraft:gray_carpet run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.5 ~ ~ minecraft:comparator run tag @s add valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.7 ~ ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.7,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.7 ~ ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.7,tag=ice_block] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.7 ~ ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.7,tag=balloon_bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] unless blocks ~ ~ ~-0.5 ~ ~ ~-0.5 ~ ~ ~-1 masked run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-0.5 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-0.5 minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-0.5 minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-0.5 minecraft:gray_carpet run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-0.5 minecraft:comparator run tag @s add valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.7 if entity @e[type=minecraft:area_effect_cloud,distance=..0.7,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.7 if entity @e[type=minecraft:area_effect_cloud,distance=..0.7,tag=ice_block] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.7 if entity @e[type=minecraft:area_effect_cloud,distance=..0.7,tag=balloon_bomb] run tag @s remove valid_move
tag @s[tag=freezing] remove valid_move