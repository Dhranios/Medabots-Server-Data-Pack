
execute if entity @s[scores={ArenaType=0}] run teleport @s 4 52 10 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=40}] 31 52 61 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned 31 52 61 run function medabots_server:stage/create/lagdou_ruins_5/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 4 52 10 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=40}] 31 52 61 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=40}] 32 52 63 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=40}] 29 52 61 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 31 52 61 run function medabots_server:stage/create/lagdou_ruins_5/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 32 52 63 run function medabots_server:stage/create/lagdou_ruins_5/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 29 52 61 run function medabots_server:stage/create/lagdou_ruins_5/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 4 52 10 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=40}] 4 52 12 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=40}] 31 52 61 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=40}] 32 52 62 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 4 52 12 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 31 52 61 run function medabots_server:stage/create/lagdou_ruins_5/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 32 52 62 run function medabots_server:stage/create/lagdou_ruins_5/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 4 52 10 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=40}] 31 52 61 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=40}] 26 52 40 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=40}] 58 52 16 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 31 52 61 run function medabots_server:stage/create/lagdou_ruins_5/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 26 52 40 run function medabots_server:stage/create/lagdou_ruins_5/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 58 52 16 run function medabots_server:stage/create/lagdou_ruins_5/random_neutral

summon minecraft:armor_stand 28 52 35 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[0.0f,0.0f]}

scoreboard players set @a[x=0,y=47,z=0,dx=58,dy=10,dz=68] Stage 40
scoreboard players set @a[x=0,y=47,z=0,dx=58,dy=10,dz=68] State 1
execute as @a[x=0,y=47,z=0,dx=58,dy=10,dz=68] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=47,z=0,dx=58,dy=10,dz=68] MusicType 20