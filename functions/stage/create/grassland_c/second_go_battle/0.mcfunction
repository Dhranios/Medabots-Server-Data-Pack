execute unless entity @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=0] positioned -1557 44 -474 run function medabots_server:spawn_entities/enemy_medabot/pure_mermaid/frappe/pure_mermaid/pure_mermaid/mermaid
execute unless entity @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=0] positioned -1557 44 -474 run scoreboard players set @e[distance=..1] Stage 23
execute positioned -1554 44 -474 run function medabots_server:spawn_entities/mission/cannon/no_detect/looking/south/delay_4
execute positioned -1556 44 -476 run function medabots_server:spawn_entities/mission/cannon/no_detect/looking/south/delay_4
execute positioned -1558 44 -476 run function medabots_server:spawn_entities/mission/cannon/no_detect/looking/south/delay_4
execute positioned -1560 44 -474 run function medabots_server:spawn_entities/mission/cannon/no_detect/looking/south/delay_4
execute positioned -1553 44 -474 run function medabots_server:set_blocks/stone
execute positioned -1554 44 -475 run function medabots_server:set_blocks/stone
execute positioned -1555 44 -474 run function medabots_server:set_blocks/stone
execute positioned -1555 44 -476 run function medabots_server:set_blocks/stone
execute positioned -1556 44 -477 run function medabots_server:set_blocks/stone
execute positioned -1557 44 -476 run function medabots_server:set_blocks/stone
execute positioned -1558 44 -477 run function medabots_server:set_blocks/stone
execute positioned -1559 44 -476 run function medabots_server:set_blocks/stone
execute positioned -1559 44 -474 run function medabots_server:set_blocks/stone
execute positioned -1560 44 -475 run function medabots_server:set_blocks/stone
execute positioned -1561 44 -474 run function medabots_server:set_blocks/stone
tag @e[x=-1556.5,y=44,z=-462.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1557 44 -469
effect give @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1570,y=50,z=-480,dx=65,dy=4,dz=63,tag=0] -1557 44 -474
summon minecraft:area_effect_cloud -1556 44 -473 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","destroy_all_cannons"],Duration:2147483647}
bossbar set medabots_server:grassland_c/robattle value 3600
bossbar set medabots_server:grassland_c/robattle players @a[scores={Stage=23}]
bossbar set medabots_server:grassland_c/time players