
execute if entity @s[scores={ArenaType=0}] run teleport @s 28 54 64 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=45}] 28 57 10 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned 28 57 10 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 28 54 64 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=45}] 28 57 10 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=45}] 26 57 9 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=45}] 30 57 8 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 28 57 10 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 26 57 9 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 30 57 8 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 28 54 64 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=45}] 30 54 64 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=45}] 28 57 10 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=45}] 26 57 10 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 30 54 64 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 28 57 10 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 26 57 10 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 28 54 64 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=45}] 28 57 10 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=45}] 46 55 28 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=45}] 10 55 28 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 28 57 10 run function medabots_server:stage/create/lagdou_ruins_9/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 46 55 28 run function medabots_server:stage/create/lagdou_ruins_9/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 10 55 28 run function medabots_server:stage/create/lagdou_ruins_9/random_neutral

summon minecraft:armor_stand 33 55 37 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[90.0f,0.0f]}

scoreboard players set @a[x=0,y=52,z=0,dx=56,dy=14,dz=98] Stage 45
scoreboard players set @a[x=0,y=52,z=0,dx=56,dy=14,dz=98] State 1
execute as @a[x=0,y=52,z=0,dx=56,dy=14,dz=98] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=52,z=0,dx=56,dy=14,dz=98] MusicType 23