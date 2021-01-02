execute unless entity @e[scores={Stage=31},tag=hide_normal_time] run bossbar set medabots_server:jungle_d/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=31},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_d/time value
execute unless entity @e[scores={Stage=31},tag=hide_normal_time] store result bossbar medabots_server:jungle_d/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=31},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_d/robattle value
execute if entity @e[scores={Stage=31},tag=hide_normal_time] if entity @e[scores={Stage=31,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:jungle_d/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=31},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=61,dy=7,dz=61,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=31},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=61,dy=7,dz=61,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/jungle_d
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=24.5,y=53,z=11.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=24.5,y=53,z=9.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=29.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=37.5,y=53,z=13.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=56.5,y=53,z=6.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=54.5,y=53,z=34.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=12.5,y=53,z=47.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=31.5,y=53,z=45.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block 31 53 50 minecraft:iron_trapdoor[open=true] if block 18 53 56 minecraft:black_stained_glass if entity @s[x=28,y=53,z=49,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_d/first_go_battle/0
execute if entity @e[x=24.5,y=53,z=55.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=31,Medabot=0..,State=1}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=31.5,y=53,z=50.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=18.5,y=53,z=55.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=50,z=0,dx=61,dy=7,dz=61,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:jungle_d/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 10 53 44 minecraft:iron_trapdoor[open=true] if entity @s[x=9,y=53,z=41,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_d/first_go_battle/1
execute if entity @e[x=0,y=50,z=0,dx=61,dy=7,dz=61,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=31,Medabot=0..,State=1}]
execute as @e[x=0,y=50,z=0,dx=61,dy=7,dz=61,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 31
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/jungle_d
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/jungle_d_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:jungle_d/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/get_score/time_damage_money
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 30 59 30 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots