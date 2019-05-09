execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/ruins_in_a/rubberobo
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,scores={Medabot=0..,Battle=1..2,Stage=8},tag=enemy_medabot] run bossbar set medabots_server:ruins_in_a/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,scores={Medabot=0..,Battle=1..2,Stage=8},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:ruins_in_a/time value
execute unless entity @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,scores={Medabot=0..,Battle=1..2,Stage=8},tag=enemy_medabot] store result bossbar medabots_server:ruins_in_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,scores={Medabot=0..,Battle=1..2,Stage=8},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:ruins_in_a/robattle value
execute if entity @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,scores={Medabot=0..,Battle=1..2,Stage=8},tag=enemy_medabot] store result bossbar medabots_server:ruins_in_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,scores={Medabot=0..,Battle=1..2,Stage=8},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,tag=mission] at @s run function medabots_server:stage/mission_time_up
scoreboard players reset #temp Time
execute if block -1687 43 -272 minecraft:yellow_wool run tag @e[x=-1659.5,y=44,z=-254.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1687 43 -272 minecraft:yellow_wool run tag @e[x=-1659.5,y=44,z=-254.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1687 43 -272 minecraft:orange_wool if block -1678 43 -272 minecraft:orange_wool run tag @e[x=-1659.5,y=44,z=-254.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1650 43 -290 minecraft:lime_wool run tag @e[x=-1649.5,y=44,z=-286.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1655 43 -296 minecraft:lime_wool run tag @e[x=-1648.5,y=44,z=-320.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1650 43 -269 minecraft:lime_wool run tag @e[x=-1650.5,y=44,z=-271.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1702 43 -264 minecraft:yellow_wool run tag @e[x=-1706.5,y=44,z=-253.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1711 43 -254 minecraft:yellow_wool run tag @e[x=-1706.5,y=44,z=-253.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1711 43 -254 minecraft:orange_wool if block -1702 43 -264 minecraft:orange_wool run tag @e[x=-1706.5,y=44,z=-253.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1702 43 -260 minecraft:yellow_wool run tag @e[x=-1715.5,y=44,z=-253.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1726 43 -255 minecraft:yellow_wool run tag @e[x=-1715.5,y=44,z=-253.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1726 43 -255 minecraft:orange_wool if block -1702 43 -260 minecraft:orange_wool run tag @e[x=-1715.5,y=44,z=-253.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1702 43 -256 minecraft:yellow_wool run tag @e[x=-1725.5,y=44,z=-266.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1702 43 -256 minecraft:orange_wool run tag @e[x=-1725.5,y=44,z=-266.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1715 43 -260 minecraft:yellow_wool run tag @e[x=-1712.5,y=44,z=-262.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1715 43 -260 minecraft:orange_wool run tag @e[x=-1712.5,y=44,z=-262.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1712 43 -286 minecraft:yellow_wool run tag @e[x=-1711.5,y=44,z=-272.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1700 43 -273 minecraft:lime_wool if block -1712 43 -286 minecraft:orange_wool run tag @e[x=-1711.5,y=44,z=-272.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1723 43 -289 minecraft:yellow_wool run tag @e[x=-1723.5,y=44,z=-272.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1700 43 -273 minecraft:lime_wool if block -1723 43 -289 minecraft:orange_wool run tag @e[x=-1723.5,y=44,z=-272.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1712 43 -289 minecraft:yellow_wool run tag @e[x=-1711.5,y=44,z=-286.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1712 43 -289 minecraft:orange_wool run tag @e[x=-1711.5,y=44,z=-286.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1723 43 -289 minecraft:yellow_wool run tag @e[x=-1723.5,y=44,z=-286.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1723 43 -286 minecraft:yellow_wool run tag @e[x=-1722.5,y=44,z=-286.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1723 43 -289 minecraft:orange_wool if block -1723 43 -286 minecraft:orange_wool run tag @e[x=-1723.5,y=44,z=-286.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1716 43 -297 minecraft:yellow_wool run tag @e[x=-1716.5,y=44,z=-298.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1716 43 -297 minecraft:orange_wool run tag @e[x=-1716.5,y=44,z=-298.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1727 43 -303 minecraft:lime_wool run tag @e[x=-1716.5,y=44,z=-316.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1650 43 -269 minecraft:lime_wool run tag @e[x=-1657,y=44,z=-284,dx=15,dy=3,dz=11,type=minecraft:area_effect_cloud,tag=press_wall] add enabled
execute if block -1651 43 -286 minecraft:yellow_wool run tag @e[x=-1657,y=44,z=-284,dx=15,dy=3,dz=11,type=minecraft:area_effect_cloud,tag=press_wall] add enabled
execute if block -1651 43 -286 minecraft:orange_wool if block -1650 43 -269 minecraft:green_wool run tag @e[x=-1657,y=44,z=-284,dx=15,dy=3,dz=11,type=minecraft:area_effect_cloud,tag=press_wall] remove enabled
execute if block -1694 45 -259 minecraft:iron_door[open=true] run tag @e[x=-1646.5,y=44,z=-289.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1712 43 -286 minecraft:yellow_wool run tag @e[x=-1707.5,y=44,z=-279.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1712 43 -286 minecraft:orange_wool run tag @e[x=-1707.5,y=44,z=-279.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1712 43 -286 minecraft:yellow_wool run tag @e[x=-1709.5,y=44,z=-276.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1712 43 -286 minecraft:orange_wool run tag @e[x=-1709.5,y=44,z=-276.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1712 43 -286 minecraft:yellow_wool run tag @e[x=-1712.5,y=44,z=-276.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1712 43 -286 minecraft:orange_wool run tag @e[x=-1712.5,y=44,z=-276.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1712 43 -286 minecraft:yellow_wool run tag @e[x=-1714.5,y=44,z=-279.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1712 43 -286 minecraft:orange_wool run tag @e[x=-1714.5,y=44,z=-279.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1723 43 -289 minecraft:yellow_wool run tag @e[x=-1721.5,y=44,z=-276.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1723 43 -289 minecraft:orange_wool run tag @e[x=-1721.5,y=44,z=-276.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1723 43 -289 minecraft:yellow_wool run tag @e[x=-1724.5,y=44,z=-276.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1723 43 -289 minecraft:orange_wool run tag @e[x=-1724.5,y=44,z=-276.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1723 43 -289 minecraft:yellow_wool run tag @e[x=-1726.5,y=44,z=-279.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1723 43 -289 minecraft:orange_wool run tag @e[x=-1726.5,y=44,z=-279.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1723 43 -289 minecraft:yellow_wool run tag @e[x=-1719.5,y=44,z=-279.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1723 43 -289 minecraft:orange_wool run tag @e[x=-1719.5,y=44,z=-279.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1727 43 -300 minecraft:lime_wool run tag @e[x=-1727.5,y=44,z=-302.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1727 43 -300 minecraft:lime_wool run tag @e[x=-1725.5,y=44,z=-302.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1727 43 -300 minecraft:lime_wool run tag @e[x=-1726.5,y=44,z=-315.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1651 45 -326 minecraft:iron_door[open=true] if block -1683 45 -275 minecraft:iron_door[open=false] if entity @s[x=-1652,y=44,z=-329,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_a/rubberobo_battle/0
execute if entity @e[x=-1649.5,y=44,z=-336.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=8,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[x=-1650.5,y=44,z=-325.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[x=-1693.5,y=44,z=-258.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:ruins_in_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=8}] run scoreboard players set @s Stage 8
execute unless entity @e[tag=rubberobo,scores={Stage=8},type=!minecraft:player] if entity @s[x=-1716.5,y=43,z=-324.5,distance=..0.7,tag=hostile,gamemode=adventure] run function medabots_server:stage/clean_up/ruins_in_a/rubberobo
execute unless entity @e[tag=rubberobo,scores={Stage=8},type=!minecraft:player] run stopsound @s[x=-1716.5,y=43,z=-324.5,distance=..0.7,tag=hostile,gamemode=adventure] music
execute unless entity @e[tag=rubberobo,scores={Stage=8},type=!minecraft:player] run playsound medabots_server:music.stage.stage_end music @s[x=-1716.5,y=43,z=-324.5,distance=..0.7,tag=hostile,gamemode=adventure] -1683 50 -259 14
execute unless entity @e[tag=rubberobo,scores={Stage=8},type=!minecraft:player] run scoreboard players set @s[x=-1716.5,y=43,z=-324.5,distance=..0.7,tag=hostile,gamemode=adventure] Battle 0
execute unless entity @e[tag=rubberobo,scores={Stage=8},type=!minecraft:player] run scoreboard players set @s[x=-1716.5,y=43,z=-324.5,distance=..0.7,tag=hostile,gamemode=adventure] MusicType 1
execute unless entity @e[tag=rubberobo,scores={Stage=8},type=!minecraft:player] run scoreboard players set @s[x=-1716.5,y=43,z=-324.5,distance=..0.7,tag=hostile,gamemode=adventure] Music 299
execute unless entity @e[tag=rubberobo,scores={Stage=8},type=!minecraft:player] run advancement grant @s[x=-1716.5,y=43,z=-324.5,distance=..0.7,tag=hostile,gamemode=adventure] only medabots_server:stages/wave_1/ruins_in_a_rubberobo
execute unless entity @e[tag=rubberobo,scores={Stage=8},type=!minecraft:player] run teleport @s[x=-1716.5,y=43,z=-324.5,distance=..0.7,tag=hostile,gamemode=adventure] -1683 50 -259 -180 0