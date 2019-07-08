execute unless entity @e[scores={Stage=26},tag=hide_normal_time] run bossbar set medabots_server:iceberg_c/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=26},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_c/time value
execute unless entity @e[scores={Stage=26},tag=hide_normal_time] store result bossbar medabots_server:iceberg_c/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=26},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_c/robattle value
execute if entity @e[scores={Stage=26},tag=hide_normal_time] if entity @e[scores={Stage=26,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:iceberg_c/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=26},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1570,y=42,z=-685,dx=60,dy=7,dz=74,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=26},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1570,y=42,z=-685,dx=60,dy=7,dz=74,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/iceberg_c/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1568 43 -679 minecraft:lime_wool run tag @e[x=-1540.5,y=44,z=-660.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1513 43 -679 minecraft:lime_wool run tag @e[x=-1540.5,y=44,z=-659.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1553 44 -625 minecraft:iron_door[open=true] if block -1661 45 -134 minecraft:iron_door[open=false] if entity @s[x=-1555,y=44,z=-625,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_c/second_go_battle/0
execute if entity @e[x=-1552.5,y=44,z=-618.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=26,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1552.5,y=44,z=-624.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1560.5,y=44,z=-665.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1552.5,y=44,z=-618.5,distance=..0.7,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:iceberg_c/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1541 44 -662 minecraft:iron_door[open=true] if entity @s[x=-1542,y=44,z=-665,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_c/second_go_battle/1
execute if entity @e[x=-1570,y=42,z=-685,dx=60,dy=7,dz=74,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=26,Medabot=0..,Battle=1..2}]
execute as @e[x=-1570,y=42,z=-685,dx=60,dy=7,dz=74,type=!minecraft:player] unless entity @s[scores={Stage=26}] run scoreboard players set @s Stage 26
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/iceberg_c/second_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/iceberg_c_second_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:iceberg_c/robattle players
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1541 50 -648 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots