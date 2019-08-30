execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=2] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=2] positioned -1650 45 -466 run function medabots_server:spawn_entities/medabot/fly_falcon/grade_kabuki/maxsnake/fly_falcon/kabuto
execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=2] positioned -1650 45 -466 run scoreboard players set @e[distance=..1] Stage 12
execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=2] positioned -1650 45 -466 run tag @e[distance=..1] add enemy_medabot
execute positioned -1643 45 -449 run function medabots_server:spawn_entities/cannon/search/north/delay_4
execute positioned -1649 45 -450 run function medabots_server:spawn_entities/cannon/search/north/delay_4
execute positioned -1662 45 -457 run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute positioned -1661 45 -472 run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute positioned -1646 45 -475 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned -1653 45 -460 run function medabots_server:set_blocks/action_floor/bomb/delay_5/power_0
execute positioned -1646 45 -464 run function medabots_server:set_blocks/action_floor/bomb/delay_5/power_0
execute positioned -1653 45 -472 run function medabots_server:set_blocks/laser_trap/south/delay_10/power_0
execute positioned -1640 45 -467 run function medabots_server:set_blocks/laser_trap/west/delay_10/power_0
execute positioned -1661 45 -462 run function medabots_server:set_blocks/laser_trap/east/delay_10/power_0
execute positioned -1640 45 -456 run function medabots_server:set_blocks/laser_trap/west/delay_10/power_0
scoreboard players set @e[x=-1634.5,y=45,z=-450.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1649 45 -462
effect give @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=2] minecraft:night_vision 2 0 true
effect give @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=2] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=2] Battle 2
teleport @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=2] -1650 45 -466
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1648 45 -464 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1651 45 -464 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:jungle_b/robattle value 3600
bossbar set medabots_server:jungle_b/robattle players @a[scores={Stage=12}]
bossbar set medabots_server:jungle_b/time players