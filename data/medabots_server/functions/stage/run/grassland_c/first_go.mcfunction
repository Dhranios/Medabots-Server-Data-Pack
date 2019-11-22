execute unless entity @e[scores={Stage=23},tag=hide_normal_time] run bossbar set medabots_server:grassland_c/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=23},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:grassland_c/time value
execute unless entity @e[scores={Stage=23},tag=hide_normal_time] store result bossbar medabots_server:grassland_c/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=23},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:grassland_c/robattle value
execute if entity @e[scores={Stage=23},tag=hide_normal_time] if entity @e[scores={Stage=23,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:grassland_c/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=23},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=23},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/grassland_c
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1521 43 -426 minecraft:yellow_wool run scoreboard players set @e[x=-1537.5,y=44,z=-428.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1521 43 -426 minecraft:yellow_wool run scoreboard players set @e[x=-1524.5,y=44,z=-432.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1521 43 -426 minecraft:yellow_wool run scoreboard players set @e[x=-1541.5,y=44,z=-434.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1521 43 -426 minecraft:yellow_wool run scoreboard players set @e[x=-1549.5,y=44,z=-424.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1521 43 -426 minecraft:yellow_wool run scoreboard players set @e[x=-1555.5,y=44,z=-429.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1521 43 -426 minecraft:yellow_wool run scoreboard players set @e[x=-1561.5,y=44,z=-438.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1521 43 -426 minecraft:yellow_wool run scoreboard players set @e[x=-1558.5,y=44,z=-461.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1521 43 -426 minecraft:yellow_wool run scoreboard players set @e[x=-1558.5,y=44,z=-457.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1521 43 -426 minecraft:yellow_wool run scoreboard players set @e[x=-1540.5,y=44,z=-448.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1521 43 -426 minecraft:yellow_wool run scoreboard players set @e[x=-1522.5,y=44,z=-448.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1521 43 -426 minecraft:yellow_wool run scoreboard players set @e[x=-1527.5,y=44,z=-453.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1521 43 -426 minecraft:yellow_wool run scoreboard players set @e[x=-1518.5,y=44,z=-469.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1521 43 -426 minecraft:orange_wool run scoreboard players set @e[x=-1537.5,y=44,z=-428.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1521 43 -426 minecraft:orange_wool run scoreboard players set @e[x=-1524.5,y=44,z=-432.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1521 43 -426 minecraft:orange_wool run scoreboard players set @e[x=-1541.5,y=44,z=-434.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1521 43 -426 minecraft:orange_wool run scoreboard players set @e[x=-1549.5,y=44,z=-424.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1521 43 -426 minecraft:orange_wool run scoreboard players set @e[x=-1555.5,y=44,z=-429.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1521 43 -426 minecraft:orange_wool run scoreboard players set @e[x=-1561.5,y=44,z=-438.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1521 43 -426 minecraft:orange_wool run scoreboard players set @e[x=-1558.5,y=44,z=-461.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1521 43 -426 minecraft:orange_wool run scoreboard players set @e[x=-1558.5,y=44,z=-457.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1521 43 -426 minecraft:orange_wool run scoreboard players set @e[x=-1540.5,y=44,z=-448.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1521 43 -426 minecraft:orange_wool run scoreboard players set @e[x=-1522.5,y=44,z=-448.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1521 43 -426 minecraft:orange_wool run scoreboard players set @e[x=-1527.5,y=44,z=-453.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1521 43 -426 minecraft:orange_wool run scoreboard players set @e[x=-1518.5,y=44,z=-469.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1515 43 -453 minecraft:lime_wool run scoreboard players set @e[x=-1537.5,y=44,z=-453.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1518 43 -473 minecraft:light_blue_wool run scoreboard players set @e[x=-1531.5,y=44,z=-452.5,distance=..0.7,tag=alarm,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1518 43 -473 minecraft:blue_wool run scoreboard players set @e[x=-1531.5,y=44,z=-452.5,distance=..0.7,tag=alarm,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1557 44 -463 minecraft:iron_door[open=true] if block -1559 44 -474 minecraft:air if entity @s[x=-1558,y=44,z=-466,dx=3,dy=3,dz=3] run function medabots_server:stage/create/grassland_c/first_go_battle/0
execute if entity @e[x=-1555.5,y=44,z=-472.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=23,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1555.5,y=44,z=-472.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=23},tag=cannon,type=minecraft:zombie,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1556.5,y=44,z=-462.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=23,Medabot=0..,Battle=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=23,Medabot=0..,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_server_enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:grassland_c/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1538 44 -457 minecraft:iron_door[open=true] if entity @s[x=-1539,y=44,z=-461,dx=3,dy=3,dz=3] run function medabots_server:stage/create/grassland_c/first_go_battle/1
execute if entity @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=23,Medabot=0..,Battle=1..2}]
execute as @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=23}] run scoreboard players set @s Stage 23
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/grassland_c
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/grassland_c_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:grassland_c/robattle players
tag @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:story_progression/infinity={the_underground_arena=true,krosserdog_saved=false}}] add dialog_infinity_krosserdog_saved
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1539 50 -449 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots