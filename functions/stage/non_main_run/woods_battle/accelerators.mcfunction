execute if entity @e[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48,tag=mr_referee,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=47,Medabot=0..,Battle=1..}]
execute unless entity @e[scores={Stage=47,Medabot=0..,Battle=1..},tag=main] run tag @s add main
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/woods_battle/accelerators
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1949 51 -616 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots