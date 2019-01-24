# Make it so 1-time messages repeat
scoreboard players set @s[tag=returner] PreviousError 0

# Reset title times
title @s[tag=returner] times 10 60 20

# No longer AFK
scoreboard players set @s[tag=returner] AFKTime 0

# Not the random message "owner" anymore
tag @a[tag=message,tag=returner] remove message
scoreboard players reset @s[tag=returner] RandomMessage

# No music when logging in
stopsound @s[tag=returner] music
scoreboard players set @s[tag=returner] Music 0

# Welcome!
tellraw @s[tag=returner] {"translate":"medabots_server:message.welcome_back","color":"gold","extra":[{"text":"\n"},{"translate":"medabots_server:settings.resource_pack","color":"gold"},{"text":" 0.6.6. ","color":"gold"},{"translate":"medabots_server:settings.resource_pack.download","color":"green","clickEvent":{"action":"open_url","value":"http://www.mediafire.com/file/m53xsxx87z9d6ry/Medabots+Resource+Pack+0.6.6.zip"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.resource_pack.click"}}},{"text":"\n"},{"translate":"medabots_server:settings.click.2","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 2"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.click"}}},{"text":"\n"},{"translate":"medabots_server:settings.click.3","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 3"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.click"}}},{"text":"\n"},{"translate":"medabots_server:message.pending_tasks","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TaskCheck set 1"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:message.pending_tasks.click"}}}]}

# Please don't log out while in combat
tellraw @s[tag=hostile,tag=returner] {"translate":"medabots_server:message.anti_cheating.log","color":"red"}
execute if entity @s[tag=hostile,tag=returner] run tellraw @a[team=Moderator] {"translate":"medabots_server:message.anti_cheating.log.mod","color":"red","with":[{"selector":"@s"}]}
scoreboard players add @s[tag=hostile,tag=returner] Warning 1
scoreboard players set @s[tag=hostile,tag=returner] Batte 0

# That's it
tag @s[tag=returner] remove returner
scoreboard players set @s Verified 2