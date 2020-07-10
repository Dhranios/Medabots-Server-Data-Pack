execute positioned 18 53 15 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 23 53 15 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 26 53 18 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 26 53 23 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 23 53 26 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 18 53 26 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 15 53 23 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 15 53 18 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 18 53 2 run function medabots_server:set_blocks/laser_trap/south/delay_10/power_1
execute positioned 23 53 2 run function medabots_server:set_blocks/laser_trap/south/delay_10/power_1
execute positioned 39 53 18 run function medabots_server:set_blocks/laser_trap/west/delay_10/power_1
execute positioned 39 53 23 run function medabots_server:set_blocks/laser_trap/west/delay_10/power_1
execute positioned 23 53 39 run function medabots_server:set_blocks/laser_trap/north/delay_10/power_1
execute positioned 18 53 39 run function medabots_server:set_blocks/laser_trap/north/delay_10/power_1
execute positioned 2 53 23 run function medabots_server:set_blocks/laser_trap/east/delay_10/power_1
execute positioned 2 53 18 run function medabots_server:set_blocks/laser_trap/east/delay_10/power_1

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