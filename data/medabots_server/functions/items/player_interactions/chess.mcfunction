execute if entity @a[scores={ChessNr=1..},distance=..20] run tellraw @s {"translate":"medabots_server:message.player_interactions.chess.too_close","color":"red"}
execute if entity @a[scores={ChessNr=1..},distance=..20] run tag @s add failed

execute if entity @a[tag=awaiting_chess_response,distance=..20] run tellraw @s {"translate":"medabots_server:message.player_interactions.chess.too_close","color":"red"}
execute if entity @a[tag=awaiting_chess_response,distance=..20] run tag @s add failed

execute if entity @a[tag=challenged_to_chess,distance=..20] run tellraw @s {"translate":"medabots_server:message.player_interactions.chess.too_close","color":"red"}
execute if entity @a[tag=challenged_to_chess,distance=..20] run tag @s add failed

execute positioned ~-4 ~ ~-4 align xyz unless predicate medabots_server:items/player_interactions/chess/space_check run tellraw @s {"translate":"medabots_server:message.player_interactions.chess.no_room","color":"red"}
execute positioned ~-4 ~ ~-4 align xyz unless predicate medabots_server:items/player_interactions/chess/space_check run tag @s add failed

execute if entity @s[tag=!failed] positioned ^ ^ ^1 run function medabots_server:items/player_interactions/chess/target

tag @s[tag=!failed] add awaiting_chess_response
tag @s[tag=!failed] add interacting_with_player

scoreboard players set @s[tag=failed] PlayerInteract 0

tag @s remove failed