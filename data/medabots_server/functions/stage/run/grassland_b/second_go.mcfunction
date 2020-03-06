execute unless entity @e[scores={Stage=10},tag=hide_normal_time] run bossbar set medabots_server:grassland_b/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=10},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:grassland_b/time value
execute unless entity @e[scores={Stage=10},tag=hide_normal_time] store result bossbar medabots_server:grassland_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=10},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:grassland_b/robattle value
execute if entity @e[scores={Stage=10},tag=hide_normal_time] if entity @e[scores={Stage=10,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:grassland_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=10},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=10},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/grassland_b
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if block -1541 44 -327 minecraft:orange_wool run scoreboard players set @e[x=-1542.5,y=45,z=-326.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1541 44 -327 minecraft:yellow_wool run scoreboard players set @e[x=-1542.5,y=45,z=-326.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1564 44 -337 minecraft:orange_wool run scoreboard players set @e[x=-1559.5,y=45,z=-340.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1564 44 -337 minecraft:yellow_wool run scoreboard players set @e[x=-1559.5,y=45,z=-340.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1567 44 -366 minecraft:light_blue_wool run scoreboard players set @e[x=-1555.5,y=45,z=-367.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1567 44 -366 minecraft:blue_wool if block -1559 44 -344 minecraft:lime_wool run scoreboard players set @e[x=-1555.5,y=45,z=-367.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1522 44 -365 minecraft:orange_wool run scoreboard players set @e[x=-1543.5,y=45,z=-360.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1522 44 -365 minecraft:yellow_wool run scoreboard players set @e[x=-1543.5,y=45,z=-360.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1522 44 -367 minecraft:orange_wool run scoreboard players set @e[x=-1543.5,y=45,z=-362.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1522 44 -367 minecraft:yellow_wool run scoreboard players set @e[x=-1543.5,y=45,z=-362.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1544 44 -374 minecraft:lime_wool run scoreboard players set @e[x=-1557.5,y=45,z=-383.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1555 44 -351 minecraft:blue_wool run scoreboard players set @e[x=-1567.5,y=45,z=-350.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1555 44 -351 minecraft:light_blue_wool run scoreboard players set @e[x=-1567.5,y=45,z=-350.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1550 44 -352 minecraft:blue_wool run scoreboard players set @e[x=-1568.5,y=45,z=-351.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1550 44 -352 minecraft:light_blue_wool run scoreboard players set @e[x=-1568.5,y=45,z=-351.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1563 44 -353 minecraft:blue_wool run scoreboard players set @e[x=-1568.5,y=45,z=-352.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1563 44 -353 minecraft:light_blue_wool run scoreboard players set @e[x=-1568.5,y=45,z=-352.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1558 44 -354 minecraft:blue_wool run scoreboard players set @e[x=-1568.5,y=45,z=-353.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1558 44 -354 minecraft:light_blue_wool run scoreboard players set @e[x=-1568.5,y=45,z=-353.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1522 44 -366 minecraft:orange_wool run scoreboard players set @e[x=-1522,y=44,z=-366,distance=..5,tag=alarm,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1522 44 -366 minecraft:yellow_wool run scoreboard players set @e[x=-1522,y=44,z=-366,distance=..5,tag=alarm,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1522 45 -340 minecraft:iron_door[open=true] if block -1518 45 -335 minecraft:air if entity @s[x=-1524,y=45,z=-340,dx=3,dy=3,dz=3] run function medabots_server:stage/create/grassland_b/second_go_battle/0
execute if entity @e[x=-1520.5,y=45,z=-328.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=10,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:main/salesman_quest/ghost_medal={report_to_salesman=true,arrest_the_burgler=false}}] run scoreboard players set #SalesmanArrest Dialog 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1521.5,y=45,z=-339.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:grassland_b/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1538 45 -403 minecraft:iron_door[open=true] if block -1520 45 -389 minecraft:iron_door[open=false] if entity @s[x=-1538,y=45,z=-404,dx=3,dy=3,dz=3] run function medabots_server:stage/create/grassland_b/second_go_battle/1
execute if entity @e[x=-1523.5,y=45,z=-398.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=10,Medabot=0..,State=1..2}]
execute if entity @e[x=-1523.5,y=45,z=-398.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if block -1531 44 -404 minecraft:yellow_wool if block -1530 44 -399 minecraft:yellow_wool if block -1526 44 -395 minecraft:yellow_wool if block -1519 44 -395 minecraft:yellow_wool if block -1516 44 -398 minecraft:yellow_wool if block -1517 44 -403 minecraft:yellow_wool if block -1521 44 -408 minecraft:yellow_wool if block -1527 44 -407 minecraft:yellow_wool run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=10,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=10,Medabot=0..,State=1..},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1537.5,y=45,z=-402.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1519.5,y=45,z=-388.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:grassland_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1559 45 -385 minecraft:iron_door[open=true] if entity @s[x=-1560,y=45,z=-388,dx=3,dy=3,dz=3] run function medabots_server:stage/create/grassland_b/second_go_battle/2
execute if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=10,Medabot=0..,State=1..2}]
execute as @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 10
execute if entity @s[scores={BattlingMedabots=1,State=1..}] if score #SalesmanArrest Dialog matches 1 run tag @s add dialog_other_salesman_ghost_medal_arrest
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/grassland_b
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/grassland_b_second_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:grassland_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/get_score/time_damage_money
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1540 51 -367 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots