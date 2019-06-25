execute unless entity @a[x=-1570,y=51,z=-247,dx=63,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=51,z=-247,dx=63,dy=4,dz=63,tag=0] positioned -1538 45 -230 run function medabots_server:spawn_entities/enemy_medabot/pure_mermaid/frappe/pastel_fairy/pure_mermaid/mermaid
execute unless entity @a[x=-1570,y=51,z=-247,dx=63,dy=4,dz=63,tag=0] positioned -1538 45 -230 run scoreboard players set @e[distance=..1] Stage 4
execute positioned -1567 45 -237 run function medabots_server:spawn_entities/guard/slow
execute positioned -1567 45 -235 run function medabots_server:spawn_entities/guard/slow
execute positioned -1527 45 -223 run function medabots_server:spawn_entities/cannon/no_detect/looking/west/delay_4
execute positioned -1525 45 -225 run function medabots_server:spawn_entities/cannon/no_detect/looking/west/delay_4
execute positioned -1522 45 -239 run function medabots_server:spawn_entities/cannon/no_detect/looking/west/delay_4
execute positioned -1524 45 -241 run function medabots_server:spawn_entities/cannon/no_detect/looking/west/delay_4
execute positioned -1536 45 -243 run function medabots_server:spawn_entities/cannon/no_detect/looking/south/delay_4
execute positioned -1538 45 -245 run function medabots_server:spawn_entities/cannon/no_detect/looking/south/delay_4
execute positioned -1540 45 -243 run function medabots_server:spawn_entities/cannon/no_detect/looking/south/delay_4
execute positioned -1551 45 -241 run function medabots_server:spawn_entities/cannon/no_detect/looking/east/delay_4
execute positioned -1553 45 -239 run function medabots_server:spawn_entities/cannon/no_detect/looking/east/delay_4
execute positioned -1555 45 -227 run function medabots_server:spawn_entities/cannon/no_detect/looking/east/delay_4
execute positioned -1553 45 -225 run function medabots_server:spawn_entities/cannon/no_detect/looking/east/delay_4
execute positioned -1535 45 -240 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1538 45 -237 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1538 45 -241 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1539 45 -239 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1541 45 -241 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1512 45 -230 run function medabots_server:set_blocks/pot/guard/slow/2_medallar_cents
execute positioned -1511 45 -227 run function medabots_server:set_blocks/pot/2_edallar_cents
execute positioned -1513 45 -225 run function medabots_server:set_blocks/pot/2_medallar_cents
execute positioned -1509 45 -225 run function medabots_server:set_blocks/pot/4_medallar_cents
execute positioned -1514 45 -223 run function medabots_server:set_blocks/pot/guard/slow/4_medallar_cents
execute positioned -1510 45 -223 run function medabots_server:set_blocks/pot/4_medallar_cents
execute positioned -1538 45 -240 run function medabots_server:set_blocks/pot/6_medallar_cents
execute positioned -1565 45 -238 run function medabots_server:set_blocks/pot
execute positioned -1567 45 -236 run function medabots_server:set_blocks/pot/6_medallar_cents
execute positioned -1562 45 -233 run function medabots_server:set_blocks/pot
execute positioned -1564 45 -231 run function medabots_server:set_blocks/pot
tag @e[x=-1539.5,y=45,z=-221.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1537 45 -225
effect give @a[x=-1570,y=51,z=-247,dx=63,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=51,z=-247,dx=63,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=51,z=-247,dx=63,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1570,y=51,z=-247,dx=63,dy=4,dz=63,tag=0] -1538 45 -230
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1535 45 -227 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1540 45 -228 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:seashore_a/robattle value 3600
bossbar set medabots_server:seashore_a/robattle players @a[scores={Stage=4}]
bossbar set medabots_server:seashore_a/time players