teleport @s[scores={Dialog=0},gamemode=adventure] -1542 29 -652 90 0
execute if entity @s[scores={Dialog=0},gamemode=adventure] run data merge block -1542 51 -684 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/iceberg_c/enter"}}'}
execute if entity @s[scores={Dialog=0},gamemode=adventure] run setblock -1542 52 -686 minecraft:red_wool
scoreboard players set @s[scores={Dialog=0},gamemode=adventure] Music 0
scoreboard players set @s[scores={Dialog=0},gamemode=adventure] MusicType 4
execute if entity @s[scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/stage_settings
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}