execute positioned -1929 45 -621 run function medabots_server:set_blocks/accelerator/south
execute positioned -1936 45 -617 run function medabots_server:set_blocks/accelerator/east
execute positioned -1936 45 -616 run function medabots_server:set_blocks/accelerator/east
execute positioned -1929 45 -612 run function medabots_server:set_blocks/accelerator/north
execute positioned -1944 45 -597 run function medabots_server:set_blocks/accelerator/west
execute positioned -1948 45 -604 run function medabots_server:set_blocks/accelerator/south
execute positioned -1949 45 -604 run function medabots_server:set_blocks/accelerator/south
execute positioned -1953 45 -597 run function medabots_server:set_blocks/accelerator/east
execute positioned -1968 45 -612 run function medabots_server:set_blocks/accelerator/north
execute positioned -1961 45 -616 run function medabots_server:set_blocks/accelerator/west
execute positioned -1961 45 -617 run function medabots_server:set_blocks/accelerator/west
execute positioned -1968 45 -621 run function medabots_server:set_blocks/accelerator/south
execute positioned -1953 45 -636 run function medabots_server:set_blocks/accelerator/east
execute positioned -1949 45 -629 run function medabots_server:set_blocks/accelerator/north
execute positioned -1948 45 -629 run function medabots_server:set_blocks/accelerator/north
execute positioned -1944 45 -636 run function medabots_server:set_blocks/accelerator/west

execute if entity @s[scores={ArenaType=0}] run teleport @s -1943 45 -617 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=47}] -1954 45 -616 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned -1954 45 -616 run function medabots_server:stage/create/woods_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1943 45 -617 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=47}] -1954 45 -616 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=47}] -1955 45 -614 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=47}] -1956 45 -618 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1954 45 -616 run function medabots_server:stage/create/woods_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1955 45 -614 run function medabots_server:stage/create/woods_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1956 45 -618 run function medabots_server:stage/create/woods_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1943 45 -617 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=47}] -1943 45 -615 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=47}] -1954 45 -616 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=47}] -1954 45 -618 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1943 45 -615 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1954 45 -616 run function medabots_server:stage/create/woods_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1954 45 -618 run function medabots_server:stage/create/woods_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1943 45 -617 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=47}] -1954 45 -616 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=47}] -1948 45 -611 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=47}] -1949 45 -622 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1954 45 -616 run function medabots_server:stage/create/woods_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1948 45 -611 run function medabots_server:stage/create/woods_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1949 45 -622 run function medabots_server:stage/create/woods_battle/random_neutral

summon minecraft:armor_stand -1948 45 -610 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-180.0f,0.0f]}

scoreboard players set @a[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48] Stage 47
scoreboard players set @a[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48] Battle 1
execute as @a[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48] MusicType 0