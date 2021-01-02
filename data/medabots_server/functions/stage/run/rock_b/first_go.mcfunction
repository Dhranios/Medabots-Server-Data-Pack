execute unless entity @e[scores={Stage=11},tag=hide_normal_time] run bossbar set medabots_server:rock_b/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=11},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:rock_b/time value
execute unless entity @e[scores={Stage=11},tag=hide_normal_time] store result bossbar medabots_server:rock_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=11},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:rock_b/robattle value
execute if entity @e[scores={Stage=11},tag=hide_normal_time] if entity @e[scores={Stage=11,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:rock_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=11},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=51,z=0,dx=63,dy=7,dz=63,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=11},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=51,z=0,dx=63,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/rock_b
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=33.5,y=53,z=61.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=45.5,y=53,z=49.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=29.5,y=53,z=61.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=21.5,y=53,z=50.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=60.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=59.5,y=53,z=24.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=60.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=59.5,y=53,z=24.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=31.5,y=53,z=61.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=31.5,y=53,z=62.5,distance=..0.7,tag=hammer_punch,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=31.5,y=53,z=61.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=31.5,y=53,z=62.5,distance=..0.7,tag=hammer_punch,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=30.5,y=53,z=47.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=30.5,y=53,z=46.5,distance=..0.7,tag=hammer_punch,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=30.5,y=53,z=47.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=30.5,y=53,z=46.5,distance=..0.7,tag=hammer_punch,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if block 41 53 38 minecraft:iron_trapdoor[open=true] if block 53 53 39 minecraft:black_stained_glass if entity @s[x=41,y=53,z=37,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_b/first_go_battle/0
execute if entity @e[x=48.5,y=53,z=37.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=11,Medabot=0..,State=1}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=41.5,y=53,z=38.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=53.5,y=53,z=39.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=51,z=0,dx=63,dy=7,dz=63,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:rock_b/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 14 53 23 minecraft:iron_trapdoor[open=true] if block 2 50 1 minecraft:cobblestone if entity @s[x=15,y=53,z=22,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_b/first_go_battle/1
execute if entity @e[x=21.5,y=53,z=26.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=11,Medabot=0..,State=1}]
execute if entity @e[x=21.5,y=53,z=26.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=11},tag=guard,type=minecraft:creeper,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=14.5,y=53,z=23.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=51,z=0,dx=63,dy=7,dz=63,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=11,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=11,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:rock_b/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 21 53 10 minecraft:iron_trapdoor[open=true] if entity @s[x=21,y=53,z=9,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_b/first_go_battle/2
execute if entity @e[x=0,y=51,z=0,dx=63,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=11,Medabot=0..,State=1}]
execute as @e[x=0,y=51,z=0,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 11
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/rock_b
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/rock_b_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:rock_b/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/infinity={vs_sloan_battle=true,jammy_discovered=false}}] add dialog_infinity_jammy_discovered
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 32 59 31 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots