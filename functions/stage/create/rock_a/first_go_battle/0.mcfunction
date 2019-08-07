execute unless entity @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] positioned -1604 45 -170 run function medabots_server:spawn_entities/medabot/poison_scorpi/attack_tyrano/seven_colors/poison_scorpi/kuwagata
execute unless entity @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] positioned -1604 45 -170 run scoreboard players set @e[distance=..1] Stage 2
execute unless entity @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] positioned -1604 45 -170 run tag @e[distance=..1] add enemy_medabot
tag @e[x=-1615.5,y=45,z=-166.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1608 45 -171
effect give @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] -1604 45 -170
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1605 45 -172 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[45.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1607 45 -169 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-135.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:rock_a/robattle value 3600
bossbar set medabots_server:rock_a/robattle players @a[scores={Stage=2}]
bossbar set medabots_server:rock_a/time players