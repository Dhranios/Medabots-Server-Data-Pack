execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/iceberg_a/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=6},tag=enemy_medabot] run bossbar set medabots_server:iceberg_a/time players @s[scores={Death=0,Battle=1..}]
execute unless entity @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=6},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:iceberg_a/time value
execute unless entity @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=6},tag=enemy_medabot] store result bossbar medabots_server:iceberg_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=6},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:iceberg_a/robattle value
execute if entity @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=6},tag=enemy_medabot] store result bossbar medabots_server:iceberg_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=6},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=6},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
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
execute if block -1727 43 -222 minecraft:yellow_wool run tag @e[x=-1736.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1736 43 -192 minecraft:green_wool if block -1727 43 -222 minecraft:orange_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=60..100}] run tag @e[x=-1736.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=open] remove open
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=70..110}] run tag @e[x=-1734.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1750 43 -221 minecraft:yellow_wool run tag @e[x=-1734.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1750 43 -221 minecraft:orange_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=70..110}] run tag @e[x=-1734.5,y=44,z=-192.5,distance=..0.7,tag=door,tag=open] remove open
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=80..120}] run tag @e[x=-1711.5,y=44,z=-208.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1707 43 -191 minecraft:lime_wool run tag @e[x=-1711.5,y=44,z=-208.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1707 43 -191 minecraft:green_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=80..120}] run tag @e[x=-1711.5,y=44,z=-208.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1681 43 -232 minecraft:yellow_wool run tag @e[x=-1687,y=43,z=-241,dx=10,dy=2,dz=15,tag=laser_trap] add enabled
execute if block -1681 43 -232 minecraft:orange_wool run tag @e[x=-1687,y=43,z=-241,dx=10,dy=2,dz=15,tag=laser_trap] remove enabled
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
execute if block -1711 43 -220 minecraft:blue_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer] run summon minecraft:area_effect_cloud -1711 44 -220 {CustomName:'{"translate":"medabots_server:block.floor_switch"}',Tags:["blue_floor_switch_timer"],Duration:2147483647}
scoreboard players add @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer] FloorSwitchTime 1
scoreboard players set @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=220}] FloorSwitchTime 0
execute if block -1737 45 -222 minecraft:iron_door[open=true] run tag @e[x=-1732.5,y=44,z=-220.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1737 45 -222 minecraft:iron_door[open=false] run tag @e[x=-1732.5,y=44,z=-220.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1737 45 -222 minecraft:iron_door[open=true] run tag @e[x=-1730.5,y=44,z=-224.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1737 45 -222 minecraft:iron_door[open=false] run tag @e[x=-1730.5,y=44,z=-224.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1737 45 -222 minecraft:iron_door[open=true] run tag @e[x=-1721.5,y=44,z=-218.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1737 45 -222 minecraft:iron_door[open=false] run tag @e[x=-1721.5,y=44,z=-218.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1737 45 -222 minecraft:iron_door[open=true] run tag @e[x=-1720.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1737 45 -222 minecraft:iron_door[open=false] run tag @e[x=-1720.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1737 45 -222 minecraft:iron_door[open=true] run tag @e[x=-1733.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1737 45 -222 minecraft:iron_door[open=false] run tag @e[x=-1733.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1741 45 -206 minecraft:iron_door[open=true] run tag @e[x=-1746.5,y=44,z=-203.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1741 45 -206 minecraft:iron_door[open=false] run tag @e[x=-1746.5,y=44,z=-203.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1741 45 -206 minecraft:iron_door[open=true] run tag @e[x=-1753.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1741 45 -206 minecraft:iron_door[open=false] run tag @e[x=-1753.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1741 45 -206 minecraft:iron_door[open=true] run tag @e[x=-1756.5,y=44,z=-198.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1741 45 -206 minecraft:iron_door[open=false] run tag @e[x=-1756.5,y=44,z=-198.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1741 45 -206 minecraft:iron_door[open=true] run tag @e[x=-1750.5,y=44,z=-192.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1741 45 -206 minecraft:iron_door[open=false] run tag @e[x=-1750.5,y=44,z=-192.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1710 45 -209 minecraft:iron_door[open=true] if entity @s[x=-1709,y=44,z=-210,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_a/second_go_battle/0
execute if entity @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,tag=mr_referee] store result score @s BattlingMedabots if entity @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,scores={Stage=6,Medabot=0..,Battle=1..}]
execute as @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=6}] run scoreboard players set @s Stage 6
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/iceberg_a/second_go
stopsound @s[scores={BattlingMedabots=1}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1704 50 -221 14
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1}] only medabots_server:stages/wave_1/iceberg_a_second_go
teleport @s[scores={BattlingMedabots=1}] -1704 50 -221 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:iceberg_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots