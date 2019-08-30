execute unless entity @e[scores={Stage=6},tag=hide_normal_time] run bossbar set medabots_server:iceberg_a/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=6},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_a/time value
execute unless entity @e[scores={Stage=6},tag=hide_normal_time] store result bossbar medabots_server:iceberg_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=6},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_a/robattle value
execute if entity @e[scores={Stage=6},tag=hide_normal_time] if entity @e[scores={Stage=6,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:iceberg_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=6},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/iceberg_a/rubberobo
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=0..40}] run tag @e[x=-1715.5,y=44,z=-238.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1715 43 -239 minecraft:light_blue_wool run tag @e[x=-1715.5,y=44,z=-238.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1715 43 -239 minecraft:blue_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=0..40}] run tag @e[x=-1715.5,y=44,z=-238.5,distance=..0.7,tag=door,tag=open] remove open
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=10..50}] run tag @e[x=-1736.5,y=44,z=-221.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1738 43 -221 minecraft:light_blue_wool run tag @e[x=-1736.5,y=44,z=-221.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1738 43 -221 minecraft:blue_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=10..50}] run tag @e[x=-1736.5,y=44,z=-221.5,distance=..0.7,tag=door,tag=open] remove open
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=20..60}] run tag @e[x=-1740.5,y=44,z=-205.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1740 43 -207 minecraft:light_blue_wool run tag @e[x=-1740.5,y=44,z=-205.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1740 43 -207 minecraft:blue_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=20..60}] run tag @e[x=-1740.5,y=44,z=-205.5,distance=..0.7,tag=door,tag=open] remove open
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=30..70}] run tag @e[x=-1751.5,y=44,z=-212.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1751 43 -212 minecraft:light_blue_wool run tag @e[x=-1751.5,y=44,z=-212.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1751 43 -212 minecraft:blue_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=30..70}] run tag @e[x=-1751.5,y=44,z=-212.5,distance=..0.7,tag=door,tag=open] remove open
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=40..80}] run tag @e[x=-1740.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1740 43 -192 minecraft:lime_wool run tag @e[x=-1740.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1744 43 -192 minecraft:yellow_wool run tag @e[x=-1740.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1740 43 -192 minecraft:green_wool if block -1744 43 -192 minecraft:orange_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=40..80}] run tag @e[x=-1740.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=open] remove open
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=50..90}] run tag @e[x=-1738.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1738 43 -192 minecraft:lime_wool run tag @e[x=-1738.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1725 43 -207 minecraft:yellow_wool run tag @e[x=-1738.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1738 43 -192 minecraft:green_wool if block -1725 43 -207 minecraft:orange_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=50..90}] run tag @e[x=-1738.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=open] remove open
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=60..100}] run tag @e[x=-1736.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1736 43 -192 minecraft:lime_wool run tag @e[x=-1736.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1728 43 -222 minecraft:yellow_wool run tag @e[x=-1736.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1736 43 -192 minecraft:green_wool if block -1728 43 -222 minecraft:orange_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=60..100}] run tag @e[x=-1736.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=open] remove open
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=70..110}] run tag @e[x=-1734.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1750 43 -221 minecraft:yellow_wool run tag @e[x=-1734.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1750 43 -221 minecraft:orange_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=70..110}] run tag @e[x=-1734.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=open] remove open
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=80..120}] run tag @e[x=-1711.5,y=44,z=-208.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1707 43 -191 minecraft:lime_wool run tag @e[x=-1711.5,y=44,z=-208.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1707 43 -191 minecraft:green_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=80..120}] run tag @e[x=-1711.5,y=44,z=-208.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1682 43 -232 minecraft:yellow_wool run tag @e[x=-1687,y=43,z=-241,dx=10,dy=2,dz=15,tag=laser_trap] add enabled
execute if block -1682 43 -232 minecraft:orange_wool run tag @e[x=-1687,y=43,z=-241,dx=10,dy=2,dz=15,tag=laser_trap] remove enabled
execute if block -1740 43 -237 minecraft:light_blue_wool run tag @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1742 43 -239 minecraft:light_blue_wool run tag @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1746 43 -236 minecraft:light_blue_wool run tag @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1746 43 -240 minecraft:light_blue_wool run tag @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1759 43 -234 minecraft:light_blue_wool run tag @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1757 43 -230 minecraft:light_blue_wool run tag @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1740 43 -237 minecraft:blue_wool if block -1742 43 -239 minecraft:blue_wool if block -1746 43 -236 minecraft:blue_wool if block -1746 43 -240 minecraft:blue_wool if block -1759 43 -234 minecraft:blue_wool if block -1757 43 -230 minecraft:blue_wool run tag @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] remove enabled
execute if block -1744 43 -238 minecraft:light_blue_wool run tag @e[x=-1757.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1752 43 -238 minecraft:light_blue_wool run tag @e[x=-1757.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1759 43 -226 minecraft:light_blue_wool run tag @e[x=-1757.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1752 43 -238 minecraft:blue_wool if block -1744 43 -238 minecraft:blue_wool if block -1759 43 -226 minecraft:blue_wool run tag @e[x=-1757.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] remove enabled
execute if block -1690 43 -190 minecraft:light_blue_wool run tag @e[x=-1700.5,y=44,z=-188.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1689 43 -189 minecraft:light_blue_wool run tag @e[x=-1700.5,y=44,z=-188.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1688 43 -190 minecraft:light_blue_wool run tag @e[x=-1700.5,y=44,z=-188.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1690 43 -190 minecraft:blue_wool if block -1689 43 -189 minecraft:blue_wool if block -1688 43 -190 minecraft:blue_wool run tag @e[x=-1700.5,y=44,z=-188.5,distance=..0.7,tag=laser_trap] remove enabled
execute if block -1690 43 -189 minecraft:light_blue_wool run tag @e[x=-1700.5,y=44,z=-189.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1689 43 -190 minecraft:light_blue_wool run tag @e[x=-1700.5,y=44,z=-189.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1688 43 -189 minecraft:light_blue_wool run tag @e[x=-1700.5,y=44,z=-189.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1690 43 -189 minecraft:blue_wool if block -1689 43 -190 minecraft:blue_wool if block -1688 43 -189 minecraft:blue_wool run tag @e[x=-1700.5,y=44,z=-189.5,distance=..0.7,tag=laser_trap] remove enabled
execute if block -1711 43 -220 minecraft:blue_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer] run summon minecraft:area_effect_cloud -1711 44 -220 {CustomName:'{"translate":"medabots_server:block.floor_switch"}',Tags:["blue_floor_switch_timer"],Duration:220}
scoreboard players add @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer] FloorSwitchTime 1
execute if block -1737 44 -222 minecraft:iron_door[open=true] run tag @e[x=-1733.5,y=44,z=-220.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1737 44 -222 minecraft:iron_door[open=false] run tag @e[x=-1733.5,y=44,z=-220.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1737 44 -222 minecraft:iron_door[open=true] run tag @e[x=-1731.5,y=44,z=-224.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1737 44 -222 minecraft:iron_door[open=false] run tag @e[x=-1731.5,y=44,z=-224.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1737 44 -222 minecraft:iron_door[open=true] run tag @e[x=-1722.5,y=44,z=-218.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1737 44 -222 minecraft:iron_door[open=false] run tag @e[x=-1722.5,y=44,z=-218.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1737 44 -222 minecraft:iron_door[open=true] run tag @e[x=-1720.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1737 44 -222 minecraft:iron_door[open=false] run tag @e[x=-1720.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1737 44 -222 minecraft:iron_door[open=true] run tag @e[x=-1733.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1737 44 -222 minecraft:iron_door[open=false] run tag @e[x=-1733.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1741 44 -206 minecraft:iron_door[open=true] run tag @e[x=-1746.5,y=44,z=-203.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1741 44 -206 minecraft:iron_door[open=false] run tag @e[x=-1746.5,y=44,z=-203.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1741 44 -206 minecraft:iron_door[open=true] run tag @e[x=-1753.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1741 44 -206 minecraft:iron_door[open=false] run tag @e[x=-1753.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1741 44 -206 minecraft:iron_door[open=true] run tag @e[x=-1756.5,y=44,z=-198.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1741 44 -206 minecraft:iron_door[open=false] run tag @e[x=-1756.5,y=44,z=-198.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1741 44 -206 minecraft:iron_door[open=true] run tag @e[x=-1750.5,y=44,z=-192.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1741 44 -206 minecraft:iron_door[open=false] run tag @e[x=-1750.5,y=44,z=-192.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1710 44 -209 minecraft:iron_door[open=true] if block -1683 44 -200 minecraft:air if entity @s[x=-1709,y=44,z=-210,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_a/rubberobo_battle/0
execute if entity @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,tag=mission] store result score @s BattlingMedabots if entity @e[scores={Stage=6,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1790.5,y=44,z=-208.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:iceberg_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=6}] run scoreboard players set @s Stage 6
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/iceberg_a/rubberobo
advancement grant @s[tag=clear_stage] only medabots_server:stages/wave_1/iceberg_a_rubberobo
tag @s[tag=clear_stage,advancements={medabots_server:story_progression/infinity={rubberobo_enters_iceberg_a=true,rubberobo_leaves_iceberg_a=false}}] add dialog_infinity_rubberobo_leaves_iceberg_a
execute if entity @s[tag=clear_stage] positioned -1704 50 -221 run function medabots_server:stage/clear