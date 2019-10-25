execute unless entity @e[scores={Stage=14},tag=hide_normal_time] run bossbar set medabots_server:snowfield_b/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=14},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:snowfield_b/time value
execute unless entity @e[scores={Stage=14},tag=hide_normal_time] store result bossbar medabots_server:snowfield_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=14},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:snowfield_b/robattle value
execute if entity @e[scores={Stage=14},tag=hide_normal_time] if entity @e[scores={Stage=14,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:snowfield_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=14},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=14},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/snowfield_b/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1705 44 -467 minecraft:light_blue_wool run scoreboard players set @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1704 44 -467 minecraft:light_blue_wool run scoreboard players set @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1706 44 -466 minecraft:light_blue_wool run scoreboard players set @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1709 44 -465 minecraft:light_blue_wool run scoreboard players set @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1708 44 -465 minecraft:light_blue_wool run scoreboard players set @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1704 44 -464 minecraft:light_blue_wool run scoreboard players set @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1708 44 -463 minecraft:light_blue_wool run scoreboard players set @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1707 44 -463 minecraft:light_blue_wool run scoreboard players set @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1708 44 -467 minecraft:lime_wool if block -1707 44 -463 minecraft:blue_wool if block -1708 44 -463 minecraft:blue_wool if block -1704 44 -464 minecraft:blue_wool if block -1708 44 -465 minecraft:blue_wool if block -1709 44 -465 minecraft:blue_wool if block -1706 44 -466 minecraft:blue_wool if block -1704 44 -467 minecraft:blue_wool if block -1705 44 -467 minecraft:blue_wool run scoreboard players set @e[x=-1708.5,y=45,z=-467.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1726 44 -453 minecraft:lime_wool run scoreboard players set @e[x=-1728.5,y=45,z=-450.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1705 44 -509 minecraft:orange_wool run scoreboard players set @e[x=-1702.5,y=45,z=-508.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1705 44 -509 minecraft:yellow_wool run scoreboard players set @e[x=-1702.5,y=45,z=-508.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1718 44 -463 minecraft:lime_wool run scoreboard players add #temp PowerAmount 1
execute if block -1729 44 -491 minecraft:lime_wool run scoreboard players add #temp PowerAmount 1
execute if block -1711 44 -510 minecraft:lime_wool run scoreboard players add #temp PowerAmount 1
execute if block -1703 44 -514 minecraft:lime_wool run scoreboard players add #temp PowerAmount 1
execute if block -1751 44 -455 minecraft:lime_wool run scoreboard players add #temp PowerAmount 2
execute if block -1746 44 -497 minecraft:lime_wool run scoreboard players add #temp PowerAmount 2
execute if block -1673 44 -481 minecraft:lime_wool run scoreboard players add #temp PowerAmount 2
execute if block -1686 44 -535 minecraft:lime_wool run scoreboard players add #temp PowerAmount 2
execute if score #temp PowerAmount matches 8.. run scoreboard players set @e[x=-1746.5,y=45,z=-512.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
scoreboard players reset #temp PowerAmount
execute if block -1705 44 -509 minecraft:orange_wool run scoreboard players set @e[x=-1704.5,y=45,z=-509.5,distance=..0.7,tag=alarm,scores={PowerAmount=1}] PowerAmount 0
execute if block -1705 44 -509 minecraft:yellow_wool run scoreboard players set @e[x=-1704.5,y=45,z=-509.5,distance=..0.7,tag=alarm,scores={PowerAmount=0}] PowerAmount 1
execute if block -1737 45 -461 minecraft:iron_door[open=true] unless block -1751 44 -455 minecraft:lime_wool if entity @s[x=-1740,y=45,z=-463,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_b/second_go_battle/0
execute if entity @e[x=-1744.5,y=45,z=-457.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=14,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1744.5,y=45,z=-457.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1751 44 -455 minecraft:lime_wool run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=14,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=14,Medabot=0..,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/left_server_enforced
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1736.5,y=45,z=-460.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:snowfield_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,type=minecraft:area_effect_cloud,tag=mission]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1751 45 -488 minecraft:iron_door[open=true] unless block -1746 44 -497 minecraft:lime_wool if entity @s[x=-1754,y=45,z=-490,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_b/second_go_battle/1
execute if entity @e[x=-1755.5,y=45,z=-489.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=14,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1755.5,y=45,z=-489.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1746 44 -497 minecraft:lime_wool run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=14,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=14,Medabot=0..,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/left_server_enforced
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1750.5,y=45,z=-487.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:snowfield_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,type=minecraft:area_effect_cloud,tag=mission]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1684 45 -487 minecraft:iron_door[open=true] unless block -1673 44 -481 minecraft:lime_wool if entity @s[x=-1684,y=45,z=-488,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_b/second_go_battle/2
execute if entity @e[x=-1675.5,y=45,z=-484.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=14,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1675.5,y=45,z=-484.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1673 44 -481 minecraft:lime_wool run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=14,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=14,Medabot=0..,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/left_server_enforced
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1683.5,y=45,z=-486.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:snowfield_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,type=minecraft:area_effect_cloud,tag=mission]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1681 45 -517 minecraft:iron_door[open=true] unless block -1686 44 -535 minecraft:lime_wool if entity @s[x=-1682,y=45,z=-520,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_b/second_go_battle/3
execute if entity @e[x=-1678.5,y=45,z=-526.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=14,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1678.5,y=45,z=-526.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1686 44 -535 minecraft:lime_wool run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=14,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=14,Medabot=0..,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/left_server_enforced
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1680.5,y=45,z=-516.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:snowfield_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,type=minecraft:area_effect_cloud,tag=mission]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1747 45 -514 minecraft:iron_door[open=true] if entity @s[x=-1748,y=45,z=-517,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_b/second_go_battle/4
execute if entity @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,tag=mr_referee,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=14,Medabot=0..,Battle=1..2}]
execute as @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,type=!minecraft:player] unless entity @s[scores={Stage=14}] run scoreboard players set @s Stage 14
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/snowfield_b/second_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/snowfield_b_second_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:snowfield_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1715 51 -492 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots