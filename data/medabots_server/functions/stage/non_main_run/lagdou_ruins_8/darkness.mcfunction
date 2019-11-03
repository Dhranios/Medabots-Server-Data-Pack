execute if entity @e[x=-1319,y=35,z=-2,dx=59,dy=13,dz=62,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=43,Medabot=0..,Battle=1..}]
execute unless entity @e[scores={Stage=43,Medabot=0..,Battle=1..},tag=main] run tag @s add main
execute as @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_8/darkness
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_8_second_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_8_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1290 49 29 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots