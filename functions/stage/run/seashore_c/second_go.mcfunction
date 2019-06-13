execute unless entity @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,scores={Medabot=0..,Battle=1..2,Stage=25},tag=enemy_medabot] run bossbar set medabots_server:seashore_c/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,scores={Medabot=0..,Battle=1..2,Stage=25},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:seashore_c/time value
execute unless entity @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,scores={Medabot=0..,Battle=1..2,Stage=25},tag=enemy_medabot] store result bossbar medabots_server:seashore_c/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,scores={Medabot=0..,Battle=1..2,Stage=25},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:seashore_c/robattle value
execute if entity @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,scores={Medabot=0..,Battle=1..2,Stage=25},tag=enemy_medabot] store result bossbar medabots_server:seashore_c/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,scores={Medabot=0..,Battle=1..2,Stage=25},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,scores={Medabot=0..,Battle=1..2,Stage=25},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/seashore_c/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1565 43 -592 minecraft:lime_wool run tag @e[x=-1541.5,y=44,z=-602.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1563 43 -582 minecraft:blue_wool run tag @e[x=-1528.5,y=44,z=-585.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1563 43 -582 minecraft:light_blue_wool run tag @e[x=-1528.5,y=44,z=-585.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1518 43 -565 minecraft:lime_wool run tag @e[x=-1520.5,y=44,z=-556.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1521 43 -556 minecraft:yellow_wool run tag @e[x=-1520.5,y=44,z=-556.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1518 43 -565 minecraft:green_wool if block -1521 43 -556 minecraft:orange_wool run tag @e[x=-1520.5,y=44,z=-556.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1557 43 -596 minecraft:lime_wool run scoreboard players add @e[x=-1556.5,y=44,z=-594.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1557 43 -596 minecraft:lime_wool run tag @e[x=-1556.5,y=44,z=-594.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1541 43 -556 minecraft:lime_wool run tag @e[x=-1567.5,y=44,z=-555.5,distance=..0.7,tag=laser_trap,tag=!enabled] add enabled
execute if block -1530 44 -587 minecraft:iron_door[open=true] if entity @s[x=-1531,y=44,z=-590,dx=3,dy=3,dz=3] run function medabots_server:stage/create/seashore_c/second_go_battle/0
execute if entity @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=25,Medabot=0..,Battle=1..2}]
execute as @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,type=!minecraft:player] unless entity @s[scores={Stage=25}] run scoreboard players set @s Stage 25
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/seashore_c/second_go
stopsound @s[scores={BattlingMedabots=1,Battle=1..}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Battle=1..}] -1541 50 -515 1000
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] MusicType 22
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/seashore_c_second_go
teleport @s[scores={BattlingMedabots=1,Battle=1..}] -1541 50 -515 -180 0
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:seashore_c/robattle players
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Battle 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots