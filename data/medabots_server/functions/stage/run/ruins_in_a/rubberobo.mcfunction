execute unless entity @e[scores={Stage=8},tag=hide_normal_time] run bossbar set medabots_server:ruins_in_a/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=8},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_in_a/time value
execute unless entity @e[scores={Stage=8},tag=hide_normal_time] store result bossbar medabots_server:ruins_in_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=8},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_in_a/robattle value
execute if entity @e[scores={Stage=8},tag=hide_normal_time] if entity @e[scores={Stage=8,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:ruins_in_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=8},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/ruins_in_a
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1687 43 -272 minecraft:yellow_wool run scoreboard players set @e[x=-1659.5,y=44,z=-254.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1687 43 -272 minecraft:yellow_wool run scoreboard players set @e[x=-1659.5,y=44,z=-254.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1687 43 -272 minecraft:orange_wool if block -1678 43 -272 minecraft:orange_wool run scoreboard players set @e[x=-1659.5,y=44,z=-254.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1650 43 -290 minecraft:lime_wool run scoreboard players set @e[x=-1649.5,y=44,z=-286.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1655 43 -296 minecraft:lime_wool run scoreboard players set @e[x=-1648.5,y=44,z=-320.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1650 43 -269 minecraft:lime_wool run scoreboard players set @e[x=-1650.5,y=44,z=-271.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1702 43 -264 minecraft:yellow_wool run scoreboard players set @e[x=-1706.5,y=44,z=-253.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1711 43 -254 minecraft:yellow_wool run scoreboard players set @e[x=-1706.5,y=44,z=-253.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1711 43 -254 minecraft:orange_wool if block -1702 43 -264 minecraft:orange_wool run scoreboard players set @e[x=-1706.5,y=44,z=-253.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1702 43 -260 minecraft:yellow_wool run scoreboard players set @e[x=-1715.5,y=44,z=-253.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1726 43 -255 minecraft:yellow_wool run scoreboard players set @e[x=-1715.5,y=44,z=-253.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1726 43 -255 minecraft:orange_wool if block -1702 43 -260 minecraft:orange_wool run scoreboard players set @e[x=-1715.5,y=44,z=-253.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1702 43 -256 minecraft:yellow_wool run scoreboard players set @e[x=-1725.5,y=44,z=-266.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1702 43 -256 minecraft:orange_wool run scoreboard players set @e[x=-1725.5,y=44,z=-266.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1715 43 -260 minecraft:yellow_wool run scoreboard players set @e[x=-1712.5,y=44,z=-262.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1715 43 -260 minecraft:orange_wool run scoreboard players set @e[x=-1712.5,y=44,z=-262.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1712 43 -286 minecraft:yellow_wool run scoreboard players set @e[x=-1711.5,y=44,z=-272.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1700 43 -273 minecraft:lime_wool if block -1712 43 -286 minecraft:orange_wool run scoreboard players set @e[x=-1711.5,y=44,z=-272.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1723 43 -289 minecraft:yellow_wool run scoreboard players set @e[x=-1723.5,y=44,z=-272.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1700 43 -273 minecraft:lime_wool if block -1723 43 -289 minecraft:orange_wool run scoreboard players set @e[x=-1723.5,y=44,z=-272.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1712 43 -289 minecraft:yellow_wool run scoreboard players set @e[x=-1711.5,y=44,z=-286.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1712 43 -289 minecraft:orange_wool run scoreboard players set @e[x=-1711.5,y=44,z=-286.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1723 43 -289 minecraft:yellow_wool run scoreboard players set @e[x=-1723.5,y=44,z=-286.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1723 43 -286 minecraft:yellow_wool run scoreboard players set @e[x=-1723.5,y=44,z=-286.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1723 43 -289 minecraft:orange_wool if block -1723 43 -286 minecraft:orange_wool run scoreboard players set @e[x=-1723.5,y=44,z=-286.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1716 43 -297 minecraft:yellow_wool run scoreboard players set @e[x=-1716.5,y=44,z=-298.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1716 43 -297 minecraft:orange_wool run scoreboard players set @e[x=-1716.5,y=44,z=-298.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1727 43 -303 minecraft:lime_wool run scoreboard players set @e[x=-1716.5,y=44,z=-316.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1650 43 -269 minecraft:lime_wool run tag @e[x=-1657,y=44,z=-284,dx=15,dy=3,dz=11,tag=press_wall,type=minecraft:area_effect_cloud] add enabled
execute if block -1651 43 -286 minecraft:yellow_wool run tag @e[x=-1657,y=44,z=-284,dx=15,dy=3,dz=11,tag=press_wall,type=minecraft:area_effect_cloud] add enabled
execute if block -1651 43 -286 minecraft:orange_wool if block -1650 43 -269 minecraft:green_wool run tag @e[x=-1657,y=44,z=-284,dx=15,dy=3,dz=11,tag=press_wall,type=minecraft:area_effect_cloud] remove enabled
execute if block -1694 44 -259 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1646.5,y=44,z=-289.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1712 43 -286 minecraft:yellow_wool run scoreboard players set @e[x=-1708.5,y=44,z=-279.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1712 43 -286 minecraft:orange_wool run scoreboard players set @e[x=-1708.5,y=44,z=-279.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1712 43 -286 minecraft:yellow_wool run scoreboard players set @e[x=-1709.5,y=44,z=-276.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1712 43 -286 minecraft:orange_wool run scoreboard players set @e[x=-1709.5,y=44,z=-276.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1712 43 -286 minecraft:yellow_wool run scoreboard players set @e[x=-1712.5,y=44,z=-276.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1712 43 -286 minecraft:orange_wool run scoreboard players set @e[x=-1712.5,y=44,z=-276.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1712 43 -286 minecraft:yellow_wool run scoreboard players set @e[x=-1714.5,y=44,z=-279.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1712 43 -286 minecraft:orange_wool run scoreboard players set @e[x=-1714.5,y=44,z=-279.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1723 43 -289 minecraft:yellow_wool run scoreboard players set @e[x=-1721.5,y=44,z=-276.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1723 43 -289 minecraft:orange_wool run scoreboard players set @e[x=-1721.5,y=44,z=-276.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1723 43 -289 minecraft:yellow_wool run scoreboard players set @e[x=-1724.5,y=44,z=-276.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1723 43 -289 minecraft:orange_wool run scoreboard players set @e[x=-1724.5,y=44,z=-276.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1723 43 -289 minecraft:yellow_wool run scoreboard players set @e[x=-1726.5,y=44,z=-279.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1723 43 -289 minecraft:orange_wool run scoreboard players set @e[x=-1726.5,y=44,z=-279.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1723 43 -289 minecraft:yellow_wool run scoreboard players set @e[x=-1719.5,y=44,z=-279.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1723 43 -289 minecraft:orange_wool run scoreboard players set @e[x=-1719.5,y=44,z=-279.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1727 43 -300 minecraft:lime_wool run scoreboard players set @e[x=-1727.5,y=44,z=-302.5,distance=..0.7,tag=spring_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1727 43 -300 minecraft:lime_wool run scoreboard players set @e[x=-1725.5,y=44,z=-302.5,distance=..0.7,tag=spring_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1727 43 -300 minecraft:lime_wool run scoreboard players set @e[x=-1726.5,y=44,z=-315.5,distance=..0.7,tag=spring_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1651 44 -326 minecraft:iron_door[open=true] if block -1694 44 -259 minecraft:iron_door[open=false] if entity @s[x=-1652,y=44,z=-329,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_a/rubberobo_battle/0
execute if entity @e[x=-1649.5,y=44,z=-336.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=8,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1650.5,y=44,z=-325.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1693.5,y=44,z=-258.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:ruins_in_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=8}] run scoreboard players set @s Stage 8
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/ruins_in_a
advancement grant @s[tag=clear_stage] only medabots_server:stages/wave_1/ruins_in_a_rubberobo
tag @s[tag=clear_stage,advancements={medabots_server:story_progression/infinity={rubberobo_enters_ruins_in_a=true,rubberobo_leaves_ruins_in_a=false}}] add dialog_infinity_rubberobo_leaves_ruins_in_a
execute if entity @s[tag=clear_stage] positioned -1683 50 -259 run function medabots_server:stage/clear