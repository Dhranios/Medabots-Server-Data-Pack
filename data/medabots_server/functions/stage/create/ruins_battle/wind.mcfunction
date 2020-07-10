execute positioned 36 53 5 run function medabots_server:spawn_entities/round_stone
execute positioned 5 53 23 run function medabots_server:set_blocks/floor_switch/yellow/delay_5
execute positioned 18 53 5 run function medabots_server:set_blocks/floor_switch/yellow/delay_5
execute positioned 36 53 18 run function medabots_server:set_blocks/floor_switch/yellow/delay_5
execute positioned 23 53 36 run function medabots_server:set_blocks/floor_switch/yellow/delay_5
execute positioned 37 53 5 run function medabots_server:set_blocks/wall
execute positioned 36 53 37 run function medabots_server:set_blocks/wall
execute positioned 4 53 36 run function medabots_server:set_blocks/wall
execute positioned 5 53 4 run function medabots_server:set_blocks/wall
execute positioned 36 53 4 run function medabots_server:set_blocks/spring_wall/south/delay_10/power_0
execute positioned 37 53 36 run function medabots_server:set_blocks/spring_wall/west/delay_10/power_0
execute positioned 5 53 37 run function medabots_server:set_blocks/spring_wall/north/delay_10/power_0
execute positioned 4 53 5 run function medabots_server:set_blocks/spring_wall/east/delay_10/power_0
execute positioned 18 53 2 run function medabots_server:set_blocks/fan/south/off/range_37
execute positioned 39 53 18 run function medabots_server:set_blocks/fan/west/off/range_37
execute positioned 23 53 39 run function medabots_server:set_blocks/fan/north/off/range_37
execute positioned 2 53 23 run function medabots_server:set_blocks/fan/east/off/range_37

execute if entity @s[scores={ArenaType=0}] run teleport @s 20 53 17 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=49}] 21 53 24 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned 21 53 24 run function medabots_server:stage/create/ruins_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 20 53 17 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=49}] 21 53 24 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=49}] 23 53 25 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=49}] 19 53 26 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 21 53 24 run function medabots_server:stage/create/ruins_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 23 53 25 run function medabots_server:stage/create/ruins_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 19 53 26 run function medabots_server:stage/create/ruins_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 20 53 17 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=49}] 22 53 17 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=49}] 21 53 24 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=49}] 23 53 24 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 22 53 17 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 21 53 24 run function medabots_server:stage/create/ruins_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 23 53 24 run function medabots_server:stage/create/ruins_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 20 53 17 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=49}] 21 53 24 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=49}] 17 53 21 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=49}] 24 53 20 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 21 53 24 run function medabots_server:stage/create/ruins_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 17 53 21 run function medabots_server:stage/create/ruins_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 24 53 20 run function medabots_server:stage/create/ruins_battle/random_neutral

summon minecraft:armor_stand 23 53 20 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[90.0f,0.0f]}

scoreboard players set @a[x=0,y=51,z=0,dx=42,dy=7,dz=42] Stage 49
scoreboard players set @a[x=0,y=51,z=0,dx=42,dy=7,dz=42] State 1
execute as @a[x=0,y=51,z=0,dx=42,dy=7,dz=42] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=51,z=0,dx=42,dy=7,dz=42] MusicType 0