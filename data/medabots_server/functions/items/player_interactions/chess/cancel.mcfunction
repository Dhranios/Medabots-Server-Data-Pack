tellraw @s {"translate":"medabots_server:message.player_interactions.chess.canceled","color":"red"}
tag @s remove challenged_to_chess
tag @s remove awaiting_chess_response
tag @s remove interacting_with_player
scoreboard players set @s PlayerInteract 0
scoreboard players operation #temp ChessNr = @s ChessNr
execute as @e[type=minecraft:armor_stand,tag=chess] if score @s ChessNr = #temp ChessNr run tag @s add this_chess_game
tag @e[tag=this_chess_game] add dead
scoreboard players reset #temp ChessNr
scoreboard players reset @s ChessNr
