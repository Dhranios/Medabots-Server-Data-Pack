execute store result score #temp Time run bossbar get medabots_server:grassland_a/time value
execute store result bossbar medabots_server:grassland_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute if block -1513 44 -123 minecraft:lime_wool if block -1516 44 -120 minecraft:lime_wool if block -1520 44 -121 minecraft:lime_wool if block -1520 44 -124 minecraft:lime_wool run tag @e[x=-1516.5,y=45,z=-127.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1541 44 -127 minecraft:light_blue_wool run tag @e[x=-1539.5,y=45,z=-126.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1529 44 -125 minecraft:yellow_wool run tag @e[x=-1539.5,y=45,z=-126.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1541 44 -127 minecraft:blue_wool if block -1529 44 -125 minecraft:orange_wool run tag @e[x=-1539.5,y=45,z=-126.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1551 44 -151 minecraft:lime_wool run tag @e[x=-1547.5,y=45,z=-156.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1540 44 -152 minecraft:lime_wool run tag @e[x=-1534.5,y=45,z=-157.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1532 44 -152 minecraft:lime_wool run tag @e[x=-1523.5,y=45,z=-159.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1519 44 -152 minecraft:lime_wool run tag @e[x=-1513.5,y=45,z=-161.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1518 44 -173 minecraft:lime_wool run tag @e[x=-1527.5,y=45,z=-170.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1533 44 -174 minecraft:lime_wool run tag @e[x=-1546.5,y=45,z=-171.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1538 44 -169 minecraft:lime_wool run tag @e[x=-1547.5,y=45,z=-171.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1543 44 -174 minecraft:lime_wool run tag @e[x=-1548.5,y=45,z=-171.5,distance=..0.7,tag=door,tag=!open] add open
execute as @e[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=1}] run scoreboard players set @s Stage 1
execute if entity @s[x=-1550.5,y=45,z=-170.5,distance=..0.7,tag=hostile,gamemode=adventure] run function medabots_server:stage/clean_up/grassland_a/second_go
stopsound @s[x=-1550.5,y=45,z=-170.5,distance=..0.7,tag=hostile,gamemode=adventure] music
playsound medabots_server:music.stage.stage_end music @s[x=-1550.5,y=45,z=-170.5,distance=..0.7,tag=hostile,gamemode=adventure] -1539 51 -151 14
scoreboard players set @s[x=-1550.5,y=45,z=-170.5,distance=..0.7,tag=hostile,gamemode=adventure] Battle 0
scoreboard players set @s[x=-1550.5,y=45,z=-170.5,distance=..0.7,tag=hostile,gamemode=adventure] MusicType 1
scoreboard players set @s[x=-1550.5,y=45,z=-170.5,distance=..0.7,tag=hostile,gamemode=adventure] Music 299
advancement grant @s[x=-1550.5,y=45,z=-170.5,distance=..0.7,tag=hostile,gamemode=adventure] only medabots_server:stages/wave_1/grassland_a_second_go
teleport @s[x=-1550.5,y=45,z=-170.5,distance=..0.7,tag=hostile,gamemode=adventure] -1539 51 -151 -180 0