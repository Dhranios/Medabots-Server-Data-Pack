execute if entity @s[scores={Death=1..}] run function medabots_server:stage/clean_up/seashore_a/second_go
execute store result score #temp Time run bossbar get medabots_server:seashore_a/time value
execute store result bossbar medabots_server:seashore_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute if block -1549 44 -186 minecraft:lime_wool run tag @e[x=-1532.5,y=45,z=-195.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1537 44 -187 minecraft:lime_wool run tag @e[x=-1550.5,y=45,z=-193.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1534 44 -206 minecraft:light_blue_wool run tag @e[x=-1533.5,y=45,z=-206.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1551 44 -206 minecraft:lime_wool run tag @e[x=-1533.5,y=45,z=-206.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1534 44 -206 minecraft:blue_wool if block -1551 44 -206 minecraft:green_wool run tag @e[x=-1533.5,y=45,z=-206.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1556 44 -187 minecraft:lime_wool run tag @e[x=-1568.5,y=45,z=-206.5,distance=..0.7,tag=door,tag=!open] add open
execute as @e[x=-1570,y=43,z=-247,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=4}] run scoreboard players set @s Stage 4
execute if entity @s[x=-1537.5,y=45,z=-228.5,distance=..0.7,tag=hostile,gamemode=adventure] run function medabots_server:stage/clean_up/seashore_a/second_go
stopsound @s[x=-1537.5,y=45,z=-228.5,distance=..0.7,tag=hostile,gamemode=adventure] music
playsound medabots_server:music.stage.stage_end music @s[x=-1537.5,y=45,z=-228.5,distance=..0.7,tag=hostile,gamemode=adventure] -1539 51 -216 14
scoreboard players set @s[x=-1537.5,y=45,z=-228.5,distance=..0.7,tag=hostile,gamemode=adventure] Battle 0
scoreboard players set @s[x=-1537.5,y=45,z=-228.5,distance=..0.7,tag=hostile,gamemode=adventure] MusicType 1
scoreboard players set @s[x=-1537.5,y=45,z=-228.5,distance=..0.7,tag=hostile,gamemode=adventure] Music 299
advancement grant @s[x=-1537.5,y=45,z=-228.5,distance=..0.7,tag=hostile,gamemode=adventure] only medabots_server:stages/wave_1/seashore_a_second_go
teleport @s[x=-1537.5,y=45,z=-228.5,distance=..0.7,tag=hostile,gamemode=adventure] -1539 51 -216 -180 0