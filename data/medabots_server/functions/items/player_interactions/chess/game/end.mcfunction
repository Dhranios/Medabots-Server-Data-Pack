execute if entity @e[type=minecraft:armor_stand,tag=king,tag=dead,tag=black] run tellraw @a[tag=this_chess_game] {"translate":"medabots_server:message.player_interactions.chess.end.white"}
execute if entity @e[type=minecraft:armor_stand,tag=king,tag=dead,tag=white] run tellraw @a[tag=this_chess_game] {"translate":"medabots_server:message.player_interactions.chess.end.black"}
tag @e[tag=this_chess_game,type=!minecraft:player] add dead

scoreboard players set @a[tag=this_chess_game] PlayerInteract 0
tag @a[tag=this_chess_game] remove awaiting_chess_response
tag @a[tag=this_chess_game] remove challenged_to_chess
tag @a[tag=this_chess_game] remove interacting_with_player
scoreboard players reset @a[tag=this_chess_game] ChessNr
tag @a[tag=this_chess_game] remove this_chess_game