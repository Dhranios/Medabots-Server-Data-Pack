execute unless entity @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=1] positioned -1660 45 -233 run function medabots_server:spawn_entities/enemy_medabot/hellphoenix/kanehachi_mk2/fly_falcon/hellphoenix/kuwagata
execute unless entity @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=1] positioned -1660 45 -233 run scoreboard players set @e[distance=..1] Stage 5
execute positioned -1654 45 -225 run function medabots_server:spawn_entities/ice_block
execute positioned -1657 45 -227 run function medabots_server:spawn_entities/ice_block
execute positioned -1659 45 -229 run function medabots_server:spawn_entities/ice_block
execute positioned -1657 45 -231 run function medabots_server:spawn_entities/ice_block
execute positioned -1663 45 -233 run function medabots_server:spawn_entities/ice_block
execute positioned -1654 45 -233 run function medabots_server:spawn_entities/ice_block
execute positioned -1657 45 -235 run function medabots_server:spawn_entities/ice_block
execute positioned -1654 45 -237 run function medabots_server:spawn_entities/ice_block
execute positioned -1661 45 -239 run function medabots_server:spawn_entities/ice_block
execute positioned -1658 45 -240 run function medabots_server:spawn_entities/ice_block
tag @e[x=-1651.5,y=45,z=-228.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1656 45 -233
effect give @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=1] Battle 2
teleport @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=1] -1660 45 -233
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1658 45 -234 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Invisible:1b,Rotation:[0.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1658 45 -232 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Invisible:1b,Rotation:[-180.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:snowfield_a/robattle value 3600
bossbar set medabots_server:snowfield_a/robattle players @a[scores={Stage=5}]
bossbar set medabots_server:snowfield_a/time players
scoreboard players set @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,scores={Stage=5}] Music 0
scoreboard players set @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,scores={Stage=5}] MusicType 1
scoreboard players set @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,scores={Stage=5}] Battle 0