tag @s remove valid_move
execute if entity @s[scores={Moving=1}] unless blocks ~0.5 ~ ~ ~0.5 ~ ~ ~1 ~ ~ masked run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.5 ~ ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.5 ~ ~ minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.5 ~ ~ minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.5 ~ ~ if entity @e[distance=..0.4,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.5 ~ ~ if entity @e[distance=..0.4,tag=ice_block] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] unless blocks ~ ~ ~0.5 ~ ~ ~0.5 ~ ~ ~1 masked run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~0.5 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~0.5 minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~0.5 minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.5 if entity @e[distance=..0.4,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.5 if entity @e[distance=..0.4,tag=ice_block] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] unless blocks ~-0.5 ~ ~ ~-0.5 ~ ~ ~-1 ~ ~ masked run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.5 ~ ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.5 ~ ~ minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.5 ~ ~ minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.5 ~ ~ if entity @e[distance=..0.4,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.5 ~ ~ if entity @e[distance=..0.4,tag=ice_block] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] unless blocks ~ ~ ~-0.5 ~ ~ ~-0.5 ~ ~ ~-1 masked run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-0.5 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-0.5 minecraft:iron_block run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-0.5 minecraft:piston_head run tag @s add valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.5 if entity @e[distance=..0.4,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.5 if entity @e[distance=..0.4,tag=ice_block] run tag @s remove valid_move