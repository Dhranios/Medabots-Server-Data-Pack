execute store result score #temp Time run bossbar get medabots_server:snowfield_a/time value
execute store result bossbar medabots_server:snowfield_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute if block -1594 44 -218 minecraft:yellow_wool run scoreboard players set @e[x=-1597.5,y=45,z=-212.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1594 44 -218 minecraft:orange_wool run scoreboard players set @e[x=-1597.5,y=45,z=-212.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1594 44 -218 minecraft:yellow_wool run scoreboard players set @e[x=-1589.5,y=45,z=-206.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1594 44 -218 minecraft:orange_wool run scoreboard players set @e[x=-1589.5,y=45,z=-20.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1649 44 -227 minecraft:lime_wool if block -1632 44 -225 minecraft:lime_wool if block -1627 44 -232 minecraft:lime_wool if block -1643 44 -236 minecraft:lime_wool run scoreboard players set @e[x=-1651.5,y=45,z=-228.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1613 44 -203 minecraft:light_blue_wool run scoreboard players add @e[x=-1611.5,y=45,z=-202.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=fan,tag=!changed] Moving 1
execute if block -1613 44 -203 minecraft:light_blue_wool run tag @e[x=-1611.5,y=45,z=-202.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=fan,tag=!changed] add changed
execute if block -1613 44 -203 minecraft:blue_wool run scoreboard players remove @e[x=-1611.5,y=45,z=-202.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=fan,tag=changed] Moving 1
execute if block -1613 44 -203 minecraft:blue_wool run tag @e[x=-1611.5,y=45,z=-202.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=fan,tag=changed] remove changed
execute if block -1617 44 -226 minecraft:light_blue_wool run tag @e[x=-1617.5,y=45,z=-225.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=laser_trap,tag=!enabled] add enabled
execute if block -1617 44 -226 minecraft:blue_wool run tag @e[x=-1617.5,y=45,z=-225.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=laser_trap,tag=enabled] remove enabled
execute if block -1663 44 -187 minecraft:light_blue_wool run tag @e[x=-1656.5,y=45,z=-210.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=spring_wall,tag=!enabled] add enabled
execute if block -1663 44 -187 minecraft:blue_wool run tag @e[x=-1656.5,y=45,z=-210.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=spring_wall,tag=enabled] remove enabled
execute if block -1649 44 -227 minecraft:lime_wool if block -1632 44 -225 minecraft:lime_wool if block -1627 44 -232 minecraft:lime_wool if block -1643 44 -236 minecraft:lime_wool run tag @e[x=-1660.5,y=45,z=-242,dx=6,dy=1,dz=19,type=minecraft:area_effect_cloud,tag=laser_trap] add enabled
execute as @e[x=-1668,y=43,z=-247,dx=105,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=5}] run scoreboard players set @s Stage 5
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/snowfield_a/rubberobo
advancement grant @s[tag=clear_stage] only medabots_server:stages/wave_1/snowfield_a_rubberobo
tag @s[tag=clear_stage,advancements={medabots_server:wave_1/story_progression={rubberobo_enters_snowfield_a=true,rubberobo_leaves_snowfield_a=false}}] add dialog_infinity_rubberobo_leaves_snowfield_a
execute if entity @s[tag=clear_stage] positioned -1620 51 -216 run function medabots_server:stage/clear
