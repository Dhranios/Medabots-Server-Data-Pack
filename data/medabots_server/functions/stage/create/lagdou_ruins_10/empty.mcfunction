
execute if entity @s[scores={ArenaType=0}] run teleport @s -1361 38 -50 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[x=-1389,y=51,z=-114,dx=56,dy=4,dz=98,scores={StageIndex=0}] -1361 41 -104 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned -1361 41 -104 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1361 38 -50 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1389,y=51,z=-114,dx=56,dy=4,dz=98,scores={StageIndex=0}] -1361 41 -104 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1389,y=51,z=-114,dx=56,dy=4,dz=98,scores={StageIndex=1}] -1363 41 -105 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1389,y=51,z=-114,dx=56,dy=4,dz=98,scores={StageIndex=2}] -1359 41 -106 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1361 41 -104 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1363 41 -105 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1359 41 -106 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1361 38 -50 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1389,y=51,z=-114,dx=56,dy=4,dz=98,scores={StageIndex=0}] -1359 38 -50 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1389,y=51,z=-114,dx=56,dy=4,dz=98,scores={StageIndex=1}] -1361 41 -104 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1389,y=51,z=-114,dx=56,dy=4,dz=98,scores={StageIndex=2}] -1363 41 -104 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1359 38 -50 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1361 41 -104 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1363 41 -104 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1361 38 -50 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1389,y=51,z=-114,dx=56,dy=4,dz=98,scores={StageIndex=0}] -1361 41 -104 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1389,y=51,z=-114,dx=56,dy=4,dz=98,scores={StageIndex=1}] -1343 39 -86 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1389,y=51,z=-114,dx=56,dy=4,dz=98,scores={StageIndex=2}] -1379 39 -86 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1361 41 -104 run function medabots_server:stage/create/lagdou_ruins_9/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1343 39 -86 run function medabots_server:stage/create/lagdou_ruins_9/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1379 39 -86 run function medabots_server:stage/create/lagdou_ruins_9/random_neutral

summon minecraft:armor_stand -1356 39 -77 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[90.0f,0.0f]}

scoreboard players set @a[x=-1389,y=36,z=-114,dx=56,dy=14,dz=98] Stage 45
scoreboard players set @a[x=-1389,y=36,z=-114,dx=56,dy=14,dz=98] Battle 1
execute as @a[x=-1389,y=36,z=-114,dx=56,dy=14,dz=98] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1389,y=36,z=-114,dx=56,dy=14,dz=98] MusicType 23