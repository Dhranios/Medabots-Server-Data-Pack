execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/laboratory_a/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,scores={Medabot=0..,Battle=1..2,Stage=9},tag=enemy_medabot] run bossbar set medabots_server:laboratory_a/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,scores={Medabot=0..,Battle=1..2,Stage=9},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:laboratory_a/time value
execute unless entity @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,scores={Medabot=0..,Battle=1..2,Stage=9},tag=enemy_medabot] store result bossbar medabots_server:laboratory_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,scores={Medabot=0..,Battle=1..2,Stage=9},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:laboratory_a/robattle value
execute if entity @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,scores={Medabot=0..,Battle=1..2,Stage=9},tag=enemy_medabot] store result bossbar medabots_server:laboratory_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,scores={Medabot=0..,Battle=1..2,Stage=9},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,scores={Medabot=0..,Battle=1..2,Stage=9},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if block -1775 43 -258 minecraft:green_wool if block -1770 43 -258 minecraft:green_wool if block -1770 43 -253 minecraft:green_wool if block -1775 43 -253 minecraft:green_wool run tag @e[x=-1762.5,y=44,z=-270.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1780 43 -270 minecraft:yellow_wool run tag @e[x=-1762.5,y=44,z=-270.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1754 44 -277 minecraft:iron_door[open=true] run tag @e[x=-1762.5,y=44,z=-270.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1754 44 -277 minecraft:iron_door[open=false] if block -1775 43 -258 minecraft:lime_wool if block -1780 43 -270 minecraft:orange_wool run tag @e[x=-1762.5,y=44,z=-270.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1754 44 -277 minecraft:iron_door[open=false] if block -1770 43 -258 minecraft:lime_wool if block -1780 43 -270 minecraft:orange_wool run tag @e[x=-1762.5,y=44,z=-270.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1754 44 -277 minecraft:iron_door[open=false] if block -1770 43 -253 minecraft:lime_wool if block -1780 43 -270 minecraft:orange_wool run tag @e[x=-1762.5,y=44,z=-270.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1754 44 -277 minecraft:iron_door[open=false] if block -1775 43 -253 minecraft:lime_wool if block -1780 43 -270 minecraft:orange_wool run tag @e[x=-1762.5,y=44,z=-270.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1754 43 -282 minecraft:blue_wool if block -1752 43 -289 minecraft:orange_wool if block -1752 43 -292 minecraft:orange_wool run tag @e[x=-1753.5,y=44,z=-284.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1754 43 -282 minecraft:blue_wool if block -1752 43 -292 minecraft:yellow_wool run tag @e[x=-1753.5,y=44,z=-284.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1754 43 -282 minecraft:light_blue_wool run tag @e[x=-1753.5,y=44,z=-284.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1752 43 -289 minecraft:yellow_wool if block -1752 43 -292 minecraft:orange_wool run tag @e[x=-1753.5,y=44,z=-284.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1752 43 -292 minecraft:yellow_wool run tag @e[x=-1745.5,y=44,z=-270.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1739 43 -321 minecraft:lime_wool run tag @e[x=-1745.5,y=44,z=-270.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1739 43 -321 minecraft:green_wool if block -1752 43 -292 minecraft:orange_wool run tag @e[x=-1745.5,y=44,z=-270.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1752 43 -292 minecraft:yellow_wool if block -1775 43 -258 minecraft:green_wool if block -1770 43 -258 minecraft:green_wool if block -1770 43 -253 minecraft:green_wool if block -1775 43 -253 minecraft:green_wool run tag @e[x=-1772.5,y=44,z=-277.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1738 43 -321 minecraft:lime_wool run tag @e[x=-1772.5,y=44,z=-277.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1738 43 -321 minecraft:green_wool if block -1775 43 -258 minecraft:lime_wool run tag @e[x=-1772.5,y=44,z=-277.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1738 43 -321 minecraft:green_wool if block -1770 43 -258 minecraft:lime_wool run tag @e[x=-1772.5,y=44,z=-277.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1738 43 -321 minecraft:green_wool if block -1770 43 -253 minecraft:lime_wool run tag @e[x=-1772.5,y=44,z=-277.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1738 43 -321 minecraft:green_wool if block -1775 43 -253 minecraft:lime_wool run tag @e[x=-1772.5,y=44,z=-277.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1738 43 -321 minecraft:green_wool if block -1752 43 -292 minecraft:orange_wool run tag @e[x=-1772.5,y=44,z=-277.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1760 43 -293 minecraft:lime_wool if block -1760 43 -296 minecraft:lime_wool if block -1763 43 -296 minecraft:lime_wool if block -1763 43 -293 minecraft:lime_wool run tag @e[x=-1787.5,y=44,z=-287.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1807 43 -319 minecraft:blue_wool run tag @e[x=-1792.5,y=44,z=-313.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1807 43 -319 minecraft:light_blue_wool run tag @e[x=-1792.5,y=44,z=-313.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1781 43 -319 minecraft:lime_wool run tag @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1740 43 -265 minecraft:light_blue_wool run tag @e[x=-1739.5,y=44,z=-265.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1740 43 -265 minecraft:blue_wool run tag @e[x=-1739.5,y=44,z=-265.5,distance=..0.7,tag=spring_wall] remove enabled
execute if block -1739 43 -279 minecraft:lime_wool run tag @e[x=-1738.5,y=44,z=-279.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1739 43 -279 minecraft:lime_wool run tag @e[x=-1739.5,y=44,z=-307.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1740 43 -309 minecraft:lime_wool run tag @e[x=-1738.5,y=44,z=-279.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1740 43 -309 minecraft:lime_wool run tag @e[x=-1739.5,y=44,z=-307.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1760 43 -283 minecraft:light_blue_wool run tag @e[x=-1759.5,y=44,z=-283.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1768 43 -284 minecraft:light_blue_wool run tag @e[x=-1759.5,y=44,z=-283.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1777 43 -284 minecraft:light_blue_wool run tag @e[x=-1759.5,y=44,z=-283.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1772 43 -290 minecraft:light_blue_wool run tag @e[x=-1759.5,y=44,z=-283.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1760 43 -283 minecraft:blue_wool if block -1768 43 -284 minecraft:blue_wool if block -1777 43 -284 minecraft:blue_wool if block -1772 43 -290 minecraft:blue_wool run tag @e[x=-1759.5,y=44,z=-283.5,distance=..0.7,tag=spring_wall] remove enabled
execute if block -1768 43 -285 minecraft:light_blue_wool run tag @e[x=-1759.5,y=44,z=-284.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1777 43 -285 minecraft:light_blue_wool run tag @e[x=-1759.5,y=44,z=-284.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1773 43 -290 minecraft:light_blue_wool run tag @e[x=-1759.5,y=44,z=-284.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1768 43 -285 minecraft:blue_wool if block -1777 43 -285 minecraft:blue_wool if block -1773 43 -290 minecraft:blue_wool run tag @e[x=-1759.5,y=44,z=-284.5,distance=..0.7,tag=spring_wall] remove enabled
execute if block -1781 43 -318 minecraft:lime_wool run tag @e[x=-1765.5,y=44,z=-317.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1761 44 -271 minecraft:iron_door[open=true] if block -1754 44 -277 minecraft:iron_door[open=false] if entity @s[x=-1761,y=44,z=-272,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_a/second_go_battle/0
execute if entity @e[x=-1752.5,y=44,z=-269.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=9,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[x=-1760.5,y=44,z=-270.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[x=-1753.5,y=44,z=-276.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[x=-1751.5,y=44,z=-261.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:laboratory_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1799 44 -272 minecraft:iron_door[open=true] if block -1810 44 -291 minecraft:iron_door[open=false] if entity @s[x=-1801,y=44,z=-272,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_a/second_go_battle/1
execute if entity @e[x=-1799.5,y=44,z=-261.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=9,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[x=-1798.5,y=44,z=-271.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[x=-1809.5,y=44,z=-290.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:laboratory_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1772 44 -313 minecraft:iron_door[open=true] if entity @s[x=-1773.5,y=44,z=-313,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_a/second_go_battle/2
execute if entity @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=9,Medabot=0..,Battle=1..2}]
execute as @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,type=!minecraft:player] unless entity @s[scores={Stage=9}] run scoreboard players set @s Stage 9
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/laboratory_a/second_go
stopsound @s[scores={BattlingMedabots=1}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1772 50 -285 14
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1}] only medabots_server:stages/wave_1/laboratory_a_second_go
teleport @s[scores={BattlingMedabots=1}] -1772 50 -285 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:laboratory_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots