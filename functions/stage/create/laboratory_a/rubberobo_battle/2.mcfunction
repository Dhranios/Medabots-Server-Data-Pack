execute unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=2] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=2] positioned -1773 44 -298 run function medabots_server:spawn_entities/medabot/seven_colors/kasou_touchu/poison_scorpi/seven_colors/chameleon
execute unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=2] positioned -1773 44 -298 run scoreboard players set @e[distance=..1] Stage 9
execute unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=2] positioned -1773 44 -298 run tag @e[distance=..1] add enemy_medabot
execute positioned -1764 44 -302 run function medabots_server:set_blocks/mirror/-45
execute positioned -1766 44 -300 run function medabots_server:set_blocks/mirror/-45
execute positioned -1768 44 -298 run function medabots_server:set_blocks/mirror/-45
execute positioned -1770 44 -296 run function medabots_server:set_blocks/mirror/-45
execute positioned -1772 44 -293 run function medabots_server:set_blocks/mirror/-45
execute positioned -1773 44 -293 run function medabots_server:set_blocks/mirror/45
execute positioned -1774 44 -295 run function medabots_server:set_blocks/mirror/45
execute positioned -1776 44 -297 run function medabots_server:set_blocks/mirror/45
execute positioned -1778 44 -299 run function medabots_server:set_blocks/mirror/45
execute positioned -1780 44 -301 run function medabots_server:set_blocks/mirror/45
scoreboard players set @e[x=-1771.5,y=44,z=-312.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1772 44 -302
effect give @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=2] minecraft:night_vision 2 0 true
effect give @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=2] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=2] Battle 2
teleport @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=2] -1773 44 -298
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1771 44 -300 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1774 44 -300 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:laboratory_a/robattle value 3600
bossbar set medabots_server:laboratory_a/robattle players @a[scores={Stage=9}]
bossbar set medabots_server:laboratory_a/time players