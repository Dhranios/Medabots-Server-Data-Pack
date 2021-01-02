execute unless entity @e[scores={Stage=3},tag=hide_normal_time] run bossbar set medabots_server:jungle_a/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=3},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_a/time value
execute unless entity @e[scores={Stage=3},tag=hide_normal_time] store result bossbar medabots_server:jungle_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=3},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_a/robattle value
execute if entity @e[scores={Stage=3},tag=hide_normal_time] if entity @e[scores={Stage=3,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:jungle_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=3},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1,y=50,z=0,dx=63,dy=8,dz=63,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/jungle_a
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=17.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=24.5,y=53,z=50.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=17.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=24.5,y=53,z=50.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=34.5,y=53,z=40.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=32.5,y=53,z=37.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=15.5,y=53,z=23.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=7.5,y=53,z=33.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=15.5,y=53,z=23.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=7.5,y=53,z=33.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=25.5,y=53,z=11.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=18.5,y=53,z=5.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=23.5,y=53,z=9.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=18.5,y=53,z=5.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=21.5,y=53,z=10.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=18.5,y=53,z=5.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=54.5,y=53,z=23.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=60.5,y=53,z=25.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=25.5,y=53,z=11.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=25.5,y=53,z=15.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=23.5,y=53,z=9.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=23.5,y=53,z=5.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=21.5,y=53,z=10.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=21.5,y=53,z=15.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block 43 53 55 minecraft:iron_trapdoor[open=true] if block 44 53 45 minecraft:black_stained_glass if entity @s[x=43,y=53,z=54,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_a/rubberobo_battle/0
execute if entity @e[x=53.5,y=53,z=52.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=3,Medabot=0..,State=1}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=43.5,y=53,z=55.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=44.5,y=53,z=44.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=-1,y=50,z=0,dx=63,dy=7,dz=63,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:jungle_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[x=0,y=50,z=0,dx=63,dy=8,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 3
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/jungle_a
advancement grant @s[tag=clear_stage] only medabots_server:stages/wave_1/jungle_a_rubberobo
tag @s[tag=clear_stage,advancements={medabots_server:story_progression/infinity={rubberobo_enters_jungle_a=true,rubberobo_leaves_jungle_a=false}}] add dialog_infinity_rubberobo_leaves_jungle_a
execute if entity @s[tag=clear_stage] positioned 32 59 31 run function medabots_server:stage/clear