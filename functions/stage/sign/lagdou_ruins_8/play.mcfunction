execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s[scores={Dialog=0,Level=40..},advancements={medabots_server:stages/wave_1/lagdou_ruins_7_second_go=true},gamemode=adventure] -1284 25 37 90 0
execute if entity @s[scores={Dialog=0,Level=40..},advancements={medabots_server:stages/wave_1/lagdou_ruins_7_second_go=true},gamemode=adventure] run data merge block -1291 50 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_8/enter"}}'}
execute if entity @s[scores={Dialog=0,Level=40..},advancements={medabots_server:stages/wave_1/lagdou_ruins_7_second_go=true},gamemode=adventure] run setblock -1291 51 -1 minecraft:red_wool
scoreboard players set @s[scores={Dialog=0,Level=40..},advancements={medabots_server:stages/wave_1/lagdou_ruins_7_second_go=true},gamemode=adventure] Music 0
scoreboard players set @s[scores={Dialog=0,Level=40..},advancements={medabots_server:stages/wave_1/lagdou_ruins_7_second_go=true},gamemode=adventure] MusicType 4
execute if entity @s[scores={Dialog=0,Level=40..},advancements={medabots_server:stages/wave_1/lagdou_ruins_7_second_go=true},gamemode=adventure] run function medabots_server:stage/sign/generic/stage_settings
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute unless entity @s[scores={Dialog=0,Level=40..}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.lagdou_ruins_8.0"}]}
execute unless entity @s[scores={Dialog=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_7_second_go=true}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.lagdou_ruins_8.1"}]}
