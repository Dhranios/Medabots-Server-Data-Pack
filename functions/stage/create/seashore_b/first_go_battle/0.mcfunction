execute unless entity @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=0] positioned -1757 44 -359 run function medabots_server:spawn_entities/medabot/basstroyer/hellphoenix/shoot_spider/basstroyer/kuwagata
execute unless entity @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=0] positioned -1757 44 -359 run scoreboard players set @e[distance=..1] Stage 13
execute unless entity @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=0] positioned -1757 44 -359 run tag @e[distance=..1] add enemy_medabot
execute positioned -1760 45 -368 run function medabots_server:spawn_entities/cannon/swiffle/south/delay_4/mission
execute positioned -1750 45 -356 run function medabots_server:spawn_entities/cannon/swiffle/north/delay_4/mission
execute positioned -1757 45 -354 run function medabots_server:spawn_entities/cannon/swiffle/north/delay_4/mission
execute positioned -1754 45 -352 run function medabots_server:spawn_entities/cannon/swiffle/north/delay_4/mission
execute positioned -1753 45 -361 run function medabots_server:spawn_entities/raft
execute positioned -1755 45 -364 run function medabots_server:spawn_entities/raft
execute positioned -1759 45 -357 run function medabots_server:spawn_entities/raft
execute positioned -1759 45 -363 run function medabots_server:spawn_entities/raft
execute positioned -1760 45 -368 run function medabots_server:set_blocks/bridge
scoreboard players set @e[x=-1746.5,y=45,z=-353.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1752 44 -360
effect give @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=0] Battle 2
teleport @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=0] -1757 44 -359
summon minecraft:area_effect_cloud -1755 44 -361 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","destroy_all_cannons"],Duration:2147483647}
bossbar set medabots_server:seashore_b/robattle value 3600
bossbar set medabots_server:seashore_b/robattle players @a[scores={Stage=13}]
bossbar set medabots_server:seashore_b/time players