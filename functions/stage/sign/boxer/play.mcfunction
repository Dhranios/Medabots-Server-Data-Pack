execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s[scores={Dialog=0},gamemode=adventure] -1880 29 -579 90 0
execute if entity @s[scores={Dialog=0},gamemode=adventure] run data merge block -1891 51 -603 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/boxer/enter"}}'}
execute if entity @s[scores={Dialog=0},gamemode=adventure] run setblock -1891 52 -605 minecraft:red_wool
scoreboard players set @s[scores={Dialog=0},gamemode=adventure] Music 0
scoreboard players set @s[scores={Dialog=0},gamemode=adventure] MusicType 4
execute if entity @s[scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/stage_settings
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}