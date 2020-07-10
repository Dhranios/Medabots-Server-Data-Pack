execute positioned 29 53 35 run function medabots_server:spawn_entities/raft
execute positioned 35 53 46 run function medabots_server:spawn_entities/raft
execute positioned 46 53 40 run function medabots_server:spawn_entities/raft
execute positioned 40 53 29 run function medabots_server:spawn_entities/raft
execute positioned 31 53 40 run function medabots_server:set_blocks/stone
execute positioned 40 53 44 run function medabots_server:set_blocks/stone
execute positioned 44 53 35 run function medabots_server:set_blocks/stone
execute positioned 35 53 31 run function medabots_server:set_blocks/stone
execute positioned 44 53 43 run function medabots_server:set_blocks/accelerator/south
execute positioned 32 53 44 run function medabots_server:set_blocks/accelerator/west
execute positioned 31 53 32 run function medabots_server:set_blocks/accelerator/north
execute positioned 43 53 31 run function medabots_server:set_blocks/accelerator/east
execute positioned 32 53 27 run function medabots_server:set_blocks/fan/south/slow/range_15
execute positioned 48 53 32 run function medabots_server:set_blocks/fan/west/slow/range_15
execute positioned 43 53 48 run function medabots_server:set_blocks/fan/north/slow/range_15
execute positioned 27 53 43 run function medabots_server:set_blocks/fan/east/slow/range_15
execute positioned 28 53 26 run function medabots_server:set_blocks/wall
execute positioned 27 53 27 run function medabots_server:set_blocks/wall
execute positioned 26 53 28 run function medabots_server:set_blocks/wall

execute if entity @s[scores={ArenaType=0}] run teleport @s 40 53 38 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 35 53 37 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned 35 53 37 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 40 53 38 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 35 53 37 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] 34 52 39 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] 33 52 35 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 35 53 37 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 34 52 39 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 33 52 35 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 40 53 38 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 40 53 36 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] 35 53 37 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] 35 53 39 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 40 53 36 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 35 53 37 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 35 53 39 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 40 53 38 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 35 53 37 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] 38 53 35 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] 37 53 40 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 35 53 37 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 38 53 35 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 37 53 40 run function medabots_server:stage/create/park_battle/random_neutral

summon minecraft:armor_stand 38 53 40 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-180.0f,0.0f]}

scoreboard players set @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] State 1
execute as @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] MusicType 0