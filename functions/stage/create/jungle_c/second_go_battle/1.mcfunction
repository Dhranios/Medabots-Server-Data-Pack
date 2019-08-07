execute unless entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=1] positioned -1549 44 -511 run function medabots_server:spawn_entities/medabot/knight_armor/hellphoenix/maxsnake/knight_armor/chameleon
execute unless entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=1] positioned -1549 44 -511 run scoreboard players set @e[distance=..1] Stage 24
execute unless entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=1] positioned -1549 44 -511 run tag @e[distance=..1] add enemy_medabot
execute positioned -1550 44 -513 run function medabots_server:spawn_entities/mission/guard/normal
execute positioned -1550 44 -509 run function medabots_server:spawn_entities/mission/guard/normal
execute positioned -1567 44 -533 run function medabots_server:set_blocks/glass
tag @e[x=-1540.5,y=44,z=-509.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1543 44 -511
effect give @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=1] Battle 2
teleport @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=1] -1549 44 -511
summon minecraft:area_effect_cloud -1546 44 -512 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_all_guards"],Duration:2147483647}
bossbar set medabots_server:jungle_c/robattle value 3600
bossbar set medabots_server:jungle_c/robattle players @a[scores={Stage=24}]
bossbar set medabots_server:jungle_c/time players