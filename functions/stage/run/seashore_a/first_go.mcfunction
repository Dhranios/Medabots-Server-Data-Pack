execute if entity @s[scores={Death=1..}] run function medabots_server:stage/clean_up/seashore_a/first_go
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/seashore_a/first_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1570,y=42,z=-247,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=4},tag=enemy_medabot] run bossbar set medabots_server:seashore_a/time players @s[scores={Death=0,Battle=1..}]
execute unless entity @e[x=-1570,y=42,z=-247,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=4},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:seashore_a/time value
execute unless entity @e[x=-1570,y=42,z=-247,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=4},tag=enemy_medabot] store result bossbar medabots_server:seashore_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1570,y=42,z=-247,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=4},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:seashore_a/robattle value
execute if entity @e[x=-1570,y=42,z=-247,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=4},tag=enemy_medabot] store result bossbar medabots_server:seashore_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1570,y=42,z=-247,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=4},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1570,y=42,z=-247,dx=63,dy=7,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if block -1511 44 -190 minecraft:lime_wool run tag @e[x=-1513.5,y=45,z=-215.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1549 44 -186 minecraft:lime_wool run tag @e[x=-1532.5,y=45,z=-195.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1537 44 -187 minecraft:lime_wool run tag @e[x=-1550.5,y=45,z=-193.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1534 44 -206 minecraft:light_blue_wool run tag @e[x=-1533.5,y=45,z=-206.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1551 44 -206 minecraft:lime_wool run tag @e[x=-1533.5,y=45,z=-206.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1534 44 -206 minecraft:blue_wool if block -1551 44 -206 minecraft:green_wool run tag @e[x=-1533.5,y=45,z=-206.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1511 44 -190 minecraft:lime_wool run tag @e[x=-1511.5,y=45,z=-214.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1511 44 -190 minecraft:lime_wool run tag @e[x=-1510.5,y=45,z=-217.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1540 46 -222 minecraft:iron_door[open=true] if entity @s[x=-1541,y=45,z=-225,dx=3,dy=3,dz=3] run function medabots_server:stage/create/seashore_a/first_go_battle/0
execute if entity @e[x=-1570,y=42,z=-247,dx=63,dy=7,dz=63,tag=mr_referee] store result score @s BattlingMedabots if entity @e[x=-1570,y=42,z=-247,dx=63,dy=7,dz=63,scores={Stage=4,Medabot=0..,Battle=1..}]
execute as @e[x=-1570,y=42,z=-247,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=4}] run scoreboard players set @s Stage 4
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run function medabots_server:stage/clean_up/seashore_a/first_go
stopsound @s[scores={BattlingMedabots=1,Death=0}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Death=0}] -1539 51 -216 14
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Death=0}] only medabots_server:stages/wave_1/seashore_a_first_go
teleport @s[scores={BattlingMedabots=1,Death=0}] -1539 51 -216 -180 0
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run bossbar set medabots_server:seashore_a/robattle players
tag @s[scores={BattlingMedabots=1,Death=0},advancements={medabots_server:wave_1/story_progression={meet_director_tune=true,meet_screws=false}}] add dialog_infinity_meet_screws
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots