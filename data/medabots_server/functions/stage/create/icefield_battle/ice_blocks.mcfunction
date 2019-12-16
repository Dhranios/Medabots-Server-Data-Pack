execute positioned -2001 45 -611 run function medabots_server:spawn_entities/ice_block
execute positioned -2001 45 -606 run function medabots_server:spawn_entities/ice_block
execute positioned -1996 45 -606 run function medabots_server:spawn_entities/ice_block
execute positioned -1996 45 -611 run function medabots_server:spawn_entities/ice_block
execute positioned -2004 45 -627 run function medabots_server:spawn_entities/ice_block
execute positioned -2010 45 -624 run function medabots_server:spawn_entities/ice_block
execute positioned -2014 45 -620 run function medabots_server:spawn_entities/ice_block
execute positioned -2017 45 -614 run function medabots_server:spawn_entities/ice_block
execute positioned -2017 45 -603 run function medabots_server:spawn_entities/ice_block
execute positioned -2014 45 -597 run function medabots_server:spawn_entities/ice_block
execute positioned -2010 45 -593 run function medabots_server:spawn_entities/ice_block
execute positioned -2004 45 -590 run function medabots_server:spawn_entities/ice_block
execute positioned -1993 45 -590 run function medabots_server:spawn_entities/ice_block
execute positioned -1987 45 -593 run function medabots_server:spawn_entities/ice_block
execute positioned -1983 45 -597 run function medabots_server:spawn_entities/ice_block
execute positioned -1980 45 -603 run function medabots_server:spawn_entities/ice_block
execute positioned -1980 45 -614 run function medabots_server:spawn_entities/ice_block
execute positioned -1983 45 -620 run function medabots_server:spawn_entities/ice_block
execute positioned -1987 45 -624 run function medabots_server:spawn_entities/ice_block
execute positioned -1993 45 -627 run function medabots_server:spawn_entities/ice_block

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