execute unless entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=2] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=2] positioned -1557 44 -537 run function medabots_server:spawn_entities/enemy_medabot/keithturtle/dragonbeetle/keithturtle/keithturtle/kabuto
execute unless entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=2] positioned -1557 44 -537 run scoreboard players set @e[distance=..1] Stage 24
execute positioned -1555 44 -527 run function medabots_server:set_blocks/glass
execute positioned -1559 44 -527 run function medabots_server:set_blocks/glass
execute positioned -1551 44 -530 run function medabots_server:set_blocks/glass
execute positioned -1557 44 -531 run function medabots_server:set_blocks/glass
execute positioned -1564 44 -531 run function medabots_server:set_blocks/glass
execute positioned -1553 44 -533 run function medabots_server:set_blocks/glass
execute positioned -1567 44 -533 run function medabots_server:set_blocks/glass
execute positioned -1562 44 -534 run function medabots_server:set_blocks/glass
execute positioned -1557 44 -535 run function medabots_server:set_blocks/glass
execute positioned -1564 44 -536 run function medabots_server:set_blocks/glass
execute positioned -1551 44 -537 run function medabots_server:set_blocks/glass
execute positioned -1555 44 -538 run function medabots_server:set_blocks/glass
execute positioned -1561 44 -538 run function medabots_server:set_blocks/glass
execute positioned -1552 44 -541 run function medabots_server:set_blocks/glass
execute positioned -1557 44 -541 run function medabots_server:set_blocks/glass
execute positioned -1563 44 -543 run function medabots_server:set_blocks/glass
tag @e[x=-1551.5,y=44,z=-524.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1557 44 -533
effect give @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=2] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=2] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=2] Battle 2
teleport @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=2] -1557 44 -537
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1554 44 -535 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1560 44 -535 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:jungle_c/robattle value 3600
bossbar set medabots_server:jungle_c/robattle players @a[scores={Stage=24}]
bossbar set medabots_server:jungle_c/time players
scoreboard players set @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,scores={Stage=24}] Music 0
scoreboard players set @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,scores={Stage=24}] MusicType 1
scoreboard players set @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,scores={Stage=24}] Battle 0