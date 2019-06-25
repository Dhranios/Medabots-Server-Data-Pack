execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=4] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=4] positioned -1678 44 -626 run function medabots_server:spawn_entities/enemy_medabot/hellphoenix/fly_falcon/poison_scorpi/hellphoenix/kuwagata
execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=4] positioned -1678 44 -626 run scoreboard players set @e[distance=..1] Stage 18
execute positioned -1680 44 -618 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1685 44 -623 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1679 44 -624 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1671 44 -624 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1684 44 -628 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1675 44 -629 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1678 44 -631 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1676 44 -618 run function medabots_server:set_blocks/stone
execute positioned -1683 44 -620 run function medabots_server:set_blocks/stone
execute positioned -1673 44 -620 run function medabots_server:set_blocks/stone
execute positioned -1677 44 -621 run function medabots_server:set_blocks/stone
execute positioned -1674 44 -623 run function medabots_server:set_blocks/stone
execute positioned -1682 44 -624 run function medabots_server:set_blocks/stone
execute positioned -1674 44 -626 run function medabots_server:set_blocks/stone
execute positioned -1682 44 -627 run function medabots_server:set_blocks/stone
execute positioned -1679 44 -630 run function medabots_server:set_blocks/stone
tag @e[x=-1678.5,y=44,z=-613.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1679 44 -622
effect give @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=4] minecraft:night_vision 2 0 true
effect give @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=4] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=4] Battle 2
teleport @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=4] -1678 44 -626
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1677 44 -624 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1680 44 -624 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:laboratory_b/robattle value 3600
bossbar set medabots_server:laboratory_b/robattle players @a[scores={Stage=18}]
bossbar set medabots_server:laboratory_b/time players