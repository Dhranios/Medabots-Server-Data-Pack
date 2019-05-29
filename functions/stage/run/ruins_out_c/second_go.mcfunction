execute unless entity @e[x=-1665,y=0,z=-703,dx=62,dy=49,dz=63,scores={Medabot=0..,Battle=1..2,Stage=27},tag=enemy_medabot] run bossbar set medabots_server:ruins_out_c/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1665,y=0,z=-703,dx=62,dy=49,dz=63,scores={Medabot=0..,Battle=1..2,Stage=27},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:ruins_out_c/time value
execute unless entity @e[x=-1665,y=0,z=-703,dx=62,dy=49,dz=63,scores={Medabot=0..,Battle=1..2,Stage=27},tag=enemy_medabot] store result bossbar medabots_server:ruins_out_c/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1665,y=0,z=-703,dx=62,dy=49,dz=63,scores={Medabot=0..,Battle=1..2,Stage=27},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:ruins_out_c/robattle value
execute if entity @e[x=-1665,y=0,z=-703,dx=62,dy=49,dz=63,scores={Medabot=0..,Battle=1..2,Stage=27},tag=enemy_medabot] store result bossbar medabots_server:ruins_out_c/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1665,y=0,z=-703,dx=62,dy=49,dz=63,scores={Medabot=0..,Battle=1..2,Stage=27},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1665,y=0,z=-703,dx=62,dy=49,dz=63,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1665,y=0,z=-703,dx=62,dy=49,dz=63,scores={Medabot=0..,Battle=1..2,Stage=27},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1665,y=0,z=-703,dx=62,dy=49,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/ruins_out_c/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1627 43 -645 minecraft:lime_wool if block -1606 43 -645 minecraft:lime_wool run tag @e[x=-1616.5,y=44,z=-657.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1619 43 -670 minecraft:lime_wool run tag @e[x=-1607.5,y=44,z=-657.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1614 43 -670 minecraft:lime_wool run tag @e[x=-1625.5,y=44,z=-657.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1608 43 -688 minecraft:lime_wool if block -1625 43 -688 minecraft:lime_wool run tag @e[x=-1628.5,y=44,z=-670.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1634 43 -680 minecraft:yellow_wool run tag @e[x=-1635.5,y=44,z=-679.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1644 43 -674 minecraft:yellow_wool run tag @e[x=-1635.5,y=44,z=-679.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1634 43 -680 minecraft:orange_wool if block -1644 43 -674 minecraft:orange_wool run tag @e[x=-1635.5,y=44,z=-679.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1613 43 -693 minecraft:lime_wool run tag @e[x=-1628.5,y=44,z=-661.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1652 43 -646 minecraft:lime_wool if block -1654 43 -657 minecraft:lime_wool if block -1655 43 -652 minecraft:lime_wool run tag @e[x=-1630.5,y=44,z=-655.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1632 43 -658 minecraft:yellow_wool run tag @e[x=-1630.5,y=44,z=-655.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1652 43 -646 minecraft:green_wool if block -1654 43 -657 minecraft:green_wool if block -1655 43 -652 minecraft:green_wool if block -1632 43 -658 minecraft:orange_wool run tag @e[x=-1630.5,y=44,z=-655.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1640 43 -693 minecraft:blue_wool run tag @e[x=-1655.5,y=44,z=-682.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1640 43 -693 minecraft:light_blue_wool run tag @e[x=-1655.5,y=44,z=-682.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1630 43 -694 minecraft:lime_wool run tag @e[x=-1628.5,y=44,z=-693.5,distance=..0.7,tag=laser_trap,tag=!enabled] add enabled
execute if block -1613 43 -693 minecraft:lime_wool run tag @e[x=-1630.5,y=44,z=-697.5,distance=..0.7,tag=hammer_punch,tag=!enabled] add enabled
execute if block -1613 43 -693 minecraft:lime_wool run tag @e[x=-1630.5,y=44,z=-698.5,distance=..0.7,tag=hammer_punch,tag=!enabled] add enabled
execute if block -1613 43 -693 minecraft:lime_wool run tag @e[x=-1617.5,y=44,z=-697.5,distance=..0.7,tag=hammer_punch,tag=!enabled] add enabled
execute if block -1613 43 -693 minecraft:lime_wool run tag @e[x=-1617.5,y=44,z=-698.5,distance=..0.7,tag=hammer_punch,tag=!enabled] add enabled
execute if block -1650 43 -652 minecraft:lime_wool run tag @e[x=-1650.5,y=44,z=-651.5,distance=..0.7,tag=hammer_punch,tag=!enabled] add enabled
execute if block -1606 43 -701 minecraft:yellow_wool run tag @e[x=-1635.5,y=44,z=-679.5,distance=..0.7,tag=press_wall,tag=!enabled] add enabled
execute if block -1606 43 -701 minecraft:orange_wool run tag @e[x=-1615.5,y=44,z=-699.5,distance=..0.7,tag=press_wall,tag=enabled] remove enabled
execute if block -1617 44 -683 minecraft:iron_door[open=true] if block -1648 44 -697 minecraft:air if entity @s[x=-1618,y=44,z=-686,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_c/second_go_battle/0
execute if entity @e[x=-1616.5,y=44,z=-685.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=27,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1616.5,y=44,z=-682.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1628.5,y=44,z=-670.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1616.5,y=44,z=-685.5,distance=..0.7,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:ruins_out_c/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1656 44 -684 minecraft:iron_door[open=true] if entity @s[x=-1657,y=44,z=-687,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_c/second_go_battle/1
execute if entity @e[x=-1665,y=0,z=-703,dx=62,dy=49,dz=63,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=27,Medabot=0..,Battle=1..2}]
execute as @e[x=-1665,y=0,z=-703,dx=62,dy=49,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=27}] run scoreboard players set @s Stage 27
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/ruins_out_c/second_go
stopsound @s[scores={BattlingMedabots=1,Battle=1..}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Battle=1..}] -1635 50 -672 14
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] MusicType 22
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/ruins_out_c_second_go
teleport @s[scores={BattlingMedabots=1,Battle=1..}] -1635 50 -672 -180 0
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:ruins_out_c/robattle players
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Battle 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots