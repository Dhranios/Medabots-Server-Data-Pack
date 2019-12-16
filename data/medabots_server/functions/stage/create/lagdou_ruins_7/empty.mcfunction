
execute if entity @s[scores={ArenaType=0}] run teleport @s -1295 44 -213 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=42}] -1245 44 -150 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus] positioned -1245 44 -150 run function medabots_server:stage/create/lagdou_ruins_7/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1295 44 -213 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=42}] -1245 44 -150 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=42}] -1243 44 -149 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=42}] -1247 44 -148 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1245 44 -150 run function medabots_server:stage/create/lagdou_ruins_7/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1243 44 -149 run function medabots_server:stage/create/lagdou_ruins_7/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus] positioned -1247 44 -148 run function medabots_server:stage/create/lagdou_ruins_7/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1295 44 -213 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=42}] -1297 44 -213 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=42}] -1245 44 -150 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=42}] -1243 44 -150 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1297 44 -213 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1245 44 -150 run function medabots_server:stage/create/lagdou_ruins_7/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus] positioned -1243 44 -150 run function medabots_server:stage/create/lagdou_ruins_7/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1295 44 -213 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=42}] -1245 44 -150 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=42}] -1301 44 -159 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=42}] -1241 44 -177 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1245 44 -150 run function medabots_server:stage/create/lagdou_ruins_7/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1301 44 -159 run function medabots_server:stage/create/lagdou_ruins_7/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus] positioned -1241 44 -177 run function medabots_server:stage/create/lagdou_ruins_7/random_neutral

summon minecraft:armor_stand -1280 44 -162 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-180.0f,0.0f]}

scoreboard players set @a[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77] Stage 42
scoreboard players set @a[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77] State 1
execute as @a[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77] MusicType 20