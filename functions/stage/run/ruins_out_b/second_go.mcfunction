execute unless entity @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,scores={Medabot=0..,Battle=1..2,Stage=16},tag=enemy_medabot] run bossbar set medabots_server:ruins_out_b/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,scores={Medabot=0..,Battle=1..2,Stage=16},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:ruins_out_b/time value
execute unless entity @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,scores={Medabot=0..,Battle=1..2,Stage=16},tag=enemy_medabot] store result bossbar medabots_server:ruins_out_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,scores={Medabot=0..,Battle=1..2,Stage=16},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:ruins_out_b/robattle value
execute if entity @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,scores={Medabot=0..,Battle=1..2,Stage=16},tag=enemy_medabot] store result bossbar medabots_server:ruins_out_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,scores={Medabot=0..,Battle=1..2,Stage=16},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,scores={Medabot=0..,Battle=1..2,Stage=16},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/ruins_out_b/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=0..40}] run tag @e[x=-1799.5,y=45,z=-480.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1791 44 -479 minecraft:blue_wool run tag @e[x=-1799.5,y=45,z=-480.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1791 44 -479 minecraft:light_blue_wool unless entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=0..40}] run tag @e[x=-1799.5,y=45,z=-480.5,distance=..0.7,tag=door,tag=open] remove open
execute if entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=10..50}] run tag @e[x=-1822.5,y=45,z=-480.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1831 44 -477 minecraft:lime_wool run tag @e[x=-1822.5,y=45,z=-480.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1806 44 -479 minecraft:yellow_wool if block -1806 44 -485 minecraft:yellow_wool if block -1817 44 -485 minecraft:yellow_wool if block -1817 44 -479 minecraft:yellow_wool run tag @e[x=-1822.5,y=45,z=-480.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1831 44 -477 minecraft:green_wool if block -1806 44 -479 minecraft:orange_wool unless entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=10..50}] run tag @e[x=-1822.5,y=45,z=-480.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1831 44 -477 minecraft:green_wool if block -1806 44 -485 minecraft:orange_wool unless entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=10..50}] run tag @e[x=-1822.5,y=45,z=-480.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1831 44 -477 minecraft:green_wool if block -1817 44 -485 minecraft:orange_wool unless entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=10..50}] run tag @e[x=-1822.5,y=45,z=-480.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1831 44 -477 minecraft:green_wool if block -1817 44 -479 minecraft:orange_wool unless entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=10..50}] run tag @e[x=-1822.5,y=45,z=-480.5,distance=..0.7,tag=door,tag=open] remove open
execute if entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=20..60}] run tag @e[x=-1815.5,y=45,z=-487.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1831 44 -477 minecraft:lime_wool run tag @e[x=-1815.5,y=45,z=-487.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1806 44 -479 minecraft:yellow_wool if block -1806 44 -485 minecraft:yellow_wool if block -1817 44 -485 minecraft:yellow_wool if block -1817 44 -479 minecraft:yellow_wool run tag @e[x=-1815.5,y=45,z=-487.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1831 44 -477 minecraft:green_wool if block -1806 44 -479 minecraft:orange_wool unless entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=20..60}] run tag @e[x=-1815.5,y=45,z=-487.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1831 44 -477 minecraft:green_wool if block -1806 44 -485 minecraft:orange_wool unless entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=20..60}] run tag @e[x=-1815.5,y=45,z=-487.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1831 44 -477 minecraft:green_wool if block -1817 44 -485 minecraft:orange_wool unless entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=20..60}] run tag @e[x=-1815.5,y=45,z=-487.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1831 44 -477 minecraft:green_wool if block -1817 44 -479 minecraft:orange_wool unless entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=20..60}] run tag @e[x=-1815.5,y=45,z=-487.5,distance=..0.7,tag=door,tag=open] remove open
execute if entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=30..70}] run tag @e[x=-1818.5,y=45,z=-498.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1813 44 -496 minecraft:lime_wool run tag @e[x=-1818.5,y=45,z=-498.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1824 44 -497 minecraft:blue_wool if block -1820 44 -495 minecraft:yellow_wool run tag @e[x=-1818.5,y=45,z=-498.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1813 44 -496 minecraft:green_wool if block -1824 44 -497 minecraft:light_blue_wool unless entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=30..70}] run tag @e[x=-1818.5,y=45,z=-498.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1813 44 -496 minecraft:green_wool if block -1820 44 -495 minecraft:orange_wool unless entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=30..70}] run tag @e[x=-1818.5,y=45,z=-498.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1828 44 -508 minecraft:lime_wool run tag @e[x=-1831.5,y=45,z=-503.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1830 44 -522 minecraft:yellow_wool if block -1827 44 -522 minecraft:yellow_wool run tag @e[x=-1828.5,y=45,z=-522.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1830 44 -522 minecraft:orange_wool run tag @e[x=-1828.5,y=45,z=-522.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1827 44 -522 minecraft:orange_wool run tag @e[x=-1828.5,y=45,z=-522.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1819 44 -527 minecraft:yellow_wool if block -1819 44 -534 minecraft:yellow_wool if block -1838 44 -525 minecraft:yellow_wool if block -1838 44 -534 minecraft:yellow_wool run tag @e[x=-1828.5,y=45,z=-533.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1828 44 -535 minecraft:lime_wool run tag @e[x=-1828.5,y=45,z=-533.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1828 44 -535 minecraft:green_wool if block -1819 44 -527 minecraft:orange_wool run tag @e[x=-1828.5,y=45,z=-533.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1828 44 -535 minecraft:green_wool if block -1819 44 -534 minecraft:orange_wool run tag @e[x=-1828.5,y=45,z=-533.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1828 44 -535 minecraft:green_wool if block -1838 44 -525 minecraft:orange_wool run tag @e[x=-1828.5,y=45,z=-533.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1828 44 -535 minecraft:green_wool if block -1838 44 -534 minecraft:orange_wool run tag @e[x=-1828.5,y=45,z=-533.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1826 44 -527 minecraft:light_blue_wool run tag @e[x=-1814.5,y=45,z=-527.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1826 44 -527 minecraft:blue_wool run tag @e[x=-1814.5,y=45,z=-527.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=40..80}] run tag @e[x=-1787.5,y=45,z=-487.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1813 44 -496 minecraft:lime_wool run tag @e[x=-1787.5,y=45,z=-487.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1813 44 -496 minecraft:green_wool unless entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=40..80}] run tag @e[x=-1787.5,y=45,z=-487.5,distance=..0.7,tag=door,tag=open] remove open
execute if entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=50..90}] run tag @e[x=-1787.5,y=45,z=-509.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1796 44 -500 minecraft:lime_wool if block -1779 44 -500 minecraft:lime_wool run tag @e[x=-1787.5,y=45,z=-509.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1796 44 -500 minecraft:green_wool unless entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=50..90}] run tag @e[x=-1787.5,y=45,z=-509.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1779 44 -500 minecraft:green_wool unless entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer,scores={FloorSwitchTime=50..90}] run tag @e[x=-1787.5,y=45,z=-509.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1853 44 -497 minecraft:blue_wool unless entity @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer] run summon minecraft:area_effect_cloud -1853 45 -497 {CustomName:'{"translate":"medabots_server:block.floor_switch"}',Tags:["blue_floor_switch_timer"],Duration:240}
scoreboard players add @e[x=-1852.5,y=45,z=-496.5,distance=..0.7,tag=blue_floor_switch_timer] FloorSwitchTime 1
execute if block -1820 44 -495 minecraft:yellow_wool run tag @e[x=-1819.5,y=45,z=-495.5,distance=..0.7,tag=alarm,tag=!enabled] add enabled
execute if block -1820 44 -495 minecraft:orange_wool run tag @e[x=-1819.5,y=45,z=-495.5,distance=..0.7,tag=alarm,tag=enabled] remove enabled
execute if block -1816 44 -519 minecraft:yellow_wool run tag @e[x=-1816.5,y=45,z=-519.5,distance=..0.7,tag=laser_trap,tag=!enabled] add enabled
execute if block -1816 44 -519 minecraft:orange_wool run tag @e[x=-1816.5,y=45,z=-519.5,distance=..0.7,tag=laser_trap,tag=enabled] remove enabled
execute if block -1820 44 -518 minecraft:light_blue_wool run tag @e[x=-1818.5,y=45,z=-517.5,distance=..0.7,tag=hammer_punch,tag=!enabled] add enabled
execute if block -1820 44 -518 minecraft:blue_wool run tag @e[x=-1818.5,y=45,z=-517.5,distance=..0.7,tag=hammer_punch,tag=enabled] remove enabled
execute if block -1829 44 -519 minecraft:light_blue_wool run tag @e[x=-1829.5,y=45,z=-518.5,distance=..0.7,tag=hammer_punch,tag=!enabled] add enabled
execute if block -1829 44 -519 minecraft:blue_wool run tag @e[x=-1829.5,y=45,z=-518.5,distance=..0.7,tag=hammer_punch,tag=enabled] remove enabled
execute if block -1808 44 -490 minecraft:lime_wool run tag @e[x=-1806.5,y=45,z=-489.5,distance=..0.7,tag=laser_trap,tag=!enabled] add enabled
execute if block -1808 44 -490 minecraft:lime_wool run tag @e[x=-1807.5,y=45,z=-490.5,distance=..0.7,tag=laser_trap,tag=!enabled] add enabled
execute if block -1767 44 -490 minecraft:lime_wool run tag @e[x=-1765.5,y=45,z=-489.5,distance=..0.7,tag=laser_trap,tag=!enabled] add enabled
execute if block -1767 44 -490 minecraft:lime_wool run tag @e[x=-1766.5,y=45,z=-490.5,distance=..0.7,tag=laser_trap,tag=!enabled] add enabled
execute if block -1843 45 -511 minecraft:iron_door[open=true] if block -1842 45 -521 minecraft:iron_door[open=false] if entity @s[x=-1846,y=45,z=-513,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_b/second_go_battle/0
execute if entity @e[x=-1849.5,y=45,z=-509.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=16,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1849.5,y=45,z=-509.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[scores={Stage=16},tag=cannon,tag=mission_entity] run tag @s add mission_success
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run tag @e[x=-1842.5,y=45,z=-510.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run tag @e[x=-1841.5,y=45,z=-520.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run kill @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,tag=mission]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=16,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] run scoreboard players set @a[scores={Stage=16,Medabot=0..,Battle=1..2},tag=enemy_medabot] LeaveStage 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:ruins_out_a/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1788 45 -511 minecraft:iron_door[open=true] if entity @s[x=-1789,y=45,z=-514,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_b/second_go_battle/1
execute if entity @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=16,Medabot=0..,Battle=1..2}]
execute as @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=16}] run scoreboard players set @s Stage 16
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/ruins_out_b/second_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/ruins_out_b_second_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:ruins_out_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1812 51 -489 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots