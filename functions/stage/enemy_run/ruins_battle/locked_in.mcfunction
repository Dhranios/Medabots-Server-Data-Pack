execute store result score @s BattlingMedabots if entity @e[scores={Stage=49,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/ruins_battle/locked_in
stopsound @s[scores={BattlingMedabots=1}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1997 51 -560 14
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
teleport @s[scores={BattlingMedabots=1}] -1997 51 -560 -180 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots