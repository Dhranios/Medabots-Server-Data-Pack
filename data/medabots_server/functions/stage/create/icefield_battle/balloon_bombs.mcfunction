execute positioned 22 53 19 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 19 53 22 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 20 53 27 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 25 53 28 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 28 53 25 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 27 53 20 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 23 53 13 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 15 53 17 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 13 53 23 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 15 53 31 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 23 53 34 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 31 53 32 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 34 53 23 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 31 53 15 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 23 53 11 run function medabots_server:set_blocks/door/x/power_1
execute positioned 36 53 23 run function medabots_server:set_blocks/door/z/power_1
execute positioned 23 53 36 run function medabots_server:set_blocks/door/x/power_1
execute positioned 11 53 23 run function medabots_server:set_blocks/door/z/power_1

execute if entity @s[scores={ArenaType=0}] run teleport @s 24 53 20 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=48}] 23 53 27 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned 23 53 27 run function medabots_server:stage/create/icefield_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 24 53 20 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=48}] 23 53 27 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=48}] 25 53 28 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=48}] 21 53 29 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 23 53 27 run function medabots_server:stage/create/icefield_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 25 53 28 run function medabots_server:stage/create/icefield_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 21 53 29 run function medabots_server:stage/create/icefield_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 24 53 20 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=48}] 22 53 20 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=48}] 23 53 27 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=48}] 25 53 27 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 22 53 20 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 23 53 27 run function medabots_server:stage/create/icefield_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 25 53 27 run function medabots_server:stage/create/icefield_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 24 53 20 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=48}] 23 53 27 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=48}] 20 53 23 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=48}] 27 53 24 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 23 53 27 run function medabots_server:stage/create/icefield_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 20 53 23 run function medabots_server:stage/create/icefield_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 27 53 24 run function medabots_server:stage/create/icefield_battle/random_neutral

summon minecraft:armor_stand 21 53 24 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-90.0f,0.0f]}

scoreboard players set @a[x=0,y=51,z=0,dx=48,dy=7,dz=48] Stage 48
scoreboard players set @a[x=0,y=51,z=0,dx=48,dy=7,dz=48] State 1
execute as @a[x=0,y=51,z=0,dx=48,dy=7,dz=48] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=51,z=0,dx=48,dy=7,dz=48] MusicType 0