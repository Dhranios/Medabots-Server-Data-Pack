execute store result score @s BattlingMedabots if entity @e[scores={Stage=45,Medabot=0..,Battle=1..}]
execute as @s[scores={BattlingMedabots=1,Battle=1..}] run function medabot_server:stage/clean_up/lagdou_ruins_10/empty
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_10=true}] only medabots_server:main/hero_of_magvel
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_10=false}] only medabots_server:stages/wave_1/lagdou_ruins_10
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1361 51 -80 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots