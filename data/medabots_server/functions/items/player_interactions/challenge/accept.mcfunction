tellraw @a[distance=..10,tag=awaiting_challenge_response] {"translate":"medabots_server:message.player_interactions.challenge.accepted","color":"green"}
scoreboard players set @a[distance=..10,tag=awaiting_challenge_response] PlayerInteract 2
tellraw @s {"translate":"medabots_server:message.player_interactions.challenge.accepted","color":"green"}
scoreboard players set @s PlayerInteract 2

