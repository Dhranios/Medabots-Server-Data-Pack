teleport @s ~ ~ ~1
execute as @e[type=minecraft:armor_stand,distance=..0.5,tag=king,tag=this_chess_game] at @s run teleport @s ~ ~ ~2
execute if entity @s[tag=white] run tag @e[type=minecraft:armor_stand,tag=white,tag=rook,tag=this_chess_game] add moved
execute if entity @s[tag=black] run tag @e[type=minecraft:armor_stand,tag=black,tag=rook,tag=this_chess_game] add moved
tag @s add did_move