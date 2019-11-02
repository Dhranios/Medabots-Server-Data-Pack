execute if entity @e[x=-1267,y=42,z=-139,dx=60,dy=7,dz=77,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=41,Medabot=0..,Battle=1..}]
execute unless entity @e[scores={Stage=41,Medabot=0..,Battle=1..},tag=main] run tag @s add main
execute as @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_6/empty
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_6_second_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_6_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1236 51 -99 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots