execute if entity @e[x=-1256,y=0,z=-58,dx=59,dy=50,dz=83,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=38,Medabot=0..,Battle=1..}]
execute unless entity @e[scores={Stage=38,Medabot=0..,Battle=1..},tag=main] run tag @s add main
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_3
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_3_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_3_second_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_3_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_3_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1227 51 -19 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots