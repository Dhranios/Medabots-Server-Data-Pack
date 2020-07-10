execute unless entity @e[scores={Stage=13},tag=hide_normal_time] run bossbar set medabots_server:seashore_b/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=13},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:seashore_b/time value
execute unless entity @e[scores={Stage=13},tag=hide_normal_time] store result bossbar medabots_server:seashore_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=13},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:seashore_b/robattle value
execute if entity @e[scores={Stage=13},tag=hide_normal_time] if entity @e[scores={Stage=13,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:seashore_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=13},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=94,dy=7,dz=94,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=13},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=94,dy=7,dz=94,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/seashore_b
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=2.5,y=53,z=55.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=75.5,y=53,z=83.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=78.5,y=53,z=89.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=88.5,y=53,z=68.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=60.5,y=53,z=77.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=89.5,y=53,z=54.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=90.5,y=53,z=4.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=67.5,y=53,z=31.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=51.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=68.5,y=53,z=8.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=50.5,y=53,z=24.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=68.5,y=53,z=8.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=50.5,y=53,z=24.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=51.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=68.5,y=53,z=8.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=19.5,y=53,z=88.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players remove @e[x=19.5,y=53,z=87.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=19.5,y=53,z=88.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=19.5,y=53,z=87.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if entity @e[x=19.5,y=53,z=88.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add @e[x=19.5,y=53,z=87.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=19.5,y=53,z=88.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=19.5,y=53,z=87.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=65.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=18.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players remove @e[x=66.5,y=53,z=31.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=65.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=18.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=66.5,y=53,z=31.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if entity @e[x=65.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=18.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players add @e[x=17.5,y=53,z=31.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=65.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=18.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=17.5,y=53,z=31.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if entity @e[x=65.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add @e[x=66.5,y=53,z=31.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=65.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=66.5,y=53,z=31.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=65.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players remove @e[x=17.5,y=53,z=31.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=65.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=17.5,y=53,z=31.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=18.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add @e[x=66.5,y=53,z=31.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=18.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=66.5,y=53,z=31.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=18.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players remove @e[x=17.5,y=53,z=31.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=18.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=17.5,y=53,z=31.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=88.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players remove @e[x=88.5,y=53,z=24.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=88.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=88.5,y=53,z=24.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if entity @e[x=88.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add @e[x=88.5,y=53,z=24.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=88.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=88.5,y=53,z=24.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=87.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players remove @e[x=87.5,y=53,z=24.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=87.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=87.5,y=53,z=24.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if entity @e[x=87.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add @e[x=87.5,y=53,z=24.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=87.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=87.5,y=53,z=24.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=86.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players remove @e[x=86.5,y=53,z=24.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=86.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=86.5,y=53,z=24.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if entity @e[x=86.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add @e[x=86.5,y=53,z=24.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=86.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=86.5,y=53,z=24.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=83.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=72,y=52,z=30,dx=10,dy=3,dz=2,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=83.5,y=53,z=31.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=83.5,y=53,z=30.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=72,y=52,z=30,dx=10,dy=3,dz=2,tag=alarm,type=minecraft:armor_stand] add enabled
execute if block 15 53 88 minecraft:iron_trapdoor[open=true] if block 2 52 74 minecraft:water if entity @s[x=12,y=52,z=86,dx=3,dy=3,dz=3] run function medabots_server:stage/create/seashore_b/rubberobo_battle/0
execute if entity @e[x=7.5,y=52,z=81.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=13,Medabot=0..,State=1..2}]
execute if entity @e[x=7.5,y=52,z=81.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=13},tag=cannon,type=minecraft:husk,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=15.5,y=53,z=87.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=94,dy=7,dz=94,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=13,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=13,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:seashore_b/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 15 53 29 minecraft:iron_trapdoor[open=true] if entity @s[x=14,y=53,z=26,dx=3,dy=3,dz=3] run function medabots_server:stage/create/seashore_b/rubberobo_battle/1
execute if entity @e[x=0,y=50,z=0,dx=94,dy=7,dz=94,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=13,Medabot=0..,State=1..2}]
execute as @e[x=0,y=50,z=0,dx=94,dy=7,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 13
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/seashore_b
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/seashore_b_rubberobo
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:seashore_b/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/infinity={rubberobo_enters_seashore_b=true,rubberobo_leaves_seashore_b=false}}] add dialog_infinity_rubberobo_leaves_seashore_b
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 47 59 46 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots