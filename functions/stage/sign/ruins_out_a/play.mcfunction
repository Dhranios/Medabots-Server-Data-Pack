execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s[scores={Dialog=0},gamemode=adventure] -1566 37 -283 90 0
execute if entity @s[scores={Dialog=0},gamemode=adventure] run data merge block -1571 52 -315 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/ruins_out_a/enter"}}'}
execute if entity @s[scores={Dialog=0},gamemode=adventure] run setblock -1571 53 -317 minecraft:red_wool
scoreboard players set @s[scores={Dialog=0},gamemode=adventure] Music 0
scoreboard players set @s[scores={Dialog=0},gamemode=adventure] MusicType 4
execute if entity @s[scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/stage_settings
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}