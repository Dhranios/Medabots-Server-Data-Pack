execute unless entity @a[x=-1570,y=50,z=-608,dx=60,dy=4,dz=60,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=50,z=-608,dx=60,dy=4,dz=60,tag=0] positioned -1523 43 -601 run function medabots_server:spawn_entities/medabot/peppercat/peppercat/uglyduck/peppercat/kuwagata
execute unless entity @a[x=-1570,y=50,z=-608,dx=60,dy=4,dz=60,tag=0] positioned -1523 43 -601 run scoreboard players set @e[distance=..1] Stage 25
execute unless entity @a[x=-1570,y=50,z=-608,dx=60,dy=4,dz=60,tag=0] positioned -1523 43 -601 run tag @e[distance=..1] add enemy_medabot
execute positioned -1515 44 -593 run function medabots_server:spawn_entities/cannon/no_detect/looking/west/delay_4
execute positioned -1516 44 -602 run function medabots_server:spawn_entities/cannon/no_detect/looking/south/delay_4
execute positioned -1520 44 -603 run function medabots_server:spawn_entities/cannon/no_detect/looking/south/delay_4
execute positioned -1527 44 -604 run function medabots_server:spawn_entities/cannon/no_detect/looking/south/delay_4
execute positioned -1531 44 -604 run function medabots_server:spawn_entities/cannon/no_detect/looking/south/delay_4
execute positioned -1530 44 -598 run function medabots_server:spawn_entities/cannon/no_detect/looking/east/delay_4
execute positioned -1531 44 -592 run function medabots_server:spawn_entities/cannon/no_detect/looking/east/delay_4
execute positioned -1525 44 -594 run function medabots_server:set_blocks/gas_floor/enabled/falling
tag @e[x=-1529.5,y=44,z=-586.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1522 44 -596
effect give @a[x=-1570,y=50,z=-608,dx=60,dy=4,dz=60,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=50,z=-608,dx=60,dy=4,dz=60,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=50,z=-608,dx=60,dy=4,dz=60,tag=0] Battle 2
teleport @a[x=-1570,y=50,z=-608,dx=60,dy=4,dz=60,tag=0] -1523 43 -601
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1521 43 -598 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1524 43 -598 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:seashore_c/robattle value 3600
bossbar set medabots_server:seashore_c/robattle players @a[scores={Stage=25}]
bossbar set medabots_server:seashore_c/time players