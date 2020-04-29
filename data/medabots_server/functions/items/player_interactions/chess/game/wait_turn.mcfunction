execute if entity @e[type=minecraft:armor_stand,tag=origin,limit=1,tag=turn_black,tag=this_chess_game] run tag @s[tag=white] remove selected
execute if entity @e[type=minecraft:armor_stand,tag=origin,limit=1,tag=turn_white,tag=this_chess_game] run tag @s[tag=black] remove selected
execute if entity @s[tag=selected] run function medabots_server:items/player_interactions/chess/game/move
execute if entity @s[tag=did_move] run tag @e[type=minecraft:armor_stand,tag=origin,limit=1,tag=turn_black,tag=this_chess_game] remove turn_black
execute if entity @s[tag=did_move] if entity @e[type=minecraft:armor_stand,tag=origin,limit=1,tag=turn_white,tag=this_chess_game] run tellraw @a[tag=this_chess_game] {"translate":"medabots_server:message.player_interactions.chess.turn.black","with":[{"selector":"@a[tag=this_chess_game,tag=awaiting_chess_response]"}]}
execute if entity @s[tag=did_move] run tag @e[type=minecraft:armor_stand,tag=origin,limit=1,tag=turn_white,tag=this_chess_game] add turn_black
execute if entity @s[tag=did_move] run tag @e[type=minecraft:armor_stand,tag=origin,limit=1,tag=turn_white,tag=this_chess_game] remove turn_white
execute if entity @s[tag=did_move] if entity @e[type=minecraft:armor_stand,tag=origin,limit=1,tag=!turn_black,tag=!turn_white,tag=this_chess_game] run tellraw @a[tag=this_chess_game] {"translate":"medabots_server:message.player_interactions.chess.turn.white","with":[{"selector":"@a[tag=this_chess_game,tag=challenged_to_chess]"}]}
execute if entity @s[tag=did_move] run tag @e[type=minecraft:armor_stand,tag=origin,limit=1,tag=!turn_black,tag=!turn_white,tag=this_chess_game] add turn_white
tag @s remove did_move