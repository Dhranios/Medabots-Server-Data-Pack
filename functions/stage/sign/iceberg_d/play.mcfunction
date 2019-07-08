teleport @s[scores={Error=0,Dialog=0},gamemode=adventure] -1699 29 -762 90 0
execute if entity @s[scores={Error=0,Dialog=0},gamemode=adventure] run data merge block -1701 51 -793 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/iceberg_d/enter"}}'}
execute if entity @s[scores={Error=0,Dialog=0},gamemode=adventure] run setblock -1701 52 -795 minecraft:red_wool
scoreboard players set @s[scores={Error=0,Dialog=0},gamemode=adventure] Music 0
scoreboard players set @s[scores={Error=0,Dialog=0},gamemode=adventure] MusicType 4
execute if entity @s[scores={Error=0,Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/stage_settings
scoreboard players set @s[scores={Error=1..}] PreviousError 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}