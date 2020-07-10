
execute if entity @s[scores={ArenaType=0}] run teleport @s 9 50 5 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=43}] 55 50 7 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned 55 50 7 run function medabots_server:stage/create/lagdou_ruins_8/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 9 50 5 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=43}] 55 50 7 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=43}] 56 50 5 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=43}] 57 49.6 9 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 55 50 7 run function medabots_server:stage/create/lagdou_ruins_8/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 56 50 5 run function medabots_server:stage/create/lagdou_ruins_8/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 57 49.6 9 run function medabots_server:stage/create/lagdou_ruins_8/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 9 50 5 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=43}] 7 50 5 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=43}] 55 50 7 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=43}] 55 50 5 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 7 50 5 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 55 50 7 run function medabots_server:stage/create/lagdou_ruins_8/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 55 50 5 run function medabots_server:stage/create/lagdou_ruins_8/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 9 50 5 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=43}] 55 50 7 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=43}] 49 50 52 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=43}] 13 53 37 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 55 50 7 run function medabots_server:stage/create/lagdou_ruins_8/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 49 50 52 run function medabots_server:stage/create/lagdou_ruins_8/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 13 53 37 run function medabots_server:stage/create/lagdou_ruins_8/random_neutral

summon minecraft:armor_stand 25 48 37 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-145.0f,0.0f]}

scoreboard players set @a[x=0,y=44,z=0,dx=59,dy=14,dz=62] Stage 43
scoreboard players set @a[x=0,y=44,z=0,dx=59,dy=14,dz=62] State 1
execute as @a[x=0,y=44,z=0,dx=59,dy=14,dz=62] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=44,z=0,dx=59,dy=14,dz=62] MusicType 20