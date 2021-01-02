execute unless entity @e[scores={Stage=23},tag=hide_normal_time] run bossbar set medabots_server:grassland_c/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=23},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:grassland_c/time value
execute unless entity @e[scores={Stage=23},tag=hide_normal_time] store result bossbar medabots_server:grassland_c/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=23},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:grassland_c/robattle value
execute if entity @e[scores={Stage=23},tag=hide_normal_time] if entity @e[scores={Stage=23,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:grassland_c/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=23},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=51,z=0,dx=65,dy=7,dz=63,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=23},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=51,z=0,dx=65,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/grassland_c
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=32.5,y=53,z=51.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=44.5,y=53,z=47.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=28.5,y=53,z=44.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=20.5,y=53,z=54.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=13.5,y=53,z=50.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=8.5,y=53,z=41.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=11.5,y=53,z=18.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=11.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=29.5,y=53,z=31.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=47.5,y=53,z=31.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=42.5,y=53,z=26.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=51.5,y=53,z=10.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=32.5,y=53,z=51.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=45.5,y=53,z=47.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=28.5,y=53,z=45.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=20.5,y=53,z=55.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=14.5,y=53,z=50.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=8.5,y=53,z=41.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=11.5,y=53,z=18.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=11.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=29.5,y=53,z=31.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=47.5,y=53,z=31.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=42.5,y=53,z=26.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=49.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=51.5,y=53,z=10.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=55.5,y=53,z=27.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=32.5,y=53,z=26.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=52.5,y=53,z=7.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=38.5,y=53,z=27.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=52.5,y=53,z=7.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=38.5,y=53,z=27.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if block 13 53 17 minecraft:iron_trapdoor[open=true] if block 11 53 6 minecraft:air if entity @s[x=12,y=53,z=14,dx=3,dy=3,dz=3] run function medabots_server:stage/create/grassland_c/first_go_battle/0
execute if entity @e[x=14.5,y=53,z=7.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=23,Medabot=0..,State=1}]
execute if entity @e[x=14.5,y=53,z=7.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=23},tag=cannon,type=minecraft:husk,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=13.5,y=53,z=17.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=51,z=0,dx=65,dy=7,dz=63,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=23,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=23,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:grassland_c/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 32 53 23 minecraft:iron_trapdoor[open=true] if entity @s[x=31,y=53,z=19,dx=3,dy=3,dz=3] run function medabots_server:stage/create/grassland_c/first_go_battle/1
execute if entity @e[x=0,y=51,z=0,dx=65,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=23,Medabot=0..,State=1}]
execute as @e[x=0,y=51,z=0,dx=65,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 23
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/grassland_c
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/grassland_c_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:grassland_c/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/infinity={the_underground_arena=true,krosserdog_saved=false}}] add dialog_infinity_krosserdog_saved
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 31 59 31 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots