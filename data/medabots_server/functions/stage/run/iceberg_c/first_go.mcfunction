execute unless entity @e[scores={Stage=26},tag=hide_normal_time] run bossbar set medabots_server:iceberg_c/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=26},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_c/time value
execute unless entity @e[scores={Stage=26},tag=hide_normal_time] store result bossbar medabots_server:iceberg_c/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=26},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_c/robattle value
execute if entity @e[scores={Stage=26},tag=hide_normal_time] if entity @e[scores={Stage=26,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:iceberg_c/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=26},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1570,y=42,z=-685,dx=60,dy=7,dz=74,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=26},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1570,y=42,z=-685,dx=60,dy=7,dz=74,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/iceberg_c
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=-1568.5,y=44,z=-679.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1540.5,y=44,z=-660.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1511.5,y=44,z=-679.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1540.5,y=44,z=-659.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1553 44 -625 minecraft:iron_trapdoor[open=true] if block -1561 44 -665 minecraft:black_stained_glass if entity @s[x=-1555,y=44,z=-625,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_c/first_go_battle/0
execute if entity @e[x=-1552.5,y=44,z=-618.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=26,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1552.5,y=44,z=-624.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1560.5,y=44,z=-664.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=-1552.5,y=44,z=-618.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:iceberg_c/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1541 44 -662 minecraft:iron_trapdoor[open=true] if entity @s[x=-1542,y=44,z=-665,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_c/first_go_battle/1
execute if entity @e[x=-1570,y=42,z=-685,dx=60,dy=7,dz=74,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=26,Medabot=0..,State=1..2}]
execute as @e[x=-1570,y=42,z=-685,dx=60,dy=7,dz=74,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 26
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/iceberg_c
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/iceberg_c_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:iceberg_c/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/infinity={peppercat_saved=true,brass_saved=false}}] add dialog_infinity_brass_saved
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1541 50 -648 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots