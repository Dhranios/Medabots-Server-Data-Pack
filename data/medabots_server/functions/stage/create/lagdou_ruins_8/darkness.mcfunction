fill -1260 41 60 -1319 46 -2 minecraft:redstone_wall_torch[facing=east] replace minecraft:wall_torch[facing=east]
fill -1260 41 60 -1319 46 -2 minecraft:redstone_wall_torch[facing=north] replace minecraft:wall_torch[facing=north]
fill -1260 41 60 -1319 46 -2 minecraft:redstone_wall_torch[facing=south] replace minecraft:wall_torch[facing=south]
fill -1260 41 60 -1319 46 -2 minecraft:redstone_wall_torch[facing=west] replace minecraft:wall_torch[facing=west]
setblock -1288 39 35 minecraft:redstone_torch

execute if entity @s[scores={ArenaType=0}] run teleport @s -1310 41 3 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=43}] -1264 41 5 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned -1264 41 5 run function medabots_server:stage/create/lagdou_ruins_8/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1310 41 3 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=43}] -1264 41 5 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=43}] -1263 41 3 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=43}] -1262 40.6 7 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1264 41 5 run function medabots_server:stage/create/lagdou_ruins_8/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1263 41 3 run function medabots_server:stage/create/lagdou_ruins_8/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1262 40.6 7 run function medabots_server:stage/create/lagdou_ruins_8/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1310 41 3 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=43}] -1312 41 3 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=43}] -1264 41 5 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=43}] -1264 41 3 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1312 41 3 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1264 41 5 run function medabots_server:stage/create/lagdou_ruins_8/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1264 41 3 run function medabots_server:stage/create/lagdou_ruins_8/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1310 41 3 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=43}] -1264 41 5 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=43}] -1270 41 50 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=43}] -1306 44 35 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1264 41 5 run function medabots_server:stage/create/lagdou_ruins_8/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1270 41 50 run function medabots_server:stage/create/lagdou_ruins_8/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1306 44 35 run function medabots_server:stage/create/lagdou_ruins_8/random_neutral

summon minecraft:armor_stand -1294 39 35 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-145.0f,0.0f]}

scoreboard players set @a[x=-1319,y=35,z=-2,dx=59,dy=14,dz=62] Stage 43
scoreboard players set @a[x=-1319,y=35,z=-2,dx=59,dy=14,dz=62] Battle 1
execute as @a[x=-1319,y=35,z=-2,dx=59,dy=14,dz=62] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1319,y=35,z=-2,dx=59,dy=14,dz=62] MusicType 20