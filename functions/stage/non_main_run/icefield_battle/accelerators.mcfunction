execute if entity @e[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48,tag=mr_referee,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=48,Medabot=0..,Battle=1..}]
execute unless entity @e[scores={Stage=48,Medabot=0..,Battle=1..},tag=main] run tag @s add main
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/icefield_battle/accelerators
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1999 51 -608 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots