
execute if entity @s[scores={ArenaType=0}] run teleport @s 53 47 80 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=38}] 14 51 7 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned 14 51 7 run function medabots_server:stage/create/lagdou_ruins_3/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 53 47 80 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=38}] 14 51 7 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=38}] 12 52 6 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=38}] 16 51 5 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 14 51 7 run function medabots_server:stage/create/lagdou_ruins_3/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 12 52 6 run function medabots_server:stage/create/lagdou_ruins_3/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 16 51 5 run function medabots_server:stage/create/lagdou_ruins_3/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 53 47 80 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=38}] 53 47 78 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=38}] 14 51 7 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=38}] 12 51 7 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 53 47 78 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 14 51 7 run function medabots_server:stage/create/lagdou_ruins_3/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 12 51 7 run function medabots_server:stage/create/lagdou_ruins_3/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 53 47 80 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=38}] 14 51 7 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=38}] 52 51 13 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=38}] 13 49 61 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 14 51 7 run function medabots_server:stage/create/lagdou_ruins_3/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 52 51 13 run function medabots_server:stage/create/lagdou_ruins_3/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 13 49 61 run function medabots_server:stage/create/lagdou_ruins_3/random_neutral

summon minecraft:armor_stand 19 55 49 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-90.0f,0.0f]}

scoreboard players set @a[x=1,y=9,z=0,dx=59,dy=50,dz=83] Stage 38
scoreboard players set @a[x=1,y=9,z=0,dx=59,dy=50,dz=83] State 1
execute as @a[x=1,y=9,z=0,dx=59,dy=50,dz=83] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=1,y=9,z=0,dx=59,dy=50,dz=83] MusicType 19