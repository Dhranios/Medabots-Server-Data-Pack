execute unless entity @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=0] run function medabots_server:stage/create/seashore_b/second_go_battle/0_cpu
execute positioned -1760 45 -368 run function medabots_server:spawn_entities/mission/cannon/detect/rotating/south/delay_4
execute positioned -1758 45 -355 run function medabots_server:spawn_entities/mission/cannon/detect/rotating/north/delay_4
execute positioned -1757 45 -354 run function medabots_server:spawn_entities/mission/cannon/detect/rotating/north/delay_4
execute positioned -1756 45 -353 run function medabots_server:spawn_entities/mission/cannon/detect/rotating/north/delay_4
execute positioned -1755 45 -352 run function medabots_server:spawn_entities/mission/cannon/detect/rotating/north/delay_4
execute positioned -1753 45 -361 run function medabots_server:spawn_entities/raft
execute positioned -1755 45 -364 run function medabots_server:spawn_entities/raft
execute positioned -1759 45 -357 run function medabots_server:spawn_entities/raft
execute positioned -1759 45 -363 run function medabots_server:spawn_entities/raft
execute positioned -1760 45 -368 run function medabots_server:set_blocks/bridge
tag @e[x=-1746.5,y=45,z=-353.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1752 44 -360
effect give @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=0] Battle 2
teleport @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=0] -1756 44 -360
summon minecraft:area_effect_cloud -1755 44 -361 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","destroy_all_cannons"],Duration:2147483647}
bossbar set medabots_server:seashore_b/robattle value 3600
bossbar set medabots_server:seashore_b/robattle players @a[scores={Stage=13}]