execute if entity @e[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=47,Medabot=0..,Battle=1..}]
execute unless entity @e[scores={Stage=47,Medabot=0..,Battle=1..},tag=main] run tag @s add main
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/woods_battle/stones
tag @s[scores={BattlingMedabots=1,Battle=1..},tag=story_battle,advancements={medabots_server:story_progression/infinity={opening=true,opening_battle=false}}] add dialog_infinity_opening_battle
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1949 51 -616 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots