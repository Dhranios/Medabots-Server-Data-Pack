execute positioned -1982 45 -573 run function medabots_server:spawn_entities/cannon/swivel/west/delay_4
execute positioned -1982 45 -563 run function medabots_server:spawn_entities/cannon/swivel/west/delay_3
execute positioned -1982 45 -558 run function medabots_server:spawn_entities/cannon/swivel/west/delay_4
execute positioned -1982 45 -548 run function medabots_server:spawn_entities/cannon/swivel/west/delay_4
execute positioned -2011 45 -548 run function medabots_server:spawn_entities/cannon/swivel/east/delay_4
execute positioned -2011 45 -558 run function medabots_server:spawn_entities/cannon/swivel/east/delay_3
execute positioned -2011 45 -563 run function medabots_server:spawn_entities/cannon/swivel/east/delay_4
execute positioned -2011 45 -573 run function medabots_server:spawn_entities/cannon/swivel/east/delay_4
execute positioned -2009 45 -575 run function medabots_server:spawn_entities/cannon/swivel/south/delay_4
execute positioned -1999 45 -575 run function medabots_server:spawn_entities/cannon/swivel/south/delay_3
execute positioned -1994 45 -575 run function medabots_server:spawn_entities/cannon/swivel/south/delay_4
execute positioned -1984 45 -575 run function medabots_server:spawn_entities/cannon/swivel/south/delay_4
execute positioned -1984 45 -546 run function medabots_server:spawn_entities/cannon/swivel/north/delay_4
execute positioned -1994 45 -546 run function medabots_server:spawn_entities/cannon/swivel/north/delay_3
execute positioned -1999 45 -546 run function medabots_server:spawn_entities/cannon/swivel/north/delay_4
execute positioned -2009 45 -546 run function medabots_server:spawn_entities/cannon/swivel/north/delay_4

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
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=0,Gamemode=0,Stage=49}] -1995 45 -564 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=1,Gamemode=0,Stage=49}] -1996 45 -557 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[scores={StageIndex=2,Gamemode=0,Stage=49}] -1994 45 -557 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1995 45 -564 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1996 45 -557 run function medabots_server:stage/create/ruins_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1994 45 -557 run function medabots_server:stage/create/ruins_battle/random_enemy

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