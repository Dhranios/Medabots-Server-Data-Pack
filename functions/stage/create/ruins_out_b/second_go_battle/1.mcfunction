execute unless entity @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=1] run function medabots_server:stage/create/ruins_out_b/second_go_battle/1_cpu
execute positioned -1790 45 -515 run function medabots_server:set_blocks/gas_floor/enabled/falling
execute positioned -1784 45 -518 run function medabots_server:set_blocks/gas_floor/enabled/falling
execute positioned -1797 45 -521 run function medabots_server:set_blocks/gas_floor/enabled/falling
execute positioned -1785 45 -522 run function medabots_server:set_blocks/gas_floor/enabled/falling
execute positioned -1779 45 -526 run function medabots_server:set_blocks/gas_floor/enabled/falling
execute positioned -1790 45 -527 run function medabots_server:set_blocks/gas_floor/enabled/falling
execute positioned -1790 45 -532 run function medabots_server:set_blocks/gas_floor/enabled/falling
execute positioned -1796 45 -513 run function medabots_server:set_blocks/stone
execute positioned -1779 45 -514 run function medabots_server:set_blocks/stone
execute positioned -1790 45 -522 run function medabots_server:set_blocks/stone
execute positioned -1780 45 -522 run function medabots_server:set_blocks/stone
execute positioned -1796 45 -526 run function medabots_server:set_blocks/stone
execute positioned -1785 45 -529 run function medabots_server:set_blocks/stone
execute positioned -1778 45 -533 run function medabots_server:set_blocks/stone
execute positioned -1797 45 -534 run function medabots_server:set_blocks/stone
tag @e[x=-1787.5,y=45,z=-510.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1788 45 -521
effect give @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=1] Battle 2
teleport @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=1] -1787 45 -526
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1786 45 -523 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1789 45 -524 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:ruins_out_b/robattle value 3600
bossbar set medabots_server:ruins_out_b/robattle players @a[scores={Stage=16}]
bossbar set medabots_server:ruins_out_b/time players
scoreboard players set @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,scores={Stage=16}] Music 0
scoreboard players set @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,scores={Stage=16}] MusicType 1
scoreboard players set @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,scores={Stage=16}] Battle 0