fill -1238 46 -148 -1311 49 -217 minecraft:redstone_wall_torch[facing=east] replace minecraft:wall_torch[facing=east]
fill -1238 46 -148 -1311 49 -217 minecraft:redstone_wall_torch[facing=north] replace minecraft:wall_torch[facing=north]
fill -1238 46 -148 -1311 49 -217 minecraft:redstone_wall_torch[facing=south] replace minecraft:wall_torch[facing=south]
fill -1238 46 -148 -1311 49 -217 minecraft:redstone_wall_torch[facing=west] replace minecraft:wall_torch[facing=west]

execute if entity @s[scores={ArenaType=0}] run teleport @s 16 51 7 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=42}] 66 51 70 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned 66 51 70 run function medabots_server:stage/create/lagdou_ruins_7/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s 16 51 7 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=42}] 66 51 70 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=42}] 68 51 71 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=42}] 64 51 72 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 66 51 70 run function medabots_server:stage/create/lagdou_ruins_7/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 68 51 71 run function medabots_server:stage/create/lagdou_ruins_7/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned 64 51 72 run function medabots_server:stage/create/lagdou_ruins_7/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s 16 51 7 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=42}] 14 51 7 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=42}] 66 51 70 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=42}] 68 51 70 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 14 51 7 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 66 51 70 run function medabots_server:stage/create/lagdou_ruins_7/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned 68 51 70 run function medabots_server:stage/create/lagdou_ruins_7/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s 16 51 7 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=42}] 66 51 70 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=42}] 10 51 61 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=42}] 70 51 43 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 66 51 70 run function medabots_server:stage/create/lagdou_ruins_7/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 10 51 61 run function medabots_server:stage/create/lagdou_ruins_7/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned 70 51 43 run function medabots_server:stage/create/lagdou_ruins_7/random_neutral

summon minecraft:armor_stand 31 51 58 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-180.0f,0.0f]}

execute if entity @s[advancements={medabots_server:main/salesman_quest/unicorn_medal={start_the_quest=true,find_the_item=false}}] positioned 58 51 19 run function medabots_server:spawn_entities/item/salesman_quest/mysterious_artifact

scoreboard players set @a[x=0,y=47,z=0,dx=74,dy=9,dz=77] Stage 42
scoreboard players set @a[x=0,y=47,z=0,dx=74,dy=9,dz=77] State 1
execute as @a[x=0,y=47,z=0,dx=74,dy=9,dz=77] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=0,y=47,z=0,dx=74,dy=9,dz=77] MusicType 20