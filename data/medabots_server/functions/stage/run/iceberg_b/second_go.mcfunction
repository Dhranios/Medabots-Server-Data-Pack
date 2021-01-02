execute unless entity @e[scores={Stage=15},tag=hide_normal_time] run bossbar set medabots_server:iceberg_b/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=15},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_b/time value
execute unless entity @e[scores={Stage=15},tag=hide_normal_time] store result bossbar medabots_server:iceberg_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=15},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_b/robattle value
execute if entity @e[scores={Stage=15},tag=hide_normal_time] if entity @e[scores={Stage=15,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:iceberg_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=15},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=60,dy=7,dz=90,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=15},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=60,dy=7,dz=90,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/iceberg_b
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=8.5,y=53,z=59.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=27.5,y=53,z=78.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=36.5,y=53,z=79.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=39.5,y=53,z=81.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=38.5,y=53,z=64.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=36.5,y=53,z=65.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=33.5,y=53,z=64.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=31.5,y=53,z=63.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=31.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=30.5,y=53,z=57.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=32.5,y=53,z=56.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=35.5,y=53,z=55.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=38.5,y=53,z=57.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=38.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=29.5,y=53,z=54.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=16.5,y=53,z=26.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=20.5,y=53,z=32.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=23.5,y=53,z=42.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=19.5,y=53,z=32.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=31.5,y=53,z=4.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=30.5,y=53,z=4.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=31.5,y=53,z=4.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=30.5,y=53,z=4.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=31.5,y=53,z=3.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=30.5,y=53,z=3.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=31.5,y=53,z=3.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=30.5,y=53,z=3.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=16.5,y=53,z=26.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=10.5,y=53,z=43.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=16.5,y=53,z=26.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=16.5,y=53,z=39.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=16.5,y=53,z=26.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=17.5,y=53,z=33.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=23.5,y=53,z=42.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=14.5,y=53,z=41.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=23.5,y=53,z=42.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=16.5,y=53,z=36.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=23.5,y=53,z=42.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=12.5,y=53,z=33.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block 49 53 69 minecraft:iron_trapdoor[open=true] if block 49 53 61 minecraft:air if entity @s[x=48,y=53,z=66,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_b/second_go_battle/0
execute if entity @e[x=51.5,y=53,z=61.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=15,Medabot=0..,State=1}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=51.5,y=53,z=61.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=15}] run tag @s remove run_until_the_time_is_up
execute if entity @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:main/salesman_quest/ghost_medal={start_the_quest=true,find_first_suspect=false}}] run scoreboard players set #SalesmanBurgler Dialog 1
execute if entity @e[x=51.5,y=53,z=61.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=51.5,y=53,z=61.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=49.5,y=53,z=69.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=51.5,y=53,z=61.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:iceberg_b/robattle players
kill @e[x=51.5,y=53,z=61.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 15 53 14 minecraft:iron_trapdoor[open=true] if block 17 53 3 minecraft:black_stained_glass if entity @s[x=14,y=53,z=11,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_b/second_go_battle/1
execute if entity @e[x=7.5,y=53,z=6.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=15,Medabot=0..,State=1}]
execute if entity @e[x=7.5,y=53,z=6.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=15},tag=cannon,type=minecraft:husk,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=15.5,y=53,z=14.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=17.5,y=53,z=3.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=7.5,y=53,z=6.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=15,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=15,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:iceberg_b/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 51 53 47 minecraft:iron_trapdoor[open=true] if block 36 50 27 minecraft:cobblestone if entity @s[x=51,y=53,z=46,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_b/second_go_battle/2
execute if entity @e[x=59.5,y=53,z=38.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=15,Medabot=0..,State=1}]
execute if entity @e[x=59.5,y=53,z=38.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=15},tag=guard,type=minecraft:creeper,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=51.5,y=53,z=47.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=59.5,y=53,z=38.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=15,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=15,Medabot=0..,State=1},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:iceberg_b/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 45 53 23 minecraft:iron_trapdoor[open=true] if entity @s[x=44,y=53,z=20,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_b/second_go_battle/3
execute if entity @e[x=0,y=50,z=0,dx=60,dy=7,dz=90,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=15,Medabot=0..,State=1}]
execute as @e[x=0,y=50,z=0,dx=60,dy=7,dz=90,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 15
execute if entity @s[scores={BattlingMedabots=1,State=1..}] if score #SalesmanBurgler Dialog matches 1 run tag @s add dialog_other_salesman_ghost_medal_one_down
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/iceberg_b
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/iceberg_b_second_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:iceberg_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/get_score/time_damage_money
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 29 59 44 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots