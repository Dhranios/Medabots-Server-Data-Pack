execute if score #temp PosX matches 0 if score #temp PosZ matches 0 run tellraw @a[tag=this_chess_game,distance=..0.5] {"translate":"medabots_server:message.player_interactions.chess.knight","color":"green"}

execute if entity @s[tag=white] if score #temp PosX matches 1 if score #temp PosZ matches 2 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=white] run teleport @s ~ ~ ~
execute if entity @s[tag=white] if score #temp PosX matches 1 if score #temp PosZ matches -2 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=white] run teleport @s ~ ~ ~
execute if entity @s[tag=white] if score #temp PosX matches -1 if score #temp PosZ matches 2 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=white] run teleport @s ~ ~ ~
execute if entity @s[tag=white] if score #temp PosX matches -1 if score #temp PosZ matches -2 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=white] run teleport @s ~ ~ ~
execute if entity @s[tag=white] if score #temp PosX matches 2 if score #temp PosZ matches 1 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=white] run teleport @s ~ ~ ~
execute if entity @s[tag=white] if score #temp PosX matches 2 if score #temp PosZ matches -1 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=white] run teleport @s ~ ~ ~
execute if entity @s[tag=white] if score #temp PosX matches -2 if score #temp PosZ matches 1 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=white] run teleport @s ~ ~ ~
execute if entity @s[tag=white] if score #temp PosX matches -2 if score #temp PosZ matches -1 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=white] run teleport @s ~ ~ ~

execute if entity @s[tag=black] if score #temp PosX matches 1 if score #temp PosZ matches 2 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=black] run teleport @s ~ ~ ~
execute if entity @s[tag=black] if score #temp PosX matches 1 if score #temp PosZ matches -2 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=black] run teleport @s ~ ~ ~
execute if entity @s[tag=black] if score #temp PosX matches -1 if score #temp PosZ matches 2 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=black] run teleport @s ~ ~ ~
execute if entity @s[tag=black] if score #temp PosX matches -1 if score #temp PosZ matches -2 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=black] run teleport @s ~ ~ ~
execute if entity @s[tag=black] if score #temp PosX matches 2 if score #temp PosZ matches 1 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=black] run teleport @s ~ ~ ~
execute if entity @s[tag=black] if score #temp PosX matches 2 if score #temp PosZ matches -1 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=black] run teleport @s ~ ~ ~
execute if entity @s[tag=black] if score #temp PosX matches -2 if score #temp PosZ matches 1 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=black] run teleport @s ~ ~ ~
execute if entity @s[tag=black] if score #temp PosX matches -2 if score #temp PosZ matches -1 unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=black] run teleport @s ~ ~ ~
