tellraw @a[distance=..10,tag=awaiting_chess_response] {"translate":"medabots_server:message.player_interactions.chess.accepted","color":"green"}
scoreboard players set @a[distance=..10,tag=awaiting_chess_response] PlayerInteract 6
tellraw @s {"translate":"medabots_server:message.player_interactions.chess.accepted","color":"green"}
scoreboard players set @s PlayerInteract 6

execute at @a[distance=..10,tag=awaiting_chess_response] positioned ~-4 ~ ~-4 align xyz positioned ~0.5 ~ ~0.5 run function medabots_server:items/player_interactions/chess/game/spawn
