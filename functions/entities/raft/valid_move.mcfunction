tag @s remove valid_move
execute if entity @s[scores={Moving=1}] if block ~0.6 ~ ~ minecraft:water if block ~0.6 ~1 ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.6 ~ ~ minecraft:bubble_column if block ~0.6 ~1 ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.6 ~ ~ if entity @e[tag=raft,distance=..0.5] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~0.6 minecraft:water if block ~ ~1 ~0.6 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~0.6 minecraft:bubble_column if block ~ ~1 ~0.6 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.6 if entity @e[tag=raft,distance=..0.5] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.6 ~ ~ minecraft:water if block ~-0.6 ~1 ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.6 ~ ~ minecraft:bubble_column if block ~-0.6 ~1 ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.6 ~ ~ if entity @e[tag=raft,distance=..0.5] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-0.6 minecraft:water if block ~ ~1 ~-0.6 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-0.6 minecraft:bubble_column if block ~ ~1 ~-0.6 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.6 if entity @e[tag=raft,distance=..0.5] run tag @s remove valid_move