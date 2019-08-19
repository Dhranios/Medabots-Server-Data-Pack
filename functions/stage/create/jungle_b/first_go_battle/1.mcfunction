execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] positioned -1610 45 -464 run function medabots_server:spawn_entities/medabot/dondoguu/hellphoenix/grade_kabuki/dondoguu/mermaid
execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] positioned -1610 45 -464 run scoreboard players set @e[distance=..1] Stage 12
execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] positioned -1610 45 -464 run tag @e[distance=..1] add enemy_medabot
execute positioned -1601 45 -461 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1606 45 -469 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1606 45 -465 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1608 45 -460 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1611 45 -467 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1613 45 -464 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1605 45 -461 run function medabots_server:set_blocks/accelerator/east
execute positioned -1607 45 -467 run function medabots_server:set_blocks/accelerator/west
execute positioned -1608 45 -464 run function medabots_server:set_blocks/accelerator/south
execute positioned -1611 45 -463 run function medabots_server:set_blocks/accelerator/north
scoreboard players set @e[x=-1600.5,y=45,z=-467.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1606 45 -463
effect give @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] Battle 2
teleport @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] -1610 45 -464
summon minecraft:area_effect_cloud -1609 45 -463 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:jungle_b/robattle value 3600
bossbar set medabots_server:jungle_b/robattle players @a[scores={Stage=12}]
bossbar set medabots_server:jungle_b/time players