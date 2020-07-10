execute unless entity @e[scores={Stage=14},tag=hide_normal_time] run bossbar set medabots_server:snowfield_b/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=14},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:snowfield_b/time value
execute unless entity @e[scores={Stage=14},tag=hide_normal_time] store result bossbar medabots_server:snowfield_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=14},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:snowfield_b/robattle value
execute if entity @e[scores={Stage=14},tag=hide_normal_time] if entity @e[scores={Stage=14,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:snowfield_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=14},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=94,dy=7,dz=93,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=14},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=94,dy=7,dz=93,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/snowfield_b
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=57.5,y=53,z=71.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=53.5,y=53,z=70.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=58.5,y=53,z=71.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=53.5,y=53,z=70.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=56.5,y=53,z=72.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=53.5,y=53,z=70.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=53.5,y=53,z=73.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=53.5,y=53,z=70.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=54.5,y=53,z=73.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=53.5,y=53,z=70.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=58.5,y=53,z=74.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=53.5,y=53,z=70.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=54.5,y=53,z=75.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=53.5,y=53,z=70.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=55.5,y=53,z=75.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=53.5,y=53,z=70.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=54.5,y=53,z=71.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=55.5,y=53,z=75.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=54.5,y=53,z=75.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=58.5,y=53,z=74.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=54.5,y=53,z=73.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=53.5,y=53,z=73.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=56.5,y=53,z=72.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=58.5,y=53,z=71.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=57.5,y=53,z=71.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=53.5,y=53,z=70.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=36.5,y=53,z=85.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=33.5,y=53,z=86.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=31.5,y=53,z=24.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=34.5,y=53,z=24.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=57.5,y=53,z=29.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=59.5,y=53,z=29.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=57.5,y=53,z=29.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=59.5,y=53,z=29.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=43.5,y=53,z=77.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add #temp PowerAmount 1
execute if entity @e[x=32.5,y=53,z=47.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add #temp PowerAmount 1
execute if entity @e[x=51.5,y=53,z=27.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add #temp PowerAmount 1
execute if entity @e[x=59.5,y=53,z=22.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add #temp PowerAmount 1
execute if entity @e[x=13.5,y=53,z=83.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add #temp PowerAmount 2
execute if entity @e[x=16.5,y=53,z=42.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add #temp PowerAmount 2
execute if entity @e[x=89.5,y=53,z=57.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add #temp PowerAmount 2
execute if entity @e[x=76.5,y=53,z=4.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add #temp PowerAmount 2
execute if score #temp PowerAmount matches 8.. run scoreboard players set @e[x=15.5,y=53,z=25.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
scoreboard players reset #temp PowerAmount
execute if entity @e[x=57.5,y=53,z=29.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=57.5,y=53,z=28.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=57.5,y=53,z=29.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=57.5,y=53,z=28.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block 25 53 77 minecraft:iron_trapdoor[open=true] unless block 13 52 83 minecraft:lime_wool if entity @s[x=22,y=53,z=75,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_b/first_go_battle/0
execute if entity @e[x=17.5,y=53,z=80.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=14,Medabot=0..,State=1..2}]
execute if entity @e[x=17.5,y=53,z=80.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if entity @e[x=13.5,y=53,z=83.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=14,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=14,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=25.5,y=53,z=76.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:snowfield_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=94,dy=7,dz=93,tag=mission,type=minecraft:area_effect_cloud]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 11 53 50 minecraft:iron_trapdoor[open=true] unless block 16 52 42 minecraft:lime_wool if entity @s[x=8,y=53,z=48,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_b/first_go_battle/1
execute if entity @e[x=6.5,y=53,z=48.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=14,Medabot=0..,State=1..2}]
execute if entity @e[x=6.5,y=53,z=48.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if entity @e[x=16.5,y=53,z=42.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=14,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=14,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=11.5,y=53,z=49.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:snowfield_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=94,dy=7,dz=93,tag=mission,type=minecraft:area_effect_cloud]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 78 53 51 minecraft:iron_trapdoor[open=true] unless block 89 52 57 minecraft:lime_wool if entity @s[x=78,y=53,z=50,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_b/first_go_battle/2
execute if entity @e[x=86.5,y=53,z=53.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=14,Medabot=0..,State=1..2}]
execute if entity @e[x=86.5,y=53,z=53.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if entity @e[x=89.5,y=53,z=57.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=14,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=14,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=78.5,y=53,z=51.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:snowfield_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=94,dy=7,dz=93,tag=mission,type=minecraft:area_effect_cloud]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 81 53 21 minecraft:iron_trapdoor[open=true] unless block 76 52 4 minecraft:lime_wool if entity @s[x=80,y=53,z=18,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_b/first_go_battle/3
execute if entity @e[x=83.5,y=53,z=11.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=14,Medabot=0..,State=1..2}]
execute if entity @e[x=83.5,y=53,z=11.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if entity @e[x=76.5,y=53,z=4.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=14,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=14,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=81.5,y=53,z=21.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:snowfield_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=94,dy=7,dz=93,tag=mission,type=minecraft:area_effect_cloud]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 15 53 24 minecraft:iron_trapdoor[open=true] if entity @s[x=14,y=53,z=21,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_b/first_go_battle/4
execute if entity @e[x=0,y=50,z=0,dx=94,dy=7,dz=93,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=14,Medabot=0..,State=1..2}]
execute as @e[x=0,y=50,z=0,dx=94,dy=7,dz=93,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 14
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/snowfield_b
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/snowfield_b_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:snowfield_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 47 59 46 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots