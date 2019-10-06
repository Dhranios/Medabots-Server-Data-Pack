execute if entity @e[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61,tag=mr_referee,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=36,Medabot=0..,Battle=1..}]
execute unless entity @e[scores={Stage=36,Medabot=0..,Battle=1..},tag=main] run tag @s add main
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_1/empty
advancement grant @a[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_1_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_1_second_go
advancement grant @a[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_1_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_1_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1298 51 -87 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots