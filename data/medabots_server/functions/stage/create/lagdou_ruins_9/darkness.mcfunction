fill -1261 48 -223 -1313 48 -291 minecraft:redstone_wall_torch[facing=east] replace minecraft:wall_torch[facing=east]
fill -1261 48 -223 -1313 48 -291 minecraft:redstone_wall_torch[facing=north] replace minecraft:wall_torch[facing=north]
fill -1261 48 -223 -1313 48 -291 minecraft:redstone_wall_torch[facing=south] replace minecraft:wall_torch[facing=south]
fill -1261 48 -223 -1313 48 -291 minecraft:redstone_wall_torch[facing=west] replace minecraft:wall_torch[facing=west]

execute if entity @s[scores={ArenaType=0}] run teleport @s -1266 46 -227 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=44}] -1311 46 -287 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned -1311 46 -287 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1266 46 -227 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=44}] -1311 46 -287 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=44}] -1312 46 -285 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=44}] -1312 46 -289 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1311 46 -287 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1312 46 -285 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1312 46 -289 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1266 46 -227 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=44}] -1264 46 -227 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=44}] -1311 46 -287 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=44}] -1312 46 -285 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1264 46 -227 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1311 46 -287 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1312 46 -285 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1266 46 -227 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=44}] -1311 46 -287 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=44}] -1268 46 -284 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=44}] -1310 46 -227 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1311 46 -287 run function medabots_server:stage/create/lagdou_ruins_9/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1268 46 -284 run function medabots_server:stage/create/lagdou_ruins_9/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1310 46 -227 run function medabots_server:stage/create/lagdou_ruins_9/random_neutral

summon minecraft:armor_stand -1304 46 -261 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-90.0f,0.0f]}

scoreboard players set @a[x=-1314,y=42,z=-291,dx=53,dy=7,dz=68] Stage 44
scoreboard players set @a[x=-1314,y=42,z=-291,dx=53,dy=7,dz=68] State 1
execute as @a[x=-1314,y=42,z=-291,dx=53,dy=7,dz=68] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1314,y=42,z=-291,dx=53,dy=7,dz=68] MusicType 20