execute unless entity @e[scores={Stage=18},tag=hide_normal_time] run bossbar set medabots_server:laboratory_b/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=18},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:laboratory_b/time value
execute unless entity @e[scores={Stage=18},tag=hide_normal_time] store result bossbar medabots_server:laboratory_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=18},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:laboratory_b/robattle value
execute if entity @e[scores={Stage=18},tag=hide_normal_time] if entity @e[scores={Stage=18,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:laboratory_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=18},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=92,dy=8,dz=92,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=18},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=92,dy=8,dz=92,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/laboratory_b
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=57.5,y=53,z=34.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=81.5,y=53,z=20.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=9.5,y=53,z=90.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=9.5,y=53,z=89.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=9.5,y=53,z=90.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=33.5,y=53,z=90.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=9.5,y=53,z=90.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=61.5,y=53,z=90.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=9.5,y=53,z=90.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=89.5,y=53,z=90.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=1.5,y=53,z=82.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=2.5,y=53,z=82.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=1.5,y=53,z=82.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=1.5,y=53,z=58.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=1.5,y=53,z=82.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=1.5,y=53,z=30.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=1.5,y=53,z=82.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=1.5,y=53,z=2.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block 35 53 73 minecraft:iron_trapdoor[open=true] if block 59 53 75 minecraft:black_stained_glass if entity @s[x=35,y=53,z=72,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_b/second_go_battle/0
execute if entity @e[x=47.5,y=53,z=73.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=18,Medabot=0..,State=1..2}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=47.5,y=53,z=73.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=18}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=47.5,y=53,z=73.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=47.5,y=53,z=73.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=35.5,y=53,z=73.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=47.5,y=53,z=73.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=59.5,y=53,z=74.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=47.5,y=53,z=73.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=58.5,y=53,z=1.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=47.5,y=53,z=73.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:laboratory_b/robattle players
kill @e[x=47.5,y=53,z=73.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 63 53 73 minecraft:iron_trapdoor[open=true] if block 87 53 75 minecraft:black_stained_glass if entity @s[x=63,y=53,z=72,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_b/second_go_battle/1
execute if entity @e[x=75.5,y=53,z=73.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=18,Medabot=0..,State=1..2}]
execute if entity @e[x=75.5,y=53,z=73.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=18},tag=guard,type=minecraft:creeper,tag=mission_entity] run tag @s add mission_success
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=63.5,y=53,z=73.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=87.5,y=53,z=74.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=59.5,y=53,z=1.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=18,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=18,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:laboratory_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=92,dy=8,dz=92,tag=mission,type=minecraft:area_effect_cloud]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 17 53 56 minecraft:iron_trapdoor[open=true] if block 17 53 32 minecraft:black_stained_glass if entity @s[x=16,y=53,z=53,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_b/second_go_battle/2
execute if entity @e[x=16.5,y=53,z=44.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=18,Medabot=0..,State=1..2}]
execute if entity @e[x=16.5,y=53,z=44.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if entity @e[x=5.5,y=53,z=47.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=10.5,y=53,z=53.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=29.5,y=53,z=50.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=21.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=4.5,y=53,z=40.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=7.5,y=53,z=36.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=21.5,y=53,z=34.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=27.5,y=53,z=34.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @s add mission_success
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=17.5,y=53,z=56.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=16.5,y=53,z=32.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=56.5,y=53,z=1.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=18,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=18,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:laboratory_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=92,dy=8,dz=92,tag=mission,type=minecraft:area_effect_cloud]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 17 53 28 minecraft:iron_trapdoor[open=true] if block 17 53 4 minecraft:black_stained_glass if entity @s[x=16,y=53,z=25,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_b/second_go_battle/3
execute if entity @e[x=16.5,y=53,z=16.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=18,Medabot=0..,State=1..2}]
execute if entity @e[x=16.5,y=53,z=16.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=18},tag=cannon,type=minecraft:husk,tag=mission_entity] run tag @s add mission_success
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=17.5,y=53,z=28.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=16.5,y=53,z=4.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=57.5,y=53,z=1.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=18,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=18,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:laboratory_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=92,dy=8,dz=92,tag=mission,type=minecraft:area_effect_cloud]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 81 53 19 minecraft:iron_trapdoor[open=true] if entity @s[x=80,y=53,z=16,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_b/second_go_battle/4
execute if entity @e[x=0,y=50,z=0,dx=92,dy=8,dz=92,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=18,Medabot=0..,State=1..2}]
execute as @e[x=0,y=50,z=0,dx=92,dy=8,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 18
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/laboratory_b
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/laboratory_b_second_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:laboratory_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/get_score/time_damage_money
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 33 59 58 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots