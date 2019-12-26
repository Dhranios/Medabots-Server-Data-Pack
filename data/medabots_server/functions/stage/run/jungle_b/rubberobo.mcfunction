execute unless entity @e[scores={Stage=12},tag=hide_normal_time] run bossbar set medabots_server:jungle_b/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=12},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_b/time value
execute unless entity @e[scores={Stage=12},tag=hide_normal_time] store result bossbar medabots_server:jungle_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=12},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_b/robattle value
execute if entity @e[scores={Stage=12},tag=hide_normal_time] if entity @e[scores={Stage=12,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:jungle_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=12},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=12},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/jungle_b
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if block -1645 44 -408 minecraft:blue_wool if block -1629 44 -420 minecraft:blue_wool if block -1629 44 -421 minecraft:yellow_wool run scoreboard players set @e[x=-1627.5,y=45,z=-420.5,distance=..0.7,tag=alarm,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1645 44 -408 minecraft:light_blue_wool run scoreboard players set @e[x=-1627.5,y=45,z=-420.5,distance=..0.7,tag=alarm,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1629 44 -420 minecraft:light_blue_wool run scoreboard players set @e[x=-1627.5,y=45,z=-420.5,distance=..0.7,tag=alarm,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1629 44 -421 minecraft:orange_wool run scoreboard players set @e[x=-1627.5,y=45,z=-420.5,distance=..0.7,tag=alarm,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1579 44 -434 minecraft:light_blue_wool run scoreboard players set @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1580 44 -441 minecraft:light_blue_wool run scoreboard players set @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1580 44 -449 minecraft:light_blue_wool run scoreboard players set @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1580 44 -452 minecraft:light_blue_wool run scoreboard players set @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1580 44 -456 minecraft:light_blue_wool run scoreboard players set @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1579 44 -434 minecraft:blue_wool if block -1580 44 -441 minecraft:blue_wool if block -1580 44 -449 minecraft:blue_wool if block -1580 44 -452 minecraft:blue_wool if block -1580 44 -456 minecraft:blue_wool run scoreboard players set @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1599 44 -453 minecraft:lime_wool run scoreboard players set @e[x=-1601.5,y=45,z=-471.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1590 45 -412 minecraft:iron_door[open=true] if block -1579 45 -417 minecraft:iron_door[open=false] if entity @s[x=-1592,y=45,z=-412,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_b/rubberobo_battle/0
execute if entity @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=12,Medabot=0..,State=1..2}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=12}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=-1589.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=-1578.5,y=45,z=-416.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:jungle_b/robattle players
kill @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1601 45 -468 minecraft:iron_door[open=true] if block -1606 45 -456 minecraft:iron_door[open=false] if entity @s[x=-1604,y=45,z=-470,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_b/rubberobo_battle/1
execute if entity @e[x=-1608.5,y=45,z=-462.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=12,Medabot=0..,State=1..2}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1600.5,y=45,z=-467.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1605.5,y=45,z=-455.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1615.5,y=45,z=-463.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:jungle_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=-1608.5,y=45,z=-462.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1635 45 -451 minecraft:iron_door[open=true] if entity @s[x=-1638,y=45,z=-453,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_b/rubberobo_battle/2
execute if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=12,Medabot=0..,State=1..2}]
execute as @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 12
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/jungle_b
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/jungle_b_rubberobo
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:jungle_b/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/infinity={rubberobo_enters_jungle_b=true,rubberobo_leaves_jungle_b=false}}] add dialog_infinity_rubberobo_leaves_jungle_b
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1620 51 -431 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots