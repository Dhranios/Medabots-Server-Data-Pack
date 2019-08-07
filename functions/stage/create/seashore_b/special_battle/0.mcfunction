execute unless entity @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=1] positioned -1747 45 -430 run function medabots_server:spawn_entities/medabot/hippojamas/basstroyer/hellphoenix/hippopojamas/knight
execute unless entity @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=1] positioned -1747 45 -430 run scoreboard players set @e[distance=..1] Stage 13
execute unless entity @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=1] positioned -1747 45 -430 run tag @e[distance=..1] add enemy_medabot
execute positioned -1741 45 -433 run function medabots_server:set_blocks/mirror/45
execute positioned -1743 45 -431 run function medabots_server:set_blocks/mirror/45
execute positioned -1745 45 -429 run function medabots_server:set_blocks/mirror/45
execute positioned -1755 45 -434 run function medabots_server:set_blocks/mirror/45
execute positioned -1753 45 -432 run function medabots_server:set_blocks/mirror/45
execute positioned -1751 45 -430 run function medabots_server:set_blocks/mirror/45
execute positioned -1744 45 -424 run function medabots_server:set_blocks/mirror/45
execute positioned -1742 45 -422 run function medabots_server:set_blocks/mirror/45
execute positioned -1740 45 -420 run function medabots_server:set_blocks/mirror/45
execute positioned -1750 45 -425 run function medabots_server:set_blocks/mirror/45
execute positioned -1752 45 -423 run function medabots_server:set_blocks/mirror/45
execute positioned -1754 45 -421 run function medabots_server:set_blocks/mirror/45
tag @e[x=-1746.5,y=45,z=-412.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1748 45 -426
effect give @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=1] Battle 2
teleport @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=1] -1747 45 -430
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1746 45 -428 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1749 45 -428 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:seashore_b/robattle value 3600
bossbar set medabots_server:seashore_b/robattle players @a[scores={Stage=13}]
bossbar set medabots_server:seashore_b/time players
scoreboard players set @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,scores={Stage=13}] Music 0
scoreboard players set @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,scores={Stage=13}] MusicType 1
scoreboard players set @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,scores={Stage=13}] Battle 0