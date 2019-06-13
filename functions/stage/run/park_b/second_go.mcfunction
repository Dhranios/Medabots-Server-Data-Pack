execute unless entity @e[x=-1857,y=0,z=-730,dx=94,dy=49,dz=94,scores={Medabot=0..,Battle=1..2,Stage=20},tag=enemy_medabot] run bossbar set medabots_server:park_b/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1857,y=0,z=-730,dx=94,dy=49,dz=94,scores={Medabot=0..,Battle=1..2,Stage=20},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:park_b/time value
execute unless entity @e[x=-1857,y=0,z=-730,dx=94,dy=49,dz=94,scores={Medabot=0..,Battle=1..2,Stage=20},tag=enemy_medabot] store result bossbar medabots_server:park_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1857,y=0,z=-730,dx=94,dy=49,dz=94,scores={Medabot=0..,Battle=1..2,Stage=20},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:park_b/robattle value
execute if entity @e[x=-1857,y=0,z=-730,dx=94,dy=49,dz=94,scores={Medabot=0..,Battle=1..2,Stage=20},tag=enemy_medabot] store result bossbar medabots_server:park_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1857,y=0,z=-730,dx=94,dy=49,dz=94,scores={Medabot=0..,Battle=1..2,Stage=20},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1857,y=0,z=-730,dx=94,dy=49,dz=94,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/park_b/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer] run summon minecraft:area_effect_cloud -1799 45 -672 {CustomName:'{"translate":"medabots_server:block.fan"}',Tags:["fan_timer"],Duration:800}
scoreboard players add @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer] Time 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run scoreboard players add @e[x=-1796.5,y=45,z=-669.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run tag @e[x=-1796.5,y=45,z=-669.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run scoreboard players remove @e[x=-1796.5,y=45,z=-669.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run tag @e[x=-1796.5,y=45,z=-669.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run scoreboard players remove @e[x=-1796.5,y=45,z=-654.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run tag @e[x=-1796.5,y=45,z=-654.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run scoreboard players add @e[x=-1796.5,y=45,z=-654.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run tag @e[x=-1796.5,y=45,z=-654.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run scoreboard players add @e[x=-1798.5,y=45,z=-646.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run tag @e[x=-1798.5,y=45,z=-646.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run scoreboard players remove @e[x=-1798.5,y=45,z=-646.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run tag @e[x=-1798.5,y=45,z=-646.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run scoreboard players remove @e[x=-1787.5,y=45,z=-646.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run tag @e[x=-1787.5,y=45,z=-646.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run scoreboard players add @e[x=-1787.5,y=45,z=-646.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run tag @e[x=-1787.5,y=45,z=-646.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run scoreboard players add @e[x=-1788.5,y=45,z=-642.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run tag @e[x=-1788.5,y=45,z=-642.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run scoreboard players remove @e[x=-1788.5,y=45,z=-642.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run tag @e[x=-1788.5,y=45,z=-642.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run scoreboard players remove @e[x=-1788.5,y=45,z=-654.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run tag @e[x=-1788.5,y=45,z=-654.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run scoreboard players add @e[x=-1788.5,y=45,z=-654.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run tag @e[x=-1788.5,y=45,z=-654.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run scoreboard players add @e[x=-1788.5,y=45,z=-658.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run tag @e[x=-1788.5,y=45,z=-658.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run scoreboard players remove @e[x=-1788.5,y=45,z=-658.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run tag @e[x=-1788.5,y=45,z=-658.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run scoreboard players remove @e[x=-1788.5,y=45,z=-668.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run tag @e[x=-1788.5,y=45,z=-668.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run scoreboard players add @e[x=-1788.5,y=45,z=-668.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run tag @e[x=-1788.5,y=45,z=-668.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run scoreboard players add @e[x=-1785.5,y=45,z=-668.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run tag @e[x=-1785.5,y=45,z=-668.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run scoreboard players remove @e[x=-1785.5,y=45,z=-668.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run tag @e[x=-1785.5,y=45,z=-668.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run scoreboard players remove @e[x=-1774.5,y=45,z=-668.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run tag @e[x=-1774.5,y=45,z=-668.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run scoreboard players add @e[x=-1774.5,y=45,z=-668.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run tag @e[x=-1774.5,y=45,z=-668.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run scoreboard players add @e[x=-1774.5,y=45,z=-665.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run tag @e[x=-1774.5,y=45,z=-665.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run scoreboard players remove @e[x=-1774.5,y=45,z=-665.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run tag @e[x=-1774.5,y=45,z=-665.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run scoreboard players remove @e[x=-1774.5,y=45,z=-657.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run tag @e[x=-1774.5,y=45,z=-657.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run scoreboard players add @e[x=-1774.5,y=45,z=-657.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run tag @e[x=-1774.5,y=45,z=-657.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run scoreboard players add @e[x=-1777.5,y=45,z=-653.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run tag @e[x=-1777.5,y=45,z=-653.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run scoreboard players remove @e[x=-1777.5,y=45,z=-653.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run tag @e[x=-1777.5,y=45,z=-653.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run scoreboard players remove @e[x=-1785.5,y=45,z=-653.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=1}] run tag @e[x=-1785.5,y=45,z=-653.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run scoreboard players add @e[x=-1785.5,y=45,z=-653.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if entity @e[x=-1798.5,y=45,z=-671.5,distance=..0.7,tag=fan_timer,scores={Time=401}] run tag @e[x=-1785.5,y=45,z=-653.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1806 44 -679 minecraft:lime_wool run tag @e[x=-1801.5,y=45,z=-674.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1774 44 -644 minecraft:lime_wool run tag @e[x=-1810.5,y=45,z=-694.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1811 44 -710 minecraft:light_blue_wool run tag @e[x=-1798.5,y=45,z=-683.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1810 44 -711 minecraft:light_blue_wool run tag @e[x=-1798.5,y=45,z=-683.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1811 44 -710 minecraft:blue_wool if block -1810 44 -711 minecraft:blue_wool run tag @e[x=-1798.5,y=45,z=-683.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1784 44 -689 minecraft:lime_wool if block -1774 44 -725 minecraft:lime_wool if block -1816 44 -729 minecraft:lime_wool if block -1851 44 -719 minecraft:lime_wool if block -1855 44 -699 minecraft:lime_wool if block -1851 44 -672 minecraft:lime_wool if block -1851 44 -641 minecraft:lime_wool if block -1839 44 -640 minecraft:lime_wool if block -1829 44 -638 minecraft:lime_wool if block -1811 44 -639 minecraft:lime_wool if block -1770 44 -643 minecraft:lime_wool if block -1774 44 -679 minecraft:lime_wool run tag @e[x=-1773.5,y=45,z=-680.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1774 44 -679 minecraft:lime_wool run tag @e[x=-1809.5,y=45,z=-671.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1801 44 -710 minecraft:light_blue_wool run tag @e[x=-1798.5,y=45,z=-710.5,distance=..0.7,tag=laser_trap,tag=!enabled] add enabled
execute if block -1801 44 -710 minecraft:blue_wool run tag @e[x=-1798.5,y=45,z=-710.5,distance=..0.7,tag=laser_trap,tag=enabled] remove enabled
execute if block -1801 44 -711 minecraft:light_blue_wool run tag @e[x=-1798.5,y=45,z=-709.5,distance=..0.7,tag=spring_wall,tag=!enabled] add enabled
execute if block -1801 44 -711 minecraft:blue_wool run tag @e[x=-1798.5,y=45,z=-709.5,distance=..0.7,tag=spring_wall,tag=enabled] remove enabled
execute if block -1810 45 -668 minecraft:iron_door[open=true] if entity @s[x=-1812,y=45,z=-668,dx=3,dy=3,dz=3] run function medabots_server:stage/create/park_b/second_go_battle/0
execute if entity @e[x=-1857,y=0,z=-730,dx=94,dy=49,dz=94,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=20,Medabot=0..,Battle=1..2}]
execute as @e[x=-1857,y=0,z=-730,dx=94,dy=49,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=20}] run scoreboard players set @s Stage 20
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/park_b/second_go
stopsound @s[scores={BattlingMedabots=1,Battle=1..}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Battle=1..}] -1811 51 -683 1000
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/park_b_second_go
teleport @s[scores={BattlingMedabots=1,Battle=1..}] -1811 51 -683 -180 0
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:park_b/robattle players
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Battle 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots