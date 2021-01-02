execute unless entity @e[scores={Stage=53},tag=hide_normal_time] run bossbar set medabots_server:rock_e/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=53},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:rock_e/time value
execute unless entity @e[scores={Stage=53},tag=hide_normal_time] store result bossbar medabots_server:rock_e/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=53},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:rock_e/robattle value
execute if entity @e[scores={Stage=53},tag=hide_normal_time] if entity @e[scores={Stage=53,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:rock_e/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=53},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=53},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=93,dy=7,dz=95,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/rock_e
execute if entity @s[scores={State=0}] run function medabots_server:other/death
scoreboard players reset #temp Time
execute if entity @e[x=83.5,y=53,z=23.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=88.5,y=53,z=24.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=83.5,y=53,z=23.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=88.5,y=53,z=24.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=80.5,y=53,z=28.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=1.5,y=53,z=90.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=39.5,y=53,z=2.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=57.5,y=53,z=19.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=73.5,y=53,z=26.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=57.5,y=53,z=19.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=73.5,y=53,z=26.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=33.5,y=53,z=91.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=30,y=53,z=91,distance=..4,type=minecraft:area_effect_cloud,tag=press_wall,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=80.5,y=53,z=28.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=30.5,y=53,z=91.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=76.5,y=53,z=64.5,distance=..4,type=minecraft:area_effect_cloud,tag=hammer_punch,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=30.5,y=53,z=91.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=76.5,y=53,z=64.5,distance=..4,type=minecraft:area_effect_cloud,tag=hammer_punch,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=80.5,y=53,z=28.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=76.5,y=53,z=64.5,distance=..4,type=minecraft:area_effect_cloud,tag=hammer_punch,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=80.5,y=53,z=28.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=76.5,y=53,z=50.5,distance=..4,type=minecraft:area_effect_cloud,tag=hammer_punch,scores={PowerAmount=0}] PowerAmount 1
execute if block 77 53 79 minecraft:iron_trapdoor[open=true] if block 81 53 67 minecraft:black_stained_glass if entity @s[x=77,y=53,z=78,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/0
execute if entity @e[x=85.5,y=53,z=77.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1}]
execute if entity @e[x=85.5,y=53,z=77.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=53},tag=cannon,type=minecraft:husk,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=77.5,y=53,z=79.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=81.5,y=53,z=67.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=53,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=53,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:rock_e/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s BattlingMedabots
execute if block 86 53 33 minecraft:iron_trapdoor[open=true] if block 87 53 31 minecraft:air if entity @s[x=85,y=53,z=30,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/1
execute if entity @e[x=88.5,y=53,z=31.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1}]
execute if entity @e[x=88.5,y=53,z=31.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if entity @e[x=80.5,y=53,z=28.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=86.5,y=53,z=33.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=53,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=53,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:rock_e/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s BattlingMedabots
execute if block 66 53 60 minecraft:iron_trapdoor[open=true] if block 54 53 50 minecraft:black_stained_glass if entity @s[x=63,y=53,z=58,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/2
execute if entity @e[x=63.5,y=53,z=57.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1}]
execute if entity @e[x=63.5,y=53,z=57.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=53},tag=guard,type=minecraft:creeper,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=66.5,y=53,z=59.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=54.5,y=53,z=49.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=53,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=53,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:rock_e/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s BattlingMedabots
execute if block 38 53 72 minecraft:iron_trapdoor[open=true] if block 32 53 71 minecraft:black_stained_glass if entity @s[x=35,y=53,z=70,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/3
execute if entity @e[x=34.5,y=53,z=76.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1}]
execute if entity @s[scores={BattlingMedabots=1}] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1}] run scoreboard players set @e[x=38.5,y=53,z=71.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1}] run scoreboard players set @e[x=32.5,y=53,z=70.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=0,y=50,z=0,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:rock_e/robattle players
scoreboard players reset @s BattlingMedabots
execute if block 21 53 73 minecraft:iron_trapdoor[open=true] if block 3 53 73 minecraft:black_stained_glass if entity @s[x=18,y=53,z=71,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/4
execute if entity @e[x=12.5,y=53,z=79.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=12.5,y=53,z=79.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=53}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=12.5,y=53,z=79.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=12.5,y=53,z=79.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=21.5,y=53,z=72.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=12.5,y=53,z=79.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=3.5,y=53,z=73.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=12.5,y=53,z=79.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:rock_e/robattle players
kill @e[x=12.5,y=53,z=79.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 32 53 43 minecraft:iron_trapdoor[open=true] if block 33 53 40 minecraft:black_stained_glass if entity @s[x=30,y=53,z=43,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/5
execute if entity @e[x=31.5,y=53,z=46.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1}]
execute if entity @e[x=31.5,y=53,z=46.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if entity @e[x=32.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=31.5,y=53,z=44.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=31.5,y=53,z=43.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=33.5,y=53,z=40.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=53,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=53,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:rock_e/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s BattlingMedabots
execute if block 52 53 30 minecraft:iron_trapdoor[open=true] if block 45 53 28 minecraft:black_stained_glass if entity @s[x=52,y=53,z=29,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/6
execute if entity @e[x=60.5,y=53,z=34.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1}]
execute if entity @s[scores={BattlingMedabots=1}] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1}] run scoreboard players set @e[x=52.5,y=53,z=30.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1}] run scoreboard players set @e[x=45.5,y=53,z=28.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerNeeded=1}] PowerNeeded 0
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=0,y=50,z=0,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:rock_e/robattle players
scoreboard players reset @s BattlingMedabots
execute if block 45 53 28 minecraft:iron_trapdoor[open=true] if block 52 53 11 minecraft:black_stained_glass if entity @s[x=44,y=53,z=25,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/7
execute if entity @e[x=47.5,y=53,z=25.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1}]
execute if entity @e[x=47.5,y=53,z=25.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=53},tag=cannon,type=minecraft:husk,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=45.5,y=53,z=28.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=52.5,y=53,z=11.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=53,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=53,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:rock_e/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s BattlingMedabots
execute if block 71 53 10 minecraft:iron_trapdoor[open=true] if block 42 53 9 minecraft:black_stained_glass if entity @s[x=71,y=53,z=9,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/8
execute if entity @e[x=73.5,y=53,z=9.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1}]
execute if entity @e[x=73.5,y=53,z=9.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=53},tag=guard,type=minecraft:creeper,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=71.5,y=53,z=10.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=42.5,y=53,z=9.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=72.5,y=53,z=14.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=0,y=50,z=0,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=53,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=53,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:rock_e/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s BattlingMedabots
execute if block 31 53 13 minecraft:iron_trapdoor[open=true] if entity @s[x=28,y=53,z=11,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/9
execute if entity @e[x=0,y=50,z=0,dx=93,dy=7,dz=95,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1}]
execute as @e[x=0,y=50,z=0,dx=93,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 53
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/rock_e
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:developer_challenge/rock_e_ultimategold
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:rock_e/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/other={rock_e_ultimategold=true,rock_e_ultimategold_cleared=false}}] add dialog_rock_e_ultimategold_cleared
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 46 59 47 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots