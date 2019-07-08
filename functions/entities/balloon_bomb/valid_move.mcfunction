tag @s remove valid_move
execute if entity @s[scores={Moving=1}] if block ~0.6 ~-1 ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.6 ~-1 ~ minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.6 ~-1 ~ minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.6 ~-1 ~ minecraft:moving_piston run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.6 ~-1 ~ minecraft:gray_carpet run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.6 ~-1 ~ minecraft:comparator run tag @s add valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.6 ~-1 ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.6 ~-1 ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=ice_block] run tag @s remove valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.6 ~-1 ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.6 ~ ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=balloon_bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~-1 ~0.6 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~-1 ~0.6 minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~-1 ~0.6 minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~-1 ~0.6 minecraft:moving_piston run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~-1 ~0.6 minecraft:gray_carpet run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~-1 ~0.6 minecraft:comparator run tag @s add valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~-1 ~0.6 if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~-1 ~0.6 if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=ice_block] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~-1 ~0.6 if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.6 if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=balloon_bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.6 ~-1 ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.6 ~-1 ~ minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.6 ~-1 ~ minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.6 ~-1 ~ minecraft:moving_piston run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.6 ~-1 ~ minecraft:gray_carpet run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.6 ~-1 ~ minecraft:comparator run tag @s add valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.6 ~-1 ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.6 ~-1 ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=ice_block] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.6 ~-1 ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.6 ~ ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=balloon_bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~-1 ~-0.6 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~-1 ~-0.6 minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~-1 ~-0.6 minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~-1 ~-0.6 minecraft:moving_piston run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~-1 ~-0.6 minecraft:gray_carpet run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~-1 ~-0.6 minecraft:comparator run tag @s add valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~-1 ~-0.6 if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~-1 ~-0.6 if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=ice_block] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~-1 ~-0.6 if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.6 if entity @e[type=minecraft:area_effect_cloud,distance=..0.4,tag=balloon_bomb] run tag @s remove valid_move