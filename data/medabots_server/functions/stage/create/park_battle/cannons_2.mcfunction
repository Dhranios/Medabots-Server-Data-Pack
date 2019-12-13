execute positioned -1954 45 -586 run function medabots_server:spawn_entities/cannon/swiffle/west/delay_4
execute positioned -1969 45 -569 run function medabots_server:spawn_entities/cannon/swiffle/east/delay_4
execute positioned -1970 45 -585 run function medabots_server:spawn_entities/cannon/swiffle/south/delay_4
execute positioned -1953 45 -570 run function medabots_server:spawn_entities/cannon/swiffle/north/delay_4
execute positioned -1952 45 -576 run function medabots_server:spawn_entities/cannon/still/west/delay_4
execute positioned -1971 45 -579 run function medabots_server:spawn_entities/cannon/still/east/delay_4
execute positioned -1963 45 -587 run function medabots_server:spawn_entities/cannon/still/south/delay_4
execute positioned -1960 45 -568 run function medabots_server:spawn_entities/cannon/still/north/delay_4
execute positioned -1968 45 -579 run function medabots_server:set_blocks/bridge
execute positioned -1963 45 -584 run function medabots_server:set_blocks/bridge
execute positioned -1960 45 -571 run function medabots_server:set_blocks/bridge
execute positioned -1955 45 -576 run function medabots_server:set_blocks/bridge
execute positioned -1952 45 -566 run function medabots_server:set_blocks/wall
execute positioned -1951 45 -567 run function medabots_server:set_blocks/wall
execute positioned -1950 45 -568 run function medabots_server:set_blocks/wall

execute if entity @s[scores={ArenaType=0}] run teleport @s -1966 45 -578 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=0}] -1957 45 -577 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned -1957 45 -577 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1966 45 -578 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=0}] -1957 45 -577 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=1}] -1956 45 -579 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=2}] -1956 45 -575 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1957 45 -577 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1956 45 -579 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1956 45 -575 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1966 45 -578 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=0}] -1966 45 -576 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=1}] -1957 45 -577 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=2}] -1957 45 -579 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1966 45 -576 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1957 45 -577 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1957 45 -579 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1966 45 -578 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=0}] -1957 45 -577 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=1}] -1962 45 -573 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,scores={StageIndex=2}] -1961 45 -582 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1957 45 -577 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1962 45 -573 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1961 45 -582 run function medabots_server:stage/create/park_battle/random_neutral

summon minecraft:armor_stand -1962 45 -581 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[0.0f,0.0f]}

scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Battle 1
execute as @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] MusicType 0