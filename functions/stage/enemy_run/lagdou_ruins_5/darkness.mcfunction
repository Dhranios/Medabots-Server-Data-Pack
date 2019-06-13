execute store result score @s BattlingMedabots if entity @e[scores={Stage=40,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/lagdou_ruins_5/darkness
stopsound @s[scores={BattlingMedabots=1}] music
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1},advancements={medabots_server:stages/wave_1/lagdou_ruins_5_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_5_second_go
advancement grant @s[scores={BattlingMedabots=1},advancements={medabots_server:stages/wave_1/lagdou_ruins_5_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_5_first_go
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1346 50 -219 14
teleport @s[scores={BattlingMedabots=1}] -1346 50 -219 -180 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots