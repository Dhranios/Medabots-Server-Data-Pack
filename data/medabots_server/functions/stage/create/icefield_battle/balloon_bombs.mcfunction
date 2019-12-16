execute positioned -2000 45 -613 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -2003 45 -610 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -2002 45 -605 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1997 45 -604 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1994 45 -607 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1995 45 -612 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1999 45 -619 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -2007 45 -615 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -2009 45 -609 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -2007 45 -601 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1999 45 -598 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1991 45 -600 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1988 45 -609 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1991 45 -617 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1999 45 -621 run function medabots_server:set_blocks/door/south/power_1
execute positioned -1986 45 -609 run function medabots_server:set_blocks/door/west/power_1
execute positioned -1998 45 -596 run function medabots_server:set_blocks/door/north/power_1
execute positioned -2011 45 -608 run function medabots_server:set_blocks/door/east/power_1

execute if entity @s[scores={ArenaType=0}] run teleport @s -1998 45 -612 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=48}] -1999 45 -605 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned -1999 45 -605 run function medabots_server:stage/create/icefield_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1998 45 -612 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=48}] -1999 45 -605 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=48}] -1997 45 -604 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=48}] -2001 45 -603 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1999 45 -605 run function medabots_server:stage/create/icefield_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1997 45 -604 run function medabots_server:stage/create/icefield_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -2001 45 -603 run function medabots_server:stage/create/icefield_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1998 45 -612 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=48}] -2000 45 -612 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=48}] -1999 45 -605 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=48}] -1997 45 -605 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -2000 45 -612 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1999 45 -605 run function medabots_server:stage/create/icefield_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1997 45 -605 run function medabots_server:stage/create/icefield_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1998 45 -612 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=48}] -1999 45 -605 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=48}] -2002 45 -609 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=48}] -1995 45 -608 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1999 45 -605 run function medabots_server:stage/create/icefield_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -2002 45 -609 run function medabots_server:stage/create/icefield_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1995 45 -608 run function medabots_server:stage/create/icefield_battle/random_neutral

summon minecraft:armor_stand -2001 45 -608 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-90.0f,0.0f]}

scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Stage 48
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] State 1
execute as @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] MusicType 0