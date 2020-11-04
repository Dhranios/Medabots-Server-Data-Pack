# Reset title times
title @s times 10 60 20
attribute @s minecraft:generic.max_health base set 100
attribute @s minecraft:generic.attack_damage base set 0
effect give @s minecraft:instant_health 1 19 true

# No longer AFK
scoreboard players set @s AFKTime 0
team leave @s

execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
execute unless entity @s[tag=!awaiting_response,tag=!challenged_to_robattle] run scoreboard players set @s PlayerInteract -1

# No music when logging in
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0

# Welcome!
tellraw @s {"translate":"medabots_server:message.welcome_back","color":"gold","extra":[{"text":"\n"},{"translate":"medabots_server:settings.resource_pack","color":"gold"},{"text":" 0.7.8. ","color":"gold"},{"translate":"medabots_server:settings.resource_pack.download","color":"green","clickEvent":{"action":"open_url","value":"https://www.mediafire.com/file/s93mvb2o5942z3h/Medabots+Resource+Pack+0.7.8.zip/file"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.resource_pack.click"}}},{"text":"\n"},{"translate":"medabots_server:settings.click.2","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 2"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.click"}}},{"text":"\n"},{"translate":"medabots_server:settings.click.3","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 3"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.click"}}},{"text":"\n"},{"translate":"medabots_server:message.pending_tasks","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TaskCheck set 1"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:message.pending_tasks.click"}}}]}

# That's it
tag @s remove returner