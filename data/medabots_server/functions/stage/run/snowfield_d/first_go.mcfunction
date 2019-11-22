execute unless entity @e[scores={Stage=32},tag=hide_normal_time] run bossbar set medabots_server:snowfield_d/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=32},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:snowfield_d/time value
execute unless entity @e[scores={Stage=32},tag=hide_normal_time] store result bossbar medabots_server:snowfield_d/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=32},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:snowfield_d/robattle value
execute if entity @e[scores={Stage=32},tag=hide_normal_time] if entity @e[scores={Stage=32,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:snowfield_d/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=32},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1602,y=42,z=-815,dx=61,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=32},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1602,y=42,z=-815,dx=61,dy=7,dz=62,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/snowfield_d
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
scoreboard players reset #temp Time
execute if block -1599 44 -767 minecraft:lime_wool run scoreboard players set @e[x=-1594.5,y=45,z=-794.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1594 44 -799 minecraft:lime_wool run scoreboard players set @e[x=-1595.5,y=45,z=-805.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1594 44 -799 minecraft:lime_wool run scoreboard players set @e[x=-1587.5,y=45,z=-784.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1594 44 -799 minecraft:lime_wool run scoreboard players set @e[x=-1575.5,y=45,z=-775.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1560 44 -764 minecraft:lime_wool run scoreboard players set @e[x=-1552.5,y=45,z=-767.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1560 44 -764 minecraft:lime_wool run scoreboard players set @e[x=-1551.5,y=45,z=-761.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1565 44 -812 minecraft:lime_wool run scoreboard players set @e[x=-1563.5,y=45,z=-794.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1560 44 -764 minecraft:lime_wool run scoreboard players set @e[x=-1556.5,y=45,z=-766.5,distance=..0.7,tag=gas_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1560 44 -764 minecraft:lime_wool run scoreboard players set @e[x=-1558.5,y=45,z=-764.5,distance=..0.7,tag=gas_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1560 44 -764 minecraft:lime_wool run scoreboard players set @e[x=-1557.5,y=45,z=-761.5,distance=..0.7,tag=gas_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1560 44 -764 minecraft:lime_wool run scoreboard players set @e[x=-1555.5,y=45,z=-761.5,distance=..0.7,tag=gas_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1563 45 -796 minecraft:iron_door[open=true] if entity @s[x=-1563,y=45,z=-797,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_d/first_go_battle/0
execute if entity @e[x=-1602,y=42,z=-815,dx=61,dy=7,dz=62,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=32,Medabot=0..,Battle=1..2}]
execute as @e[x=-1602,y=42,z=-815,dx=61,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=32}] run scoreboard players set @s Stage 32
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/snowfield_d
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/snowfield_d_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:snowfield_d/robattle players
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1572 51 -784 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots