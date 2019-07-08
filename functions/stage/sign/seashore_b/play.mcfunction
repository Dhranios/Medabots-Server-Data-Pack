teleport @s[scores={Error=0,Dialog=0},gamemode=adventure] -1712 37 -397 90 0
execute if entity @s[scores={Error=0,Dialog=0},gamemode=adventure] run data merge block -1716 52 -442 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/seashore_b/enter"}}'}
execute if entity @s[scores={Error=0,Dialog=0},gamemode=adventure] run setblock -1716 53 -444 minecraft:red_wool
scoreboard players set @s[scores={Error=0,Dialog=0},gamemode=adventure] Music 0
scoreboard players set @s[scores={Error=0,Dialog=0},gamemode=adventure] MusicType 4
execute if entity @s[scores={Error=0,Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/stage_settings
scoreboard players set @s[scores={Error=1..}] PreviousError 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}