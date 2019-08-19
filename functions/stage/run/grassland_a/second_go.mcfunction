execute store result score #temp Time run bossbar get medabots_server:grassland_a/time value
execute store result bossbar medabots_server:grassland_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute if block -1513 44 -123 minecraft:lime_wool if block -1516 44 -120 minecraft:lime_wool if block -1520 44 -121 minecraft:lime_wool if block -1520 44 -124 minecraft:lime_wool run scoreboard players set @e[x=-1516.5,y=45,z=-127.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1541 44 -127 minecraft:light_blue_wool run scoreboard players set @e[x=-1539.5,y=45,z=-126.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1529 44 -125 minecraft:yellow_wool run scoreboard players set @e[x=-1539.5,y=45,z=-126.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1541 44 -127 minecraft:blue_wool if block -1529 44 -125 minecraft:orange_wool run scoreboard players set @e[x=-1539.5,y=45,z=-126.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1551 44 -151 minecraft:lime_wool run scoreboard players set @e[x=-1547.5,y=45,z=-156.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1540 44 -152 minecraft:lime_wool run scoreboard players set @e[x=-1534.5,y=45,z=-157.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1532 44 -152 minecraft:lime_wool run scoreboard players set @e[x=-1523.5,y=45,z=-159.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1519 44 -152 minecraft:lime_wool run scoreboard players set @e[x=-1513.5,y=45,z=-161.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1518 44 -173 minecraft:lime_wool run scoreboard players set @e[x=-1527.5,y=45,z=-170.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1533 44 -174 minecraft:lime_wool run scoreboard players set @e[x=-1546.5,y=45,z=-171.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1538 44 -169 minecraft:lime_wool run scoreboard players set @e[x=-1547.5,y=45,z=-171.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1543 44 -174 minecraft:lime_wool run scoreboard players set @e[x=-1548.5,y=45,z=-171.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute as @e[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=1}] run scoreboard players set @s Stage 1
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/grassland_a/second_go
advancement grant @s[tag=clear_stage] only medabots_server:stages/wave_1/grassland_a_second_go
execute if entity @s[tag=clear_stage] positioned -1539 51 -151 run function medabots_server:stage/clear