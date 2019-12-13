execute positioned -1939 45 -621 run function medabots_server:set_blocks/action_floor/bomb/delay_0/power_0
execute positioned -1939 45 -612 run function medabots_server:set_blocks/action_floor/bomb/delay_0/power_0
execute positioned -1944 45 -607 run function medabots_server:set_blocks/action_floor/bomb/delay_0/power_0
execute positioned -1953 45 -607 run function medabots_server:set_blocks/action_floor/bomb/delay_0/power_0
execute positioned -1958 45 -612 run function medabots_server:set_blocks/action_floor/bomb/delay_0/power_0
execute positioned -1958 45 -621 run function medabots_server:set_blocks/action_floor/bomb/delay_0/power_0
execute positioned -1953 45 -626 run function medabots_server:set_blocks/action_floor/bomb/delay_0/power_0
execute positioned -1944 45 -626 run function medabots_server:set_blocks/action_floor/bomb/delay_0/power_0

execute if entity @s[scores={ArenaType=0}] run teleport @s -1943 45 -617 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[x=-1972,y=51,z=-640,dx=48,dy=4,dz=48,scores={StageIndex=0}] -1954 45 -616 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned -1954 45 -616 run function medabots_server:stage/create/woods_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1943 45 -617 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1972,y=51,z=-640,dx=48,dy=4,dz=48,scores={StageIndex=0}] -1954 45 -616 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1972,y=51,z=-640,dx=48,dy=4,dz=48,scores={StageIndex=1}] -1955 45 -614 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-1972,y=51,z=-640,dx=48,dy=4,dz=48,scores={StageIndex=2}] -1956 45 -618 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1954 45 -616 run function medabots_server:stage/create/woods_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1955 45 -614 run function medabots_server:stage/create/woods_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1956 45 -618 run function medabots_server:stage/create/woods_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1943 45 -617 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1972,y=51,z=-640,dx=48,dy=4,dz=48,scores={StageIndex=0}] -1943 45 -615 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1972,y=51,z=-640,dx=48,dy=4,dz=48,scores={StageIndex=1}] -1954 45 -616 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-1972,y=51,z=-640,dx=48,dy=4,dz=48,scores={StageIndex=2}] -1954 45 -618 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1943 45 -615 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1954 45 -616 run function medabots_server:stage/create/woods_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1954 45 -618 run function medabots_server:stage/create/woods_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1943 45 -617 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1972,y=51,z=-640,dx=48,dy=4,dz=48,scores={StageIndex=0}] -1954 45 -616 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1972,y=51,z=-640,dx=48,dy=4,dz=48,scores={StageIndex=1}] -1948 45 -611 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-1972,y=51,z=-640,dx=48,dy=4,dz=48,scores={StageIndex=2}] -1949 45 -622 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1954 45 -616 run function medabots_server:stage/create/woods_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1948 45 -611 run function medabots_server:stage/create/woods_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1949 45 -622 run function medabots_server:stage/create/woods_battle/random_neutral

summon minecraft:armor_stand -1948 45 -610 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-180.0f,0.0f]}

scoreboard players set @a[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48] Stage 47
scoreboard players set @a[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48] Battle 1
execute as @a[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48] MusicType 0