
execute if entity @s[scores={ArenaType=0}] run teleport @s -1204 38 22 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=38}] -1243 42 -51 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned -1243 42 -51 run function medabots_server:stage/create/lagdou_ruins_3/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1204 38 22 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=38}] -1243 42 -51 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=38}] -1245 43 -52 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=38}] -1241 42 -53 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1243 42 -51 run function medabots_server:stage/create/lagdou_ruins_3/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1245 43 -52 run function medabots_server:stage/create/lagdou_ruins_3/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1241 42 -53 run function medabots_server:stage/create/lagdou_ruins_3/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1204 38 22 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=38}] -1204 38 20 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=38}] -1243 42 -51 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=38}] -1245 42 -51 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1204 38 20 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1243 42 -51 run function medabots_server:stage/create/lagdou_ruins_3/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1245 42 -51 run function medabots_server:stage/create/lagdou_ruins_3/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1204 38 22 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=38}] -1243 42 -51 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=38}] -1205 42 -45 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=38}] -1244 40 3 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1243 42 -51 run function medabots_server:stage/create/lagdou_ruins_3/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1205 42 -45 run function medabots_server:stage/create/lagdou_ruins_3/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1244 40 3 run function medabots_server:stage/create/lagdou_ruins_3/random_neutral

summon minecraft:armor_stand -1238 46 -9 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-90.0f,0.0f]}

scoreboard players set @a[x=-1256,y=0,z=-58,dx=59,dy=50,dz=83] Stage 38
scoreboard players set @a[x=-1256,y=0,z=-58,dx=59,dy=50,dz=83] Battle 1
execute as @a[x=-1256,y=0,z=-58,dx=59,dy=50,dz=83] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1256,y=0,z=-58,dx=59,dy=50,dz=83] MusicType 19