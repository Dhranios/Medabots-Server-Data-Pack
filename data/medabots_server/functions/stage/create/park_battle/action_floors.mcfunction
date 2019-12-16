execute positioned -1972 45 -551 run function medabots_server:set_blocks/action_floor/round_stone/east/power_0
execute positioned -1961 45 -562 run function medabots_server:set_blocks/action_floor/round_stone/south/power_0
execute positioned -1951 45 -552 run function medabots_server:set_blocks/action_floor/round_stone/west/power_0
execute positioned -1962 45 -541 run function medabots_server:set_blocks/action_floor/round_stone/north/power_0
execute positioned -1955 45 -558 run function medabots_server:set_blocks/action_floor/bomb/delay_5/power_0
execute positioned -1955 45 -545 run function medabots_server:set_blocks/action_floor/bomb/delay_5/power_0
execute positioned -1968 45 -545 run function medabots_server:set_blocks/action_floor/bomb/delay_5/power_0
execute positioned -1968 45 -558 run function medabots_server:set_blocks/action_floor/bomb/delay_5/power_0
execute positioned -1950 45 -561 run function medabots_server:set_blocks/wall
execute positioned -1951 45 -562 run function medabots_server:set_blocks/wall
execute positioned -1952 45 -563 run function medabots_server:set_blocks/wall

execute if entity @s[scores={ArenaType=0}] run teleport @s -1967 45 -552 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] -1956 45 -551 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned -1956 45 -551 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1967 45 -552 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] -1956 45 -551 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] -1955 45 -553 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] -1954 45 -549 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1956 45 -551 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1955 45 -553 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1954 45 -549 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1967 45 -552 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] -1967 45 -550 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] -1956 45 -551 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] -1956 45 -553 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1967 45 -550 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1956 45 -551 run function medabots_server:stage/create/park_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1956 45 -553 run function medabots_server:stage/create/park_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1967 45 -552 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=50}] -1956 45 -551 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=50}] -1962 45 -546 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=50}] -1961 45 -557 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1956 45 -551 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1962 45 -546 run function medabots_server:stage/create/park_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1961 45 -557 run function medabots_server:stage/create/park_battle/random_neutral

summon minecraft:armor_stand -1962 45 -555 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[0.0f,0.0f]}

scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Battle 1
execute as @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] MusicType 0