execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/snowfield_b/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,scores={Medabot=0..,Battle=1..2,Stage=14},tag=enemy_medabot] run bossbar set medabots_server:snowfield_b/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,scores={Medabot=0..,Battle=1..2,Stage=14},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:snowfield_b/time value
execute unless entity @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,scores={Medabot=0..,Battle=1..2,Stage=14},tag=enemy_medabot] store result bossbar medabots_server:snowfield_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,scores={Medabot=0..,Battle=1..2,Stage=14},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:snowfield_b/robattle value
execute if entity @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,scores={Medabot=0..,Battle=1..2,Stage=14},tag=enemy_medabot] store result bossbar medabots_server:snowfield_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,scores={Medabot=0..,Battle=1..2,Stage=14},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,scores={Medabot=0..,Battle=1..2,Stage=14},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if block -1705 44 -467 minecraft:light_blue_wool run tag @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1704 44 -467 minecraft:light_blue_wool run tag @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1706 44 -466 minecraft:light_blue_wool run tag @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1709 44 -465 minecraft:light_blue_wool run tag @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1708 44 -465 minecraft:light_blue_wool run tag @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1704 44 -464 minecraft:light_blue_wool run tag @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1708 44 -463 minecraft:light_blue_wool run tag @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1707 44 -463 minecraft:light_blue_wool run tag @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1708 44 -467 minecraft:lime_wool if block -1707 44 -463 minecraft:blue_wool if block -1708 44 -463 minecraft:blue_wool if block -1704 44 -464 minecraft:blue_wool if block -1708 44 -465 minecraft:blue_wool if block -1709 44 -465 minecraft:blue_wool if block -1706 44 -466 minecraft:blue_wool if block -1704 44 -467 minecraft:blue_wool if block -1705 44 -467 minecraft:blue_wool run tag @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1726 44 -453 minecraft:lime_wool run tag @e[x=-1728.5,y=45,z=-450.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1705 44 -509 minecraft:orange_wool run tag @e[x=-1702.5,y=45,z=-508.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1705 44 -509 minecraft:yellow_wool run tag @e[x=-1702.5,y=45,z=-508.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1718 44 -463 minecraft:lime_wool run scoreboard players add #temp FloorSwitchTime 1
execute if block -1729 44 -491 minecraft:lime_wool run scoreboard players add #temp FloorSwitchTime 1
execute if block -1703 44 -514 minecraft:lime_wool run scoreboard players add #temp FloorSwitchTime 1
execute if block -1711 44 -510 minecraft:lime_wool run scoreboard players add #temp FloorSwitchTime 1
execute if block -1751 44 -455 minecraft:lime_wool run scoreboard players add #temp FloorSwitchTime 2
execute if block -1746 44 -497 minecraft:lime_wool run scoreboard players add #temp FloorSwitchTime 2
execute if block -1673 44 -481 minecraft:lime_wool run scoreboard players add #temp FloorSwitchTime 2
execute if block -1686 44 -535 minecraft:lime_wool run scoreboard players add #temp FloorSwitchTime 2
execute if score #temp FloorSwitchTime matches 8.. run tag @e[x=-1746.5,y=45,z=-512.5,distance=..0.7,tag=door,tag=!open] add open
scoreboard players reset #temp FloorSwitchTime
execute if block -1705 44 -509 minecraft:orange_wool run tag @e[x=-1704.5,y=45,z=-509.5,distance=..0.7,tag=alarm,tag=enabled] remove enabled
execute if block -1705 44 -509 minecraft:yellow_wool run tag @e[x=-1704.5,y=45,z=-509.5,distance=..0.7,tag=alarm,tag=!enabled] add enabled
execute if block -1737 45 -461 minecraft:iron_door[open=true] if block -1751 44 -455 minecraft:snow_block if entity @s[x=-1740,y=45,z=-463,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_b/second_go_battle/0
execute if entity @e[x=-1744.5,y=45,z=-457.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=14,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1744.5,y=45,z=-457.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1751 44 -455 minecraft:lime_wool run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=14,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] run scoreboard players set @a[scores={Stage=14,Medabot=0..,Battle=1..2},tag=enemy_medabot] LeaveStage 1
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run tag @e[x=-1736.5,y=45,z=-460.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run bossbar set medabots_server:snowfield_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,type=minecraft:area_effect_cloud,tag=mission]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1751 45 -488 minecraft:iron_door[open=true] if block -1746 44 -497 minecraft:snow_block if entity @s[x=-1754,y=45,z=-490,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_b/second_go_battle/1
execute if entity @e[x=-1755.5,y=45,z=-489.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=14,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1755.5,y=45,z=-489.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1746 44 -497 minecraft:lime_wool run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=14,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] run scoreboard players set @a[scores={Stage=14,Medabot=0..,Battle=1..2},tag=enemy_medabot] LeaveStage 1
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run tag @e[x=-1750.5,y=45,z=-487.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run bossbar set medabots_server:snowfield_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,type=minecraft:area_effect_cloud,tag=mission]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1751 45 -488 minecraft:iron_door[open=true] if block -1673 44 -481 minecraft:snow_block if entity @s[x=-1684,y=45,z=-488,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_b/second_go_battle/2
execute if entity @e[x=-1675.5,y=45,z=-484.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=14,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1675.5,y=45,z=-484.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1673 44 -481 minecraft:lime_wool run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=14,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] run scoreboard players set @a[scores={Stage=14,Medabot=0..,Battle=1..2},tag=enemy_medabot] LeaveStage 1
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run tag @e[x=-1683.5,y=45,z=-486.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run bossbar set medabots_server:snowfield_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,type=minecraft:area_effect_cloud,tag=mission]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1681 45 -517 minecraft:iron_door[open=true] if block -1686 44 -535 minecraft:snow_block if entity @s[x=-1682,y=45,z=-520,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_b/second_go_battle/3
execute if entity @e[x=-1678.5,y=45,z=-526.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=14,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1678.5,y=45,z=-526.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1686 44 -535 minecraft:lime_wool run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=14,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] run scoreboard players set @a[scores={Stage=14,Medabot=0..,Battle=1..2},tag=enemy_medabot] LeaveStage 1
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run tag @e[x=-1680.5,y=45,z=-516.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run bossbar set medabots_server:snowfield_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,type=minecraft:area_effect_cloud,tag=mission]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1747 45 -514 minecraft:iron_door[open=true] if entity @s[x=-1748,y=45,z=-517,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_b/second_go_battle/4
execute if entity @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=14,Medabot=0..,Battle=1..2}]
execute as @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,type=!minecraft:player] unless entity @s[scores={Stage=14}] run scoreboard players set @s Stage 14
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/snowfield_b/second_go
stopsound @s[scores={BattlingMedabots=1}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1715 51 -492 14
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1}] only medabots_server:stages/wave_1/snowfield_b_second_go
teleport @s[scores={BattlingMedabots=1}] -1715 51 -492 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:snowfield_b/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots