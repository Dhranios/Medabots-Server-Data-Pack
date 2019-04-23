execute if entity @s[scores={Death=1..}] run function medabots_server:stage/clean_up/jungle_a/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/jungle_a/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1706,y=42,z=-179,dx=63,dy=8,dz=63,scores={Medabot=0..,Battle=1..2,Stage=3},tag=enemy_medabot] run bossbar set medabots_server:jungle_a/time players @s[scores={Death=0,Battle=1..}]
execute unless entity @e[x=-1706,y=42,z=-179,dx=63,dy=8,dz=63,scores={Medabot=0..,Battle=1..2,Stage=3},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:jungle_a/time value
execute unless entity @e[x=-1706,y=42,z=-179,dx=63,dy=8,dz=63,scores={Medabot=0..,Battle=1..2,Stage=3},tag=enemy_medabot] store result bossbar medabots_server:jungle_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1706,y=42,z=-179,dx=63,dy=8,dz=63,scores={Medabot=0..,Battle=1..2,Stage=3},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:jungle_a/robattle value
execute if entity @e[x=-1706,y=42,z=-179,dx=63,dy=8,dz=63,scores={Medabot=0..,Battle=1..2,Stage=3},tag=enemy_medabot] store result bossbar medabots_server:jungle_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1706,y=42,z=-179,dx=63,dy=8,dz=63,scores={Medabot=0..,Battle=1..2,Stage=3},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1706,y=42,z=-179,dx=63,dy=8,dz=63,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1706,y=42,z=-179,dx=63,dy=8,dz=63,scores={Medabot=0..,Battle=1..2,Stage=3},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1706,y=42,z=-179,dx=63,dy=8,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if block -1688 44 -125 minecraft:yellow_wool run tag @e[x=-1679.5,y=45,z=-128.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1688 44 -125 minecraft:orange_wool run tag @e[x=-1679.5,y=45.5,z=-128.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1671 44 -139 minecraft:lime_wool run tag @e[x=-1672.5,y=45.5,z=-140.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1651 44 -156 minecraft:lime_wool run tag @e[x=-1644.5,y=45.5,z=-151.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1689 44 -156 minecraft:light_blue_wool run tag @e[x=-1698.5,y=45.5,z=-144.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1689 44 -156 minecraft:blue_wool run tag @e[x=-1698.5,y=45.5,z=-144.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1662 46 -124 minecraft:iron_door[open=true] if block -1661 46 -134 minecraft:iron_door[open=false] if entity @s[x=-1662,y=45,z=-125,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_a/second_go_battle/0
execute if entity @e[x=-1651.5,y=45,z=-126.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[x=-1662,y=42,z=-135,dx=17,dy=8,dz=17,scores={Stage=3,Medabot=0..,Battle=1..}]
title @s[scores={BattlingMedabots=1,Death=0}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run tag @e[x=-1661.5,y=45,z=-123.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run tag @e[x=-1660.5,y=45,z=-133.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run kill @e[x=-1706,y=42,z=-179,dx=63,dy=7,dz=63,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run bossbar set medabots_server:jungle_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1687 46 -173 minecraft:iron_door[open=true] if entity @s[x=-1690,y=45,z=-175,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_a/second_go_battle/1
execute if entity @e[x=-1706,y=42,z=-179,dx=63,dy=8,dz=63,tag=mr_referee] store result score @s BattlingMedabots if entity @e[x=-1705,y=42,z=-179,dx=63,dy=8,dz=63,scores={Stage=3,Medabot=0..,Battle=1..}]
execute as @e[x=-1705,y=42,z=-179,dx=63,dy=8,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=3}] run scoreboard players set @s Stage 3
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run function medabots_server:stage/clean_up/jungle_a/second_go
stopsound @s[scores={BattlingMedabots=1,Death=0}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Death=0}] -1673 51 -148 14
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Death=0}] only medabots_server:stages/wave_1/jungle_a_second_go
teleport @s[scores={BattlingMedabots=1,Death=0}] -1673 51 -148 -180 0
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run bossbar set medabots_server:jungle_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots