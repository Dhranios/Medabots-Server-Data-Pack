fill -1314 47 -119 -1376 49 -200 minecraft:redstone_wall_torch[facing=east] replace minecraft:wall_torch[facing=east]
fill -1314 47 -119 -1376 49 -200 minecraft:redstone_wall_torch[facing=north] replace minecraft:wall_torch[facing=north]
fill -1314 47 -119 -1376 49 -200 minecraft:redstone_wall_torch[facing=south] replace minecraft:wall_torch[facing=south]
fill -1314 47 -119 -1376 49 -200 minecraft:redstone_wall_torch[facing=west] replace minecraft:wall_torch[facing=west]

execute if entity @s[scores={ArenaType=0}] run teleport @s 55 52 82 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=39}] 7 52 19 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned 7 52 19 run function medabots_server:stage/create/lagdou_ruins_4/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 55 52 82 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=39}] 7 52 19 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=39}] 5 52 18 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=39}] 9 52 17 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 7 52 19 run function medabots_server:stage/create/lagdou_ruins_4/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 5 52 18 run function medabots_server:stage/create/lagdou_ruins_4/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 9 52 17 run function medabots_server:stage/create/lagdou_ruins_4/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 55 52 82 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=39}] 55 52 80 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=39}] 7 52 19 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=39}] 5 52 19 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 55 52 80 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 7 52 19 run function medabots_server:stage/create/lagdou_ruins_4/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 5 52 19 run function medabots_server:stage/create/lagdou_ruins_4/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 55 52 82 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=39}] 7 52 19 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=39}] 58 52 7 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=39}] 1 52 82 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 7 52 19 run function medabots_server:stage/create/lagdou_ruins_4/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 58 52 7 run function medabots_server:stage/create/lagdou_ruins_4/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 1 52 82 run function medabots_server:stage/create/lagdou_ruins_4/random_neutral

summon minecraft:armor_stand 25 52 46 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[90.0f,0.0f]}

scoreboard players set @a[x=0,y=45,z=0,dx=62,dy=12,dz=86] Stage 39
scoreboard players set @a[x=0,y=45,z=0,dx=62,dy=12,dz=86] State 1
execute as @a[x=0,y=45,z=0,dx=62,dy=12,dz=86] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=45,z=0,dx=62,dy=12,dz=86] MusicType 20