execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=0] positioned -1583 45 -407 run function medabots_server:spawn_entities/enemy_medabot/attack_tyrano/maxsnake/dragonbeetle/attack_tyrano/kuwagata
execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=0] positioned -1583 45 -407 run scoreboard players set @e[distance=..1] Stage 12
execute positioned -1593 45 -408 run function medabots_server:spawn_entities/mission/cannon/no_detect/rotating/east/delay_4
execute positioned -1593 45 -406 run function medabots_server:spawn_entities/mission/cannon/no_detect/rotating/east/delay_4
execute positioned -1586 45 -402 run function medabots_server:spawn_entities/mission/cannon/no_detect/rotating/north/delay_4
execute positioned -1586 45 -413 run function medabots_server:spawn_entities/mission/cannon/no_detect/rotating/south/delay_4
execute positioned -1583 45 -414 run function medabots_server:spawn_entities/mission/cannon/no_detect/rotating/south/delay_4
execute positioned -1577 45 -412 run function medabots_server:spawn_entities/mission/cannon/no_detect/rotating/west/delay_4
execute positioned -1576 45 -404 run function medabots_server:spawn_entities/mission/cannon/no_detect/rotating/west/delay_4
tag @e[x=-1589.5,y=45,z=-411.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1587 45 -408
effect give @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=0] Battle 2
teleport @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=0] -1583 45 -407
summon minecraft:area_effect_cloud -1584 45 -409 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","run_until_the_time_is_up"],Duration:2147483647}
bossbar set medabots_server:jungle_b/robattle value 3600
bossbar set medabots_server:jungle_b/robattle players @a[scores={Stage=12}]
bossbar set medabots_server:jungle_b/time players