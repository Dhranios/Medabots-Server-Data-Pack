
execute if entity @s[scores={ArenaType=0}] run teleport @s -1320 41 -53 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=37}] -1266 41 -9 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned -1266 41 -9 run function medabots_server:stage/create/lagdou_ruins_2/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1320 41 -53 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=37}] -1266 41 -9 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=37}] -1265 41 -11 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=37}] -1264 41 -7 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1266 41 -9 run function medabots_server:stage/create/lagdou_ruins_2/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1265 41 -11 run function medabots_server:stage/create/lagdou_ruins_2/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1264 41 -7 run function medabots_server:stage/create/lagdou_ruins_2/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1320 41 -53 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=37}] -1322 41 -53 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=37}] -1266 41 -9 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=37}] -1266 41 -11 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1322 41 -53 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1266 41 -9 run function medabots_server:stage/create/lagdou_ruins_2/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1266 41 -11 run function medabots_server:stage/create/lagdou_ruins_2/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1320 41 -53 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=37}] -1266 41 -9 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=37}] -1316 41 -6 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=37}] -1265 41 -54 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1266 41 -9 run function medabots_server:stage/create/lagdou_ruins_2/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1316 41 -6 run function medabots_server:stage/create/lagdou_ruins_2/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1265 41 -54 run function medabots_server:stage/create/lagdou_ruins_2/random_neutral

summon minecraft:armor_stand -1289 46 -28 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-90.0f,0.0f]}

scoreboard players set @a[x=-1329,y=39,z=-58,dx=68,dy=11,dz=53] Stage 37
scoreboard players set @a[x=-1329,y=39,z=-58,dx=68,dy=11,dz=53] State 1
execute as @a[x=-1329,y=39,z=-58,dx=68,dy=11,dz=53] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1329,y=39,z=-58,dx=68,dy=11,dz=53] MusicType 19