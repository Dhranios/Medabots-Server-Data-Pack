execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/park_a/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,scores={Medabot=0..,Battle=1..2,Stage=19},tag=enemy_medabot] run bossbar set medabots_server:park_a/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,scores={Medabot=0..,Battle=1..2,Stage=19},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:park_a/time value
execute unless entity @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,scores={Medabot=0..,Battle=1..2,Stage=19},tag=enemy_medabot] store result bossbar medabots_server:park_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,scores={Medabot=0..,Battle=1..2,Stage=19},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:park_a/robattle value
execute if entity @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,scores={Medabot=0..,Battle=1..2,Stage=19},tag=enemy_medabot] store result bossbar medabots_server:park_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,scores={Medabot=0..,Battle=1..2,Stage=19},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if block -1806 44 -555 minecraft:lime_wool run tag @e[x=-1806.5,y=45,z=-556.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1785 44 -585 minecraft:green_wool if block -1800 44 -568 minecraft:orange_wool run tag @e[x=-1785.5,y=45,z=-582.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1800 44 -568 minecraft:yellow_wool run tag @e[x=-1785.5,y=45,z=-582.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1785 44 -585 minecraft:lime_wool run tag @e[x=-1785.5,y=45,z=-582.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1778 44 -610 minecraft:lime_wool run tag @e[x=-1777.5,y=45,z=-585.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1775 44 -583 minecraft:lime_wool run tag @e[x=-1774.5,y=45,z=-583.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1775 44 -583 minecraft:lime_wool run tag @e[x=-1790.5,y=45,z=-584.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1813 44 -631 minecraft:lime_wool if block -1840 44 -626 minecraft:lime_wool if block -1843 44 -588 minecraft:lime_wool if block -1842 44 -552 minecraft:lime_wool if block -1812 44 -549 minecraft:lime_wool if block -1769 44 -569 minecraft:lime_wool run tag @e[x=-1806.5,y=45,z=-570.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1800 44 -568 minecraft:orange_wool run tag @e[x=-1795.5,y=45,z=-567.5,distance=..0.7,tag=press_wall,tag=enabled] remove enabled
execute if block -1800 44 -568 minecraft:yellow_wool run tag @e[x=-1795.5,y=45,z=-567.5,distance=..0.7,tag=press_wall,tag=!enabled] add enabled
execute if block -1794 45 -585 minecraft:iron_door[open=true] if entity @s[x=-1797,y=45,z=-587,dx=3,dy=3,dz=3] run function medabots_server:stage/create/park_a/second_go_battle/0
execute if entity @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=19,Medabot=0..,Battle=1..2}]
execute as @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=19}] run scoreboard players set @s Stage 19
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/park_a/second_go
stopsound @s[scores={BattlingMedabots=1}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1809 51 -587 14
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1}] only medabots_server:stages/wave_1/park_a_second_go
teleport @s[scores={BattlingMedabots=1}] -1809 51 -587 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:park_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots