execute if entity @s[scores={Death=1..}] run function medabots_server:stage/clean_up/snowfield_a/rubberobo
execute store result score #temp Time run bossbar get medabots_server:snowfield_a/time value
execute store result bossbar medabots_server:snowfield_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute if block -1594 44 -218 minecraft:yellow_wool run tag @e[x=-1597.5,y=45,z=-212.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1594 44 -218 minecraft:orange_wool run tag @e[x=-1597.5,y=45,z=-212.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1594 44 -218 minecraft:yellow_wool run tag @e[x=-1589.5,y=45,z=-206.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1594 44 -218 minecraft:orange_wool run tag @e[x=-1589.5,y=45,z=-20.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1649 44 -227 minecraft:lime_wool if block -1632 44 -225 minecraft:lime_wool if block -1627 44 -232 minecraft:lime_wool if block -1643 44 -236 minecraft:lime_wool run tag @e[x=-1651.5,y=45,z=-228.5,distance=..0.7,tag=door,tag=!open] add open
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
execute unless entity @e[tag=rubberobo,scores={Stage=5}] if entity @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] run function medabots_server:stage/clean_up/snowfield_a/rubberobo
execute unless entity @e[tag=rubberobo,scores={Stage=5}] run stopsound @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] music
execute unless entity @e[tag=rubberobo,scores={Stage=5}] run playsound medabots_server:music.stage.stage_end music @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] -1620 51 -216 14
execute unless entity @e[tag=rubberobo,scores={Stage=5}] run scoreboard players set @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] Battle 0
execute unless entity @e[tag=rubberobo,scores={Stage=5}] run scoreboard players set @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] MusicType 1
execute unless entity @e[tag=rubberobo,scores={Stage=5}] run scoreboard players set @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] Music 299
execute unless entity @e[tag=rubberobo,scores={Stage=5}] run advancement grant @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] only medabots_server:stages/wave_1/snowfield_a_rubberobo
execute unless entity @e[tag=rubberobo,scores={Stage=5}] run teleport @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] -1620 51 -216 -180 0