execute positioned 3 53 38 run function medabots_server:set_blocks/accelerator/south
execute positioned 7 53 30 run function medabots_server:set_blocks/accelerator/south
execute positioned 16 53 30 run function medabots_server:set_blocks/accelerator/south
execute positioned 20 53 38 run function medabots_server:set_blocks/accelerator/south
execute positioned 11 53 46 run function medabots_server:set_blocks/accelerator/west
execute positioned 19 53 42 run function medabots_server:set_blocks/accelerator/west
execute positioned 19 53 33 run function medabots_server:set_blocks/accelerator/west
execute positioned 11 53 29 run function medabots_server:set_blocks/accelerator/west
execute positioned 3 53 37 run function medabots_server:set_blocks/accelerator/north
execute positioned 7 53 45 run function medabots_server:set_blocks/accelerator/north
execute positioned 16 53 45 run function medabots_server:set_blocks/accelerator/north
execute positioned 20 53 37 run function medabots_server:set_blocks/accelerator/north
execute positioned 12 53 46 run function medabots_server:set_blocks/accelerator/east
execute positioned 4 53 42 run function medabots_server:set_blocks/accelerator/east
execute positioned 4 53 33 run function medabots_server:set_blocks/accelerator/east
execute positioned 12 53 29 run function medabots_server:set_blocks/accelerator/east
execute positioned 23 53 28 run function medabots_server:set_blocks/wall
execute positioned 22 53 27 run function medabots_server:set_blocks/wall
execute positioned 21 53 26 run function medabots_server:set_blocks/wall

execute if entity @s[scores={ArenaType=0}] run teleport @s 6 53 37 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 17 53 38 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned 17 53 38 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 6 53 37 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 17 53 38 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] 18 53 36 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] 19 53 40 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 17 53 38 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 18 53 36 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 19 53 40 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 6 53 37 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 6 53 39 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] 17 53 38 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] 17 53 36 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 6 53 39 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 17 53 38 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 17 53 36 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 6 53 37 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] 17 53 38 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] 11 53 43 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] 12 53 32 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 17 53 38 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 11 53 43 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 12 53 32 run function medabots_server:stage/create/park_battle/random_neutral

summon minecraft:armor_stand 11 53 34 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[0.0f,0.0f]}

scoreboard players set @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] State 1
execute as @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=8,z=0,dx=50,dy=50,dz=50] MusicType 0