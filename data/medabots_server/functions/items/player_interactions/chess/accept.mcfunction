tellraw @a[distance=..10,tag=awaiting_chess_response] {"translate":"medabots_server:message.player_interactions.chess.accepted","color":"green"}
scoreboard players set @a[distance=..10,tag=awaiting_chess_response] PlayerInteract 6
tellraw @s {"translate":"medabots_server:message.player_interactions.chess.accepted","color":"green"}
scoreboard players set @s PlayerInteract 6

execute at @a[distance=..10,tag=awaiting_chess_response] positioned ~-4 ~ ~-4 align xyz positioned ~0.5 ~ ~0.5 run function medabots_server:items/player_interactions/chess/game/spawn
scoreboard players operation #temp ChessNr = @s ChessNr
execute as @a[distance=..20] if score @s ChessNr = #temp ChessNr run tag @s add this_chess_game
tellraw @a[tag=this_chess_game] {"translate":"medabots_server:message.player_interactions.chess.turn.white","with":[{"selector":"@a[tag=this_chess_game,tag=challenged_to_chess]"}],"color":"green"}
tag @e[tag=this_chess_game] remove this_chess_game
scoreboard players reset #temp ChessNr