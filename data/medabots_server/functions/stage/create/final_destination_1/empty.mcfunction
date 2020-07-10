
execute if entity @s[scores={ArenaType=0}] run teleport @s 19 43 10 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=61}] 31 43 10 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned 31 43 10 run function medabots_server:stage/create/final_destination_1/enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 19 43 10 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=61}] 31 43 10 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=61}] 32 43 8 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=61}] 33 43 12 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 31 43 10 run function medabots_server:stage/create/final_destination_1/enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 32 43 8 run function medabots_server:stage/create/final_destination_1/enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 33 43 12 run function medabots_server:stage/create/final_destination_1/enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 19 43 10 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=61}] 19 43 12 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=61}] 31 43 10 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=61}] 31 43 8 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 19 43 12 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 31 43 10 run function medabots_server:stage/create/final_destination_1/enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 31 43 8 run function medabots_server:stage/create/final_destination_1/enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 19 43 10 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=61}] 31 43 10 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=61}] 25 43 13 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=61}] 25 43 7 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 31 43 10 run function medabots_server:stage/create/final_destination_1/neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 25 43 13 run function medabots_server:stage/create/final_destination_1/neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 25 43 7 run function medabots_server:stage/create/final_destination_1/neutral

summon minecraft:armor_stand 25 43 7 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[0.0f,0.0f]}

scoreboard players set @a[scores={Gamemode=0,Stage=61}] Stage 61
scoreboard players set @a[scores={Gamemode=0,Stage=61}] MusicType 51
execute as @a[scores={Gamemode=0,Stage=61}] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[scores={Gamemode=0,Stage=61}] State 1