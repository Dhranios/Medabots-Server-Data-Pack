teleport @s[scores={Error=0,Dialog=0,Level=50..},advancements={medabots_server:stages/wave_1/lagdou_ruins_9_second_go=true},gamemode=adventure] -1358 25 -82
execute if entity @s[scores={Error=0,Dialog=0,Level=50..},advancements={medabots_server:stages/wave_1/lagdou_ruins_9_second_go=true},gamemode=adventure] run data merge block -1362 52 -114 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_10/enter"}}'}
execute if entity @s[scores={Error=0,Dialog=0,Level=50..},advancements={medabots_server:stages/wave_1/lagdou_ruins_9_second_go=true},gamemode=adventure] run setblock -1362 53 -116 minecraft:red_wool
scoreboard players set @s[scores={Error=0,Dialog=0,Level=50..},advancements={medabots_server:stages/wave_1/lagdou_ruins_9_second_go=true},gamemode=adventure] Music 0
scoreboard players set @s[scores={Error=0,Dialog=0,Level=50..},advancements={medabots_server:stages/wave_1/lagdou_ruins_9_second_go=true},gamemode=adventure] MusicType 4
tellraw @s[scores={Error=0,Dialog=0,Level=50..},advancements={medabots_server:stages/wave_1/lagdou_ruins_9_second_go=true},gamemode=adventure,tag=vs_cpus] {"translate":"medabots_server:settings.current.vs_cpus","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 4"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.on"}]}
tellraw @s[scores={Error=0,Dialog=0,Level=50..},advancements={medabots_server:stages/wave_1/lagdou_ruins_9_second_go=true},gamemode=adventure,tag=!vs_cpus] {"translate":"medabots_server:settings.current.vs_cpus","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 4"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.off"}]}
tellraw @s[scores={Error=0,Dialog=0,Level=50..},advancements={medabots_server:stages/wave_1/lagdou_ruins_9_second_go=true},gamemode=adventure,tag=practice_battle] {"translate":"medabots_server:settings.current.practice_battle","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 7"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.on"}]}
tellraw @s[scores={Error=0,Dialog=0,Level=50..},advancements={medabots_server:stages/wave_1/lagdou_ruins_9_second_go=true},gamemode=adventure,tag=!practice_battle] {"translate":"medabots_server:settings.current.practice_battle","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 7"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.off"}]}
scoreboard players set @s[scores={Error=1..}] PreviousError 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute unless entity @s[scores={Error=0,Dialog=0,Level=50..}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.level","with":[{"text":"50"}]}]}
execute unless entity @s[scores={Error=0,Dialog=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_9_first_go=true}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.more","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"9"}]},{"text":"2"}]}]}
