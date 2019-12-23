execute positioned -1991 45 -555 run function medabots_server:spawn_entities/bomb/delay_30
execute positioned -2002 45 -566 run function medabots_server:spawn_entities/bomb/delay_60
execute positioned -2002 45 -555 run function medabots_server:spawn_entities/bomb/delay_90
execute positioned -1991 45 -566 run function medabots_server:spawn_entities/bomb/delay_120
execute positioned -2003 45 -569 run function medabots_server:set_blocks/press_wall/east/range_5/power_0
execute positioned -1990 45 -569 run function medabots_server:set_blocks/press_wall/west/range_5/power_0
execute positioned -1988 45 -567 run function medabots_server:set_blocks/press_wall/south/range_5/power_0
execute positioned -1988 45 -554 run function medabots_server:set_blocks/press_wall/north/range_5/power_0
execute positioned -1990 45 -552 run function medabots_server:set_blocks/press_wall/west/range_5/power_0
execute positioned -2003 45 -552 run function medabots_server:set_blocks/press_wall/east/range_5/power_0
execute positioned -2005 45 -554 run function medabots_server:set_blocks/press_wall/north/range_5/power_0
execute positioned -2005 45 -567 run function medabots_server:set_blocks/press_wall/south/range_5/power_0
execute positioned -1997 45 -569 run function medabots_server:set_blocks/door/south/power_1
execute positioned -1988 45 -561 run function medabots_server:set_blocks/door/west/power_1
execute positioned -1996 45 -552 run function medabots_server:set_blocks/door/north/power_1
execute positioned -2005 45 -560 run function medabots_server:set_blocks/door/east/power_1

execute if entity @s[scores={ArenaType=0}] run teleport @s -1997 45 -564 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=49}] -1996 45 -557 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned -1996 45 -557 run function medabots_server:stage/create/ruins_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1997 45 -564 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=49}] -1996 45 -557 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=49}] -1994 45 -556 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=49}] -1998 45 -555 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1996 45 -557 run function medabots_server:stage/create/ruins_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1994 45 -556 run function medabots_server:stage/create/ruins_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1998 45 -555 run function medabots_server:stage/create/ruins_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1997 45 -564 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=49}] -1997 45 -562 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=49}] -1996 45 -557 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=49}] -1996 45 -559 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1997 45 -562 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1996 45 -557 run function medabots_server:stage/create/ruins_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1996 45 -559 run function medabots_server:stage/create/ruins_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1997 45 -564 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=49}] -1996 45 -557 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=49}] -2000 45 -560 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=49}] -1993 45 -561 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1996 45 -557 run function medabots_server:stage/create/ruins_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -2000 45 -560 run function medabots_server:stage/create/ruins_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1993 45 -561 run function medabots_server:stage/create/ruins_battle/random_neutral

summon minecraft:armor_stand -1994 45 -561 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[90.0f,0.0f]}

scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Stage 49
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] State 1
execute as @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] MusicType 0