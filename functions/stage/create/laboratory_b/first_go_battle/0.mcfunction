execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=0] positioned -1711 44 -559 run function medabots_server:spawn_entities/medabot/frappe/pastel_fairy/frappe/frappe/kuwagata
execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=0] positioned -1711 44 -559 run scoreboard players set @e[distance=..1] Stage 18
execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=0] positioned -1711 44 -559 run tag @e[distance=..1] add enemy_medabot
execute positioned -1721 44 -571 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1717 44 -550 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1706 44 -568 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1703 44 -550 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1715 44 -569 run function medabots_server:spawn_entities/cannon/search/south/delay_4/mission
execute positioned -1719 44 -550 run function medabots_server:spawn_entities/cannon/search/north/delay_4/mission
execute positioned -1708 44 -550 run function medabots_server:spawn_entities/cannon/search/north/delay_4/mission
execute positioned -1703 44 -559 run function medabots_server:spawn_entities/item/6_medallar_cents
execute positioned -1710 44 -572 run function medabots_server:spawn_entities/round_stone
execute positioned -1717 44 -552 run function medabots_server:spawn_entities/ice_block
execute positioned -1718 44 -552 run function medabots_server:spawn_entities/ice_block
execute positioned -1719 44 -552 run function medabots_server:spawn_entities/ice_block
execute positioned -1720 44 -552 run function medabots_server:spawn_entities/ice_block
execute positioned -1721 44 -552 run function medabots_server:spawn_entities/ice_block
execute positioned -1712 44 -567 run function medabots_server:set_blocks/spring_wall/east/delay_10/power_1
execute positioned -1702 44 -567 run function medabots_server:set_blocks/spring_wall/west/delay_10/power_1
scoreboard players set @e[x=-1724.5,y=44,z=-559.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1715 44 -559
effect give @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=0] Battle 2
teleport @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=0] -1711 44 -559
summon minecraft:area_effect_cloud -1713 44 -560 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","run_until_the_time_is_up"],Duration:2147483647}
bossbar set medabots_server:laboratory_b/robattle value 3600
bossbar set medabots_server:laboratory_b/robattle players @a[scores={Stage=18}]
bossbar set medabots_server:laboratory_b/time players