tag @s remove valid_move
tag @e[distance=..0.4,tag=ice_block] add me
execute if entity @s[scores={Moving=1}] if block ~0.6 ~ ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=1}] if block ~0.6 ~ ~ minecraft:gray_carpet run tag @s add valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.6 ~ ~ align xyz if entity @e[dx=0,dy=0,dz=0,tag=pot_hitbox] run tag @s remove valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.6 ~ ~ align xyz if entity @e[dx=0,dy=0,dz=0,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.6 ~ ~ align xyz if entity @e[dx=0,dy=0,dz=0,tag=ice_block,tag=!me] run tag @s remove valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.6 ~ ~ align xyz if entity @e[dx=0,dy=0,dz=0,tag=bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=1}] positioned ~0.6 ~1 ~ align xyz if entity @e[dx=0,dy=0,dz=0,tag=balloon_bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~0.6 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~0.6 minecraft:gray_carpet run tag @s add valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.6 align xyz if entity @e[dx=0,dy=0,dz=0,tag=pot_hitbox] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.6 align xyz if entity @e[dx=0,dy=0,dz=0,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.6 align xyz if entity @e[dx=0,dy=0,dz=0,tag=ice_block,tag=!me] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.6 align xyz if entity @e[dx=0,dy=0,dz=0,tag=bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~1 ~0.6 align xyz if entity @e[dx=0,dy=0,dz=0,tag=balloon_bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.6 ~ ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=3}] if block ~-0.6 ~ ~ minecraft:gray_carpet run tag @s add valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.6 ~ ~ align xyz if entity @e[dx=0,dy=0,dz=0,tag=pot_hitbox] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.6 ~ ~ align xyz if entity @e[dx=0,dy=0,dz=0,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.6 ~ ~ align xyz if entity @e[dx=0,dy=0,dz=0,tag=ice_block,tag=!me] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.6 ~ ~ align xyz if entity @e[dx=0,dy=0,dz=0,tag=bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] positioned ~-0.6 ~1 ~ align xyz if entity @e[dx=0,dy=0,dz=0,tag=balloon_bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-0.6 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-0.6 minecraft:gray_carpet run tag @s add valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.6 align xyz if entity @e[dx=0,dy=0,dz=0,tag=pot_hitbox] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.6 align xyz if entity @e[dx=0,dy=0,dz=0,tag=round_stone] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.6 align xyz if entity @e[dx=0,dy=0,dz=0,tag=ice_block,tag=!me] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.6 align xyz if entity @e[dx=0,dy=0,dz=0,tag=bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~1 ~-0.6 align xyz if entity @e[dx=0,dy=0,dz=0,tag=balloon_bomb] run tag @s remove valid_move
tag @s[tag=freezing] remove valid_move
tag @e[tag=me] remove me