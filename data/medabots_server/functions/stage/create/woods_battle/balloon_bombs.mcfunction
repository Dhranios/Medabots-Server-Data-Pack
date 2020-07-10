execute positioned 34 53 28 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 31 53 29 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 28 53 32 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 28 53 37 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 24 53 29 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 20 53 37 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 18 53 31 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 16 53 28 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 12 53 28 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 12 53 19 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 16 53 19 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 18 53 16 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 20 53 10 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 24 53 18 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 28 53 15 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 28 53 10 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 31 53 18 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 34 53 19 run function medabots_server:spawn_entities/balloon_bomb

execute if entity @s[scores={ArenaType=0}] run teleport @s 29 53 23 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=47}] 18 53 24 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned 18 53 24 run function medabots_server:stage/create/woods_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 29 53 23 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=47}] 18 53 24 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=47}] 17 53 26 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=47}] 16 53 22 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 18 53 24 run function medabots_server:stage/create/woods_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 17 53 26 run function medabots_server:stage/create/woods_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 16 53 22 run function medabots_server:stage/create/woods_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 29 53 23 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=47}] 29 53 25 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=47}] 18 53 24 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=47}] 18 53 22 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 29 53 25 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 18 53 24 run function medabots_server:stage/create/woods_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 18 53 22 run function medabots_server:stage/create/woods_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 29 53 23 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=47}] 18 53 24 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=47}] 24 53 29 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=47}] 23 53 18 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 18 53 24 run function medabots_server:stage/create/woods_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 24 53 29 run function medabots_server:stage/create/woods_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 23 53 18 run function medabots_server:stage/create/woods_battle/random_neutral

summon minecraft:armor_stand 24 53 30 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-180.0f,0.0f]}

scoreboard players set @a[x=0,y=51,z=0,dx=48,dy=7,dz=48] Stage 47
scoreboard players set @a[x=0,y=51,z=0,dx=48,dy=7,dz=48] State 1
execute as @a[x=0,y=51,z=0,dx=48,dy=7,dz=48] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=51,z=0,dx=48,dy=7,dz=48] MusicType 0