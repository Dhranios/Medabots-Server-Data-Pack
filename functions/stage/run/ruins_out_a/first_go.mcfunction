execute unless entity @e[scores={Stage=7},tag=hide_normal_time] run bossbar set medabots_server:ruins_out_a/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=7},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_out_a/time value
execute unless entity @e[scores={Stage=7},tag=hide_normal_time] store result bossbar medabots_server:ruins_out_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=7},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_out_a/robattle value
execute if entity @e[scores={Stage=7},tag=hide_normal_time] if entity @e[scores={Stage=7,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:ruins_out_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=7},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,tag=mission] at @s run function medabots_server:stage/mission_time_up
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/ruins_out_a/first_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1554 44 -284 minecraft:lime_wool run scoreboard players set @e[x=-1512.5,y=45,z=-295.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1581 44 -284 minecraft:lime_wool run scoreboard players set @e[x=-1513.5,y=45,z=-295.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1511 44 -296 minecraft:lime_wool run scoreboard players set @e[x=-1567.5,y=45,z=-309.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1567 44 -266 minecraft:lime_wool run scoreboard players set @e[x=-1567.5,y=45,z=-263.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1556 44 -260 minecraft:light_blue_wool run scoreboard players set @e[x=-1555.5,y=45,z=-258.5,distance=..0.7,tag=hammer_punch,scores={PowerAmount=0}] PowerAmount 1
execute if block -1556 44 -260 minecraft:blue_wool run scoreboard players set @e[x=-1555.5,y=45,z=-258.5,distance=..0.7,tag=hammer_punch,scores={PowerAmount=1}] PowerAmount 0
execute if block -1554 44 -258 minecraft:light_blue_wool run scoreboard players set @e[x=-1553.5,y=45,z=-256.5,distance=..0.7,tag=hammer_punch,scores={PowerAmount=0}] PowerAmount 1
execute if block -1554 44 -258 minecraft:blue_wool run scoreboard players set @e[x=-1553.5,y=45,z=-256.5,distance=..0.7,tag=hammer_punch,scores={PowerAmount=1}] PowerAmount 0
execute if block -1511 44 -295 minecraft:light_blue_wool run scoreboard players set @e[x=-1507.5,y=45,z=-291.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1511 44 -295 minecraft:blue_wool run scoreboard players set @e[x=-1507.5,y=45,z=-291.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=1}] PowerAmount 0
execute if block -1511 44 -295 minecraft:light_blue_wool run scoreboard players set @e[x=-1507.5,y=45,z=-299.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1511 44 -295 minecraft:blue_wool run scoreboard players set @e[x=-1507.5,y=45,z=-299.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=1}] PowerAmount 0
execute if block -1511 44 -295 minecraft:light_blue_wool run scoreboard players set @e[x=-1514.5,y=45,z=-293.5,distance=..0.7,tag=alarm,scores={PowerAmount=0}] PowerAmount 1
execute if block -1511 44 -295 minecraft:blue_wool run scoreboard players set @e[x=-1514.5,y=45,z=-293.5,distance=..0.7,tag=alarm,scores={PowerAmount=1}] PowerAmount 0
execute if block -1511 44 -295 minecraft:light_blue_wool run scoreboard players set @e[x=-1514.5,y=45,z=-296.5,distance=..0.7,tag=alarm,scores={PowerAmount=0}] PowerAmount 1
execute if block -1511 44 -295 minecraft:blue_wool run scoreboard players set @e[x=-1514.5,y=45,z=-296.5,distance=..0.7,tag=alarm,scores={PowerAmount=1}] PowerAmount 0
execute if block -1595 44 -264 minecraft:lime_wool run scoreboard players set @e[x=-1599.5,y=45,z=-263.5,distance=..0.7,tag=spring_wall,scores={PowerAmount=0}] PowerAmount 1
execute if block -1578 44 -301 minecraft:yellow_wool run scoreboard players remove @e[x=-1577.5,y=45,z=-301.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1578 44 -301 minecraft:yellow_wool run tag @e[x=-1577.5,y=45,z=-301.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1578 44 -301 minecraft:yellow_wool run scoreboard players remove @e[x=-1577.5,y=45,z=-282.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1578 44 -301 minecraft:yellow_wool run tag @e[x=-1577.5,y=45,z=-282.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1578 44 -301 minecraft:orange_wool run scoreboard players add @e[x=-1577.5,y=45,z=-301.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1578 44 -301 minecraft:orange_wool run tag @e[x=-1577.5,y=45,z=-301.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1578 44 -301 minecraft:orange_wool run scoreboard players add @e[x=-1577.5,y=45,z=-282.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1578 44 -301 minecraft:orange_wool run tag @e[x=-1577.5,y=45,z=-282.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1622 45 -300 minecraft:iron_door[open=false] if block -1602 44 -286 minecraft:lime_wool run scoreboard players set @e[x=-1601.5,y=45,z=-301.5,distance=..0.7,tag=press_wall,scores={PowerAmount=0}] PowerAmount 1
execute if block -1622 45 -300 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1601.5,y=45,z=-301.5,distance=..0.7,tag=press_wall,scores={PowerAmount=1}] PowerAmount 0
execute if block -1622 45 -300 minecraft:iron_door[open=false] if block -1602 44 -286 minecraft:lime_wool run scoreboard players set @e[x=-1596.5,y=45,z=-284.5,distance=..0.7,tag=press_wall,scores={PowerAmount=0}] PowerAmount 1
execute if block -1622 45 -300 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1596.5,y=45,z=-284.5,distance=..0.7,tag=press_wall,scores={PowerAmount=1}] PowerAmount 0
execute if block -1606 44 -281 minecraft:orange_wool run scoreboard players set @e[x=-1620.5,y=45,z=-253.5,distance=..0.7,tag=press_wall,scores={PowerAmount=0}] PowerAmount 1
execute if block -1606 44 -281 minecraft:yellow_wool run scoreboard players set @e[x=-1620.5,y=45,z=-253.5,distance=..0.7,tag=press_wall,scores={PowerAmount=1}] PowerAmount 0
execute if block -1604 44 -300 minecraft:lime_wool run scoreboard players set @e[x=-1604.5,y=45,z=-299.5,distance=..0.7,tag=gas_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1611 44 -293 minecraft:lime_wool run scoreboard players set @e[x=-1610.5,y=45,z=-293.5,distance=..0.7,tag=gas_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1610 45 -308 minecraft:iron_door[open=true] if block -1622 45 -300 minecraft:iron_door[open=false] if entity @s[x=-1612,y=45,z=-307,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_a/first_go_battle/0
execute if entity @e[x=-1609.5,y=45,z=-298.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=7,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1609.5,y=45,z=-307.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1621.5,y=45,z=-299.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:ruins_out_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,type=!minecraft:player] unless entity @s[scores={Stage=7}] run scoreboard players set @s Stage 7
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/ruins_out_a/first_go
advancement grant @s[tag=clear_stage] only medabots_server:stages/wave_1/ruins_out_a_first_go
tag @s[tag=clear_stage,advancements={medabots_server:story_progression/infinity={meet_doctor_haru=true,tunes_order=false}}] add dialog_infinity_tunes_order
execute if entity @s[tag=clear_stage] positioned -1570 51 -284 run function medabots_server:stage/clear