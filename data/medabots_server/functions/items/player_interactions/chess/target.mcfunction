execute if entity @a[distance=..0.7,tag=!player_interactions] run tellraw @s {"translate":"medabots_server:message.player_interactions.chess.no_target","color":"red"}
execute if entity @a[distance=..0.7,tag=!player_interactions] run tag @s add failed
execute if entity @a[distance=..0.7,tag=interacting_with_player] run tellraw @s {"translate":"medabots_server:message.player_interactions.chess.no_target","color":"red"}
execute if entity @a[distance=..0.7,tag=interacting_with_player] run tag @s add failed
execute if entity @a[distance=..0.7,tag=player_interactions,tag=!interacting_with_player] run tellraw @s[tag=!failed] {"translate":"medabots_server:message.player_interactions.chess.waiting_for_reply","with":[{"selector":"@a[distance=..0.7,tag=player_interactions]"}],"color":"green"}
execute positioned ~ ~1 ~ if entity @a[distance=..0.7,tag=!player_interactions] run tellraw @s {"translate":"medabots_server:message.player_interactions.chess.no_target","color":"red"}
execute positioned ~ ~1 ~ if entity @a[distance=..0.7,tag=!player_interactions] run tag @s add failed
execute positioned ~ ~1 ~ if entity @a[distance=..0.7,tag=interacting_with_player] run tellraw @s {"translate":"medabots_server:message.player_interactions.chess.no_target","color":"red"}
execute positioned ~ ~1 ~ if entity @a[distance=..0.7,tag=interacting_with_player] run tag @s add failed
execute positioned ~ ~1 ~ if entity @a[distance=..0.7,tag=player_interactions,tag=!interacting_with_player] run tellraw @s[tag=!failed] {"translate":"medabots_server:message.player_interactions.chess.waiting_for_reply","with":[{"selector":"@a[distance=..0.7,tag=player_interactions]"}],"color":"green"}
tellraw @a[distance=..0.7,tag=player_interactions,tag=!interacting_with_player] {"translate":"medabots_server:message.player_interactions.chess.challenged","with":[{"selector":"@s"}],"color":"green"}
tag @a[distance=..0.7,tag=player_interactions,tag=!interacting_with_player] add challenged_to_chess
execute positioned ~ ~1 ~ run tellraw @a[distance=..0.7,tag=player_interactions,tag=!interacting_with_player] {"translate":"medabots_server:message.player_interactions.chess.challenged","with":[{"selector":"@s"}],"color":"green"}
execute positioned ~ ~1 ~ run tag @a[distance=..0.7,tag=player_interactions,tag=!interacting_with_player] add challenged_to_chess
scoreboard players add #temp Time 1
execute if score #temp Time matches 7 run tellraw @s {"translate":"medabots_server:message.player_interactions.chess.no_target","color":"red"}
execute if score #temp Time matches 7 run tag @s add failed
execute unless score #temp Time matches 7 if entity @s[tag=!failed] unless entity @a[distance=..0.7] positioned ~ ~1 ~ unless entity @a[distance=..0.7] positioned ~ ~-1 ~ positioned ^ ^ ^1 run function medabots_server:items/player_interactions/chess/target
scoreboard players reset #temp Time