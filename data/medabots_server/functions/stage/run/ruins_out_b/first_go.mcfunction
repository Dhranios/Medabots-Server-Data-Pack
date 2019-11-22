execute unless entity @e[scores={Stage=16},tag=hide_normal_time] run bossbar set medabots_server:ruins_out_b/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=16},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_out_b/time value
execute unless entity @e[scores={Stage=16},tag=hide_normal_time] store result bossbar medabots_server:ruins_out_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=16},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_out_b/robattle value
execute if entity @e[scores={Stage=16},tag=hide_normal_time] if entity @e[scores={Stage=16,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:ruins_out_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=16},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=16},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/ruins_out_b
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1802 44 -454 minecraft:lime_wool if block -1802 44 -463 minecraft:lime_wool if block -1804 44 -469 minecraft:lime_wool if block -1819 44 -469 minecraft:lime_wool if block -1821 44 -463 minecraft:lime_wool if block -1821 44 -454 minecraft:lime_wool run scoreboard players set @e[x=-1824.5,y=45,z=-445.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1852 44 -488 minecraft:lime_wool run scoreboard players set @e[x=-1854.5,y=45,z=-481.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1818 44 -486 minecraft:green_wool if block -1818 44 -478 minecraft:green_wool if block -1805 44 -486 minecraft:green_wool if block -1805 44 -478 minecraft:green_wool if block -1854 44 -513 minecraft:light_blue_wool run scoreboard players set @e[x=-1799.5,y=45,z=-481.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1854 44 -513 minecraft:blue_wool run scoreboard players set @e[x=-1799.5,y=45,z=-481.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1805 44 -478 minecraft:lime_wool run scoreboard players set @e[x=-1799.5,y=45,z=-481.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1805 44 -486 minecraft:lime_wool run scoreboard players set @e[x=-1799.5,y=45,z=-481.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1818 44 -478 minecraft:lime_wool run scoreboard players set @e[x=-1799.5,y=45,z=-481.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1818 44 -486 minecraft:lime_wool run scoreboard players set @e[x=-1799.5,y=45,z=-481.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1825 44 -496 minecraft:lime_wool run scoreboard players set @e[x=-1818.5,y=45,z=-498.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1824 44 -496 minecraft:lime_wool run scoreboard players set @e[x=-1815.5,y=45,z=-487.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1828 44 -508 minecraft:lime_wool run scoreboard players set @e[x=-1831.5,y=45,z=-503.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1813 44 -496 minecraft:green_wool if block -1784 44 -479 minecraft:orange_wool run scoreboard players set @e[x=-1774.5,y=45,z=-481.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1784 44 -479 minecraft:yellow_wool run scoreboard players set @e[x=-1774.5,y=45,z=-481.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1813 44 -496 minecraft:lime_wool run scoreboard players set @e[x=-1774.5,y=45,z=-481.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1854 44 -512 minecraft:green_wool if block -1854 44 -512 minecraft:light_blue_wool run scoreboard players set @e[x=-1787.5,y=45,z=-487.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1854 44 -512 minecraft:blue_wool run scoreboard players set @e[x=-1787.5,y=45,z=-487.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1854 44 -512 minecraft:lime_wool run scoreboard players set @e[x=-1787.5,y=45,z=-487.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1796 44 -500 minecraft:green_wool if block -1854 44 -511 minecraft:light_blue_wool run scoreboard players set @e[x=-1787.5,y=45,z=-509.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1779 44 -500 minecraft:green_wool if block -1854 44 -511 minecraft:light_blue_wool run scoreboard players set @e[x=-1787.5,y=45,z=-509.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1854 44 -511 minecraft:blue_wool run scoreboard players set @e[x=-1787.5,y=45,z=-509.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1796 44 -500 minecraft:lime_wool if block -1779 44 -500 minecraft:lime_wool run scoreboard players set @e[x=-1787.5,y=45,z=-509.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1855 44 -475 minecraft:blue_wool run scoreboard players set @e[x=-1854.5,y=45,z=-468.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1855 44 -475 minecraft:blue_wool run scoreboard players set @e[x=-1853.5,y=45,z=-470.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1855 44 -475 minecraft:light_blue_wool run scoreboard players set @e[x=-1854.5,y=45,z=-468.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1855 44 -475 minecraft:light_blue_wool run scoreboard players set @e[x=-1853.5,y=45,z=-470.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1816 44 -519 minecraft:orange_wool run scoreboard players set @e[x=-1816.5,y=45,z=-519.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1816 44 -519 minecraft:yellow_wool run scoreboard players set @e[x=-1816.5,y=45,z=-519.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1808 44 -490 minecraft:lime_wool run scoreboard players set @e[x=-1807.5,y=45,z=-490.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1808 44 -490 minecraft:lime_wool run scoreboard players set @e[x=-1806.5,y=45,z=-489.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1767 44 -490 minecraft:lime_wool run scoreboard players set @e[x=-1766.5,y=45,z=-490.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1767 44 -490 minecraft:lime_wool run scoreboard players set @e[x=-1767.5,y=45,z=-489.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1843 45 -496 minecraft:iron_door[open=true] if block -1812 45 -475 minecraft:iron_door[open=false] if entity @s[x=-1846,y=45,z=-498,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_b/first_go_battle/0
execute if entity @e[x=-1849.5,y=45,z=-497.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=16,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1849.5,y=45,z=-497.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=16},tag=guard,type=minecraft:creeper,tag=mission_entity] run tag @s add mission_success
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1842.5,y=45,z=-495.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1811.5,y=45,z=-474.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1849.5,y=45,z=-497.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=16,Medabot=0..,Battle=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=16,Medabot=0..,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_server_enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:ruins_out_b/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1788 45 -511 minecraft:iron_door[open=true] if entity @s[x=-1789,y=45,z=-514,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_b/first_go_battle/1
execute if entity @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=16,Medabot=0..,Battle=1..2}]
execute as @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=16}] run scoreboard players set @s Stage 16
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/ruins_out_b
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/ruins_out_b_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:ruins_out_b/robattle players
tag @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:story_progression/infinity={the_picture=true,rubberobo_interview=false}}] add dialog_infinity_rubberobo_interview
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1813 51 -489 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots