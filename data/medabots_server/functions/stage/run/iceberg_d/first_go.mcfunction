execute unless entity @e[scores={Stage=33},tag=hide_normal_time] run bossbar set medabots_server:iceberg_d/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=33},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_d/time value
execute unless entity @e[scores={Stage=33},tag=hide_normal_time] store result bossbar medabots_server:iceberg_d/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=33},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_d/robattle value
execute if entity @e[scores={Stage=33},tag=hide_normal_time] if entity @e[scores={Stage=33,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:iceberg_d/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=33},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=33},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=62,dy=7,dz=62,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/iceberg_d
execute if entity @s[scores={State=0}] run function medabots_server:other/death
scoreboard players reset #temp Time
execute if entity @e[x=3.5,y=53,z=44.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=2.5,y=53,z=46.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=56.5,y=53,z=40.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=46.5,y=53,z=38.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=43.5,y=53,z=39.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=46.5,y=53,z=38.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=56.5,y=53,z=40.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=43.5,y=53,z=39.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=46.5,y=53,z=38.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=22.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=9.5,y=53,z=27.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=14.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=9.5,y=53,z=16.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=11.5,y=53,z=17.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=9.5,y=53,z=16.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=14.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=11.5,y=53,z=17.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=9.5,y=53,z=16.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=6.5,y=53,z=15.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=6.5,y=53,z=13.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-0.5,y=53,z=9.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=6.5,y=53,z=13.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=6.5,y=53,z=15.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-0.5,y=53,z=9.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=6.5,y=53,z=13.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=30.5,y=53,z=3.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=33.5,y=53,z=14.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=29.5,y=53,z=26.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=37.5,y=53,z=21.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=48.5,y=53,z=24.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=49.5,y=53,z=28.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=46.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=29.5,y=53,z=26.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=46.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=37.5,y=53,z=21.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=46.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=48.5,y=53,z=24.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=46.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=49.5,y=53,z=28.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=46.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=22.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=7.5,y=53,z=27.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=14.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=2.5,y=53,z=18.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=11.5,y=53,z=17.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=2.5,y=53,z=18.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=14.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=11.5,y=53,z=17.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=2.5,y=53,z=18.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if block 19 53 58 minecraft:iron_trapdoor[open=true] if block 33 53 45 minecraft:black_stained_glass if entity @s[x=19,y=53,z=57,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_d/first_go_battle/0
execute if entity @e[x=24.5,y=53,z=53.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=33},tag=cannon,type=minecraft:husk] run tag @s add mission_success
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=19.5,y=53,z=58.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=33.5,y=53,z=45.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run bossbar set medabots_server:iceberg_d/robattle players
tag @s[tag=mission_success] remove mission_success
execute if block 45 53 21 minecraft:iron_trapdoor[open=true] if entity @s[x=44,y=53,z=18,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_d/first_go_battle/1
execute if entity @e[x=0,y=50,z=0,dx=62,dy=7,dz=62,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=33,Medabot=0..,State=1}]
execute as @e[x=0,y=50,z=0,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 33
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/iceberg_d
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/iceberg_d_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:iceberg_d/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/get_score/time_damage_money
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 29 59 26 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots