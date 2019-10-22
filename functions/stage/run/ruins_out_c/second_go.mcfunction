execute unless entity @e[scores={Stage=27},tag=hide_normal_time] run bossbar set medabots_server:ruins_out_c/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=27},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_out_c/time value
execute unless entity @e[scores={Stage=27},tag=hide_normal_time] store result bossbar medabots_server:ruins_out_c/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=27},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_out_c/robattle value
execute if entity @e[scores={Stage=27},tag=hide_normal_time] if entity @e[scores={Stage=27,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:ruins_out_c/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=27},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1665,y=0,z=-704,dx=62,dy=49,dz=63,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=27},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1665,y=0,z=-704,dx=62,dy=49,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/ruins_out_c/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1627 43 -646 minecraft:lime_wool if block -1606 43 -646 minecraft:lime_wool run scoreboard players set @e[x=-1616.5,y=44,z=-658.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1619 43 -671 minecraft:lime_wool if block -1614 43 -671 minecraft:lime_wool run scoreboard players set @e[x=-1607.5,y=44,z=-658.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1619 43 -671 minecraft:lime_wool if block -1614 43 -671 minecraft:lime_wool run scoreboard players set @e[x=-1625.5,y=44,z=-658.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1608 43 -689 minecraft:lime_wool if block -1625 43 -689 minecraft:lime_wool run scoreboard players set @e[x=-1628.5,y=44,z=-671.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1634 43 -681 minecraft:yellow_wool run scoreboard players set @e[x=-1635.5,y=44,z=-680.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1644 43 -675 minecraft:yellow_wool run scoreboard players set @e[x=-1635.5,y=44,z=-680.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1634 43 -681 minecraft:orange_wool if block -1644 43 -675 minecraft:orange_wool run scoreboard players set @e[x=-1635.5,y=44,z=-680.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1613 43 -694 minecraft:lime_wool run scoreboard players set @e[x=-1628.5,y=44,z=-662.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1652 43 -647 minecraft:lime_wool if block -1654 43 -658 minecraft:lime_wool if block -1655 43 -653 minecraft:lime_wool run scoreboard players set @e[x=-1630.5,y=44,z=-657.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1632 43 -660 minecraft:yellow_wool run scoreboard players set @e[x=-1630.5,y=44,z=-657.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1652 43 -647 minecraft:green_wool if block -1654 43 -658 minecraft:green_wool if block -1655 43 -653 minecraft:green_wool if block -1632 43 -660 minecraft:orange_wool run scoreboard players set @e[x=-1630.5,y=44,z=-657.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1640 43 -694 minecraft:blue_wool run scoreboard players set @e[x=-1655.5,y=44,z=-683.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1640 43 -694 minecraft:light_blue_wool run scoreboard players set @e[x=-1655.5,y=44,z=-683.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1630 43 -695 minecraft:lime_wool run scoreboard players set @e[x=-1628.5,y=44,z=-694.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1613 43 -694 minecraft:lime_wool run scoreboard players set @e[x=-1630.5,y=44,z=-698.5,distance=..0.7,tag=hammer_punch,scores={PowerAmount=0}] PowerAmount 1
execute if block -1613 43 -694 minecraft:lime_wool run scoreboard players set @e[x=-1630.5,y=44,z=-699.5,distance=..0.7,tag=hammer_punch,scores={PowerAmount=0}] PowerAmount 1
execute if block -1613 43 -694 minecraft:lime_wool run scoreboard players set @e[x=-1617.5,y=44,z=-698.5,distance=..0.7,tag=hammer_punch,scores={PowerAmount=0}] PowerAmount 1
execute if block -1613 43 -694 minecraft:lime_wool run scoreboard players set @e[x=-1617.5,y=44,z=-699.5,distance=..0.7,tag=hammer_punch,scores={PowerAmount=0}] PowerAmount 1
execute if block -1650 43 -653 minecraft:lime_wool run scoreboard players set @e[x=-1650.5,y=44,z=-652.5,distance=..0.7,tag=hammer_punch,scores={PowerAmount=0}] PowerAmount 1
execute if block -1606 43 -702 minecraft:yellow_wool run scoreboard players set @e[x=-1615.5,y=44,z=-700.5,distance=..0.7,tag=press_wall,scores={PowerAmount=0}] PowerAmount 1
execute if block -1606 43 -702 minecraft:orange_wool run scoreboard players set @e[x=-1615.5,y=44,z=-700.5,distance=..0.7,tag=press_wall,scores={PowerAmount=1}] PowerAmount 0
execute if block -1617 44 -684 minecraft:iron_door[open=true] if block -1648 44 -698 minecraft:air if entity @s[x=-1618,y=44,z=-687,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_c/second_go_battle/0
execute if entity @e[x=-1616.5,y=44,z=-686.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=27,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1616.5,y=44,z=-683.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1628.5,y=44,z=-671.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1616.5,y=44,z=-686.5,distance=..0.7,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:ruins_out_c/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1656 44 -685 minecraft:iron_door[open=true] if entity @s[x=-1657,y=44,z=-688,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_c/second_go_battle/1
execute if entity @e[x=-1665,y=0,z=-704,dx=62,dy=49,dz=63,tag=mr_referee,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=27,Medabot=0..,Battle=1..2}]
execute as @e[x=-1665,y=0,z=-704,dx=62,dy=49,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=27}] run scoreboard players set @s Stage 27
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/ruins_out_c/second_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/ruins_out_c_second_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:ruins_out_c/robattle players
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1635 50 -673 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots