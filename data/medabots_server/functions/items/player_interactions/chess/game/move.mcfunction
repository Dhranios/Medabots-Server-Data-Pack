execute store result score #temp PosX run data get entity @a[distance=..0.5,tag=this_chess_game,limit=1] Pos[0]
execute store result score #temp PosZ run data get entity @a[distance=..0.5,tag=this_chess_game,limit=1] Pos[2]
scoreboard players operation #temp PosX -= @e[type=minecraft:armor_stand,tag=origin,tag=this_chess_game,limit=1] PosX
scoreboard players operation #temp PosZ -= @e[type=minecraft:armor_stand,tag=origin,tag=this_chess_game,limit=1] PosZ
scoreboard players operation #temp PosX -= @s PosX
scoreboard players operation #temp PosZ -= @s PosZ
tag @s[distance=..0.5] add did_not_move
execute if entity @s[tag=pawn] run function medabots_server:items/player_interactions/chess/game/move/pawn
execute if entity @s[tag=rook] run function medabots_server:items/player_interactions/chess/game/move/rook
execute if entity @s[tag=knight] run function medabots_server:items/player_interactions/chess/game/move/knight
execute if entity @s[tag=bishop] run function medabots_server:items/player_interactions/chess/game/move/bishop
execute if entity @s[tag=queen] run function medabots_server:items/player_interactions/chess/game/move/queen
execute if entity @s[tag=king] run function medabots_server:items/player_interactions/chess/game/move/king
execute at @s align xyz run teleport @s ~0.5 ~ ~0.5
execute at @s[tag=white] run tag @e[type=minecraft:armor_stand,tag=black,distance=..0.5,tag=this_chess_game] add dead
execute at @s[tag=black] run tag @e[type=minecraft:armor_stand,tag=white,distance=..0.5,tag=this_chess_game] add dead
execute if entity @e[type=minecraft:armor_stand,tag=king,tag=dead,tag=this_chess_game] run function medabots_server:items/player_interactions/chess/game/end
tag @s remove selected
execute store result score @s PosX run data get entity @s Pos[0]
execute store result score @s PosZ run data get entity @s Pos[2]
scoreboard players operation @s PosX -= @e[type=minecraft:armor_stand,tag=origin,tag=this_chess_game,limit=1] PosX
scoreboard players operation @s PosZ -= @e[type=minecraft:armor_stand,tag=origin,tag=this_chess_game,limit=1] PosZ
execute if entity @s[tag=pawn,tag=white,scores={PosX=7}] run function medabots_server:items/player_interactions/chess/game/promote
execute if entity @s[tag=pawn,tag=black,scores={PosX=0}] run function medabots_server:items/player_interactions/chess/game/promote
tag @s[distance=..0.5,tag=!did_not_move] add did_move
execute if entity @s[tag=did_move] run tag @e[tag=pawn,tag=this_chess_game,tag=2_steps] remove 2_steps
execute if entity @s[tag=!did_move,tag=!did_not_move] run tellraw @a[distance=..0.5,tag=this_chess_game,limit=1] {"translate":"medabots_server:message.player_interactions.chess.invalid_move","color":"green"}
execute if entity @s[tag=pawn,tag=white] if score #temp PosX matches 2 run tag @s add 2_steps
execute if entity @s[tag=pawn,tag=black] if score #temp PosX matches -2 run tag @s add 2_steps
tag @s remove did_not_move
scoreboard players reset #temp PosX
scoreboard players reset #temp PosZ