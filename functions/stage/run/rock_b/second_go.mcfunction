execute if entity @s[scores={Death=1..}] run function medabots_server:stage/clean_up/rock_b/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/rock_b/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=11},tag=enemy_medabot] run bossbar set medabots_server:rock_b/time players @s[scores={Death=0,Battle=1..}]
execute unless entity @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=11},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:rock_b/time value
execute unless entity @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=11},tag=enemy_medabot] store result bossbar medabots_server:rock_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=11},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:rock_b/robattle value
execute if entity @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=11},tag=enemy_medabot] store result bossbar medabots_server:rock_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=11},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=11},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if block -1603 44 -321 minecraft:lime_wool run tag @e[x=-1589.5,y=45,z=-332.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1607 44 -321 minecraft:lime_wool run tag @e[x=-1613.5,y=45,z=-331.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1576 44 -357 minecraft:yellow_wool run tag @e[x=-1576.5,y=45,z=-357.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1576 44 -357 minecraft:orange_wool run tag @e[x=-1576.5,y=45,z=-357.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1605 44 -321 minecraft:light_blue_wool run tag @e[x=-1604.5,y=45,z=-319.5,distance=..0.7,tag=hammer_punch] add enabled
execute if block -1605 44 -321 minecraft:blue_wool run tag @e[x=-1604.5,y=45,z=-319.5,distance=..0.7,tag=hammer_punch] remove enabled
execute if block -1606 44 -335 minecraft:light_blue_wool run tag @e[x=-1605.5,y=45,z=-335.5,distance=..0.7,tag=hammer_punch] add enabled
execute if block -1606 44 -335 minecraft:blue_wool run tag @e[x=-1605.5,y=45,z=-335.5,distance=..0.7,tag=hammer_punch] remove enabled
execute if block -1595 46 -344 minecraft:iron_door[open=true] if block -1583 45 -343 minecraft:iron_door[open=false] if entity @s[x=-1595,y=45,z=-345,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_b/second_go_battle/0
execute if entity @e[x=-1587.5,y=45,z=-344.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,scores={Stage=11,Medabot=0..,Battle=1..}]
title @s[scores={BattlingMedabots=1,Death=0}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run tag @e[x=-1594.5,y=45,z=-343.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run tag @e[x=-1582.5,y=45,z=-342.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run kill @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run bossbar set medabots_server:rock_b/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1622 46 -359 minecraft:iron_door[open=true] if block -1634 42 -381 minecraft:cobblestone if entity @s[x=-1621,y=45,z=-360,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_b/second_go_battle/1
execute if entity @e[x=-1614.5,y=45,z=-355.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,scores={Stage=11,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1614.5,y=45,z=-355.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[x=-1621,y=42,z=-359,dx=20,dy=7,dz=10,scores={Stage=11},tag=guard] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run tag @e[x=-1621.5,y=45,z=-358.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[tag=mission_success] run kill @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,tag=mission]
execute if entity @s[tag=mission_success] run bossbar set medabots_server:rock_b/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1615 46 -372 minecraft:iron_door[open=true] if entity @s[x=-1615,y=45,z=-373,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_b/second_go_battle/2
execute if entity @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,tag=mr_referee] store result score @s BattlingMedabots if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,scores={Stage=11,Medabot=0..,Battle=1..}]
execute as @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=11}] run scoreboard players set @s Stage 11
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run function medabots_server:stage/clean_up/rock_b/second_go
stopsound @s[scores={BattlingMedabots=1,Death=0}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Death=0}] -1603 51 -351 14
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Death=0}] only medabots_server:stages/wave_1/rock_b_second_go
teleport @s[scores={BattlingMedabots=1,Death=0}] -1603 51 -351 -180 0
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run bossbar set medabots_server:rock_b/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots