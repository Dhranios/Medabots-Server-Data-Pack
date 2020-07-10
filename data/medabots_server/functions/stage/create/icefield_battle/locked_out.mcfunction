execute positioned 23 53 12 run function medabots_server:spawn_entities/cannon/swivel/north/delay_8
execute positioned 24 53 12 run function medabots_server:spawn_entities/cannon/swivel/north/delay_6
execute positioned 16 53 14 run function medabots_server:spawn_entities/cannon/swivel/north/delay_4
execute positioned 31 53 14 run function medabots_server:spawn_entities/cannon/swivel/north/delay_4
execute positioned 23 53 35 run function medabots_server:spawn_entities/cannon/swivel/south/delay_6
execute positioned 24 53 35 run function medabots_server:spawn_entities/cannon/swivel/south/delay_8
execute positioned 16 53 33 run function medabots_server:spawn_entities/cannon/swivel/south/delay_4
execute positioned 31 53 33 run function medabots_server:spawn_entities/cannon/swivel/south/delay_4
execute positioned 35 53 23 run function medabots_server:spawn_entities/cannon/swivel/east/delay_8
execute positioned 35 53 24 run function medabots_server:spawn_entities/cannon/swivel/east/delay_6
execute positioned 33 53 16 run function medabots_server:spawn_entities/cannon/swivel/east/delay_4
execute positioned 33 53 31 run function medabots_server:spawn_entities/cannon/swivel/east/delay_4
execute positioned 12 53 23 run function medabots_server:spawn_entities/cannon/swivel/west/delay_6
execute positioned 12 53 24 run function medabots_server:spawn_entities/cannon/swivel/west/delay_8
execute positioned 14 53 16 run function medabots_server:spawn_entities/cannon/swivel/west/delay_4
execute positioned 14 53 31 run function medabots_server:spawn_entities/cannon/swivel/west/delay_4
teleport @a[x=0,y=59,z=0,dx=48,dy=4,dz=48,tag=-1] 24 53 8 0 0
teleport @a[x=0,y=59,z=0,dx=48,dy=4,dz=48,tag=0] 23 53 39 -180 0

execute if entity @s[scores={ArenaType=0}] run teleport @s 24 53 8 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=48}] 23 53 39 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned 23 53 39 run function medabots_server:stage/create/icefield_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 24 53 8 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=48}] 23 53 39 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=48}] 25 53 40 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=48}] 21 53 41 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 23 53 39 run function medabots_server:stage/create/icefield_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 25 53 40 run function medabots_server:stage/create/icefield_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned 21 53 41 run function medabots_server:stage/create/icefield_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 24 53 8 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=48}] 22 53 8 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=48}] 23 53 39 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=48}] 25 53 39 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 22 53 8 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 23 53 39 run function medabots_server:stage/create/icefield_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned 25 53 39 run function medabots_server:stage/create/icefield_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 24 53 8 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=48}] 23 53 39 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=48}] 8 53 23 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=48}] 39 53 24 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 23 53 39 run function medabots_server:stage/create/icefield_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 8 53 23 run function medabots_server:stage/create/icefield_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned 39 53 24 run function medabots_server:stage/create/icefield_battle/random_neutral

summon minecraft:armor_stand 21 53 24 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-90.0f,0.0f]}

scoreboard players set @a[x=0,y=51,z=0,dx=48,dy=7,dz=48] Stage 48
scoreboard players set @a[x=0,y=51,z=0,dx=48,dy=7,dz=48] State 1
execute as @a[x=0,y=51,z=0,dx=48,dy=7,dz=48] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=51,z=0,dx=48,dy=7,dz=48] MusicType 0