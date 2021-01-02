execute unless entity @e[scores={Stage=34},tag=hide_normal_time] run bossbar set medabots_server:ruins_in_d/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=34},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_in_d/time value
execute unless entity @e[scores={Stage=34},tag=hide_normal_time] store result bossbar medabots_server:ruins_in_d/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=34},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_in_d/robattle value
execute if entity @e[scores={Stage=34},tag=hide_normal_time] if entity @e[scores={Stage=34,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:ruins_in_d/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=34},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=34},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=62,dy=7,dz=62,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/ruins_in_d
execute if entity @s[scores={State=0}] run function medabots_server:other/death
scoreboard players reset #temp Time
execute if entity @e[x=46.5,y=53,z=59.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=54.5,y=53,z=59.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=54.5,y=53,z=50.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=55.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=54.5,y=53,z=59.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=54.5,y=53,z=50.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=54.5,y=53,z=59.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=54.5,y=53,z=50.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=46.5,y=53,z=59.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=55.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=54.5,y=53,z=50.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=55.5,y=53,z=59.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=54.5,y=53,z=43.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=54.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=30.5,y=53,z=50.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=54.5,y=53,z=23.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=46.5,y=53,z=19.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=17.5,y=53,z=21.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=18.5,y=53,z=21.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=17.5,y=53,z=21.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=18.5,y=53,z=1.5,distance=..2,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block 30 53 43 minecraft:iron_trapdoor[open=true] if block 17 53 27 minecraft:air if entity @s[x=29,y=53,z=40,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_d/first_go_battle/0
execute if entity @e[x=31.5,y=53,z=28.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=34,Medabot=0..,State=1}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=30.5,y=53,z=43.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=50,z=0,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_in_d/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 39 53 43 minecraft:iron_trapdoor[open=true] if block 40 53 50 minecraft:black_stained_glass if entity @s[x=38,y=53,z=40,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_d/first_go_battle/1
execute if entity @e[x=42.5,y=53,z=39.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=34,Medabot=0..,State=1}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=39.5,y=53,z=43.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=39.5,y=53,z=50.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=50,z=0,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_in_d/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 46 53 3 minecraft:iron_trapdoor[open=true] if block 56 53 1 minecraft:air if entity @s[x=46,y=53,z=2,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_d/first_go_battle/2
execute if entity @e[x=55.5,y=53,z=8.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=34},tag=guard,type=minecraft:creeper] run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[x=0,y=50,z=0,dx=62,dy=7,dz=62,scores={Stage=34,Medabot=0..,State=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] as @a[x=0,y=50,z=0,dx=62,dy=7,dz=62,scores={Stage=34,Medabot=0..,State=1..},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=46.5,y=53,z=3.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=30.5,y=53,z=17.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run bossbar set medabots_server:ruins_in_d/robattle players
tag @s[tag=mission_success] remove mission_success
execute if block 15 53 4 minecraft:iron_trapdoor[open=true] if block 10 53 6 minecraft:air if entity @s[x=12,y=53,z=2,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_d/first_go_battle/3
execute if entity @e[x=6.5,y=53,z=6.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if entity @e[x=10.5,y=53,z=5.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=9.5,y=53,z=6.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=2.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=2.5,y=53,z=7.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=2.5,y=53,z=13.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=8.5,y=53,z=13.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=13.5,y=53,z=13.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=34,Medabot=0..,State=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=34,Medabot=0..,State=1..},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=15.5,y=53,z=3.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=30.5,y=53,z=17.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run bossbar set medabots_server:ruins_in_d/robattle players
tag @s[tag=mission_success] remove mission_success
execute if block 30 53 16 minecraft:iron_trapdoor[open=true] if entity @s[x=29,y=53,z=13,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_d/first_go_battle/4
execute if entity @e[x=0,y=50,z=0,dx=62,dy=7,dz=62,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=34,Medabot=0..,State=1}]
execute as @e[x=0,y=50,z=0,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 34
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/ruins_in_d
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/ruins_in_d_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_in_d/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/get_score/time_damage_money
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 30 59 40 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots