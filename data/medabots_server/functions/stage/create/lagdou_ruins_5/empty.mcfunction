
execute if entity @s[scores={ArenaType=0}] run teleport @s -1372 44 -266 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[x=-1376,y=50,z=-276,dx=58,dy=4,dz=68,scores={StageIndex=0}] -1345 44 -215 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned -1345 44 -215 run function medabots_server:stage/create/lagdou_ruins_5/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1372 44 -266 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1376,y=50,z=-276,dx=58,dy=4,dz=68,scores={StageIndex=0}] -1345 44 -215 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1376,y=50,z=-276,dx=58,dy=4,dz=68,scores={StageIndex=1}] -1344 44 -213 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1376,y=50,z=-276,dx=58,dy=4,dz=68,scores={StageIndex=2}] -1347 44 -215 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1345 44 -215 run function medabots_server:stage/create/lagdou_ruins_5/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1344 44 -213 run function medabots_server:stage/create/lagdou_ruins_5/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1347 44 -215 run function medabots_server:stage/create/lagdou_ruins_5/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1372 44 -266 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1376,y=50,z=-276,dx=58,dy=4,dz=68,scores={StageIndex=0}] -1372 44 -264 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1376,y=50,z=-276,dx=58,dy=4,dz=68,scores={StageIndex=1}] -1345 44 -215 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1376,y=50,z=-276,dx=58,dy=4,dz=68,scores={StageIndex=2}] -1344 44 -214 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1372 44 -264 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1345 44 -215 run function medabots_server:stage/create/lagdou_ruins_5/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1344 44 -214 run function medabots_server:stage/create/lagdou_ruins_5/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1372 44 -266 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1376,y=50,z=-276,dx=58,dy=4,dz=68,scores={StageIndex=0}] -1345 44 -215 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1376,y=50,z=-276,dx=58,dy=4,dz=68,scores={StageIndex=1}] -1350 44 -236 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1376,y=50,z=-276,dx=58,dy=4,dz=68,scores={StageIndex=2}] -1318 44 -260 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1345 44 -215 run function medabots_server:stage/create/lagdou_ruins_5/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1350 44 -236 run function medabots_server:stage/create/lagdou_ruins_5/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1318 44 -260 run function medabots_server:stage/create/lagdou_ruins_5/random_neutral

summon minecraft:armor_stand -1348 44 -241 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[0.0f,0.0f]}

scoreboard players set @a[x=-1376,y=39,z=-276,dx=58,dy=10,dz=68] Stage 40
scoreboard players set @a[x=-1376,y=39,z=-276,dx=58,dy=10,dz=68] Battle 1
execute as @a[x=-1376,y=39,z=-276,dx=58,dy=10,dz=68] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1376,y=39,z=-276,dx=58,dy=10,dz=68] MusicType 20