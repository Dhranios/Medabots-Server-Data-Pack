execute unless entity @a[x=-1665,y=51,z=-768,dx=61,dy=4,dz=61,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1665,y=51,z=-768,dx=61,dy=4,dz=61,tag=1] positioned -1656 45 -736 run function medabots_server:spawn_entities/medabot/keithturtle/dondoguu/keithturtle/keithturtle/kabuto
execute unless entity @a[x=-1665,y=51,z=-768,dx=61,dy=4,dz=61,tag=1] positioned -1656 45 -736 run scoreboard players set @e[distance=..1] Stage 31
execute unless entity @a[x=-1665,y=51,z=-768,dx=61,dy=4,dz=61,tag=1] positioned -1656 45 -736 run tag @e[distance=..1] add enemy_medabot
execute positioned -1656 45 -727 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1650 45 -730 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1648 45 -737 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1659 45 -739 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1662 45 -735 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1653 45 -728 run function medabots_server:set_blocks/wall
execute positioned -1657 45 -729 run function medabots_server:set_blocks/wall
execute positioned -1654 45 -731 run function medabots_server:set_blocks/wall
execute positioned -1651 45 -732 run function medabots_server:set_blocks/wall
execute positioned -1649 45 -735 run function medabots_server:set_blocks/wall
execute positioned -1656 45 -734 run function medabots_server:set_blocks/wall
execute positioned -1652 45 -739 run function medabots_server:set_blocks/wall
execute positioned -1654 45 -741 run function medabots_server:set_blocks/wall
execute positioned -1657 45 -740 run function medabots_server:set_blocks/wall
execute positioned -1659 45 -737 run function medabots_server:set_blocks/wall
execute positioned -1662 45 -738 run function medabots_server:set_blocks/wall
execute positioned -1661 45 -733 run function medabots_server:set_blocks/wall
tag @e[x=-1654.5,y=45,z=-723.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1656 45 -732
effect give @a[x=-1665,y=51,z=-768,dx=61,dy=4,dz=61,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1665,y=51,z=-768,dx=61,dy=4,dz=61,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1665,y=51,z=-768,dx=61,dy=4,dz=61,tag=1] Battle 2
teleport @a[x=-1665,y=51,z=-768,dx=61,dy=4,dz=61,tag=1] -1656 45 -736
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1654 45 -733 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[135.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1658 45 -735 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-45.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:jungle_d/robattle value 3600
bossbar set medabots_server:jungle_d/robattle players @a[scores={Stage=31}]
bossbar set medabots_server:jungle_d/time players