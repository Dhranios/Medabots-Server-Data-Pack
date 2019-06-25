execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=8] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=8] positioned -1715 45 -681 run function medabots_server:spawn_entities/character_enemy_medabot/seaslug
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=8] positioned -1715 45 -681 run scoreboard players set @e[distance=..1] Stage 21
execute positioned -1722 45 -670 run function medabots_server:set_blocks/floor_switch/yellow/delay_60
execute positioned -1707 45 -670 run function medabots_server:set_blocks/floor_switch/yellow/delay_60
execute positioned -1707 45 -685 run function medabots_server:set_blocks/floor_switch/yellow/delay_60
execute positioned -1722 45 -685 run function medabots_server:set_blocks/floor_switch/yellow/delay_60
execute positioned -1721 45 -670 run function medabots_server:set_blocks/fan/off/east/range_17
execute positioned -1707 45 -671 run function medabots_server:set_blocks/fan/off/north/range_17
execute positioned -1708 45 -685 run function medabots_server:set_blocks/fan/off/west/range_17
execute positioned -1722 45 -684 run function medabots_server:set_blocks/fan/off/south/range_17
execute positioned -1721 45 -668 run function medabots_server:set_blocks/laser_trap/disabled/east/delay_10
execute positioned -1721 45 -675 run function medabots_server:set_blocks/laser_trap/disabled/east/delay_10
execute positioned -1705 45 -671 run function medabots_server:set_blocks/laser_trap/disabled/north/delay_10
execute positioned -1712 45 -671 run function medabots_server:set_blocks/laser_trap/disabled/north/delay_10
execute positioned -1708 45 -687 run function medabots_server:set_blocks/laser_trap/disabled/west/delay_10
execute positioned -1708 45 -680 run function medabots_server:set_blocks/laser_trap/disabled/west/delay_10
execute positioned -1724 45 -684 run function medabots_server:set_blocks/laser_trap/disabled/south/delay_10
execute positioned -1717 45 -684 run function medabots_server:set_blocks/laser_trap/disabled/south/delay_10
tag @e[x=-1714.5,y=45,z=-665.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1714 45 -674
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=8] minecraft:night_vision 2 0 true
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=8] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=8] Battle 2
teleport @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=8] -1715 45 -681
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1710 45 -677 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1719 45 -678 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:paradise_a/robattle value 3600
bossbar set medabots_server:paradise_a/robattle players @a[scores={Stage=21}]
bossbar set medabots_server:paradise_a/time players
scoreboard players set @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,scores={Stage=21}] Music 0
scoreboard players set @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,scores={Stage=21}] MusicType 1
scoreboard players set @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,scores={Stage=21}] Battle 0