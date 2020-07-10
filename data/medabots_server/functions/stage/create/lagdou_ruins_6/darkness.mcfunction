fill -1211 45 -62 -1265 47 -137 minecraft:redstone_wall_torch[facing=east] replace minecraft:wall_torch[facing=east]
fill -1211 45 -62 -1265 47 -137 minecraft:redstone_wall_torch[facing=north] replace minecraft:wall_torch[facing=north]
fill -1211 45 -62 -1265 47 -137 minecraft:redstone_wall_torch[facing=south] replace minecraft:wall_torch[facing=south]
fill -1211 45 -62 -1265 47 -137 minecraft:redstone_wall_torch[facing=west] replace minecraft:wall_torch[facing=west]

execute if entity @s[scores={ArenaType=0}] run teleport @s 46 50 76 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=41}] 31 52 4 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned 31 52 4 run function medabots_server:stage/create/lagdou_ruins_6/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 46 50 76 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=41}] 31 52 4 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=41}] 29 52 2 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=41}] 33 52 2 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 31 52 4 run function medabots_server:stage/create/lagdou_ruins_6/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 29 52 2 run function medabots_server:stage/create/lagdou_ruins_6/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 33 52 2 run function medabots_server:stage/create/lagdou_ruins_6/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 46 50 76 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=41}] 48 50 76 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=41}] 31 52 4 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=41}] 29 52 2 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 48 50 76 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 31 52 4 run function medabots_server:stage/create/lagdou_ruins_6/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 29 52 2 run function medabots_server:stage/create/lagdou_ruins_6/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 46 50 76 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=41}] 31 52 4 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=41}] 46 52 19 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=41}] 4 52 31 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 31 52 4 run function medabots_server:stage/create/lagdou_ruins_6/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 46 52 19 run function medabots_server:stage/create/lagdou_ruins_6/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 4 52 31 run function medabots_server:stage/create/lagdou_ruins_6/random_neutral

summon minecraft:armor_stand 37 50 40 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[90.0f,0.0f]}

scoreboard players set @a[x=0,y=49,z=0,dx=60,dy=7,dz=77] Stage 41
scoreboard players set @a[x=0,y=49,z=0,dx=60,dy=7,dz=77] State 1
execute as @a[x=0,y=49,z=0,dx=60,dy=7,dz=77] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=49,z=0,dx=60,dy=7,dz=77] MusicType 20