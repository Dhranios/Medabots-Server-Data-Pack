execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=4] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=4] positioned -1751 45 -528 run function medabots_server:spawn_entities/medabot/basstroyer/kasou_touchu/poison_scorpi/basstroyer/kuwagata
execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=4] positioned -1751 45 -528 run scoreboard players set @e[distance=..1] Stage 14
execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=4] positioned -1751 45 -528 run tag @e[distance=..1] add enemy_medabot
execute positioned -1758 45 -533 run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute positioned -1756 45 -518 run function medabots_server:set_blocks/accelerator/north
execute positioned -1759 45 -521 run function medabots_server:set_blocks/accelerator/north
execute positioned -1755 45 -526 run function medabots_server:set_blocks/accelerator/north
execute positioned -1758 45 -530 run function medabots_server:set_blocks/accelerator/north
execute positioned -1754 45 -534 run function medabots_server:set_blocks/accelerator/north
execute positioned -1751 45 -533 run function medabots_server:set_blocks/accelerator/north
execute positioned -1748 45 -531 run function medabots_server:set_blocks/accelerator/north
execute positioned -1742 45 -528 run function medabots_server:set_blocks/accelerator/north
execute positioned -1747 45 -523 run function medabots_server:set_blocks/accelerator/north
execute positioned -1751 45 -522 run function medabots_server:set_blocks/accelerator/north
execute positioned -1746 45 -519 run function medabots_server:set_blocks/accelerator/north
execute positioned -1741 45 -520 run function medabots_server:set_blocks/accelerator/north
execute positioned -1752 45 -517 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1754 45 -530 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1745 45 -534 run function medabots_server:set_blocks/hole/delay_5
scoreboard players set @e[x=-1746.5,y=45,z=-513.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1752 45 -524
effect give @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=4] minecraft:night_vision 2 0 true
effect give @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=4] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=4] Battle 2
teleport @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=4] -1751 45 -528
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1749 45 -526 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1754 45 -526 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:snowfield_b/robattle value 3600
bossbar set medabots_server:snowfield_b/robattle players @a[scores={Stage=14}]
bossbar set medabots_server:snowfield_b/time players
scoreboard players set @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,scores={Stage=14}] Music 0
scoreboard players set @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,scores={Stage=14}] MusicType 1
scoreboard players set @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,scores={Stage=14}] Battle 0