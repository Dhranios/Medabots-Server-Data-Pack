execute if entity @s[scores={ArenaType=0}] run teleport @s -1328 43 -114 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=36}] -1271 36 -72 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned -1271 36 -72 run function medabots_server:stage/create/lagdou_ruins_1/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1328 43 -114 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=36}] -1271 36 -72 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=36}] -1270 35.6 -74 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=36}] -1270 35.6 -70 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1271 36 -72 run function medabots_server:stage/create/lagdou_ruins_1/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1270 35.6 -74 run function medabots_server:stage/create/lagdou_ruins_1/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1270 35.6 -70 run function medabots_server:stage/create/lagdou_ruins_1/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1328 43 -114 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=36}] -1328 43 -112 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=36}] -1271 36 -72 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=36}] -1271 36 -74 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1328 43 -112 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1271 36 -72 run function medabots_server:stage/create/lagdou_ruins_1/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1271 36 -74 run function medabots_server:stage/create/lagdou_ruins_1/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1328 43 -114 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=36}] -1271 36 -72 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=36}] -1325 41 -66 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=36}] -1277 43 -108 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1271 36 -72 run function medabots_server:stage/create/lagdou_ruins_1/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -2000 45 -560 run function medabots_server:stage/create/lagdou_ruins_1/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1277 43 -108 run function medabots_server:stage/create/lagdou_ruins_1/random_neutral

summon minecraft:armor_stand -1298 46 -73 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-180.0f,0.0f]}

scoreboard players set @a[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61] Stage 36
scoreboard players set @a[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61] State 1
execute as @a[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61] MusicType 19