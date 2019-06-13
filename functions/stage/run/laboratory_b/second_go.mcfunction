execute unless entity @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,scores={Medabot=0..,Battle=1..2,Stage=18},tag=enemy_medabot] run bossbar set medabots_server:laboratory_b/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,scores={Medabot=0..,Battle=1..2,Stage=18},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:laboratory_b/time value
execute unless entity @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,scores={Medabot=0..,Battle=1..2,Stage=18},tag=enemy_medabot] store result bossbar medabots_server:laboratory_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,scores={Medabot=0..,Battle=1..2,Stage=18},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:laboratory_b/robattle value
execute if entity @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,scores={Medabot=0..,Battle=1..2,Stage=18},tag=enemy_medabot] store result bossbar medabots_server:laboratory_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,scores={Medabot=0..,Battle=1..2,Stage=18},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,scores={Medabot=0..,Battle=1..2,Stage=18},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/laboratory_b/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1703 43 -599 minecraft:lime_wool run tag @e[x=-1678.5,y=44,z=-612.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1751 43 -543 minecraft:lime_wool run tag @e[x=-1750.5,y=44,z=-543.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1751 43 -543 minecraft:lime_wool run tag @e[x=-1726.5,y=44,z=-542.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1751 43 -543 minecraft:lime_wool run tag @e[x=-1698.5,y=44,z=-542.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1751 43 -543 minecraft:lime_wool run tag @e[x=-1670.5,y=44,z=-542.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1759 43 -551 minecraft:lime_wool run tag @e[x=-1757.5,y=44,z=-550.5,distance=..0.7,tag=laser_trap,tag=!enabled] add enabled
execute if block -1759 43 -551 minecraft:lime_wool run tag @e[x=-1758.5,y=44,z=-574.5,distance=..0.7,tag=laser_trap,tag=!enabled] add enabled
execute if block -1759 43 -551 minecraft:lime_wool run tag @e[x=-1758.5,y=44,z=-602.5,distance=..0.7,tag=laser_trap,tag=!enabled] add enabled
execute if block -1759 43 -551 minecraft:lime_wool run tag @e[x=-1758.5,y=44,z=-630.5,distance=..0.7,tag=laser_trap,tag=!enabled] add enabled
execute if block -1725 44 -560 minecraft:iron_door[open=true] if block -1701 44 -558 minecraft:iron_door[open=false] if entity @s[x=-1725,y=44,z=-561,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_b/second_go_battle/0
execute if entity @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=18,Medabot=0..,Battle=1..2}]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] as @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=18}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run tag @e[x=-1724.5,y=44,z=-559.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run tag @e[x=-1700.5,y=44,z=-557.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run tag @e[x=-1701.5,y=44,z=-631.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run bossbar set medabots_server:laboratory_b/robattle players
kill @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1697 44 -560 minecraft:iron_door[open=true] if block -1673 44 -558 minecraft:iron_door[open=false] if entity @s[x=-1697,y=44,z=-561,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_b/second_go_battle/1
execute if entity @e[x=-1684.5,y=44,z=-559.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=18,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1684.5,y=44,z=-559.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[scores={Stage=18},tag=guard,tag=mission_entity] run tag @s add mission_success
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run tag @e[x=-1696.5,y=44,z=-559.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run tag @e[x=-1672.5,y=44,z=-558.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run tag @e[x=-1700.5,y=44,z=-631.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run bossbar set medabots_server:laboratory_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,tag=mission]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1743 44 -577 minecraft:iron_door[open=true] if block -1673 44 -558 minecraft:iron_door[open=false] if entity @s[x=-1744,y=44,z=-580,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_b/second_go_battle/2
execute if entity @e[x=-1743.5,y=44,z=-588.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=18,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1743.5,y=44,z=-588.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1755 43 -586 minecraft:blue_wool if block -1750 43 -580 minecraft:blue_wool if block -1731 43 -583 minecraft:blue_wool if block -1739 43 -579 minecraft:blue_wool if block -1756 43 -593 minecraft:blue_wool if block -1753 43 -596 minecraft:blue_wool if block -1739 43 -599 minecraft:blue_wool if block -1733 43 -599 minecraft:blue_wool run tag @s add mission_success
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run tag @e[x=-1742.5,y=44,z=-576.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run tag @e[x=-1742.5,y=44,z=-600.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run tag @e[x=-1703.5,y=44,z=-631.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=18,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] run scoreboard players set @a[scores={Stage=18,Medabot=0..,Battle=1..2},tag=enemy_medabot] LeaveStage 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:laboratory_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,tag=mission]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1743 44 -605 minecraft:iron_door[open=true] if block -1673 44 -558 minecraft:iron_door[open=false] if entity @s[x=-1744,y=44,z=-608,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_b/second_go_battle/3
execute if entity @e[x=-1743.5,y=44,z=-616.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=18,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1743.5,y=44,z=-616.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[scores={Stage=18},tag=cannon,tag=mission_entity] run tag @s add mission_success
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run tag @e[x=-1742.5,y=44,z=-604.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run tag @e[x=-1742.5,y=44,z=-628.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run tag @e[x=-1702.5,y=44,z=-631.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run bossbar set medabots_server:laboratory_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,tag=mission]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1679 44 -614 minecraft:iron_door[open=true] if entity @s[x=-1680,y=44,z=-617,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_b/second_go_battle/4
execute if entity @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=18,Medabot=0..,Battle=1..2}]
execute as @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=18}] run scoreboard players set @s Stage 18
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/laboratory_b/second_go
stopsound @s[scores={BattlingMedabots=1,Battle=1..}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Battle=1..}] -1727 50 -575 1000
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/laboratory_b_second_go
teleport @s[scores={BattlingMedabots=1,Battle=1..}] -1727 50 -575 -180 0
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:laboratory_b/robattle players
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Battle 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots