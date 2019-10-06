execute unless entity @e[scores={Stage=9},tag=hide_normal_time] run bossbar set medabots_server:laboratory_a/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=9},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:laboratory_a/time value
execute unless entity @e[scores={Stage=9},tag=hide_normal_time] store result bossbar medabots_server:laboratory_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=9},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:laboratory_a/robattle value
execute if entity @e[scores={Stage=9},tag=hide_normal_time] if entity @e[scores={Stage=9,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:laboratory_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=9},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=9},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/laboratory_a/first_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1775 43 -258 minecraft:green_wool if block -1770 43 -258 minecraft:green_wool if block -1770 43 -253 minecraft:green_wool if block -1775 43 -253 minecraft:green_wool run scoreboard players set @e[x=-1762.5,y=44,z=-270.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1780 43 -270 minecraft:yellow_wool run scoreboard players set @e[x=-1762.5,y=44,z=-270.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1754 44 -277 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1762.5,y=44,z=-270.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1754 44 -277 minecraft:iron_door[open=false] if block -1775 43 -258 minecraft:lime_wool if block -1780 43 -270 minecraft:orange_wool run scoreboard players set @e[x=-1762.5,y=44,z=-270.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1754 44 -277 minecraft:iron_door[open=false] if block -1770 43 -258 minecraft:lime_wool if block -1780 43 -270 minecraft:orange_wool run scoreboard players set @e[x=-1762.5,y=44,z=-270.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1754 44 -277 minecraft:iron_door[open=false] if block -1770 43 -253 minecraft:lime_wool if block -1780 43 -270 minecraft:orange_wool run scoreboard players set @e[x=-1762.5,y=44,z=-270.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1754 44 -277 minecraft:iron_door[open=false] if block -1775 43 -253 minecraft:lime_wool if block -1780 43 -270 minecraft:orange_wool run scoreboard players set @e[x=-1762.5,y=44,z=-270.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1754 43 -282 minecraft:blue_wool if block -1752 43 -289 minecraft:orange_wool if block -1752 43 -292 minecraft:orange_wool run scoreboard players set @e[x=-1753.5,y=44,z=-284.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1754 43 -282 minecraft:blue_wool if block -1752 43 -292 minecraft:yellow_wool run scoreboard players set @e[x=-1753.5,y=44,z=-284.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1754 43 -282 minecraft:light_blue_wool run scoreboard players set @e[x=-1753.5,y=44,z=-284.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1752 43 -289 minecraft:yellow_wool if block -1752 43 -292 minecraft:orange_wool run scoreboard players set @e[x=-1753.5,y=44,z=-284.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1752 43 -292 minecraft:yellow_wool run scoreboard players set @e[x=-1745.5,y=44,z=-270.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1739 43 -321 minecraft:lime_wool run scoreboard players set @e[x=-1745.5,y=44,z=-270.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1739 43 -321 minecraft:green_wool if block -1752 43 -292 minecraft:orange_wool run scoreboard players set @e[x=-1745.5,y=44,z=-270.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1752 43 -292 minecraft:yellow_wool if block -1775 43 -258 minecraft:green_wool if block -1770 43 -258 minecraft:green_wool if block -1770 43 -253 minecraft:green_wool if block -1775 43 -253 minecraft:green_wool run scoreboard players set @e[x=-1772.5,y=44,z=-277.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1738 43 -321 minecraft:lime_wool run scoreboard players set @e[x=-1772.5,y=44,z=-277.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1738 43 -321 minecraft:green_wool if block -1775 43 -258 minecraft:lime_wool run scoreboard players set @e[x=-1772.5,y=44,z=-277.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1738 43 -321 minecraft:green_wool if block -1770 43 -258 minecraft:lime_wool run scoreboard players set @e[x=-1772.5,y=44,z=-277.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1738 43 -321 minecraft:green_wool if block -1770 43 -253 minecraft:lime_wool run scoreboard players set @e[x=-1772.5,y=44,z=-277.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1738 43 -321 minecraft:green_wool if block -1775 43 -253 minecraft:lime_wool run scoreboard players set @e[x=-1772.5,y=44,z=-277.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1738 43 -321 minecraft:green_wool if block -1752 43 -292 minecraft:orange_wool run scoreboard players set @e[x=-1772.5,y=44,z=-277.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1760 43 -293 minecraft:lime_wool if block -1760 43 -296 minecraft:lime_wool if block -1763 43 -296 minecraft:lime_wool if block -1763 43 -293 minecraft:lime_wool run scoreboard players set @e[x=-1787.5,y=44,z=-287.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1807 43 -319 minecraft:blue_wool run scoreboard players set @e[x=-1792.5,y=44,z=-313.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1807 43 -319 minecraft:light_blue_wool run scoreboard players set @e[x=-1792.5,y=44,z=-313.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1781 43 -319 minecraft:lime_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1810 43 -310 minecraft:blue_wool if block -1810 43 -313 minecraft:blue_wool if block -1810 43 -316 minecraft:blue_wool if block -1807 43 -310 minecraft:blue_wool if block -1807 43 -319 minecraft:blue_wool if block -1804 43 -310 minecraft:blue_wool if block -1804 43 -319 minecraft:blue_wool if block -1801 43 -310 minecraft:blue_wool if block -1801 43 -319 minecraft:blue_wool if block -1798 43 -310 minecraft:blue_wool if block -1798 43 -319 minecraft:blue_wool if block -1795 43 -313 minecraft:blue_wool if block -1795 43 -316 minecraft:blue_wool if block -1795 43 -319 minecraft:blue_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1781 43 -319 minecraft:green_wool if block -1810 43 -310 minecraft:light_blue_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1781 43 -319 minecraft:green_wool if block -1810 43 -313 minecraft:light_blue_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1781 43 -319 minecraft:green_wool if block -1810 43 -316 minecraft:light_blue_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1781 43 -319 minecraft:green_wool if block -1807 43 -310 minecraft:light_blue_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1781 43 -319 minecraft:green_wool if block -1807 43 -319 minecraft:light_blue_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1781 43 -319 minecraft:green_wool if block -1804 43 -310 minecraft:light_blue_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1781 43 -319 minecraft:green_wool if block -1804 43 -319 minecraft:light_blue_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1781 43 -319 minecraft:green_wool if block -1801 43 -310 minecraft:light_blue_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1781 43 -319 minecraft:green_wool if block -1801 43 -319 minecraft:light_blue_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1781 43 -319 minecraft:green_wool if block -1798 43 -310 minecraft:light_blue_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1781 43 -319 minecraft:green_wool if block -1798 43 -319 minecraft:light_blue_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1781 43 -319 minecraft:green_wool if block -1795 43 -313 minecraft:light_blue_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1781 43 -319 minecraft:green_wool if block -1795 43 -316 minecraft:light_blue_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1781 43 -319 minecraft:green_wool if block -1795 43 -319 minecraft:light_blue_wool run scoreboard players set @e[x=-1771.5,y=44,z=-314.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1740 43 -265 minecraft:light_blue_wool run scoreboard players set @e[x=-1739.5,y=44,z=-265.5,distance=..0.7,tag=spring_wall,scores={PowerAmount=0}] PowerAmount 1
execute if block -1740 43 -265 minecraft:blue_wool run scoreboard players set @e[x=-1739.5,y=44,z=-265.5,distance=..0.7,tag=spring_wall,scores={PowerAmount=1}] PowerAmount 0
execute if block -1739 43 -279 minecraft:lime_wool run scoreboard players set @e[x=-1738.5,y=44,z=-279.5,distance=..0.7,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1739 43 -279 minecraft:lime_wool run scoreboard players set @e[x=-1739.5,y=44,z=-307.5,distance=..0.7,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1740 43 -309 minecraft:lime_wool run scoreboard players set @e[x=-1738.5,y=44,z=-279.5,distance=..0.7,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1740 43 -309 minecraft:lime_wool run scoreboard players set @e[x=-1739.5,y=44,z=-307.5,distance=..0.7,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1760 43 -283 minecraft:light_blue_wool run scoreboard players set @e[x=-1759.5,y=44,z=-283.5,distance=..0.7,tag=spring_wall,scores={PowerAmount=0}] PowerAmount 1
execute if block -1768 43 -284 minecraft:light_blue_wool run scoreboard players set @e[x=-1759.5,y=44,z=-283.5,distance=..0.7,tag=spring_wall,scores={PowerAmount=0}] PowerAmount 1
execute if block -1777 43 -284 minecraft:light_blue_wool run scoreboard players set @e[x=-1759.5,y=44,z=-283.5,distance=..0.7,tag=spring_wall,scores={PowerAmount=0}] PowerAmount 1
execute if block -1772 43 -290 minecraft:light_blue_wool run scoreboard players set @e[x=-1759.5,y=44,z=-283.5,distance=..0.7,tag=spring_wall,scores={PowerAmount=0}] PowerAmount 1
execute if block -1760 43 -283 minecraft:blue_wool if block -1768 43 -284 minecraft:blue_wool if block -1777 43 -284 minecraft:blue_wool if block -1772 43 -290 minecraft:blue_wool run scoreboard players set @e[x=-1759.5,y=44,z=-283.5,distance=..0.7,tag=spring_wall,scores={PowerAmount=1}] PowerAmount 0
execute if block -1768 43 -285 minecraft:light_blue_wool run scoreboard players set @e[x=-1759.5,y=44,z=-284.5,distance=..0.7,tag=spring_wall,scores={PowerAmount=0}] PowerAmount 1
execute if block -1777 43 -285 minecraft:light_blue_wool run scoreboard players set @e[x=-1759.5,y=44,z=-284.5,distance=..0.7,tag=spring_wall,scores={PowerAmount=0}] PowerAmount 1
execute if block -1773 43 -290 minecraft:light_blue_wool run scoreboard players set @e[x=-1759.5,y=44,z=-284.5,distance=..0.7,tag=spring_wall,scores={PowerAmount=0}] PowerAmount 1
execute if block -1768 43 -285 minecraft:blue_wool if block -1777 43 -285 minecraft:blue_wool if block -1773 43 -290 minecraft:blue_wool run scoreboard players set @e[x=-1759.5,y=44,z=-284.5,distance=..0.7,tag=spring_wall,scores={PowerAmount=1}] PowerAmount 0
execute if block -1781 43 -318 minecraft:lime_wool run scoreboard players set @e[x=-1765.5,y=44,z=-317.5,distance=..0.7,tag=spring_wall,scores={PowerAmount=0}] PowerAmount 1
execute if block -1761 44 -271 minecraft:iron_door[open=true] if block -1754 44 -277 minecraft:iron_door[open=false] if entity @s[x=-1761,y=44,z=-272,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_a/first_go_battle/0
execute if entity @e[x=-1752.5,y=44,z=-269.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=9,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1760.5,y=44,z=-270.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1753.5,y=44,z=-276.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1751.5,y=44,z=-261.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:laboratory_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1799 44 -272 minecraft:iron_door[open=true] if block -1810 44 -291 minecraft:iron_door[open=false] if entity @s[x=-1801,y=44,z=-272,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_a/first_go_battle/1
execute if entity @e[x=-1799.5,y=44,z=-261.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=9,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1798.5,y=44,z=-271.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1809.5,y=44,z=-290.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:laboratory_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1772 44 -313 minecraft:iron_door[open=true] if entity @s[x=-1773.5,y=44,z=-313,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_a/first_go_battle/2
execute if entity @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,tag=mr_referee,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=9,Medabot=0..,Battle=1..2}]
execute as @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,type=!minecraft:player] unless entity @s[scores={Stage=9}] run scoreboard players set @s Stage 9
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/laboratory_a/first_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/laboratory_a_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:laboratory_a/robattle players
tag @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:story_progression/infinity={jaxy_speaks=true,rubberobo_breakout=false}}] add dialog_infinity_rubberobo_breakout
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1772 50 -285 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots