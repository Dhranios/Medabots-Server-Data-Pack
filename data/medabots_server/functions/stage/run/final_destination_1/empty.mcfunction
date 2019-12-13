execute if entity @e[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=61},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=61},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=61},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,type=!minecraft:player] unless entity @s[scores={Stage=61}] run scoreboard players set @s Stage 61
execute as @e[scores={Stage=61},tag=practice_battle] run tag @e[scores={Stage=61},tag=medabot] add practice_robattle
execute as @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/final_destination_1
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/final_destination_1
scoreboard players add @s[scores={BattlingMedabots=1,Battle=1..,KillStreak=..4}] KillStreak 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -2041 43 -196 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots

execute as @e[scores={Stage=61},tag=!dying] at @s run teleport @s[y=0,dy=10] -2041 52 -220