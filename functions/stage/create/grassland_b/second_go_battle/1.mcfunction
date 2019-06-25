execute unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] positioned -1529 45 -400 run function medabots_server:spawn_entities/enemy_medabot/pinguen/pure_mermaid/frappe/pinguen/mermaid
execute unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] positioned -1529 45 -400 run scoreboard players set @e[distance=..1] Stage 10
execute positioned -1533 45 -404 run function medabots_server:spawn_entities/cannon/detect/rotating/east/delay_4
execute positioned -1532 45 -399 run function medabots_server:spawn_entities/cannon/detect/rotating/east/delay_4
execute positioned -1526 45 -393 run function medabots_server:spawn_entities/cannon/detect/rotating/north/delay_4
execute positioned -1519 45 -393 run function medabots_server:spawn_entities/cannon/detect/rotating/north/delay_4
execute positioned -1514 45 -398 run function medabots_server:spawn_entities/cannon/detect/rotating/west/delay_4
execute positioned -1515 45 -403 run function medabots_server:spawn_entities/cannon/detect/rotating/west/delay_4
execute positioned -1521 45 -410 run function medabots_server:spawn_entities/cannon/detect/rotating/south/delay_4
execute positioned -1527 45 -409 run function medabots_server:spawn_entities/cannon/detect/rotating/south/delay_4
execute positioned -1531 45 -404 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1530 45 -399 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1526 45 -395 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1519 45 -395 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1516 45 -398 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1517 45 -403 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1521 45 -408 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1527 45 -407 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
tag @e[x=-1537.5,y=45,z=-402.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1521 45 -401
effect give @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] Battle 2
teleport @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] -1529 45 -400
summon minecraft:area_effect_cloud -1524 45 -399 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","open_the_exit_door"],Duration:2147483647}
bossbar set medabots_server:grassland_b/robattle value 3600
bossbar set medabots_server:grassland_b/robattle players @a[scores={Stage=10}]
bossbar set medabots_server:grassland_b/time players