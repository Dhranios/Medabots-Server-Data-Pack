fill -1211 45 -62 -1265 47 -137 minecraft:redstone_wall_torch[facing=east] replace minecraft:wall_torch[facing=east]
fill -1211 45 -62 -1265 47 -137 minecraft:redstone_wall_torch[facing=north] replace minecraft:wall_torch[facing=north]
fill -1211 45 -62 -1265 47 -137 minecraft:redstone_wall_torch[facing=south] replace minecraft:wall_torch[facing=south]
fill -1211 45 -62 -1265 47 -137 minecraft:redstone_wall_torch[facing=west] replace minecraft:wall_torch[facing=west]

execute if entity @s[scores={ArenaType=0}] run teleport @s -1221 43 -63 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[x=-1267,y=50,z=-139,dx=60,dy=4,dz=77,scores={StageIndex=0}] -1236 45 -135 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned -1236 45 -135 run function medabots_server:stage/create/lagdou_ruins_6/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1221 43 -63 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1267,y=50,z=-139,dx=60,dy=4,dz=77,scores={StageIndex=0}] -1236 45 -135 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1267,y=50,z=-139,dx=60,dy=4,dz=77,scores={StageIndex=1}] -1238 45 -137 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1267,y=50,z=-139,dx=60,dy=4,dz=77,scores={StageIndex=2}] -1234 45 -137 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1236 45 -135 run function medabots_server:stage/create/lagdou_ruins_6/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1238 45 -137 run function medabots_server:stage/create/lagdou_ruins_6/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1234 45 -137 run function medabots_server:stage/create/lagdou_ruins_6/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1221 43 -63 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1267,y=50,z=-139,dx=60,dy=4,dz=77,scores={StageIndex=0}] -1219 43 -63 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1267,y=50,z=-139,dx=60,dy=4,dz=77,scores={StageIndex=1}] -1236 45 -135 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1267,y=50,z=-139,dx=60,dy=4,dz=77,scores={StageIndex=2}] -1238 45 -137 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1219 43 -63 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1236 45 -135 run function medabots_server:stage/create/lagdou_ruins_6/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1238 45 -137 run function medabots_server:stage/create/lagdou_ruins_6/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1221 43 -63 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1267,y=50,z=-139,dx=60,dy=4,dz=77,scores={StageIndex=0}] -1236 45 -135 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1267,y=50,z=-139,dx=60,dy=4,dz=77,scores={StageIndex=1}] -1221 45 -120 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1267,y=50,z=-139,dx=60,dy=4,dz=77,scores={StageIndex=2}] -1263 45 -108 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1236 45 -135 run function medabots_server:stage/create/lagdou_ruins_6/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1221 45 -120 run function medabots_server:stage/create/lagdou_ruins_6/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1263 45 -108 run function medabots_server:stage/create/lagdou_ruins_6/random_neutral

summon minecraft:armor_stand -1230 43 -99 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[90.0f,0.0f]}

scoreboard players set @a[x=-1267,y=42,z=-139,dx=60,dy=7,dz=77] Stage 41
scoreboard players set @a[x=-1267,y=42,z=-139,dx=60,dy=7,dz=77] Battle 1
execute as @a[x=-1267,y=42,z=-139,dx=60,dy=7,dz=77] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1267,y=42,z=-139,dx=60,dy=7,dz=77] MusicType 20