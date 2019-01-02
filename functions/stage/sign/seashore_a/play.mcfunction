teleport @s[scores={Error=0},gamemode=adventure] -1537 37 -217
execute if entity @s[scores={Error=0},gamemode=adventure] run data merge block -1540 52 -247 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.stage.already_playing\\\",\\\"color\\\":\\\"green\\\"}\"}}"}
execute if entity @s[scores={Error=0},gamemode=adventure] run setblock -1540 53 -249 minecraft:red_wool
scoreboard players set @s[scores={Error=0},gamemode=adventure] Music 0
scoreboard players set @s[scores={Error=0},gamemode=adventure] MusicType 4
tellraw @s[scores={Error=0},gamemode=adventure,tag=vs_cpus] {"translate":"medabots_server:settings.current.vs_cpus","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 4"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.on"}]}
tellraw @s[scores={Error=0},gamemode=adventure,tag=!vs_cpus] {"translate":"medabots_server:settings.current.vs_cpus","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 4"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.off"}]}
scoreboard players set @s[scores={Error=1..}] PreviousError 0