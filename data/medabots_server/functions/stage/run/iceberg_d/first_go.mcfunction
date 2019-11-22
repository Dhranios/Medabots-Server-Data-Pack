execute unless entity @e[scores={Stage=33},tag=hide_normal_time] run bossbar set medabots_server:iceberg_d/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=33},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_d/time value
execute unless entity @e[scores={Stage=33},tag=hide_normal_time] store result bossbar medabots_server:iceberg_d/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=33},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_d/robattle value
execute if entity @e[scores={Stage=33},tag=hide_normal_time] if entity @e[scores={Stage=33,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:iceberg_d/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=33},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1729,y=41,z=-795,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=33},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1729,y=41,z=-795,dx=62,dy=7,dz=62,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/iceberg_d
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
scoreboard players reset #temp Time
execute if block -1726 43 -751 minecraft:lime_wool run scoreboard players set @e[x=-1725.5,y=44,z=-748.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1673 43 -755 minecraft:lime_wool run scoreboard players set @e[x=-1682.5,y=44,z=-756.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1686 43 -756 minecraft:yellow_wool run scoreboard players set @e[x=-1682.5,y=44,z=-756.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1673 43 -755 minecraft:green_wool if block -1686 43 -756 minecraft:orange_wool run scoreboard players set @e[x=-1682.5,y=44,z=-756.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1707 43 -793 minecraft:lime_wool run scoreboard players set @e[x=-1719.5,y=44,z=-766.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1715 43 -793 minecraft:lime_wool run scoreboard players set @e[x=-1719.5,y=44,z=-777.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1718 43 -778 minecraft:yellow_wool run scoreboard players set @e[x=-1719.5,y=44,z=-777.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1715 43 -793 minecraft:green_wool if block -1718 43 -778 minecraft:orange_wool run scoreboard players set @e[x=-1719.5,y=44,z=-777.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1723 43 -780 minecraft:yellow_wool run scoreboard players set @e[x=-1722.5,y=44,z=-781.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1720 43 -786 minecraft:yellow_wool run scoreboard players set @e[x=-1722.5,y=44,z=-781.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1723 43 -780 minecraft:orange_wool if block -1720 43 -786 minecraft:orange_wool run scoreboard players set @e[x=-1722.5,y=44,z=-781.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1699 43 -792 minecraft:lime_wool run scoreboard players set @e[x=-1695.5,y=44,z=-780.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1700 43 -769 minecraft:yellow_wool if block -1692 43 -774 minecraft:yellow_wool if block -1681 43 -771 minecraft:yellow_wool if block -1680 43 -767 minecraft:yellow_wool run scoreboard players set @e[x=-1682.5,y=44,z=-772.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1700 43 -769 minecraft:orange_wool run scoreboard players set @e[x=-1682.5,y=44,z=-772.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1692 43 -774 minecraft:orange_wool run scoreboard players set @e[x=-1682.5,y=44,z=-772.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1681 43 -771 minecraft:orange_wool run scoreboard players set @e[x=-1682.5,y=44,z=-772.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1680 43 -767 minecraft:orange_wool run scoreboard players set @e[x=-1682.5,y=44,z=-772.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1707 43 -793 minecraft:lime_wool run scoreboard players set @e[x=-1721.5,y=44,z=-767.5,distance=..0.7,tag=alarm,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1715 43 -793 minecraft:lime_wool run scoreboard players set @e[x=-1726.5,y=44,z=-776.5,distance=..0.7,tag=alarm,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1718 43 -778 minecraft:yellow_wool run scoreboard players set @e[x=-1726.5,y=44,z=-776.5,distance=..0.7,tag=alarm,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1715 43 -793 minecraft:green_wool if block -1718 43 -778 minecraft:orange_wool run scoreboard players set @e[x=-1726.5,y=44,z=-776.5,distance=..0.7,tag=alarm,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1710 44 -737 minecraft:iron_door[open=true] if block -1696 44 -750 minecraft:iron_door[open=false] if entity @s[x=-1710,y=44,z=-738,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_d/first_go_battle/0
execute if entity @e[x=-1704.5,y=44,z=-741.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=33},tag=cannon,type=minecraft:zombie] run tag @s add mission_success
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1709.5,y=44,z=-736.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1695.5,y=44,z=-749.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1729,y=41,z=-795,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run bossbar set medabots_server:iceberg_d/robattle players
tag @s[tag=mission_success] remove mission_success
execute if block -1684 44 -774 minecraft:iron_door[open=true] if entity @s[x=-1685,y=44,z=-777,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_d/first_go_battle/1
execute if entity @e[x=-1729,y=41,z=-795,dx=62,dy=7,dz=62,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=33,Medabot=0..,Battle=1..2}]
execute as @e[x=-1729,y=41,z=-795,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=33}] run scoreboard players set @s Stage 33
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/iceberg_d
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/iceberg_d_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:iceberg_d/robattle players
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1700 50 -769 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots