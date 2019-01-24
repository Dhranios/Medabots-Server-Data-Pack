tag @s remove valid_move
execute if entity @s[scores={Moving=1}] if block ~1 ~ ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ if entity @e[distance=..0.7,tag=balloon_bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~1 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 if entity @e[distance=..0.7,tag=balloon_bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] if block ~-1 ~ ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ if entity @e[distance=..0.7,tag=balloon_bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-1 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 if entity @e[distance=..0.7,tag=balloon_bomb] run tag @s remove valid_move