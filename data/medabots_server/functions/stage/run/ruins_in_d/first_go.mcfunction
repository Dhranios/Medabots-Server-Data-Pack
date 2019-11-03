execute unless entity @e[scores={Stage=34},tag=hide_normal_time] run bossbar set medabots_server:ruins_in_d/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=34},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_in_d/time value
execute unless entity @e[scores={Stage=34},tag=hide_normal_time] store result bossbar medabots_server:ruins_in_d/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=34},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_in_d/robattle value
execute if entity @e[scores={Stage=34},tag=hide_normal_time] if entity @e[scores={Stage=34,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:ruins_in_d/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=34},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1793,y=41,z=-795,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=34},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1793,y=41,z=-795,dx=62,dy=7,dz=62,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/ruins_in_d/first_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
scoreboard players reset #temp Time
execute if block -1747 43 -736 minecraft:yellow_wool if block -1739 43 -736 minecraft:orange_wool run scoreboard players set @e[x=-1737.5,y=44,z=-744.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1738 43 -735 minecraft:yellow_wool if block -1739 43 -736 minecraft:orange_wool run scoreboard players set @e[x=-1737.5,y=44,z=-744.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1739 43 -736 minecraft:yellow_wool run scoreboard players set @e[x=-1737.5,y=44,z=-744.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1747 43 -736 minecraft:orange_wool if block -1738 43 -735 minecraft:orange_wool run scoreboard players set @e[x=-1737.5,y=44,z=-744.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1738 43 -736 minecraft:lime_wool run scoreboard players set @e[x=-1738.5,y=44,z=-751.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1739 43 -735 minecraft:lime_wool run scoreboard players set @e[x=-1761.5,y=44,z=-744.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1739 43 -772 minecraft:lime_wool run scoreboard players set @e[x=-1746.5,y=44,z=-774.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1776 43 -774 minecraft:lime_wool run scoreboard players set @e[x=-1774.5,y=44,z=-773.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1776 43 -774 minecraft:lime_wool run scoreboard players set @e[x=-1774.5,y=44,z=-793.5,distance=..2,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1763 44 -752 minecraft:iron_door[open=true] if block -1776 44 -768 minecraft:air if entity @s[x=-1764,y=44,z=-755,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_d/first_go_battle/0
execute if entity @e[x=-1761.5,y=44,z=-766.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=34,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1762.5,y=44,z=-751.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1793,y=41,z=-795,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:ruins_in_d/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1754 44 -752 minecraft:iron_door[open=true] if block -1753 44 -745 minecraft:iron_door[open=false] if entity @s[x=-1755,y=44,z=-755,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_d/first_go_battle/1
execute if entity @e[x=-1750.5,y=44,z=-755.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=34,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1753.5,y=44,z=-751.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1752.5,y=44,z=-744.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1793,y=41,z=-795,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:ruins_in_d/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1747 44 -792 minecraft:iron_door[open=true] if block -1737 44 -794 minecraft:air if entity @s[x=-1747,y=44,z=-793,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_d/first_go_battle/2
execute if entity @e[x=-1737.5,y=44,z=-786.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=34},tag=guard,type=minecraft:creeper] run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[x=-1793,y=41,z=-795,dx=62,dy=7,dz=62,scores={Stage=34,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] as @a[x=-1793,y=41,z=-795,dx=62,dy=7,dz=62,scores={Stage=34,Medabot=0..,Battle=1..},tag=enemy_medabot] run function medabots_server:stage/leave_server_enforced
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1746.5,y=44,z=-791.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1762.5,y=44,z=-777.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1793,y=41,z=-795,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run bossbar set medabots_server:ruins_in_d/robattle players
tag @s[tag=mission_success] remove mission_success
execute if block -1778 44 -791 minecraft:iron_door[open=true] if block -1737 44 -794 minecraft:air if entity @s[x=-1781,y=44,z=-793,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_d/first_go_battle/3
execute if entity @e[x=-1786.5,y=44,z=-788.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if block -1783 43 -790 minecraft:lime_wool if block -1784 43 -789 minecraft:lime_wool if block -1791 43 -793 minecraft:lime_wool if block -1791 43 -788 minecraft:lime_wool if block -1791 43 -782 minecraft:lime_wool if block -1785 43 -782 minecraft:lime_wool if block -1780 43 -782 minecraft:lime_wool run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=34,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=34,Medabot=0..,Battle=1..},tag=enemy_medabot] run function medabots_server:stage/leave_server_enforced
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1777.5,y=44,z=-790.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1762.5,y=44,z=-777.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1793,y=41,z=-795,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run bossbar set medabots_server:ruins_in_d/robattle players
tag @s[tag=mission_success] remove mission_success
execute if block -1763 44 -779 minecraft:iron_door[open=true] if entity @s[x=-1764,y=44,z=-782,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_d/first_go_battle/4
execute if entity @e[x=-1793,y=41,z=-795,dx=62,dy=7,dz=62,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=34,Medabot=0..,Battle=1..2}]
execute as @e[x=-1793,y=41,z=-795,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=34}] run scoreboard players set @s Stage 34
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/ruins_in_d/first_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/ruins_in_d_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:ruins_in_d/robattle players
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1763 50 -755 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots