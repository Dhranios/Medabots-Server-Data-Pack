
execute if entity @s[scores={ArenaType=0}] run teleport @s 9 51 5 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=37}] 63 51 49 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned 63 51 49 run function medabots_server:stage/create/lagdou_ruins_2/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 9 51 5 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=37}] 63 51 49 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=37}] 64 51 47 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=37}] 65 51 51 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 63 51 49 run function medabots_server:stage/create/lagdou_ruins_2/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 64 51 47 run function medabots_server:stage/create/lagdou_ruins_2/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 65 51 51 run function medabots_server:stage/create/lagdou_ruins_2/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 9 51 5 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=37}] 7 51 5 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=37}] 63 51 49 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=37}] 63 51 47 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 7 51 5 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 63 51 49 run function medabots_server:stage/create/lagdou_ruins_2/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 63 51 47 run function medabots_server:stage/create/lagdou_ruins_2/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 9 51 5 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=37}] 63 51 49 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=37}] 13 51 52 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=37}] 64 51 4 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 63 51 49 run function medabots_server:stage/create/lagdou_ruins_2/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 13 51 52 run function medabots_server:stage/create/lagdou_ruins_2/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 64 51 4 run function medabots_server:stage/create/lagdou_ruins_2/random_neutral

summon minecraft:armor_stand 40 56 30 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-90.0f,0.0f]}

scoreboard players set @a[x=0,y=49,z=0,dx=68,dy=11,dz=53] Stage 37
scoreboard players set @a[x=0,y=49,z=0,dx=68,dy=11,dz=53] State 1
execute as @a[x=0,y=49,z=0,dx=68,dy=11,dz=53] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=49,z=0,dx=68,dy=11,dz=53] MusicType 19