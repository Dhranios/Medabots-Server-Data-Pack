execute unless entity @e[scores={Stage=35},tag=hide_normal_time] run bossbar set medabots_server:laboratory_d/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=35},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:laboratory_d/time value
execute unless entity @e[scores={Stage=35},tag=hide_normal_time] store result bossbar medabots_server:laboratory_d/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=35},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:laboratory_d/robattle value
execute if entity @e[scores={Stage=35},tag=hide_normal_time] if entity @e[scores={Stage=35,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:laboratory_d/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=35},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1856,y=41,z=-811,dx=61,dy=7,dz=78,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=35},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1856,y=41,z=-811,dx=61,dy=7,dz=78,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/laboratory_d
execute if entity @s[scores={State=0}] run function medabots_server:other/death
scoreboard players reset #temp Time
execute if block -1807 43 -751 minecraft:lime_wool if block -1807 43 -748 minecraft:lime_wool if block -1814 43 -751 minecraft:lime_wool if block -1814 43 -748 minecraft:lime_wool run scoreboard players set @e[x=-1844.5,y=44,z=-747.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1807 43 -769 minecraft:lime_wool if block -1807 43 -772 minecraft:lime_wool if block -1814 43 -769 minecraft:lime_wool if block -1814 43 -772 minecraft:lime_wool run scoreboard players set @e[x=-1844.5,y=44,z=-770.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1854 43 -773 minecraft:lime_wool run scoreboard players set @e[x=-1854.5,y=44,z=-773.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1854 43 -773 minecraft:lime_wool run scoreboard players set @e[x=-1847.5,y=44,z=-773.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1854 43 -770 minecraft:lime_wool run scoreboard players set @e[x=-1853.5,y=44,z=-768.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1854 43 -770 minecraft:lime_wool run scoreboard players set @e[x=-1846.5,y=44,z=-768.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1854 43 -775 minecraft:lime_wool run scoreboard players set @e[x=-1845.5,y=44,z=-782.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1854 43 -768 minecraft:lime_wool run scoreboard players set @e[x=-1846.5,y=44,z=-782.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1848 43 -784 minecraft:lime_wool run scoreboard players set @e[x=-1823.5,y=44,z=-793.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1848 43 -784 minecraft:lime_wool run scoreboard players set @e[x=-1823.5,y=44,z=-805.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1797 43 -784 minecraft:lime_wool run scoreboard players set @e[x=-1806.5,y=44,z=-793.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1797 43 -784 minecraft:lime_wool run scoreboard players set @e[x=-1806.5,y=44,z=-805.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1813 43 -760 minecraft:yellow_wool run scoreboard players set @e[x=-1806.5,y=44,z=-759.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1813 43 -760 minecraft:orange_wool run scoreboard players set @e[x=-1806.5,y=44,z=-759.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1805 43 -802 minecraft:yellow_wool run scoreboard players set @e[x=-1802,y=44,z=-801,distance=..2,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1805 43 -802 minecraft:orange_wool run scoreboard players set @e[x=-1802,y=44,z=-801,distance=..2,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1807 44 -761 minecraft:iron_door[open=true] if block -1810 44 -754 minecraft:iron_door[open=false] if entity @s[x=-1807,y=44,z=-763,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_d/first_go_battle/0
execute if entity @e[x=-1799.5,y=44,z=-757.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=35,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1806.5,y=44,z=-760.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1809.5,y=44,z=-753.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1810.5,y=44,z=-765.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=-1856,y=41,z=-811,dx=61,dy=7,dz=78,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:laboratory_d/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1845 44 -788 minecraft:iron_door[open=true] if entity @s[x=-1846,y=44,z=-791,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_d/first_go_battle/1
execute if entity @e[x=-1856,y=41,z=-811,dx=61,dy=7,dz=78,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=35,Medabot=0..,State=1..2}]
execute as @e[x=-1856,y=41,z=-811,dx=61,dy=7,dz=78,type=!minecraft:player] unless entity @s[scores={Stage=35}] run scoreboard players set @s Stage 35
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/laboratory_d
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/laboratory_d_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:laboratory_d/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1827 50 -767 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots