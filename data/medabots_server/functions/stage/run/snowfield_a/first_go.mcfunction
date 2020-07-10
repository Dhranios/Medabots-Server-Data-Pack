execute unless entity @e[scores={Stage=5},tag=hide_normal_time] run bossbar set medabots_server:snowfield_a/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=5},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:snowfield_a/time value
execute unless entity @e[scores={Stage=5},tag=hide_normal_time] store result bossbar medabots_server:snowfield_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=5},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:snowfield_a/robattle value
execute if entity @e[scores={Stage=5},tag=hide_normal_time] if entity @e[scores={Stage=5,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:snowfield_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=5},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=105,dy=7,dz=63,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=5},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=105,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/snowfield_a
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=74.5,y=53,z=29.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=69.5,y=53,z=34.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=74.5,y=53,z=29.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=69.5,y=53,z=34.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=74.5,y=53,z=29.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=77.5,y=53,z=40.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=74.5,y=53,z=29.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=77.5,y=53,z=40.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=36.5,y=53,z=22.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=41.5,y=53,z=15.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=25.5,y=53,z=11.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=19.5,y=53,z=20.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=17.5,y=53,z=17.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=55.5,y=53,z=44.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add @e[x=56.5,y=53,z=44.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=55.5,y=53,z=44.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=56.5,y=53,z=44.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=55.5,y=53,z=44.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players remove @e[x=56.5,y=53,z=44.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=55.5,y=53,z=44.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=56.5,y=53,z=44.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if entity @e[x=51.5,y=53,z=21.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=50.5,y=53,z=21.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=51.5,y=53,z=21.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=50.5,y=53,z=21.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=5.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=11.5,y=53,z=36.5,distance=..0.7,tag=spring_wall,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=5.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=11.5,y=53,z=36.5,distance=..0.7,tag=spring_wall,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if block 45 53 44 minecraft:iron_trapdoor[open=true] if block 38 53 46 minecraft:black_stained_glass if entity @s[x=42,y=53,z=42,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_a/first_go_battle/0
execute if entity @e[x=39.5,y=53,z=40.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=5,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=45.5,y=53,z=43.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=38.5,y=53,z=46.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=31.5,y=53,z=36.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=50,z=0,dx=105,dy=7,dz=63,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:snowfield_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 16 53 18 minecraft:iron_trapdoor[open=true] if entity @s[x=13,y=53,z=16,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_a/first_go_battle/1
execute if entity @e[x=0,y=50,z=0,dx=105,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=5,Medabot=0..,State=1..2}]
execute as @e[x=0,y=50,z=0,dx=105,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 5
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/snowfield_a
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/snowfield_a_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:snowfield_a/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/infinity={vs_spyke_battle=true,kuwagata_medal=false}}] add dialog_infinity_kuwagata_medal
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 48 59 31 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots