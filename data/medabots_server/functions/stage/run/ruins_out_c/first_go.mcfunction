execute unless entity @e[scores={Stage=27},tag=hide_normal_time] run bossbar set medabots_server:ruins_out_c/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=27},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_out_c/time value
execute unless entity @e[scores={Stage=27},tag=hide_normal_time] store result bossbar medabots_server:ruins_out_c/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=27},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_out_c/robattle value
execute if entity @e[scores={Stage=27},tag=hide_normal_time] if entity @e[scores={Stage=27,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:ruins_out_c/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=27},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=9,z=0,dx=62,dy=49,dz=63,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=27},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=9,z=0,dx=62,dy=49,dz=63,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/ruins_out_c
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=38.5,y=53,z=58.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=59.5,y=53,z=58.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=48.5,y=53,z=45.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=46.5,y=53,z=33.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=51.5,y=53,z=33.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=57.5,y=53,z=45.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=46.5,y=53,z=33.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=51.5,y=53,z=33.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=39.5,y=53,z=45.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=57.5,y=53,z=15.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=40.5,y=53,z=15.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=36.5,y=53,z=31.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=31.5,y=53,z=23.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=29.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=21.5,y=53,z=28.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=29.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=31.5,y=53,z=23.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=21.5,y=53,z=28.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=29.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=56.5,y=53,z=10.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=36.5,y=53,z=40.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=13.5,y=53,z=57.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=8.5,y=53,z=52.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=11.5,y=53,z=46.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=10.5,y=53,z=51.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=33.5,y=53,z=46.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=33.5,y=53,z=44.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=33.5,y=53,z=46.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=13.5,y=53,z=57.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=8.5,y=53,z=52.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=11.5,y=53,z=46.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=10.5,y=53,z=51.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=33.5,y=53,z=44.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=33.5,y=53,z=46.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=25.5,y=53,z=10.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=9.5,y=53,z=20.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=25.5,y=53,z=10.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=9.5,y=53,z=20.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=35.5,y=53,z=9.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=36.5,y=53,z=9.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=56.5,y=53,z=10.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=34.5,y=53,z=5.5,distance=..0.7,tag=hammer_punch,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=56.5,y=53,z=10.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=34.5,y=53,z=4.5,distance=..0.7,tag=hammer_punch,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=56.5,y=53,z=10.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=47.5,y=53,z=5.5,distance=..0.7,tag=hammer_punch,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=56.5,y=53,z=10.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=47.5,y=53,z=4.5,distance=..0.7,tag=hammer_punch,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=15.5,y=53,z=51.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=14.5,y=53,z=51.5,distance=..0.7,tag=hammer_punch,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=15.5,y=53,z=51.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=14.5,y=53,z=51.5,distance=..0.7,tag=hammer_punch,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=59.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=49.5,y=53,z=3.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=59.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=49.5,y=53,z=3.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block 48 53 20 minecraft:iron_trapdoor[open=true] if block 17 53 6 minecraft:air if entity @s[x=47,y=53,z=17,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_c/first_go_battle/0
execute if entity @e[x=48.5,y=53,z=17.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=27,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=48.5,y=53,z=20.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=36.5,y=53,z=32.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=48.5,y=53,z=17.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_out_c/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 9 53 19 minecraft:iron_trapdoor[open=true] if entity @s[x=8,y=53,z=16,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_c/first_go_battle/1
execute if entity @e[x=0,y=9,z=0,dx=62,dy=49,dz=63,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=27,Medabot=0..,State=1..2}]
execute as @e[x=0,y=9,z=0,dx=62,dy=49,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 27
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/ruins_out_c
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/ruins_out_c_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_out_c/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/infinity={koji_is_worried=true,roks_saved=false}}] add dialog_infinity_roks_saved
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 30 59 31 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots