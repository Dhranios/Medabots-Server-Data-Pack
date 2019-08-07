execute unless entity @a[x=-1857,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1857,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] positioned -1810 45 -653 run function medabots_server:spawn_entities/medabot/sailor_multi/pure_mermaid/sailor_multi/sailor_multi/spider
execute unless entity @a[x=-1857,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] positioned -1810 45 -653 run scoreboard players set @e[distance=..1] Stage 20
execute unless entity @a[x=-1857,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] positioned -1810 45 -653 run tag @e[distance=..1] add enemy_medabot
execute positioned -1808 45 -663 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1805 45 -660 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1805 45 -656 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1808 45 -652 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1812 45 -652 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1816 45 -655 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1816 45 -659 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1813 45 -663 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1811 45 -664 run function medabots_server:set_blocks/stone
execute positioned -1805 45 -663 run function medabots_server:set_blocks/stone
execute positioned -1803 45 -658 run function medabots_server:set_blocks/stone
execute positioned -1805 45 -652 run function medabots_server:set_blocks/stone
execute positioned -1810 45 -651 run function medabots_server:set_blocks/stone
execute positioned -1815 45 -652 run function medabots_server:set_blocks/stone
execute positioned -1818 45 -657 run function medabots_server:set_blocks/stone
execute positioned -1816 45 -663 run function medabots_server:set_blocks/stone
tag @e[x=-1809.5,y=45,z=-667.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1811 45 -662
effect give @a[x=-1857,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1857,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1857,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] Battle 2
teleport @a[x=-1857,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] -1810 45 -653
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1804 45 -657 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1817 45 -658 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:park_b/robattle value 3600
bossbar set medabots_server:park_b/robattle players @a[scores={Stage=20}]
bossbar set medabots_server:park_b/time players