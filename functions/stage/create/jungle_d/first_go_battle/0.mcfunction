execute unless entity @a[x=-1665,y=51,z=-767,dx=61,dy=4,dz=61,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1665,y=51,z=-767,dx=61,dy=4,dz=61,tag=0] positioned -1643 45 -714 run function medabots_server:spawn_entities/enemy_medabot/pastel_fairy/frappe/pinguen/pastel_fairy/mermaid
execute unless entity @a[x=-1665,y=51,z=-767,dx=61,dy=4,dz=61,tag=0] positioned -1643 45 -714 run scoreboard players set @e[distance=..1] Stage 31
execute positioned -1642 45 -717 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1640 45 -715 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1638 45 -711 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1640 45 -709 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1642 45 -711 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1644 45 -713 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1646 45 -711 run function medabots_server:set_blocks/hole/delay_5
tag @e[x=-1633.5,y=45,z=-715.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1639 45 -713
effect give @a[x=-1665,y=51,z=-767,dx=61,dy=4,dz=61,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1665,y=51,z=-767,dx=61,dy=4,dz=61,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1665,y=51,z=-767,dx=61,dy=4,dz=61,tag=0] Battle 2
teleport @a[x=-1665,y=51,z=-767,dx=61,dy=4,dz=61,tag=0] -1643 45 -714
summon minecraft:area_effect_cloud -1641 45 -712 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:jungle_d/robattle value 3600
bossbar set medabots_server:jungle_d/robattle players @a[scores={Stage=31}]
bossbar set medabots_server:jungle_d/time players