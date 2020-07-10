execute unless entity @e[scores={Stage=26},tag=hide_normal_time] run bossbar set medabots_server:iceberg_c/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=26},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_c/time value
execute unless entity @e[scores={Stage=26},tag=hide_normal_time] store result bossbar medabots_server:iceberg_c/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=26},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_c/robattle value
execute if entity @e[scores={Stage=26},tag=hide_normal_time] if entity @e[scores={Stage=26,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:iceberg_c/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=26},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=51,z=0,dx=60,dy=7,dz=74,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=26},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=51,z=0,dx=60,dy=7,dz=74,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/iceberg_c
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=2.5,y=53,z=6.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=29.5,y=53,z=24.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=57.5,y=53,z=6.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=29.5,y=53,z=25.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block 17 53 60 minecraft:iron_trapdoor[open=true] if block 9 53 20 minecraft:black_stained_glass if entity @s[x=15,y=53,z=60,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_c/second_go_battle/0
execute if entity @e[x=17.5,y=53,z=66.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=26,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=16.5,y=53,z=60.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=9.5,y=53,z=20.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=17.5,y=53,z=66.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:iceberg_c/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 29 53 23 minecraft:iron_trapdoor[open=true] if entity @s[x=28,y=53,z=20,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_c/second_go_battle/1
execute if entity @e[x=0,y=51,z=0,dx=60,dy=7,dz=74,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=26,Medabot=0..,State=1..2}]
execute as @e[x=0,y=51,z=0,dx=60,dy=7,dz=74,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 26
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/iceberg_c
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/iceberg_c_second_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:iceberg_c/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/get_score/time_damage_money
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 29 59 37 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots