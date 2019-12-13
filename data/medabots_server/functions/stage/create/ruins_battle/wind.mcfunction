execute positioned -1981 45 -576 run function medabots_server:spawn_entities/round_stone
execute positioned -2012 45 -558 run function medabots_server:set_blocks/floor_switch/yellow/delay_5
execute positioned -1999 45 -576 run function medabots_server:set_blocks/floor_switch/yellow/delay_5
execute positioned -1981 45 -563 run function medabots_server:set_blocks/floor_switch/yellow/delay_5
execute positioned -1994 45 -545 run function medabots_server:set_blocks/floor_switch/yellow/delay_5
execute positioned -1980 45 -576 run function medabots_server:set_blocks/wall
execute positioned -1981 45 -544 run function medabots_server:set_blocks/wall
execute positioned -2013 45 -545 run function medabots_server:set_blocks/wall
execute positioned -2012 45 -577 run function medabots_server:set_blocks/wall
execute positioned -1981 45 -577 run function medabots_server:set_blocks/spring_wall/south/delay_10/power_0
execute positioned -1980 45 -545 run function medabots_server:set_blocks/spring_wall/west/delay_10/power_0
execute positioned -2012 45 -544 run function medabots_server:set_blocks/spring_wall/north/delay_10/power_0
execute positioned -2013 45 -576 run function medabots_server:set_blocks/spring_wall/east/delay_10/power_0
execute positioned -1999 45 -579 run function medabots_server:set_blocks/fan/south/off/range_37
execute positioned -1978 45 -563 run function medabots_server:set_blocks/fan/west/off/range_37
execute positioned -1994 45 -542 run function medabots_server:set_blocks/fan/north/off/range_37
execute positioned -2015 45 -558 run function medabots_server:set_blocks/fan/east/off/range_37

execute if entity @s[scores={ArenaType=0}] run teleport @s -1997 45 -564 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,scores={StageIndex=0}] -1996 45 -557 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned -1996 45 -557 run function medabots_server:stage/create/ruins_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1997 45 -564 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,scores={StageIndex=0}] -1996 45 -557 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,scores={StageIndex=1}] -1997 45 -555 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,scores={StageIndex=2}] -1998 45 -559 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1996 45 -557 run function medabots_server:stage/create/ruins_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1997 45 -555 run function medabots_server:stage/create/ruins_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1998 45 -559 run function medabots_server:stage/create/ruins_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1997 45 -564 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,scores={StageIndex=0}] -1997 45 -562 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,scores={StageIndex=1}] -1996 45 -557 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,scores={StageIndex=2}] -1996 45 -559 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1997 45 -562 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1996 45 -557 run function medabots_server:stage/create/ruins_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1996 45 -559 run function medabots_server:stage/create/ruins_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1997 45 -564 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,scores={StageIndex=0}] -1996 45 -557 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,scores={StageIndex=1}] -2000 45 -560 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,scores={StageIndex=2}] -1993 45 -561 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1996 45 -557 run function medabots_server:stage/create/ruins_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -2000 45 -560 run function medabots_server:stage/create/ruins_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1993 45 -561 run function medabots_server:stage/create/ruins_battle/random_neutral

summon minecraft:armor_stand -1994 45 -561 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[90.0f,0.0f]}

scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Stage 49
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Battle 1
execute as @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] MusicType 0