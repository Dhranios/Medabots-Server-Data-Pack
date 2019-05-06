execute if entity @s[scores={Death=1..}] run function medabots_server:stage/clean_up/jungle_b/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/jungle_b/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Medabot=0..,Battle=1..2,Stage=12},tag=enemy_medabot] run bossbar set medabots_server:jungle_b/time players @s[scores={Death=0,Battle=1..}]
execute unless entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Medabot=0..,Battle=1..2,Stage=12},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:jungle_b/time value
execute unless entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Medabot=0..,Battle=1..2,Stage=12},tag=enemy_medabot] store result bossbar medabots_server:jungle_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Medabot=0..,Battle=1..2,Stage=12},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:jungle_b/robattle value
execute if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Medabot=0..,Battle=1..2,Stage=12},tag=enemy_medabot] store result bossbar medabots_server:jungle_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Medabot=0..,Battle=1..2,Stage=12},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Medabot=0..,Battle=1..2,Stage=12},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if block -1645 44 -409 minecraft:blue_wool if block -1629 44 -420 minecraft:blue_wool if block -1629 44 -421 minecraft:yellow_wool run tag @e[x=-1627.5,y=45,z=-419.5,distance=..0.7,tag=alarm,tag=!enabled] add enabled
execute if block -1645 44 -409 minecraft:light_blue_wool run tag @e[x=-1627.5,y=45,z=-419.5,distance=..0.7,tag=alarm,tag=enabled] remove enabled
execute if block -1629 44 -420 minecraft:light_blue_wool run tag @e[x=-1627.5,y=45,z=-419.5,distance=..0.7,tag=alarm,tag=enabled] remove enabled
execute if block -1629 44 -421 minecraft:orange_wool run tag @e[x=-1627.5,y=45,z=-419.5,distance=..0.7,tag=alarm,tag=enabled] remove enabled
execute if block -1579 44 -434 minecraft:light_blue_wool run tag @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1580 44 -441 minecraft:light_blue_wool run tag @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1580 44 -449 minecraft:light_blue_wool run tag @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1580 44 -452 minecraft:light_blue_wool run tag @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1580 44 -456 minecraft:light_blue_wool run tag @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1579 44 -434 minecraft:blue_wool if block -1580 44 -441 minecraft:blue_wool if block -1580 44 -449 minecraft:blue_wool if block -1580 44 -452 minecraft:blue_wool if block -1580 44 -456 minecraft:blue_wool run tag @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,tag=enabled] remove enabled
execute if block -1599 44 -453 minecraft:lime_wool run tag @e[x=-1601.5,y=45,z=-471.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1590 46 -412 minecraft:iron_door[open=true] if block -1579 46 -417 minecraft:iron_door[open=false] if entity @s[x=-1592,y=45,z=-412,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_b/second_go_battle/0
execute if entity @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Stage=12,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=1,Death=0}] as @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[tag=!mission,tag=run_until_the_time_is_up,scores={Stage=12}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run tag @e[x=-1589.5,y=45,z=-411.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run tag @e[x=-1578.5,y=45,z=-416.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run bossbar set medabots_server:jungle_b/robattle players
kill @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1601 46 -468 minecraft:iron_door[open=true] if block -1606 46 -457 minecraft:iron_door[open=false] if entity @s[x=-1604,y=45,z=-470,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_b/second_go_battle/1
execute if entity @e[x=-1608.5,y=45,z=-462.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Stage=12,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run tag @e[x=-1600.5,y=45,z=-467.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run tag @e[x=-1605.5,y=45,z=-456.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run tag @e[x=-1615.5,y=45,z=-463.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run bossbar set medabots_server:jungle_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run kill @e[x=-1608.5,y=45,z=-462.5,distance=..0.7,tag=mission,scores={Dialog=81}]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1635 46 -451 minecraft:iron_door[open=true] if entity @s[x=-1638,y=45,z=-453,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_b/second_go_battle/2
execute if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,tag=mr_referee] store result score @s BattlingMedabots if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Stage=12,Medabot=0..,Battle=1..}]
execute as @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=12}] run scoreboard players set @s Stage 12
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run function medabots_server:stage/clean_up/jungle_b/second_go
stopsound @s[scores={BattlingMedabots=1,Death=0}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Death=0}] -1620 51 -431 14
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Death=0}] only medabots_server:stages/wave_1/jungle_b_second_go
teleport @s[scores={BattlingMedabots=1,Death=0}] -1620 51 -431 -180 0
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run bossbar set medabots_server:jungle_b/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots