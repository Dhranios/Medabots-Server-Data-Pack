execute unless entity @e[scores={Stage=21},tag=hide_normal_time] run bossbar set medabots_server:paradise_a/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=21},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:paradise_a/time value
execute unless entity @e[scores={Stage=21},tag=hide_normal_time] store result bossbar medabots_server:paradise_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=21},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:paradise_a/robattle value
execute if entity @e[scores={Stage=21},tag=hide_normal_time] if entity @e[scores={Stage=21,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:paradise_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=21},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=8,z=0,dx=94,dy=49,dz=94,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=21},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=8,z=0,dx=94,dy=49,dz=94,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/paradise_a
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=72.5,y=53,z=89.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=63.5,y=53,z=17.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=33.5,y=53,z=88.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=31.5,y=53,z=18.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=64.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=27.5,y=53,z=15.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=46.5,y=53,z=24.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=39.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add @e[x=40.5,y=53,z=60.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=39.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=40.5,y=53,z=60.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=39.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=40.5,y=53,z=62.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=39.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=40.5,y=53,z=55.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=39.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players remove @e[x=40.5,y=53,z=60.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=39.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=40.5,y=53,z=60.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if entity @e[x=39.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=40.5,y=53,z=62.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=39.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=40.5,y=53,z=55.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=54.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add @e[x=54.5,y=53,z=59.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=54.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=54.5,y=53,z=59.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=54.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=56.5,y=53,z=59.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=54.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=49.5,y=53,z=59.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=54.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players remove @e[x=54.5,y=53,z=59.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=54.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=54.5,y=53,z=59.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if entity @e[x=54.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=56.5,y=53,z=59.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=54.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=49.5,y=53,z=59.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=54.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add @e[x=53.5,y=53,z=45.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=54.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=53.5,y=53,z=45.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=54.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=53.5,y=53,z=43.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=54.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=53.5,y=53,z=50.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=54.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players remove @e[x=53.5,y=53,z=45.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=54.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=53.5,y=53,z=45.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if entity @e[x=54.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=53.5,y=53,z=43.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=54.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=53.5,y=53,z=50.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=39.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add @e[x=39.5,y=53,z=46.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=39.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=39.5,y=53,z=46.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=39.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=37.5,y=53,z=46.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=39.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=44.5,y=53,z=46.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=39.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players remove @e[x=39.5,y=53,z=46.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=39.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=39.5,y=53,z=46.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if entity @e[x=39.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=37.5,y=53,z=46.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=39.5,y=53,z=45.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=44.5,y=53,z=46.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if block 78 53 36 minecraft:iron_trapdoor[open=true] if block 72 53 85 minecraft:black_stained_glass if entity @s[x=76,y=53,z=36,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/second_go_battle/0
execute if entity @e[x=88.5,y=53,z=81.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,State=1}]
execute if entity @e[x=88.5,y=53,z=81.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=21},tag=guard,type=minecraft:creeper,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=77.5,y=53,z=36.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=72.5,y=53,z=84.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=8,z=0,dx=94,dy=49,dz=94,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=21,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=21,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:paradise_a/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 69 53 22 minecraft:iron_trapdoor[open=true] unless block 72 52 15 minecraft:lime_wool if entity @s[x=69,y=53,z=21,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/second_go_battle/1
execute if entity @e[x=73.5,y=53,z=16.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,State=1}]
execute if entity @e[x=73.5,y=53,z=16.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if entity @e[x=77.5,y=53,z=22.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=84.5,y=53,z=22.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=89.5,y=53,z=21.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=90.5,y=53,z=15.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=89.5,y=53,z=0.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=72.5,y=53,z=15.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=72.5,y=53,z=0.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=71.5,y=53,z=3.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=78.5,y=53,z=9.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=77.5,y=53,z=4.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=77.5,y=53,z=15.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=84.5,y=53,z=15.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=83.5,y=53,z=9.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=84.5,y=53,z=4.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=90.5,y=53,z=3.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=69.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=8,z=0,dx=94,dy=49,dz=94,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=21,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=21,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:paradise_a/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 52 53 18 minecraft:iron_trapdoor[open=true] unless block 39 52 12 minecraft:lime_wool if entity @s[x=51,y=53,z=15,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/second_go_battle/2
execute if entity @e[x=43.5,y=53,z=11.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,State=1}]
execute if entity @e[x=43.5,y=53,z=11.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if entity @e[x=39.5,y=53,z=12.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=45.5,y=53,z=12.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=50.5,y=53,z=11.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=48.5,y=53,z=7.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=31.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=28.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=52.5,y=53,z=18.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=8,z=0,dx=94,dy=49,dz=94,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=21,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=21,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:paradise_a/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 21 53 22 minecraft:iron_trapdoor[open=true] if block 12 52 6 minecraft:water if entity @s[x=20,y=53,z=19,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/second_go_battle/3
execute if entity @e[x=18.5,y=53,z=17.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,State=1}]
execute if entity @e[x=18.5,y=53,z=17.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=21},tag=cannon,type=minecraft:husk,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=21.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=8,z=0,dx=94,dy=49,dz=94,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=21,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=21,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:paradise_a/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 47 53 25 minecraft:iron_trapdoor[open=true] if block 51 53 29 minecraft:air if entity @s[x=45,y=53,z=25,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/second_go_battle/4
execute if entity @e[x=47.5,y=53,z=31.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,State=1}]
execute if entity @e[x=47.5,y=53,z=31.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if entity @e[scores={Stage=21,Medabot=0..,State=1..},type=minecraft:skeleton,tag=dying] run advancement grant @s only medabots_server:main/preliminary_match
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=46.5,y=53,z=25.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=8,z=0,dx=94,dy=49,dz=94,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:paradise_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 21 53 48 minecraft:iron_trapdoor[open=true] if block 18 53 67 minecraft:black_stained_glass if entity @s[x=19,y=53,z=48,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/second_go_battle/5
execute if entity @e[x=15.5,y=53,z=60.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,State=1}]
execute if entity @e[x=15.5,y=53,z=60.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=21},tag=cannon,type=minecraft:husk,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=20.5,y=53,z=48.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=18.5,y=53,z=67.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=8,z=0,dx=94,dy=49,dz=94,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=21,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=21,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:paradise_a/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 19 53 68 minecraft:iron_trapdoor[open=true] if block 36 53 81 minecraft:black_stained_glass if entity @s[x=17,y=53,z=68,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/second_go_battle/6
execute if entity @e[x=16.5,y=53,z=77.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,State=1}]
execute if entity @e[x=16.5,y=53,z=77.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=21},tag=guard,type=minecraft:creeper,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=18.5,y=53,z=68.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=36.5,y=53,z=81.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=8,z=0,dx=94,dy=49,dz=94,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=21,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=21,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:paradise_a/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 37 53 80 minecraft:iron_trapdoor[open=true] if block 46 53 67 minecraft:black_stained_glass if entity @s[x=37,y=53,z=79,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/second_go_battle/7
execute if entity @e[x=47.5,y=53,z=81.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,State=1}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=37.5,y=53,z=80.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=46.5,y=53,z=67.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=8,z=0,dx=94,dy=49,dz=94,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:paradise_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 46 53 64 minecraft:iron_trapdoor[open=true] if entity @s[x=45,y=53,z=61,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/second_go_battle/8
execute if entity @e[x=0,y=8,z=0,dx=94,dy=49,dz=94,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,State=1}]
execute as @e[x=0,y=8,z=0,dx=94,dy=49,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 21
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/paradise_a
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/paradise_a_second_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:paradise_a/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/get_score/time_damage_money
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 47 59 47 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots