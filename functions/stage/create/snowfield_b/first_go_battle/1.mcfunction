execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=1] positioned -1754 45 -493 run function medabots_server:spawn_entities/enemy_medabot/shoot_spider/kasou_touchu/dragonbeetle/shoot_spider/chameleon
execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=1] positioned -1754 45 -493 run scoreboard players set @e[distance=..1] Stage 14
execute positioned -1746 45 -496 run function medabots_server:spawn_entities/item/6_medallar_cents
execute positioned -1746 45 -496 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1752 45 -484 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1754 45 -486 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1756 45 -488 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1756 45 -491 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1755 45 -495 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1752 45 -494 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1756 45 -499 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1752 45 -497 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1749 45 -495 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1748 45 -497 run function medabots_server:set_blocks/hole/delay_5
tag @e[x=-1750.5,y=45,z=-487.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1755 45 -489
effect give @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=1] Battle 2
teleport @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=1] -1754 45 -493
summon minecraft:area_effect_cloud -1756 45 -490 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","open_the_exit_door"],Duration:2147483647}
bossbar set medabots_server:snowfield_b/robattle value 3600
bossbar set medabots_server:snowfield_b/robattle players @a[scores={Stage=14}]
bossbar set medabots_server:snowfield_b/time players