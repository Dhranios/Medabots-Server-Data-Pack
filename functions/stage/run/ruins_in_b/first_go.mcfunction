execute unless entity @e[scores={Stage=17},tag=hide_normal_time] run bossbar set medabots_server:ruins_in_b/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=17},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_in_b/time value
execute unless entity @e[scores={Stage=17},tag=hide_normal_time] store result bossbar medabots_server:ruins_in_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=17},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_in_b/robattle value
execute if entity @e[scores={Stage=17},tag=hide_normal_time] if entity @e[scores={Stage=17,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:ruins_in_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=17},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1666,y=0,z=-572,dx=92,dy=49,dz=92,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/ruins_in_b/first_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1600 43 -505 minecraft:blue_wool run scoreboard players set @e[x=-1578.5,y=44,z=-506.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1600 43 -505 minecraft:light_blue_wool run scoreboard players set @e[x=-1578.5,y=44,z=-506.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1600 43 -535 minecraft:blue_wool run scoreboard players set @e[x=-1588.5,y=44,z=-506.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1600 43 -535 minecraft:light_blue_wool run scoreboard players set @e[x=-1588.5,y=44,z=-506.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1588 43 -540 minecraft:lime_wool run scoreboard players set @e[x=-1620.5,y=44,z=-531.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1602 43 -571 minecraft:lime_wool run scoreboard players set @e[x=-1595.5,y=44,z=-565.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1591 43 -562 minecraft:lime_wool run scoreboard players set @e[x=-1595.5,y=44,z=-565.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1588 43 -562 minecraft:lime_wool run scoreboard players set @e[x=-1595.5,y=44,z=-565.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1591 43 -571 minecraft:lime_wool run scoreboard players set @e[x=-1595.5,y=44,z=-565.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1588 43 -571 minecraft:lime_wool run scoreboard players set @e[x=-1595.5,y=44,z=-565.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1601 43 -506 minecraft:blue_wool run scoreboard players set @e[x=-1606.5,y=44,z=-512.5,distance=..4,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1601 43 -505 minecraft:blue_wool run scoreboard players set @e[x=-1606.5,y=44,z=-512.5,distance=..4,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1600 43 -506 minecraft:blue_wool run scoreboard players set @e[x=-1606.5,y=44,z=-512.5,distance=..4,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1601 43 -506 minecraft:light_blue_wool if block -1601 43 -505 minecraft:light_blue_wool if block -1600 43 -506 minecraft:light_blue_wool run scoreboard players set @e[x=-1606.5,y=44,z=-512.5,distance=..4,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1601 43 -534 minecraft:blue_wool run scoreboard players set @e[x=-1606.5,y=44,z=-526.5,distance=..4,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1601 43 -535 minecraft:blue_wool run scoreboard players set @e[x=-1606.5,y=44,z=-526.5,distance=..4,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1600 43 -534 minecraft:blue_wool run scoreboard players set @e[x=-1606.5,y=44,z=-526.5,distance=..4,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1601 43 -534 minecraft:light_blue_wool if block -1601 43 -535 minecraft:light_blue_wool if block -1600 43 -534 minecraft:light_blue_wool run scoreboard players set @e[x=-1606.5,y=44,z=-526.5,distance=..4,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1600 43 -505 minecraft:blue_wool run scoreboard players set @e[x=-1606.5,y=44,z=-488.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1600 43 -505 minecraft:light_blue_wool run scoreboard players set @e[x=-1606.5,y=44,z=-488.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1600 43 -505 minecraft:blue_wool run scoreboard players set @e[x=-1599.5,y=44,z=-488.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1600 43 -505 minecraft:light_blue_wool run scoreboard players set @e[x=-1599.5,y=44,z=-488.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1600 43 -535 minecraft:blue_wool run scoreboard players set @e[x=-1606.5,y=44,z=-492.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1600 43 -535 minecraft:light_blue_wool run scoreboard players set @e[x=-1606.5,y=44,z=-492.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1600 43 -535 minecraft:blue_wool run scoreboard players set @e[x=-1599.5,y=44,z=-492.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1600 43 -535 minecraft:light_blue_wool run scoreboard players set @e[x=-1599.5,y=44,z=-492.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1588 43 -540 minecraft:lime_wool run scoreboard players set @e[x=-1587.5,y=44,z=-528.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1603 43 -544 minecraft:light_blue_wool run scoreboard players set @e[x=-1602.5,y=44,z=-544.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1603 43 -544 minecraft:blue_wool run scoreboard players set @e[x=-1602.5,y=44,z=-544.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1601 43 -544 minecraft:light_blue_wool run scoreboard players set @e[x=-1600.5,y=44,z=-544.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1601 43 -544 minecraft:blue_wool run scoreboard players set @e[x=-1600.5,y=44,z=-544.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1621 44 -552 minecraft:iron_door[open=true] if entity @s[x=-1622,y=44,z=-555,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_b/first_go_battle/0
execute if entity @e[x=-1666,y=0,z=-572,dx=92,dy=49,dz=92,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=17,Medabot=0..,Battle=1..2}]
execute as @e[x=-1666,y=0,z=-572,dx=92,dy=49,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=17}] run scoreboard players set @s Stage 17
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/ruins_in_b/first_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/ruins_in_b_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:ruins_in_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1620 50 -526 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
