execute store result score @s BattlingMedabots if entity @e[scores={Stage=37,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_2/empty
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_2_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_2_second_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_2_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_2_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1295 51 -32 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots