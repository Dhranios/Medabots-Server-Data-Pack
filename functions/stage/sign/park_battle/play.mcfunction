teleport @s[scores={Error=0,Dialog=0},gamemode=adventure] -1944 37 -565 90 0
execute if entity @s[scores={Error=0,Dialog=0},gamemode=adventure] run data merge block -1950 52 -589 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/park_battle/enter"}}'}
execute if entity @s[scores={Error=0,Dialog=0},gamemode=adventure] run setblock -1950 53 -591 minecraft:red_wool
scoreboard players set @s[scores={Error=0,Dialog=0},gamemode=adventure] Music 0
scoreboard players set @s[scores={Error=0,Dialog=0},gamemode=adventure] MusicType 4
execute if entity @s[scores={Error=0,Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/stage_settings
#execute if entity @s[advancements={medabots_server:wave_1/story_progression={}},scores={Error=0,Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
scoreboard players set @s[scores={Error=1..}] PreviousError 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}