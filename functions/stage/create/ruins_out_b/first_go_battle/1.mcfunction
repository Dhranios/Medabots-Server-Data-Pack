execute unless entity @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=1] positioned -1787 45 -525 run function medabots_server:spawn_entities/medabot/hippopojamas/dragonbeetle/maxsnake/hippopojamas/knight
execute unless entity @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=1] positioned -1787 45 -525 run scoreboard players set @e[distance=..1] Stage 16
execute unless entity @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=1] positioned -1787 45 -525 run tag @e[distance=..1] add enemy_medabot
tag @e[x=-1787.5,y=45,z=-510.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1788 45 -521
effect give @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=1] Battle 2
teleport @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=1] -1787 45 -525
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1786 45 -523 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1789 45 -523 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:ruins_out_b/robattle value 3600
bossbar set medabots_server:ruins_out_b/robattle players @a[scores={Stage=16}]
bossbar set medabots_server:ruins_out_b/time players
scoreboard players set @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,scores={Stage=16}] Music 0
scoreboard players set @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,scores={Stage=16}] MusicType 1
scoreboard players set @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,scores={Stage=16}] Battle 0