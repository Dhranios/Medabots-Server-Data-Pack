execute unless entity @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=1] positioned -1656 44 -697 run function medabots_server:spawn_entities/medabot/dorcus/dorcus/kasou_touchu/dorcus/knight
execute unless entity @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=1] positioned -1656 44 -697 run scoreboard players set @e[distance=..1] Stage 27
execute unless entity @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=1] positioned -1656 44 -697 run tag @e[distance=..1] add enemy_medabot
execute positioned -1662 44 -689 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1661 44 -690 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1661 44 -691 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1660 44 -694 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1660 44 -695 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1661 44 -698 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1661 44 -699 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1662 44 -700 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1649 44 -689 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1650 44 -690 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1650 44 -691 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1651 44 -694 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1651 44 -695 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1650 44 -698 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1650 44 -699 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1649 44 -700 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
scoreboard players set @e[x=-1655.5,y=44,z=-684.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1656 44 -692
effect give @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=1] Battle 2
teleport @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=1] -1656 44 -697
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1654 44 -694 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[45.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1658 44 -695 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-135.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
scoreboard players set @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,scores={Stage=27}] Music 0
scoreboard players set @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,scores={Stage=27}] MusicType 1
scoreboard players set @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,scores={Stage=27}] Battle 0
bossbar set medabots_server:ruins_out_c/robattle value 3600
bossbar set medabots_server:ruins_out_c/robattle players @a[scores={Stage=27}]
bossbar set medabots_server:ruins_out_c/time players