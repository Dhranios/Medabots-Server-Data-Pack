execute positioned 31 53 20 run function medabots_server:set_blocks/glass
execute positioned 32 53 20 run function medabots_server:set_blocks/glass
execute positioned 35 53 16 run function medabots_server:set_blocks/glass
execute positioned 36 53 16 run function medabots_server:set_blocks/glass
execute positioned 39 53 20 run function medabots_server:set_blocks/glass
execute positioned 40 53 20 run function medabots_server:set_blocks/glass
execute positioned 46 53 17 run function medabots_server:set_blocks/glass
execute positioned 46 53 18 run function medabots_server:set_blocks/glass
execute positioned 46 53 13 run function medabots_server:set_blocks/glass
execute positioned 46 53 14 run function medabots_server:set_blocks/glass
execute positioned 43 53 3 run function medabots_server:set_blocks/glass
execute positioned 44 53 3 run function medabots_server:set_blocks/glass
execute positioned 39 53 7 run function medabots_server:set_blocks/glass
execute positioned 40 53 7 run function medabots_server:set_blocks/glass
execute positioned 35 53 3 run function medabots_server:set_blocks/glass
execute positioned 36 53 3 run function medabots_server:set_blocks/glass
execute positioned 31 53 3 run function medabots_server:set_blocks/glass
execute positioned 32 53 3 run function medabots_server:set_blocks/glass
execute positioned 29 53 9 run function medabots_server:set_blocks/glass
execute positioned 29 53 10 run function medabots_server:set_blocks/glass
execute positioned 33 53 14 run function medabots_server:set_blocks/wall
execute positioned 33 53 13 run function medabots_server:set_blocks/wall
execute positioned 35 53 7 run function medabots_server:set_blocks/wall
execute positioned 36 53 7 run function medabots_server:set_blocks/wall
execute positioned 42 53 9 run function medabots_server:set_blocks/wall
execute positioned 42 53 10 run function medabots_server:set_blocks/wall
execute positioned 39 53 16 run function medabots_server:set_blocks/wall
execute positioned 40 53 16 run function medabots_server:set_blocks/wall
execute positioned 26 53 21 run function medabots_server:set_blocks/wall
execute positioned 27 53 22 run function medabots_server:set_blocks/wall
execute positioned 28 53 23 run function medabots_server:set_blocks/wall

execute if entity @s[scores={ArenaType=0}] run teleport @s 44 53 12 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 31 53 11 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned 31 53 11 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 44 53 12 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 31 53 11 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] 30 53 13 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] 30 53 9 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 31 53 11 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 30 53 13 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 30 53 9 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 44 53 12 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 44 53 10 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] 31 53 11 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] 31 53 13 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 44 53 10 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 31 53 11 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 31 53 13 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 44 53 12 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 31 53 11 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] 38 53 5 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] 37 53 18 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 31 53 11 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 38 53 5 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 37 53 18 run function medabots_server:stage/create/park_battle/random_neutral

summon minecraft:armor_stand 37 53 14 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-180.0f,0.0f]}

scoreboard players set @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] State 1
execute as @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] MusicType 0