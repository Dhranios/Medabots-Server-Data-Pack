tellraw @a[distance=..10,tag=awaiting_robattle_response] {"translate":"medabots_server:message.player_interactions.robattle.accepted","color":"green"}
scoreboard players set @a[distance=..10,tag=awaiting_robattle_response] PlayerInteract 2
execute if entity @s[tag=has_medabot_form] run function medabots_server:items/player_interactions/medabot/revert
execute as @a[distance=..10,tag=awaiting_robattle_response,tag=has_medabot_form] run function medabots_server:items/player_interactions/medabot/revert
tellraw @s {"translate":"medabots_server:message.player_interactions.robattle.accepted","color":"green"}
scoreboard players set @s PlayerInteract 2

