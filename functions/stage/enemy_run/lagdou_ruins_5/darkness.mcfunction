execute store result score @s BattlingMedabots if entity @e[scores={Stage=40,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_5/darkness
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_5_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_5_second_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_5_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_5_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1346 50 -219 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots