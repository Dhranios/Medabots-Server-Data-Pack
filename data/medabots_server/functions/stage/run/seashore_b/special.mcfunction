execute unless entity @e[scores={Stage=13},tag=hide_normal_time] run bossbar set medabots_server:seashore_b/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=13},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:seashore_b/time value
execute unless entity @e[scores={Stage=13},tag=hide_normal_time] store result bossbar medabots_server:seashore_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=13},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:seashore_b/robattle value
execute if entity @e[scores={Stage=13},tag=hide_normal_time] if entity @e[scores={Stage=13,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:seashore_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=13},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=13},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/seashore_b
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if block -1741 44 -402 minecraft:light_blue_wool run scoreboard players set @e[x=-1745.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1727 44 -388 minecraft:light_blue_wool run scoreboard players set @e[x=-1745.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1716 44 -402 minecraft:light_blue_wool run scoreboard players set @e[x=-1745.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1702 44 -395 minecraft:light_blue_wool run scoreboard players set @e[x=-1745.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1698 44 -403 minecraft:light_blue_wool run scoreboard players set @e[x=-1745.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1690 44 -403 minecraft:light_blue_wool run scoreboard players set @e[x=-1745.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1689 44 -394 minecraft:light_blue_wool run scoreboard players set @e[x=-1745.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1672 44 -411 minecraft:light_blue_wool run scoreboard players set @e[x=-1745.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1683 44 -393 minecraft:light_blue_wool run scoreboard players set @e[x=-1745.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1690 44 -420 minecraft:light_blue_wool run scoreboard players set @e[x=-1745.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1698 44 -420 minecraft:light_blue_wool run scoreboard players set @e[x=-1745.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1686 44 -436 minecraft:light_blue_wool run scoreboard players set @e[x=-1745.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1711 44 -417 minecraft:light_blue_wool run scoreboard players set @e[x=-1745.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1717 44 -438 minecraft:light_blue_wool run scoreboard players set @e[x=-1745.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1741 44 -402 minecraft:blue_wool if block -1727 44 -388 minecraft:blue_wool if block -1716 44 -402 minecraft:blue_wool if block -1702 44 -395 minecraft:blue_wool if block -1698 44 -403 minecraft:blue_wool if block -1690 44 -403 minecraft:blue_wool if block -1689 44 -394 minecraft:blue_wool if block -1672 44 -411 minecraft:blue_wool if block -1683 44 -393 minecraft:blue_wool if block -1690 44 -420 minecraft:blue_wool if block -1698 44 -420 minecraft:blue_wool if block -1686 44 -436 minecraft:blue_wool if block -1711 44 -417 minecraft:blue_wool if block -1717 44 -438 minecraft:blue_wool if block -1747 44 -411 minecraft:lime_wool run scoreboard players set @e[x=-1745.5,y=45,z=-411.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1747 45 -413 minecraft:iron_door[open=true] if entity @s[x=-1748,y=45,z=-416,dx=3,dy=3,dz=3] run function medabots_server:stage/create/seashore_b/special_battle/0
execute if entity @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=13,Medabot=0..,State=1..2}]
execute as @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=13}] run scoreboard players set @s Stage 13
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/seashore_b
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/seashore_b_special
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:seashore_b/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/infinity={teach_sloan=true,sloan_goes_elsewhere=false}}] add dialog_infinity_sloan_goes_elsewhere
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1715 51 -396 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots