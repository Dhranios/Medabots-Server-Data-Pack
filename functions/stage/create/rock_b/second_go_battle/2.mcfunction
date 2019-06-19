execute unless entity @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] positioned -1604 45 -374 run function medabots_server:spawn_entities/enemy_medabot/bluesdog/fly_falcon/bluesdog/bluesdog/kabuto
execute unless entity @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] positioned -1604 45 -374 run scoreboard players set @e[distance=..1] Stage 11
execute positioned -1613 45 -373 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1613 45 -378 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1609 45 -369 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1607 45 -378 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1604 45 -368 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1603 45 -372 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1602 45 -379 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1600 45 -375 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
tag @e[x=-1614.5,y=45,z=-371.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1608 45 -373
effect give @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] -1604 45 -374
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1606 45 -375 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Invisible:1b,Rotation:[0.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1606 45 -372 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Invisible:1b,Rotation:[-180.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
scoreboard players set @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,scores={Stage=11}] Music 0
scoreboard players set @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,scores={Stage=11}] MusicType 1
scoreboard players set @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,scores={Stage=11}] Battle 0
bossbar set medabots_server:rock_b/robattle value 3600
bossbar set medabots_server:rock_b/robattle players @a[scores={Stage=11}]
bossbar set medabots_server:rock_b/time players