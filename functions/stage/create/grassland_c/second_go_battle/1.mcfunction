execute unless entity @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=1] positioned -1537 44 -470 run function medabots_server:spawn_entities/medabot/bluesdog/bluesdog/fly_falcon/bluesdog/kabuto
execute unless entity @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=1] positioned -1537 44 -470 run scoreboard players set @e[distance=..1] Stage 23
execute unless entity @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=1] positioned -1537 44 -470 run tag @e[distance=..1] add enemy_medabot
execute positioned -1535 44 -463 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1531 44 -465 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1531 44 -470 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1534 44 -474 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1538 44 -475 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1542 44 -472 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1543 44 -468 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1540 44 -464 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
tag @e[x=-1537.5,y=44,z=-457.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1536 44 -466
effect give @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=1] Battle 2
teleport @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=1] -1537 44 -470
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1534 44 -468 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1539 44 -468 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:grassland_c/robattle value 3600
bossbar set medabots_server:grassland_c/robattle players @a[scores={Stage=23}]
bossbar set medabots_server:grassland_c/time players
scoreboard players set @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,scores={Stage=23}] Music 0
scoreboard players set @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,scores={Stage=23}] MusicType 1
scoreboard players set @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,scores={Stage=23}] Battle 0