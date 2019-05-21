execute unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=3] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=3] positioned -1778 44 -430 run function medabots_server:spawn_entities/enemy_medabot/peppercat/uglyduck/peppercat/peppercat/kuwagata
execute unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=3] positioned -1778 44 -430 run scoreboard players set @e[distance=..1] Stage 15
execute positioned -1776 44 -419 run function medabots_server:spawn_entities/cannon/detect/rotating/north/delay_4
execute positioned -1781 44 -421 run function medabots_server:spawn_entities/cannon/detect/rotating/north/delay_4
execute positioned -1771 44 -421 run function medabots_server:spawn_entities/cannon/detect/rotating/north/delay_4
execute positioned -1784 44 -425 run function medabots_server:spawn_entities/cannon/detect/rotating/east/delay_4
execute positioned -1774 44 -427 run function medabots_server:spawn_entities/cannon/detect/rotating/west/delay_4
execute positioned -1775 44 -432 run function medabots_server:spawn_entities/cannon/detect/rotating/south/delay_4
execute positioned -1780 44 -432 run function medabots_server:spawn_entities/cannon/detect/rotating/south/delay_4
execute positioned -1776 44 -418 run function medabots_server:spawn_entities/ice_block
execute positioned -1781 44 -420 run function medabots_server:spawn_entities/ice_block
execute positioned -1771 44 -420 run function medabots_server:spawn_entities/ice_block
execute positioned -1775 44 -425 run function medabots_server:spawn_entities/ice_block
execute positioned -1785 44 -425 run function medabots_server:spawn_entities/ice_block
execute positioned -1780 44 -426 run function medabots_server:spawn_entities/ice_block
execute positioned -1773 44 -427 run function medabots_server:spawn_entities/ice_block
execute positioned -1775 44 -433 run function medabots_server:spawn_entities/ice_block
execute positioned -1780 44 -433 run function medabots_server:spawn_entities/ice_block
tag @e[x=-1778.5,y=44,z=-414.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1777 44 -424
effect give @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=3] minecraft:night_vision 2 0 true
effect give @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=3] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=3] Battle 2
teleport @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=3] -1778 44 -430
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1775 44 -427 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1780 44 -427 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:iceberg_b/robattle value 3600
bossbar set medabots_server:iceberg_b/robattle players @a[scores={Stage=15}]
bossbar set medabots_server:iceberg_b/time players
scoreboard players set @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,scores={Stage=15}] Music 0
scoreboard players set @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,scores={Stage=15}] MusicType 1
scoreboard players set @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,scores={Stage=15}] Battle 0