execute unless entity @e[x=-1665,y=42,z=-767,dx=61,dy=7,dz=61,scores={Stage=31},tag=hide_normal_time] run bossbar set medabots_server:jungle_d/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1665,y=42,z=-767,dx=61,dy=7,dz=61,scores={Stage=31},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_d/time value
execute unless entity @e[x=-1665,y=42,z=-767,dx=61,dy=7,dz=61,scores={Stage=31},tag=hide_normal_time] store result bossbar medabots_server:jungle_d/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1665,y=42,z=-767,dx=61,dy=7,dz=61,scores={Stage=31},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_d/robattle value
execute if entity @e[x=-1665,y=42,z=-767,dx=61,dy=7,dz=61,scores={Stage=31},tag=hide_normal_time] store result bossbar medabots_server:jungle_d/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1665,y=42,z=-767,dx=61,dy=7,dz=61,scores={Stage=31},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1665,y=42,z=-767,dx=61,dy=7,dz=61,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1665,y=42,z=-767,dx=61,dy=7,dz=61,scores={Stage=31},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1665,y=42,z=-767,dx=61,dy=7,dz=61,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/jungle_d/first_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1641 44 -756 minecraft:lime_wool run tag @e[x=-1640.5,y=45,z=-757.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1636 44 -742 minecraft:lime_wool run tag @e[x=-1627.5,y=45,z=-752.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1609 44 -761 minecraft:lime_wool run tag @e[x=-1610.5,y=45,z=-732.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1653 44 -720 minecraft:lime_wool run tag @e[x=-1633.5,y=45,z=-720.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1634 45 -716 minecraft:iron_door[open=true] if block -1647 45 -711 minecraft:iron_door[open=false] if entity @s[x=-1637,y=45,z=-718,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_d/first_go_battle/0
execute if entity @e[x=-1640.5,y=45,z=-711.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=31,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1633.5,y=45,z=-715.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1646.5,y=45,z=-710.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1665,y=42,z=-767,dx=61,dy=7,dz=61,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:jungle_d/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1655 45 -723 minecraft:iron_door[open=true] if entity @s[x=-1656,y=45,z=-726,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_d/first_go_battle/1
execute if entity @e[x=-1665,y=42,z=-767,dx=61,dy=7,dz=61,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=31,Medabot=0..,Battle=1..2}]
execute as @e[x=-1665,y=42,z=-767,dx=61,dy=7,dz=61,type=!minecraft:player] unless entity @s[scores={Stage=31}] run scoreboard players set @s Stage 31
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/jungle_d/first_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/jungle_d_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:jungle_d/robattle players
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1635 51 -737 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots