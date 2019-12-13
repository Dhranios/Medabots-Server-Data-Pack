
execute if entity @s[scores={ArenaType=0}] run teleport @s -1321 45 -123 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[x=-1376,y=50,z=-205,dx=62,dy=4,dz=86,scores={StageIndex=0}] -1369 45 -186 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned -1369 45 -186 run function medabots_server:stage/create/lagdou_ruins_4/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1321 45 -123 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1376,y=50,z=-205,dx=62,dy=4,dz=86,scores={StageIndex=0}] -1369 45 -186 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1376,y=50,z=-205,dx=62,dy=4,dz=86,scores={StageIndex=1}] -1371 45 -187 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1376,y=50,z=-205,dx=62,dy=4,dz=86,scores={StageIndex=2}] -1367 45 -188 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1369 45 -186 run function medabots_server:stage/create/lagdou_ruins_4/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1371 45 -187 run function medabots_server:stage/create/lagdou_ruins_4/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1367 45 -188 run function medabots_server:stage/create/lagdou_ruins_4/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1321 45 -123 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1376,y=50,z=-205,dx=62,dy=4,dz=86,scores={StageIndex=0}] -1321 45 -125 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1376,y=50,z=-205,dx=62,dy=4,dz=86,scores={StageIndex=1}] -1369 45 -186 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1376,y=50,z=-205,dx=62,dy=4,dz=86,scores={StageIndex=2}] -1371 45 -186 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1321 45 -125 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1369 45 -186 run function medabots_server:stage/create/lagdou_ruins_4/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1371 45 -186 run function medabots_server:stage/create/lagdou_ruins_4/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1321 45 -123 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1376,y=50,z=-205,dx=62,dy=4,dz=86,scores={StageIndex=0}] -1369 45 -186 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1376,y=50,z=-205,dx=62,dy=4,dz=86,scores={StageIndex=1}] -1318 45 -198 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1376,y=50,z=-205,dx=62,dy=4,dz=86,scores={StageIndex=2}] -1375 45 -123 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1369 45 -186 run function medabots_server:stage/create/lagdou_ruins_4/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1318 45 -198 run function medabots_server:stage/create/lagdou_ruins_4/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1375 45 -123 run function medabots_server:stage/create/lagdou_ruins_4/random_neutral

summon minecraft:armor_stand -1351 45 -159 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[90.0f,0.0f]}

scoreboard players set @a[x=-1376,y=38,z=-205,dx=62,dy=12,dz=86] Stage 39
scoreboard players set @a[x=-1376,y=38,z=-205,dx=62,dy=12,dz=86] Battle 1
execute as @a[x=-1376,y=38,z=-205,dx=62,dy=12,dz=86] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1376,y=38,z=-205,dx=62,dy=12,dz=86] MusicType 20