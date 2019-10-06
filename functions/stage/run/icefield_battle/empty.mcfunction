execute if entity @e[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48,tag=mr_referee,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=48,Medabot=0..,Battle=1..}]
execute unless entity @e[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48,tag=mr_referee] run summon minecraft:armor_stand -2001 45 -608 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-90.0f,0.0f]}
execute as @e[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48,type=!minecraft:player] unless entity @s[scores={Stage=48}] run scoreboard players set @s Stage 48
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/icefield_battle/empty
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1999 51 -608 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots