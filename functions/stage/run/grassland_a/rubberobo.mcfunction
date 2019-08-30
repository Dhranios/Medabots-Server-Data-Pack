execute store result score #temp Time run bossbar get medabots_server:grassland_a/time value
execute store result bossbar medabots_server:grassland_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute if block -1513 44 -123 minecraft:lime_wool if block -1516 44 -120 minecraft:lime_wool if block -1520 44 -121 minecraft:lime_wool if block -1520 44 -124 minecraft:lime_wool run tag @e[x=-1516.5,y=45,z=-127.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1541 44 -127 minecraft:light_blue_wool run tag @e[x=-1539.5,y=45,z=-126.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1529 44 -125 minecraft:yellow_wool run tag @e[x=-1539.5,y=45,z=-126.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1541 44 -127 minecraft:blue_wool if block -1529 44 -125 minecraft:orange_wool run tag @e[x=-1539.5,y=45,z=-126.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1551 44 -151 minecraft:lime_wool run tag @e[x=-1547.5,y=45,z=-156.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1541 44 -152 minecraft:lime_wool run tag @e[x=-1534.5,y=45,z=-157.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1530 44 -152 minecraft:lime_wool run tag @e[x=-1523.5,y=45,z=-159.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1519 44 -152 minecraft:lime_wool run tag @e[x=-1513.5,y=45,z=-161.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1520 44 -174 minecraft:lime_wool run tag @e[x=-1527.5,y=45,z=-170.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1532 44 -174 minecraft:yellow_wool run tag @e[x=-1546.5,y=45,z=-171.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1532 44 -174 minecraft:orange_wool run tag @e[x=-1546.5,y=45,z=-171.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1537 44 -169 minecraft:yellow_wool run tag @e[x=-1547.5,y=45,z=-171.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1537 44 -169 minecraft:orange_wool run tag @e[x=-1547.5,y=45,z=-171.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1542 44 -174 minecraft:yellow_wool run tag @e[x=-1548.5,y=45,z=-171.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1542 44 -174 minecraft:orange_wool run tag @e[x=-1548.5,y=45,z=-171.5,distance=..0.7,tag=door,tag=open] remove open
execute as @e[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=1}] run scoreboard players set @s Stage 1
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/grassland_a/rubberobo
advancement grant @s[tag=clear_stage] only medabots_server:stages/wave_1/grassland_a_rubberobo
tag @s[tag=clear_stage,advancements={medabots_server:story_progression/infinity={rubberobo_enters_grassland_a=true,rubberobo_leaves_grassland_a=false}}] add dialog_infinity_rubberobo_leaves_grassland_a
execute if entity @s[tag=clear_stage] positioned -1539 51 -151 run function medabots_server:stage/clear