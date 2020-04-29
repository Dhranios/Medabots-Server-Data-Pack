scoreboard players operation #temp ChessNr = @s ChessNr
execute as @e[type=minecraft:armor_stand,tag=chess] if score @s ChessNr = #temp ChessNr run tag @s add this_chess_game
execute as @a[distance=..20] if score @s ChessNr = #temp ChessNr run tag @s add this_chess_game

execute at @e[type=minecraft:armor_stand,tag=origin,tag=this_chess_game] run tag @s[dx=6,dy=3,dz=6] add fine
execute at @e[type=minecraft:armor_stand,tag=chess_field,tag=this_chess_game] run teleport @s[tag=!fine] ~ ~ ~
tag @s remove fine

execute if entity @s[tag=sneak_pos,tag=awaiting_chess_response] unless entity @e[type=minecraft:armor_stand,tag=selected,tag=this_chess_game,tag=black] run tag @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=black] add selected
execute if entity @s[tag=sneak_pos,tag=challenged_to_chess] unless entity @e[type=minecraft:armor_stand,tag=selected,tag=this_chess_game,tag=white] run tag @e[type=minecraft:armor_stand,distance=..0.5,tag=this_chess_game,tag=white] add selected

execute if entity @s[tag=!sneak_pos,tag=awaiting_chess_response] as @e[type=minecraft:armor_stand,tag=selected,tag=this_chess_game,tag=black] run function medabots_server:items/player_interactions/chess/game/wait_turn
execute if entity @s[tag=!sneak_pos,tag=challenged_to_chess] as @e[type=minecraft:armor_stand,tag=selected,tag=this_chess_game,tag=white] run function medabots_server:items/player_interactions/chess/game/wait_turn

execute unless entity @a[distance=..15,tag=challenged_to_chess] run scoreboard players set @s[tag=awaiting_chess_response] PlayerInteract -3
execute unless entity @a[distance=..15,tag=awaiting_chess_response] run scoreboard players set @s[tag=challenged_to_chess] PlayerInteract -3
execute if entity @s[scores={PlayerInteract=-3}] run tag @e[type=!minecraft:player,tag=this_chess_game] add dead

tag @e[tag=this_chess_game] remove this_chess_game
scoreboard players reset #temp ChessNr
