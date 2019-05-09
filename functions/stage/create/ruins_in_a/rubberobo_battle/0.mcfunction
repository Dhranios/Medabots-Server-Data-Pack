execute unless entity @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=0] run function medabots_server:stage/create/ruins_in_a/rubberobo_battle/0_cpu
execute positioned -1640 44 -328 run function medabots_server:spawn_entities/cannon/no_detect/looking/west/delay_4
execute positioned -1639 44 -332 run function medabots_server:spawn_entities/cannon/no_detect/looking/west/delay_4
execute positioned -1639 44 -335 run function medabots_server:spawn_entities/cannon/no_detect/looking/west/delay_4
execute positioned -1639 44 -337 run function medabots_server:spawn_entities/cannon/no_detect/looking/west/delay_4
execute positioned -1639 44 -340 run function medabots_server:spawn_entities/cannon/no_detect/looking/west/delay_4
execute positioned -1639 44 -342 run function medabots_server:spawn_entities/cannon/no_detect/looking/west/delay_4
execute positioned -1661 44 -327 run function medabots_server:spawn_entities/cannon/no_detect/looking/east/delay_4
execute positioned -1660 44 -331 run function medabots_server:spawn_entities/cannon/no_detect/looking/east/delay_4
execute positioned -1662 44 -334 run function medabots_server:spawn_entities/cannon/no_detect/looking/east/delay_4
execute positioned -1662 44 -336 run function medabots_server:spawn_entities/cannon/no_detect/looking/east/delay_4
execute positioned -1661 44 -338 run function medabots_server:spawn_entities/cannon/no_detect/looking/east/delay_4
execute positioned -1662 44 -341 run function medabots_server:spawn_entities/cannon/no_detect/looking/east/delay_4
tag @e[x=-1650.5,y=44,z=-325.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1650 44 -334
effect give @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=0] Battle 2
teleport @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=0] -1651 44 -338
summon minecraft:area_effect_cloud -1650 44 -337 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:ruins_in_a/robattle value 3600
bossbar set medabots_server:ruins_in_a/robattle players @a[scores={Stage=8}]
bossbar set medabots_server:ruins_in_a/time players