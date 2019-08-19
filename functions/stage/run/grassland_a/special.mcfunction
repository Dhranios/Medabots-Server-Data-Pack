execute unless entity @e[scores={Stage=1},tag=hide_normal_time] run bossbar set medabots_server:grassland_a/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=1},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:grassland_a/time value
execute unless entity @e[scores={Stage=1},tag=hide_normal_time] store result bossbar medabots_server:grassland_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=1},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:grassland_a/robattle value
execute if entity @e[scores={Stage=1},tag=hide_normal_time] if entity @e[scores={Stage=1,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:grassland_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=1},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/grassland_a/special
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1513 44 -123 minecraft:lime_wool if block -1516 44 -120 minecraft:lime_wool if block -1520 44 -121 minecraft:lime_wool if block -1520 44 -124 minecraft:lime_wool run scoreboard players set @e[x=-1516.5,y=45,z=-127.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1541 44 -127 minecraft:light_blue_wool run scoreboard players set @e[x=-1539.5,y=45,z=-126.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1529 44 -125 minecraft:yellow_wool run scoreboard players set @e[x=-1539.5,y=45,z=-126.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1541 44 -127 minecraft:blue_wool if block -1529 44 -125 minecraft:orange_wool run scoreboard players set @e[x=-1539.5,y=45,z=-126.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1551 44 -151 minecraft:lime_wool run scoreboard players set @e[x=-1547.5,y=45,z=-156.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1541 44 -152 minecraft:lime_wool run scoreboard players set @e[x=-1535.5,y=45,z=-157.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1532 44 -152 minecraft:lime_wool run scoreboard players set @e[x=-1523.5,y=45,z=-159.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1519 44 -152 minecraft:lime_wool run scoreboard players set @e[x=-1513.5,y=45,z=-161.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1519 44 -173 minecraft:yellow_wool run scoreboard players set @e[x=-1526.5,y=45,z=-170.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1519 44 -173 minecraft:orange_wool run scoreboard players set @e[x=-1527.5,y=45,z=-170.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1534 44 -168 minecraft:lime_wool if block -1536 44 -177 minecraft:lime_wool if block -1542 44 -167 minecraft:lime_wool if block -1542 44 -176 minecraft:lime_wool run scoreboard players set @e[x=-1546.5,y=45,z=-171.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1528 45 -171 minecraft:iron_door[open=true] if entity @s[x=-1531,y=45,z=-173,dx=3,dy=3,dz=3] run function medabots_server:stage/create/grassland_a/special_battle/0
execute if entity @e[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=1,Medabot=0..,Battle=1..2}]
execute as @e[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=1}] run scoreboard players set @s Stage 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/grassland_a/second_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/grassland_a_special
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:grassland_a/robattle players
tag @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:wave_1/story_progression={three_colors=true,blue_man_defeated=false}}] add dialog_infinity_blue_man_defeated
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1539 51 -151 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots