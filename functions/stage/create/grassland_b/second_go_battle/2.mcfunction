execute unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=2] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=2] positioned -1557 45 -397 run function medabots_server:spawn_entities/medabot/attack_tyrano/attack_tyrano/attack_tyrano/attack_tyrano/kuwagata
execute unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=2] positioned -1557 45 -397 run scoreboard players set @e[distance=..1] Stage 10
execute unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=2] positioned -1557 45 -397 run tag @e[distance=..1] add enemy_medabot
execute positioned -1561 45 -391 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1549 45 -391 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1554 45 -393 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1550 45 -395 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1562 45 -396 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1553 45 -397 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1566 45 -399 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1557 45 -400 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1562 45 -403 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
tag @e[x=-1558.5,y=45,z=-384.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1557 45 -392
effect give @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=2] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=2] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=2] Battle 2
teleport @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=2] -1557 45 -397
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1555 45 -394 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1559 45 -395 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
scoreboard players set @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,scores={Stage=10}] Music 0
scoreboard players set @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,scores={Stage=10}] MusicType 1
scoreboard players set @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,scores={Stage=10}] Battle 0
bossbar set medabots_server:grassland_b/robattle value 3600
bossbar set medabots_server:grassland_b/robattle players @a[scores={Stage=10}]
bossbar set medabots_server:grassland_b/time players