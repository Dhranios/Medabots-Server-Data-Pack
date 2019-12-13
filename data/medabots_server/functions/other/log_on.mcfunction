# Reset title times
title @s times 10 60 20
effect give @s minecraft:health_boost 1000000 19 true
effect give @s minecraft:instant_health 1 19 true

# No longer AFK
scoreboard players set @s AFKTime 0
team leave @s

# Not the random message "owner" anymore
tag @a[tag=message] remove message
scoreboard players reset @s RandomMessage

# No music when logging in
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0

# Welcome!
tellraw @s {"translate":"medabots_server:message.welcome_back","color":"gold","extra":[{"text":"\n"},{"translate":"medabots_server:settings.resource_pack","color":"gold"},{"text":" 0.7.1. ","color":"gold"},{"translate":"medabots_server:settings.resource_pack.download","color":"green","clickEvent":{"action":"open_url","value":"http://www.mediafire.com/file/mmhs6vle7hw9xyy/Medabots_Resource_Pack_0.7.1.zip"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.resource_pack.click"}}},{"text":"\n"},{"translate":"medabots_server:settings.click.2","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 2"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.click"}}},{"text":"\n"},{"translate":"medabots_server:settings.click.3","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 3"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.click"}}},{"text":"\n"},{"translate":"medabots_server:message.pending_tasks","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TaskCheck set 1"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:message.pending_tasks.click"}}}]}

# Please don't log out while in combat
scoreboard players set @s LeaveStage 1
tellraw @s[tag=hostile] {"translate":"medabots_server:message.anti_cheating.log","color":"red"}
execute if entity @s[tag=hostile] run tellraw @a[team=Moderator] {"translate":"medabots_server:message.anti_cheating.log.mod","color":"red","with":[{"selector":"@s"}]}
scoreboard players add @s[tag=hostile] Warning 1
execute if entity @s[scores={Battle=3}] run function medabots_server:gamemodes/default/reset
execute if entity @s[tag=hostile] run function medabots_server:entities/medabot/spawn_model

# That's it
tag @s remove returner