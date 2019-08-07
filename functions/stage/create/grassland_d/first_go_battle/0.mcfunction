execute unless entity @a[x=-1600,y=50,z=-750,dx=62,dy=4,dz=62,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1600,y=50,z=-750,dx=62,dy=4,dz=62,tag=0] positioned -1589 45 -742 run function medabots_server:spawn_entities/medabot/bluesdog/bluesdog/shoot_spider/bluesdog/kabuto
execute unless entity @a[x=-1600,y=50,z=-750,dx=62,dy=4,dz=62,tag=0] positioned -1589 45 -742 run scoreboard players set @e[distance=..1] Stage 30
execute unless entity @a[x=-1600,y=50,z=-750,dx=62,dy=4,dz=62,tag=0] positioned -1589 45 -742 run tag @e[distance=..1] add enemy_medabot
execute positioned -1585 45 -733 run function medabots_server:set_blocks/floor_switch/yellow/delay_15
execute positioned -1582 45 -737 run function medabots_server:set_blocks/floor_switch/yellow/delay_15
execute positioned -1582 45 -740 run function medabots_server:set_blocks/floor_switch/yellow/delay_15
execute positioned -1590 45 -733 run function medabots_server:set_blocks/floor_switch/yellow/delay_15
execute positioned -1593 45 -737 run function medabots_server:set_blocks/floor_switch/yellow/delay_15
execute positioned -1593 45 -741 run function medabots_server:set_blocks/floor_switch/yellow/delay_15
execute positioned -1592 45 -744 run function medabots_server:set_blocks/floor_switch/yellow/delay_15
execute positioned -1590 45 -746 run function medabots_server:set_blocks/floor_switch/yellow/delay_15
execute positioned -1586 45 -745 run function medabots_server:set_blocks/floor_switch/yellow/delay_15
execute positioned -1582 45 -734 run function medabots_server:set_blocks/fan/off/west/range_12
execute positioned -1581 45 -739 run function medabots_server:set_blocks/fan/off/west/range_15
execute positioned -1581 45 -742 run function medabots_server:set_blocks/fan/off/west/range_14
execute positioned -1593 45 -734 run function medabots_server:set_blocks/fan/off/east/range_13
execute positioned -1594 45 -739 run function medabots_server:set_blocks/fan/off/east/range_15
execute positioned -1594 45 -744 run function medabots_server:set_blocks/fan/off/east/range_15
execute positioned -1592 45 -746 run function medabots_server:set_blocks/fan/off/south/range_14
execute positioned -1588 45 -746 run function medabots_server:set_blocks/fan/off/south/range_15
execute positioned -1584 45 -746 run function medabots_server:set_blocks/fan/off/south/range_14
tag @e[x=-1587.5,y=45,z=-729.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1588 45 -735
effect give @a[x=-1600,y=50,z=-750,dx=62,dy=4,dz=62,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1600,y=50,z=-750,dx=62,dy=4,dz=62,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1600,y=50,z=-750,dx=62,dy=4,dz=62,tag=0] Battle 2
teleport @a[x=-1600,y=50,z=-750,dx=62,dy=4,dz=62,tag=0] -1589 45 -742
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1587 45 -738 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1590 45 -739 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:grassland_d/robattle value 3600
bossbar set medabots_server:grassland_d/robattle players @a[scores={Stage=30}]
bossbar set medabots_server:grassland_d/time players