execute store result score @s BattlingMedabots if entity @e[scores={Stage=45,Medabot=0..,Battle=1..}]
execute as @s[scores={BattlingMedabots=1}] run function medabot_server:stage/clean_up/lagdou_ruins_10/empty
stopsound @s[scores={BattlingMedabots=1}] music
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1},advancements={medabots_server:stages/wave_1/lagdou_ruins_10=true}] only medabots_server:wave_1/hero_of_magvel
advancement grant @s[scores={BattlingMedabots=1},advancements={medabots_server:stages/wave_1/lagdou_ruins_10=false}] only medabots_server:stages/wave_1/lagdou_ruins_10
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1361 51 -80 1000
teleport @s[scores={BattlingMedabots=1}] -1361 51 -80 -180 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots