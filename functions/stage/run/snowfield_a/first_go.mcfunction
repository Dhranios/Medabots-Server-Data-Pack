execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/snowfield_a/first_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1668,y=42,z=-247,dx=105,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=5},tag=enemy_medabot] run bossbar set medabots_server:snowfield_a/time players @s[scores={Death=0,Battle=1..}]
execute unless entity @e[x=-1668,y=42,z=-247,dx=105,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=5},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:snowfield_a/time value
execute unless entity @e[x=-1668,y=42,z=-247,dx=105,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=5},tag=enemy_medabot] store result bossbar medabots_server:snowfield_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1668,y=42,z=-247,dx=105,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=5},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:snowfield_a/robattle value
execute if entity @e[x=-1668,y=42,z=-247,dx=105,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=5},tag=enemy_medabot] store result bossbar medabots_server:snowfield_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1668,y=42,z=-247,dx=105,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=5},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1668,y=42,z=-247,dx=105,dy=7,dz=63,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1668,y=42,z=-247,dx=105,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=5},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1668,y=42,z=-247,dx=105,dy=7,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if block -1594 44 -218 minecraft:orange_wool run tag @e[x=-1597.5,y=45,z=-212.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1594 44 -218 minecraft:yellow_wool run tag @e[x=-1597.5,y=45,z=-212.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1594 44 -218 minecraft:orange_wool run tag @e[x=-1589.5,y=45,z=-206.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1594 44 -218 minecraft:yellow_wool run tag @e[x=-1589.5,y=45,z=-206.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1632 44 -225 minecraft:lime_wool if block -1627 44 -232 minecraft:lime_wool if block -1643 44 -236 minecraft:lime_wool if block -1649 44 -227 minecraft:lime_wool run tag @e[x=-1650.5,y=45,z=-229.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1613 44 -203 minecraft:light_blue_wool run scoreboard players add @e[x=-1611.5,y=45,z=-202.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1613 44 -203 minecraft:light_blue_wool run tag @e[x=-1611.5,y=45,z=-202.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1613 44 -203 minecraft:blue_wool run scoreboard players remove @e[x=-1611.5,y=45,z=-202.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1613 44 -203 minecraft:blue_wool run tag @e[x=-1611.5,y=45,z=-202.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1617 44 -226 minecraft:light_blue_wool run tag @e[x=-1617.5,y=45,z=-225.5,distance=..0.7,tag=laser] add enabled
execute if block -1617 44 -226 minecraft:blue_wool run tag @e[x=-1617.5,y=45,z=-225.5,distance=..0.7,tag=laser] remove enabled
execute if block -1663 44 -187 minecraft:light_blue_wool run tag @e[x=-1656.5,y=45,z=-210.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1663 44 -187 minecraft:blue_wool run tag @e[x=-1656.5,y=45,z=-210.5,distance=..0.7,tag=spring_wall] remove enabled
execute if block -1623 46 -203 minecraft:iron_door[open=true] if block -1630 46 -201 minecraft:iron_door[open=false] if entity @s[x=-1626,y=45,z=-205,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_a/first_go_battle/0
execute if entity @e[x=-1628.5,y=45,z=-206.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[x=-1637,y=42,z=-215,dx=17,dy=7,dz=17,scores={Stage=5,Medabot=0..,Battle=1..}]
title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[x=-1622.5,y=45,z=-202.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[x=-1629.5,y=45,z=-200.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[x=-1636.5,y=45,z=-209.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1668,y=42,z=-247,dx=105,dy=7,dz=63,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:snowfield_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1652 46 -229 minecraft:iron_door[open=true] if entity @s[x=-1655,y=45,z=-231,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_a/first_go_battle/1
execute if entity @e[x=-1668,y=42,z=-247,dx=105,dy=7,dz=63,tag=mr_referee] store result score @s BattlingMedabots if entity @e[x=-1667,y=42,z=-246,dx=18,dy=7,dz=28,scores={Stage=5,Medabot=0..,Battle=1..}]
execute as @e[x=-1668,y=42,z=-247,dx=105,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=5}] run scoreboard players set @s Stage 5
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/snowfield_a/first_go
stopsound @s[scores={BattlingMedabots=1}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1620 51 -216 14
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1}] only medabots_server:stages/wave_1/snowfield_a_first_go
teleport @s[scores={BattlingMedabots=1}] -1620 51 -216 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:snowfield_a/robattle players
tag @s[scores={BattlingMedabots=1},advancements={medabots_server:wave_1/story_progression={vs_spyke_battle=true,kuwagata_medal=false}}] add dialog_infinity_kuwagata_medal
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots