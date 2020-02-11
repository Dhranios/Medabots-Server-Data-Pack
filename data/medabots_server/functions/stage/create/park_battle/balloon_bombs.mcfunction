execute positioned -1942 45 -571 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1942 45 -575 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1942 45 -580 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1942 45 -584 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1938 45 -584 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1938 45 -580 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1938 45 -575 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1938 45 -571 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1933 45 -571 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1933 45 -575 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1933 45 -580 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1933 45 -584 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1929 45 -584 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1929 45 -580 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1929 45 -575 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1929 45 -571 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1947 45 -568 run function medabots_server:set_blocks/wall
execute positioned -1946 45 -567 run function medabots_server:set_blocks/wall
execute positioned -1945 45 -566 run function medabots_server:set_blocks/wall

execute if entity @s[scores={ArenaType=0}] run teleport @s -1929 45 -577 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] -1942 45 -578 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned -1942 45 -578 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1929 45 -577 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] -1942 45 -578 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] -1943 45 -576 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] -1944 45 -580 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1942 45 -578 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1943 45 -576 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1944 45 -580 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1929 45 -577 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] -1929 45 -579 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] -1942 45 -578 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] -1942 45 -576 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1929 45 -579 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1942 45 -578 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1942 45 -576 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1929 45 -577 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] -1942 45 -578 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] -1935 45 -584 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] -1936 45 -571 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1942 45 -578 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1935 45 -584 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1936 45 -571 run function medabots_server:stage/create/park_battle/random_neutral

summon minecraft:armor_stand -1936 45 -575 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-180.0f,0.0f]}

scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] State 1
execute as @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] MusicType 0