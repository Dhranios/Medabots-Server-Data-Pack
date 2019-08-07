execute store result score @s BattlingMedabots if entity @e[scores={Stage=49,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=2..}] unless entity @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1994 45 -561 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[90.0f,0.0f]}
execute if block -1981 44 -563 minecraft:yellow_wool run scoreboard players remove @e[x=-1977.5,y=45,z=-562.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1981 44 -563 minecraft:yellow_wool run tag @e[x=-1977.5,y=45,z=-562.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1981 44 -563 minecraft:orange_wool run scoreboard players add @e[x=-1977.5,y=45,z=-562.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1981 44 -563 minecraft:orange_wool run tag @e[x=-1977.5,y=45,z=-562.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1994 44 -545 minecraft:yellow_wool run scoreboard players remove @e[x=-1993.5,y=45,z=-541.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1994 44 -545 minecraft:yellow_wool run tag @e[x=-1993.5,y=45,z=-541.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1994 44 -545 minecraft:orange_wool run scoreboard players add @e[x=-1993.5,y=45,z=-541.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1994 44 -545 minecraft:orange_wool run tag @e[x=-1993.5,y=45,z=-541.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -2012 44 -558 minecraft:yellow_wool run scoreboard players remove @e[x=-2014.5,y=45,z=-557.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -2012 44 -558 minecraft:yellow_wool run tag @e[x=-2014.5,y=45,z=-557.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -2012 44 -558 minecraft:orange_wool run scoreboard players add @e[x=-2014.5,y=45,z=-557.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -2012 44 -558 minecraft:orange_wool run tag @e[x=-2014.5,y=45,z=-557.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1999 44 -576 minecraft:yellow_wool run scoreboard players remove @e[x=-1998.5,y=45,z=-578.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1999 44 -576 minecraft:yellow_wool run tag @e[x=-1998.5,y=45,z=-578.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1999 44 -576 minecraft:orange_wool run scoreboard players add @e[x=-1998.5,y=45,z=-578.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1999 44 -576 minecraft:orange_wool run tag @e[x=-1998.5,y=45,z=-578.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute as @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,type=!minecraft:player] unless entity @s[scores={Stage=49}] run scoreboard players set @s Stage 49
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/ruins_battle/wind
tag @s[scores={BattlingMedabots=1,Battle=1..},tag=story_battle,advancements={medabots_server:wave_1/story_progression={vs_seaslug=true,vs_seaslug_battle=false}}] add dialog_infinity_vs_seaslug_battle
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1997 51 -560 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots