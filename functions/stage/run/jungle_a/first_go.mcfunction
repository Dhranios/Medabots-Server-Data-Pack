execute unless entity @e[scores={Stage=3},tag=hide_normal_time] run bossbar set medabots_server:jungle_a/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=3},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_a/time value
execute unless entity @e[scores={Stage=3},tag=hide_normal_time] store result bossbar medabots_server:jungle_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=3},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_a/robattle value
execute if entity @e[scores={Stage=3},tag=hide_normal_time] if entity @e[scores={Stage=3,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:jungle_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=3},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1706,y=42,z=-179,dx=63,dy=8,dz=63,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=3},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1706,y=42,z=-179,dx=63,dy=8,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/jungle_a/first_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1688 44 -125 minecraft:yellow_wool run scoreboard players set @e[x=-1679.5,y=45,z=-128.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1688 44 -125 minecraft:orange_wool run scoreboard players set @e[x=-1679.5,y=45,z=-128.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1671 44 -139 minecraft:lime_wool run scoreboard players set @e[x=-1672.5,y=45,z=-140.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1651 44 -156 minecraft:lime_wool run scoreboard players set @e[x=-1644.5,y=45,z=-151.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1689 44 -156 minecraft:light_blue_wool run scoreboard players set @e[x=-1698.5,y=45,z=-144.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1689 44 -156 minecraft:blue_wool run scoreboard players set @e[x=-1698.5,y=45,z=-144.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1682 44 -171 minecraft:lime_wool run scoreboard players set @e[x=-1685.5,y=45,z=-172.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1684 44 -168 minecraft:lime_wool run scoreboard players set @e[x=-1685.5,y=45,z=-172.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1684 44 -169 minecraft:lime_wool run scoreboard players set @e[x=-1685.5,y=45,z=-172.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1680 44 -169 minecraft:lime_wool run tag @e[x=-1679.5,y=45,z=-163.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1684 44 -168 minecraft:lime_wool run tag @e[x=-1683.5,y=45,z=-163.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1684 44 -169 minecraft:lime_wool run tag @e[x=-1683.5,y=45,z=-163.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1682 44 -171 minecraft:lime_wool run tag @e[x=-1681.5,y=45,z=-173.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1662 45 -124 minecraft:iron_door[open=true] if block -1661 45 -134 minecraft:iron_door[open=false] if entity @s[x=-1662,y=45,z=-125,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_a/first_go_battle/0
execute if entity @e[x=-1651.5,y=45,z=-126.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=3,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1661.5,y=45,z=-123.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1660.5,y=45,z=-133.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1706,y=42,z=-179,dx=63,dy=7,dz=63,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:jungle_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1687 45 -173 minecraft:iron_door[open=true] if entity @s[x=-1690,y=45,z=-175,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_a/first_go_battle/1
execute if entity @e[x=-1706,y=42,z=-179,dx=63,dy=8,dz=63,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=3,Medabot=0..,Battle=1..2}]
execute as @e[x=-1705,y=42,z=-179,dx=63,dy=8,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=3}] run scoreboard players set @s Stage 3
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/jungle_a/first_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/jungle_a_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:jungle_a/robattle players
tag @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:story_progression/infinity={meet_koji=true,meet_director_tune=false}}] add dialog_infinity_meet_director_tune
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1673 51 -148 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots