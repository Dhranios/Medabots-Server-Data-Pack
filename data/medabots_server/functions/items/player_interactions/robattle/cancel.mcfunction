tellraw @s {"translate":"medabots_server:message.player_interactions.robattle.canceled","color":"red"}
tag @s remove challenged_to_robattle
tag @s remove awaiting_robattle_response
tag @s remove interacting_with_player
scoreboard players set @s PlayerInteract 0