execute store result score @s BattlingMedabots if entity @e[scores={Stage=36,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/lagdou_ruins_1/empty
stopsound @s[scores={BattlingMedabots=1}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1298 51 -87 1000
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
teleport @s[scores={BattlingMedabots=1}] -1298 51 -87 -180 0
advancement grant @a[scores={BattlingMedabots=1},advancements={medabots_server:stages/wave_1/lagdou_ruins_1_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_1_second_go
advancement grant @a[scores={BattlingMedabots=1},advancements={medabots_server:stages/wave_1/lagdou_ruins_1_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_1_first_go
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots