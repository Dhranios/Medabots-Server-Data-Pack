execute unless entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=0] positioned -1621 44 -564 run function medabots_server:spawn_entities/enemy_medabot/saintnurse/frappe/saintnurse/saintnurse/mermaid
execute unless entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=0] positioned -1621 44 -564 run scoreboard players set @e[distance=..1] Stage 17
execute positioned -1618 44 -554 run function medabots_server:spawn_entities/guard/slow
execute positioned -1623 44 -554 run function medabots_server:spawn_entities/guard/slow
execute positioned -1619 44 -568 run function medabots_server:spawn_entities/guard/slow
execute positioned -1622 44 -568 run function medabots_server:spawn_entities/guard/slow
execute positioned -1616 44 -570 run function medabots_server:spawn_entities/guard/slow
execute positioned -1625 44 -570 run function medabots_server:spawn_entities/guard/slow
execute positioned -1627 44 -558 run function medabots_server:spawn_entities/cannon/detect/rotating/east/delay_4
execute positioned -1614 44 -558 run function medabots_server:spawn_entities/cannon/detect/rotating/west/delay_4
execute positioned -1627 44 -564 run function medabots_server:spawn_entities/cannon/detect/rotating/east/delay_4
execute positioned -1614 44 -564 run function medabots_server:spawn_entities/cannon/detect/rotating/west/delay_4
execute positioned -1627 44 -558 run function medabots_server:set_blocks/drawbridge/west
execute positioned -1614 44 -558 run function medabots_server:set_blocks/drawbridge/east
execute positioned -1627 44 -564 run function medabots_server:set_blocks/drawbridge/west
execute positioned -1614 44 -564 run function medabots_server:set_blocks/drawbridge/east
execute positioned -1631 44 -556 run function medabots_server:set_blocks/laser_trap/enabled/east/delay_10
execute positioned -1610 44 -561 run function medabots_server:set_blocks/laser_trap/enabled/west/delay_10
execute positioned -1631 44 -566 run function medabots_server:set_blocks/laser_trap/enabled/east/delay_10
tag @e[x=-1620.5,y=44,z=-551.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1620 44 -560
effect give @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=0] Battle 2
teleport @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=0] -1621 44 -564
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1618 44 -562 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1623 44 -562 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:ruins_in_b/robattle value 3600
bossbar set medabots_server:ruins_in_b/robattle players @a[scores={Stage=17}]
bossbar set medabots_server:ruins_in_b/time players