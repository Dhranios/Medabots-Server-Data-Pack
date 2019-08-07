execute unless entity @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=1] positioned -1541 44 -675 run function medabots_server:spawn_entities/medabot/sailor_multi/sailor_multi/pure_mermaid/sailor_multi/spider
execute unless entity @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=1] positioned -1541 44 -675 run scoreboard players set @e[distance=..1] Stage 26
execute unless entity @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=1] positioned -1541 44 -675 run tag @e[distance=..1] add enemy_medabot
execute positioned -1532 44 -668 run function medabots_server:set_blocks/accelerator/north
execute positioned -1539 44 -668 run function medabots_server:set_blocks/accelerator/north
execute positioned -1542 44 -668 run function medabots_server:set_blocks/accelerator/north
execute positioned -1549 44 -668 run function medabots_server:set_blocks/accelerator/north
execute positioned -1532 44 -679 run function medabots_server:set_blocks/accelerator/south
execute positioned -1539 44 -679 run function medabots_server:set_blocks/accelerator/south
execute positioned -1542 44 -679 run function medabots_server:set_blocks/accelerator/south
execute positioned -1549 44 -679 run function medabots_server:set_blocks/accelerator/south
execute positioned -1547 44 -666 run function medabots_server:set_blocks/accelerator/east
execute positioned -1547 44 -672 run function medabots_server:set_blocks/accelerator/east
execute positioned -1547 44 -675 run function medabots_server:set_blocks/accelerator/east
execute positioned -1547 44 -681 run function medabots_server:set_blocks/accelerator/east
execute positioned -1534 44 -666 run function medabots_server:set_blocks/accelerator/west
execute positioned -1534 44 -672 run function medabots_server:set_blocks/accelerator/west
execute positioned -1534 44 -675 run function medabots_server:set_blocks/accelerator/west
execute positioned -1534 44 -681 run function medabots_server:set_blocks/accelerator/west
tag @e[x=-1540.5,y=44,z=-661.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1541 44 -671
effect give @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=1] Battle 2
teleport @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=1] -1541 44 -675
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1539 44 -673 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[0.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1543 44 -673 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:seashore_c/robattle value 3600
bossbar set medabots_server:seashore_c/robattle players @a[scores={Stage=26}]
bossbar set medabots_server:seashore_c/time players