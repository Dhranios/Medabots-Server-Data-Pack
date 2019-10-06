execute if entity @e[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77,tag=mr_referee,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=42,Medabot=0..,Battle=1..}]
execute unless entity @e[scores={Stage=42,Medabot=0..,Battle=1..},tag=main] run tag @s add main
execute as @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_7/empty
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_7_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_7_second_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_7_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_7_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1280 51 -171 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots