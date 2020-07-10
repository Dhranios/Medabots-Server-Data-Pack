execute positioned 19 53 20 run function medabots_server:spawn_entities/cannon/search/west/delay_4
execute positioned 19 53 3 run function medabots_server:spawn_entities/cannon/search/west/delay_4
execute positioned 4 53 20 run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute positioned 4 53 3 run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute positioned 3 53 4 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned 20 53 4 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned 20 53 19 run function medabots_server:spawn_entities/cannon/search/north/delay_4
execute positioned 3 53 19 run function medabots_server:spawn_entities/cannon/search/north/delay_4
execute positioned 9 53 12 run function medabots_server:spawn_entities/raft
execute positioned 14 53 11 run function medabots_server:spawn_entities/raft
execute positioned 5 53 10 run function medabots_server:set_blocks/bridge
execute positioned 10 53 5 run function medabots_server:set_blocks/bridge
execute positioned 18 53 13 run function medabots_server:set_blocks/bridge
execute positioned 13 53 18 run function medabots_server:set_blocks/bridge
execute positioned 21 53 23 run function medabots_server:set_blocks/wall
execute positioned 22 53 22 run function medabots_server:set_blocks/wall
execute positioned 23 53 21 run function medabots_server:set_blocks/wall

execute if entity @s[scores={ArenaType=0}] run teleport @s 7 53 11 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 16 53 12 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned 16 53 12 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 7 53 11 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 16 53 12 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] 17 53 10 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] 17 53 14 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 16 53 12 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 17 53 10 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 17 53 14 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 7 53 11 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 7 53 13 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] 16 53 12 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] 16 53 10 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 7 53 13 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 16 53 12 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 16 53 10 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 7 53 11 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 16 53 12 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] 11 53 16 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] 12 53 7 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 16 53 12 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 11 53 16 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 12 53 7 run function medabots_server:stage/create/park_battle/random_neutral

summon minecraft:armor_stand 11 53 8 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[0.0f,0.0f]}

scoreboard players set @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] State 1
execute as @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] MusicType 0