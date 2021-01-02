execute unless entity @e[scores={Stage=22},tag=hide_normal_time] run bossbar set medabots_server:paradise_b/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=22},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:paradise_b/time value
execute unless entity @e[scores={Stage=22},tag=hide_normal_time] store result bossbar medabots_server:paradise_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=22},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:paradise_b/robattle value
execute if entity @e[scores={Stage=22},tag=hide_normal_time] if entity @e[scores={Stage=22,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:paradise_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=22},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=64,dy=7,dz=63,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=22},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=64,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/paradise_b
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=19.5,y=53,z=6.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=20.5,y=53,z=9.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @e[x=22.5,y=53,z=15.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=16.5,y=53,z=25.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @e[x=27.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players remove @e[x=29.5,y=53,z=3.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=27.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=29.5,y=53,z=3.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=27.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add @e[x=11.5,y=53,z=3.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=27.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=11.5,y=53,z=3.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=27.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players add @e[x=29.5,y=53,z=3.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=27.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=29.5,y=53,z=3.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if entity @e[x=27.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players remove @e[x=11.5,y=53,z=3.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=27.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=11.5,y=53,z=3.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if block 47 53 49 minecraft:iron_trapdoor[open=true] if block 52 53 45 minecraft:air if entity @s[x=46,y=53,z=46,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_b/first_go_battle/0
execute if entity @e[x=55.5,y=53,z=47.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=22,Medabot=0..,State=1}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=55.5,y=53,z=47.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=22}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=55.5,y=53,z=47.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=55.5,y=53,z=47.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=47.5,y=53,z=49.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @e[x=55.5,y=53,z=47.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:paradise_b/robattle players
kill @e[x=55.5,y=53,z=47.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 9 53 49 minecraft:iron_trapdoor[open=true] if block 6 53 52 minecraft:air if entity @s[x=7,y=53,z=49,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_b/first_go_battle/1
execute if entity @e[x=7.5,y=53,z=55.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=22,Medabot=0..,State=1}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=7.5,y=53,z=55.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=22}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=7.5,y=53,z=55.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=7.5,y=53,z=55.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=8.5,y=53,z=49.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @e[x=7.5,y=53,z=55.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:paradise_b/robattle players
kill @e[x=7.5,y=53,z=55.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 15 53 38 minecraft:iron_trapdoor[open=true] if block 17 53 37 minecraft:air if entity @s[x=14,y=53,z=35,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_b/first_go_battle/2
execute if entity @e[x=13.5,y=53,z=36.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=22,Medabot=0..,State=1}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=13.5,y=53,z=36.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=22}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=13.5,y=53,z=36.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=13.5,y=53,z=36.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=15.5,y=53,z=38.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @e[x=13.5,y=53,z=36.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:paradise_b/robattle players
kill @e[x=13.5,y=53,z=36.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 21 53 31 minecraft:iron_trapdoor[open=true] if block 19 53 29 minecraft:air if entity @s[x=20,y=52,z=28,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_b/first_go_battle/3
execute if entity @e[x=24.5,y=53,z=29.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=22,Medabot=0..,State=1}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=24.5,y=53,z=29.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=22}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=24.5,y=53,z=29.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=24.5,y=53,z=29.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=21.5,y=53,z=31.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @e[x=24.5,y=53,z=29.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:paradise_b/robattle players
kill @e[x=24.5,y=53,z=29.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 6 53 10 minecraft:iron_trapdoor[open=true] if entity @s[x=4,y=53,z=10,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_b/first_go_battle/4
execute if entity @e[x=0,y=50,z=0,dx=64,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=22,Medabot=0..,State=1}]
execute as @e[x=0,y=50,z=0,dx=64,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 22
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/paradise_b
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/paradise_b_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:paradise_b/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/infinity={the_final_stage=true,jaxy_is_gone=false}}] add dialog_infinity_jaxy_is_gone
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 31 59 31 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots