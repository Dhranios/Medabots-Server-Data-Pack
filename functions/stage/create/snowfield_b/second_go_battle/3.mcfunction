execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=3] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=3] positioned -1682 45 -528 run function medabots_server:spawn_entities/medabot/maxsnake/dragonbeetle/grade_kabuki/maxsnake/kuwagata
execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=3] positioned -1682 45 -528 run scoreboard players set @e[distance=..1] Stage 14
execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=3] positioned -1682 45 -528 run tag @e[distance=..1] add enemy_medabot
execute positioned -1686 45 -535 run function medabots_server:spawn_entities/item/6_medallar_cents
execute positioned -1686 45 -535 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1689 45 -529 run function medabots_server:spawn_entities/ice_block
execute positioned -1687 45 -527 run function medabots_server:spawn_entities/ice_block
execute positioned -1685 45 -524 run function medabots_server:spawn_entities/ice_block
execute positioned -1684 45 -521 run function medabots_server:spawn_entities/ice_block
execute positioned -1683 45 -525 run function medabots_server:spawn_entities/ice_block
execute positioned -1679 45 -524 run function medabots_server:spawn_entities/ice_block
execute positioned -1678 45 -530 run function medabots_server:spawn_entities/ice_block
execute positioned -1677 45 -526 run function medabots_server:spawn_entities/ice_block
execute positioned -1677 45 -521 run function medabots_server:spawn_entities/ice_block
execute positioned -1676 45 -523 run function medabots_server:spawn_entities/ice_block
execute positioned -1675 45 -532 run function medabots_server:spawn_entities/ice_block
execute positioned -1686 45 -531 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1685 45 -527 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1683 45 -524 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1677 45 -524 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1675 45 -530 run function medabots_server:set_blocks/hole/delay_5
scoreboard players set @e[x=-1680.5,y=45,z=-516.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1681 45 -524
effect give @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=3] minecraft:night_vision 2 0 true
effect give @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=3] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=3] Battle 2
teleport @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=3] -1682 45 -528
summon minecraft:area_effect_cloud -1679 45 -527 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","open_the_exit_door"],Duration:2147483647}
bossbar set medabots_server:snowfield_b/robattle value 3600
bossbar set medabots_server:snowfield_b/robattle players @a[scores={Stage=14}]
bossbar set medabots_server:snowfield_b/time players