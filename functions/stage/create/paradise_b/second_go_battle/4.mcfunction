execute unless entity @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=4] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=4] positioned -1659 45 -618 run function medabots_server:spawn_entities/medabot/dorcus/kasou_touchu/dorcus/dorcus/knight
execute unless entity @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=4] positioned -1659 45 -618 run scoreboard players set @e[distance=..1] Stage 22
execute unless entity @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=4] positioned -1659 45 -618 run tag @e[distance=..1] add enemy_medabot
execute positioned -1661 45 -620 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1657 45 -619 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1661 45 -627 run function medabots_server:set_blocks/hammer_punch/enabled/south/delay_10
execute positioned -1660 45 -625 run function medabots_server:set_blocks/pot
execute positioned -1662 45 -623 run function medabots_server:set_blocks/stone
execute positioned -1658 45 -622 run function medabots_server:set_blocks/stone
execute positioned -1661 45 -617 run function medabots_server:set_blocks/stone
execute positioned -1657 45 -617 run function medabots_server:set_blocks/stone
execute positioned -1657 45 -614 run function medabots_server:set_blocks/stone
execute positioned -1658 45 -613 run function medabots_server:set_blocks/laser_trap/enabled/north/delay_10
tag @e[x=-1658.545,z=-627.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1660 45 -623
effect give @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=4] minecraft:night_vision 2 0 true
effect give @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=4] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=4] Battle 2
teleport @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=4] -1659 45 -618
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1658 45 -623 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[0.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1661 45 -618 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-180.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:paradise_b/robattle value 3600
bossbar set medabots_server:paradise_b/robattle players @a[scores={Stage=22}]
bossbar set medabots_server:paradise_b/time players
scoreboard players set @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,scores={Stage=22}] Music 0
scoreboard players set @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,scores={Stage=22}] MusicType 1
scoreboard players set @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,scores={Stage=22}] Battle 0