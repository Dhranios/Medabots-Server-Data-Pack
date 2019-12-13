execute positioned -1943 45 -559 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1928 45 -559 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1928 45 -544 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1943 45 -544 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1941 45 -557 run function medabots_server:spawn_entities/raft
execute positioned -1930 45 -557 run function medabots_server:spawn_entities/raft
execute positioned -1930 45 -546 run function medabots_server:spawn_entities/raft
execute positioned -1941 45 -546 run function medabots_server:spawn_entities/raft
execute positioned -1946 45 -557 run function medabots_server:set_blocks/fan/east/slow/range_15
execute positioned -1946 45 -546 run function medabots_server:set_blocks/fan/east/off/range_15
execute positioned -1925 45 -546 run function medabots_server:set_blocks/fan/west/slow/range_15
execute positioned -1925 45 -557 run function medabots_server:set_blocks/fan/west/off/range_15
execute positioned -1930 45 -562 run function medabots_server:set_blocks/fan/south/slow/range_15
execute positioned -1941 45 -562 run function medabots_server:set_blocks/fan/south/off/range_15
execute positioned -1941 45 -541 run function medabots_server:set_blocks/fan/north/slow/range_15
execute positioned -1930 45 -541 run function medabots_server:set_blocks/fan/north/off/range_15
execute positioned -1945 45 -563 run function medabots_server:set_blocks/wall
execute positioned -1946 45 -562 run function medabots_server:set_blocks/wall
execute positioned -1947 45 -561 run function medabots_server:set_blocks/wall

execute if entity @s[scores={ArenaType=0}] run teleport @s -1933 45 -551 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=0}] -1938 45 -552 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned -1938 45 -552 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1933 45 -551 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=0}] -1938 45 -552 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=1}] -1939 44 -550 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=2}] -1940 44 -554 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1938 45 -552 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1939 44 -550 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1940 44 -554 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1933 45 -551 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=0}] -1933 45 -553 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=1}] -1938 45 -552 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=2}] -1938 45 -550 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1933 45 -553 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1938 45 -552 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1938 45 -550 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1933 45 -551 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=0}] -1938 45 -552 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=1}] -1935 45 -554 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=2}] -1936 45 -549 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1938 45 -552 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1935 45 -554 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1936 45 -549 run function medabots_server:stage/create/park_battle/random_neutral

summon minecraft:armor_stand -1935 45 -549 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-180.0f,0.0f]}

scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Battle 1
execute as @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] MusicType 0