execute unless entity @e[scores={Stage=15},tag=hide_normal_time] run bossbar set medabots_server:iceberg_b/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=15},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_b/time value
execute unless entity @e[scores={Stage=15},tag=hide_normal_time] store result bossbar medabots_server:iceberg_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=15},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_b/robattle value
execute if entity @e[scores={Stage=15},tag=hide_normal_time] if entity @e[scores={Stage=15,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:iceberg_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=15},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1824,y=41,z=-438,dx=60,dy=7,dz=90,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=15},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1824,y=41,z=-438,dx=60,dy=7,dz=90,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/iceberg_b
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if block -1816 43 -379 minecraft:lime_wool run scoreboard players set @e[x=-1796.5,y=44,z=-359.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1788 43 -359 minecraft:lime_wool run scoreboard players set @e[x=-1784.5,y=44,z=-356.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1785 43 -376 minecraft:lime_wool if block -1788 43 -373 minecraft:lime_wool if block -1792 43 -374 minecraft:lime_wool if block -1793 43 -378 minecraft:lime_wool if block -1791 43 -382 minecraft:lime_wool if block -1788 43 -382 minecraft:lime_wool if block -1786 43 -381 minecraft:lime_wool run scoreboard players set @e[x=-1794.5,y=44,z=-382.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1808 43 -412 minecraft:lime_wool run scoreboard players set @e[x=-1803.5,y=44,z=-405.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1801 43 -396 minecraft:lime_wool run scoreboard players set @e[x=-1804.5,y=44,z=-405.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1793 43 -434 minecraft:light_blue_wool run scoreboard players set @e[x=-1793.5,y=44,z=-433.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1793 43 -434 minecraft:blue_wool run scoreboard players set @e[x=-1793.5,y=44,z=-433.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if block -1793 43 -435 minecraft:light_blue_wool run scoreboard players set @e[x=-1793.5,y=44,z=-434.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1793 43 -435 minecraft:blue_wool run scoreboard players set @e[x=-1793.5,y=44,z=-434.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if block -1808 43 -412 minecraft:lime_wool run scoreboard players set @e[x=-1807.5,y=44,z=-397.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1808 43 -412 minecraft:lime_wool run scoreboard players set @e[x=-1806.5,y=44,z=-399.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1808 43 -412 minecraft:lime_wool run scoreboard players set @e[x=-1809.5,y=44,z=-401.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1808 43 -412 minecraft:lime_wool run scoreboard players set @e[x=-1806.5,y=44,z=-404.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1801 43 -396 minecraft:lime_wool run scoreboard players set @e[x=-1811.5,y=44,z=-395.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1801 43 -396 minecraft:lime_wool run scoreboard players set @e[x=-1809.5,y=44,z=-398.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1801 43 -396 minecraft:lime_wool run scoreboard players set @e[x=-1807.5,y=44,z=-401.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1801 43 -396 minecraft:lime_wool run scoreboard players set @e[x=-1810.5,y=44,z=-404.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1775 44 -369 minecraft:iron_trapdoor[open=true] if block -1772 44 -380 minecraft:air if entity @s[x=-1776,y=44,z=-372,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_b/first_go_battle/0
execute if entity @e[x=-1772.5,y=44,z=-376.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=15,Medabot=0..,State=1..2}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=-1772.5,y=44,z=-376.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=15}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1772.5,y=44,z=-376.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1772.5,y=44,z=-376.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=-1774.5,y=44,z=-368.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1772.5,y=44,z=-376.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:iceberg_b/robattle players
kill @e[x=-1772.5,y=44,z=-376.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1809 44 -424 minecraft:iron_trapdoor[open=true] if block -1807 44 -435 minecraft:barrier if entity @s[x=-1810,y=44,z=-427,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_b/first_go_battle/1
execute if entity @e[x=-1816.5,y=44,z=-431.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=15,Medabot=0..,State=1..2}]
execute if entity @e[x=-1816.5,y=44,z=-431.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=15},tag=cannon,type=minecraft:husk,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1808.5,y=44,z=-423.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1806.5,y=44,z=-434.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1816.5,y=44,z=-431.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=15,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=15,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:iceberg_b/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1773 44 -391 minecraft:iron_trapdoor[open=true] if block -1788 41 -411 minecraft:cobblestone if entity @s[x=-1773,y=44,z=-392,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_b/first_go_battle/2
execute if entity @e[x=-1764.5,y=44,z=-399.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=15,Medabot=0..,State=1..2}]
execute if entity @e[x=-1764.5,y=44,z=-399.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=15},tag=guard,type=minecraft:creeper,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1772.5,y=44,z=-390.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1764.5,y=44,z=-399.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=15,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=15,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:iceberg_b/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1779 44 -415 minecraft:iron_trapdoor[open=true] if entity @s[x=-1780,y=44,z=-418,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_b/first_go_battle/3
execute if entity @e[x=-1824,y=41,z=-438,dx=60,dy=7,dz=90,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=15,Medabot=0..,State=1..2}]
execute as @e[x=-1824,y=41,z=-438,dx=60,dy=7,dz=90,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 15
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/iceberg_b
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/iceberg_b_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:iceberg_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1795 50 -394 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots