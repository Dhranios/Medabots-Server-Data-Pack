execute if entity @s[scores={ArenaType=0}] run teleport @s 1 53 1 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=36}] 58 46 43 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned 58 46 43 run function medabots_server:stage/create/lagdou_ruins_1/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 1 53 1 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=36}] 58 46 43 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=36}] 59 45.6 41 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=36}] 59 45.6 45 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 58 46 43 run function medabots_server:stage/create/lagdou_ruins_1/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 59 45.6 41 run function medabots_server:stage/create/lagdou_ruins_1/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 59 45.6 45 run function medabots_server:stage/create/lagdou_ruins_1/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 1 53 1 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=36}] 1 53 3 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=36}] 58 46 43 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=36}] 58 46 41 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 1 53 3 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 58 46 43 run function medabots_server:stage/create/lagdou_ruins_1/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 58 46 41 run function medabots_server:stage/create/lagdou_ruins_1/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 1 53 1 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=36}] 58 46 43 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=36}] 4 51 49 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=36}] 52 53 7 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 58 46 43 run function medabots_server:stage/create/lagdou_ruins_1/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -671 55 -445 run function medabots_server:stage/create/lagdou_ruins_1/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 52 53 7 run function medabots_server:stage/create/lagdou_ruins_1/random_neutral

summon minecraft:armor_stand 31 56 42 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-180.0f,0.0f]}

scoreboard players set @a[x=0,y=10,z=0,dx=61,dy=50,dz=61] Stage 36
scoreboard players set @a[x=0,y=10,z=0,dx=61,dy=50,dz=61] State 1
execute as @a[x=0,y=10,z=0,dx=61,dy=50,dz=61] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=10,z=0,dx=61,dy=50,dz=61] MusicType 19