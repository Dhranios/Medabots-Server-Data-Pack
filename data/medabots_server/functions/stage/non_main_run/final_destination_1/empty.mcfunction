execute if entity @e[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=61,Medabot=0..,Battle=1..}]
execute unless entity @e[scores={Stage=61,Medabot=0..,Battle=1..},tag=main] run tag @s add main
execute as @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/final_destination_1/empty
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/final_destination_1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -2041 43 -196 run function medabots_server:stage/clear
scoreboard players add @s[scores={BattlingMedabots=1..}] KillStreak 1
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots