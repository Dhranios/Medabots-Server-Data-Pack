
execute if entity @s[scores={ArenaType=0}] run teleport @s 19 43 10 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=62}] 31 43 10 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned 31 43 10 run function medabots_server:stage/create/final_destination_2/enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 19 43 10 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=62}] 31 43 10 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=62}] 32 43 8 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=62}] 33 43 12 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 31 43 10 run function medabots_server:stage/create/final_destination_2/enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 32 43 8 run function medabots_server:stage/create/final_destination_2/enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 33 43 12 run function medabots_server:stage/create/final_destination_2/enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 19 43 10 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=62}] 19 43 12 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=62}] 31 43 10 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=62}] 31 43 8 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 19 43 12 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 31 43 10 run function medabots_server:stage/create/final_destination_2/enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 31 43 8 run function medabots_server:stage/create/final_destination_2/enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 19 43 10 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=62}] 31 43 10 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=62}] 25 43 14 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=62}] 25 43 6 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 31 43 10 run function medabots_server:stage/create/final_destination_2/neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 25 43 14 run function medabots_server:stage/create/final_destination_2/neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 25 43 6 run function medabots_server:stage/create/final_destination_2/neutral

summon minecraft:armor_stand 25 43 8 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[0.0f,0.0f]}

scoreboard players set @a[scores={Gamemode=0,Stage=62}] Stage 62
scoreboard players set @a[scores={Gamemode=0,Stage=62}] MusicType 53
execute as @a[scores={Gamemode=0,Stage=62}] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[scores={Gamemode=0,Stage=62}] State 1