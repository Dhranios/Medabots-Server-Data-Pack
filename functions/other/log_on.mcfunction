# Make it so 1-time messages repeat
scoreboard players set @s[scores={Offline=..2}] PreviousError 0

# Reset title times
title @s[scores={Offline=..2}] times 10 60 20

# No longer AFK
scoreboard players set @s[scores={Offline=..2}] AFKTime 0

# Not the sidebar "owner" anymore
tag @a[tag=message,scores={Offline=1}] remove message
tag @a[tag=message_2,scores={Offline=1}] remove message_2
scoreboard players reset @s[scores={Offline=1}] RandomMessage

# No music when logging in
stopsound @s[scores={Offline=1}] music
scoreboard players set @s[scores={Offline=1}] Music 0

# Welcome!
tellraw @s[scores={Offline=..2}] {"text":"Are you only here with a fly course/race invitation? Then we suggest to download this resource pack for sounds and translation strings only.","color":"gold","clickEvent":{"action":"open_url","value":"http://download947.mediafire.com/7ox8w3ju10ig/1u0a93uqw607h9u/elytra+course.zip"},"hoverEvent":{"action":"show_text","value":{"text":"Click me"}}}
tellraw @s[scores={Offline=..2}] ""
tellraw @s[scores={Offline=..2}] {"translate":"Please turn the Resource Pack on.","color":"gold","extra":[{"text":"\n"},{"translate":"medabots_server:message.welcome_back","color":"gold"},{"text":"\n"},{"translate":"medabots_server:settings.resource_pack","color":"gold"},{"text":" 0.6.5. ","color":"gold"},{"translate":"medabots_server:settings.resource_pack.download","color":"green","clickEvent":{"action":"open_url","value":"http://adf.ly/1N89Z1"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.resource_pack.click"}}},{"text":"\n"},{"translate":"medabots_server:move.legs.toggle","color":"green","clickEvent":{"action":"run_command","value":"/trigger Action set 1"}},{"text":"\n"},{"translate":"medabots_server:settings.click.2","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 2"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.click"}}},{"text":"\n"},{"translate":"medabots_server:message.pending_tasks","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TaskCheck set 1"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:message.pending_tasks.click"}}}]}

# Please don't log out while in combat
tellraw @s[tag=hostile,scores={Offline=1}] {"translate":"medabots_server:message.anti_cheating.log","color":"red"}
execute if entity @s[tag=hostile,scores={Offline=1}] run tellraw @a[team=Moderator] {"translate":"medabots_server:message.anti_cheating.log.mod","color":"red","with":[{"selector":"@s"}]}
scoreboard players add @s[tag=hostile,scores={Offline=1}] Warning 1
scoreboard players set @s[tag=hostile,scores={Offline=1}] Batte 0

# That's it
scoreboard players reset @s[scores={Offline=3..}] Offline
scoreboard players add @s[scores={Offline=1..}] Offline 3