tellraw @s {"translate":"medabots_server:message.player_interactions.challenge.canceled","color":"red"}
tag @s remove challenged_to_robattle
tag @s remove awaiting_challenge_response
scoreboard players set @s PlayerInteract 0