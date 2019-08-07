execute unless entity @a[x=-1596,y=50,z=-620,dx=22,dy=4,dz=44,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1596,y=50,z=-620,dx=22,dy=4,dz=44,tag=0] positioned -1585 44 -612 run function medabots_server:spawn_entities/medabot/blackbeetle/blackbeetle/fancyroll/blackbeetle/monkey
execute unless entity @a[x=-1596,y=50,z=-620,dx=22,dy=4,dz=44,tag=0] positioned -1585 44 -612 run scoreboard players set @e[distance=..1] Stage 28
execute unless entity @a[x=-1596,y=50,z=-620,dx=22,dy=4,dz=44,tag=0] positioned -1585 44 -612 run tag @e[distance=..1] add enemy_medabot
execute positioned -1578 44 -607 run function medabots_server:spawn_entities/guard/normal/10_medallar_cents
execute positioned -1584 44 -605 run function medabots_server:spawn_entities/cannon/detect/rotating/north/delay_4/10_medallar_cents
execute positioned -1589 44 -606 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1577 44 -618 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1583 44 -615 run function medabots_server:spawn_entities/round_stone
execute positioned -1578 44 -618 run function medabots_server:spawn_entities/ice_block
execute positioned -1589 44 -606 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1589 44 -611 run function medabots_server:spawn_entities/bomb/delay_5
execute positioned -1589 44 -615 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1587 44 -602 run function medabots_server:set_blocks/laser_trap/enabled/north/delay_10
execute positioned -1578 44 -602 run function medabots_server:set_blocks/hammer_punch/enabled/west/delay_10
execute positioned -1594 44 -613 run function medabots_server:set_blocks/fan/slow/east/range_19
execute positioned -1593 44 -617 run function medabots_server:set_blocks/mirror/45
execute positioned -1592 44 -610 run function medabots_server:set_blocks/gas_floor/enabled/falling
execute positioned -1585 44 -617 run function medabots_server:set_blocks/wall
execute positioned -1593 44 -603 run function medabots_server:set_blocks/glass
execute positioned -1581 44 -609 run function medabots_server:set_blocks/stone
execute positioned -1579 44 -614 run function medabots_server:set_blocks/accelerator/north
tag @e[x=-1585.5,y=44,z=-597.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1585 44 -605
effect give @a[x=-1596,y=50,z=-620,dx=22,dy=4,dz=44,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1596,y=50,z=-620,dx=22,dy=4,dz=44,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1596,y=50,z=-620,dx=22,dy=4,dz=44,tag=0] Battle 2
teleport @a[x=-1596,y=50,z=-620,dx=22,dy=4,dz=44,tag=0] -1585 44 -612
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1583 43 -609 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[45.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1587 44 -608 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-135.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:laboratory_c/robattle value 3600
bossbar set medabots_server:laboratory_c/robattle players @a[scores={Stage=28}]
bossbar set medabots_server:laboratory_c/time players