
execute if entity @s[scores={ArenaType=0}] run teleport @s 48 53 64 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=44}] 3 53 4 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned 3 53 4 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 48 53 64 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=44}] 3 53 4 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=44}] 2 53 6 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=44}] 2 53 2 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 3 53 4 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 2 53 6 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 2 53 2 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 48 53 64 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=44}] 50 53 64 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=44}] 3 53 4 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=44}] 2 53 6 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 50 53 64 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 3 53 4 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 2 53 6 run function medabots_server:stage/create/lagdou_ruins_9/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 48 53 64 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=44}] 3 53 4 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=44}] 46 53 7 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=44}] 4 53 64 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 3 53 4 run function medabots_server:stage/create/lagdou_ruins_9/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 46 53 7 run function medabots_server:stage/create/lagdou_ruins_9/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 4 53 64 run function medabots_server:stage/create/lagdou_ruins_9/random_neutral

summon minecraft:armor_stand 10 53 30 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-90.0f,0.0f]}

scoreboard players set @a[x=0,y=49,z=0,dx=53,dy=7,dz=68] Stage 44
scoreboard players set @a[x=0,y=49,z=0,dx=53,dy=7,dz=68] State 1
execute as @a[x=0,y=49,z=0,dx=53,dy=7,dz=68] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=49,z=0,dx=53,dy=7,dz=68] MusicType 20