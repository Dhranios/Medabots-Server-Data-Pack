execute positioned 26 53 26 run function medabots_server:spawn_entities/bomb/delay_30
execute positioned 15 53 15 run function medabots_server:spawn_entities/bomb/delay_60
execute positioned 15 53 26 run function medabots_server:spawn_entities/bomb/delay_90
execute positioned 26 53 15 run function medabots_server:spawn_entities/bomb/delay_120
execute positioned 14 53 12 run function medabots_server:set_blocks/press_wall/east/range_5/power_0
execute positioned 27 53 12 run function medabots_server:set_blocks/press_wall/west/range_5/power_0
execute positioned 29 53 14 run function medabots_server:set_blocks/press_wall/south/range_5/power_0
execute positioned 29 53 27 run function medabots_server:set_blocks/press_wall/north/range_5/power_0
execute positioned 27 53 29 run function medabots_server:set_blocks/press_wall/west/range_5/power_0
execute positioned 14 53 29 run function medabots_server:set_blocks/press_wall/east/range_5/power_0
execute positioned 12 53 27 run function medabots_server:set_blocks/press_wall/north/range_5/power_0
execute positioned 12 53 14 run function medabots_server:set_blocks/press_wall/south/range_5/power_0
execute positioned 20 53 12 run function medabots_server:set_blocks/door/x/power_1
execute positioned 29 53 20 run function medabots_server:set_blocks/door/z/power_1
execute positioned 20 53 29 run function medabots_server:set_blocks/door/x/power_1
execute positioned 12 53 20 run function medabots_server:set_blocks/door/z/power_1

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