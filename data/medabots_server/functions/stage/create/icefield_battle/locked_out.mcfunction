execute positioned -1999 45 -620 run function medabots_server:spawn_entities/cannon/swiffle/north/delay_8
execute positioned -1998 45 -620 run function medabots_server:spawn_entities/cannon/swiffle/north/delay_6
execute positioned -2006 45 -618 run function medabots_server:spawn_entities/cannon/swiffle/north/delay_4
execute positioned -1991 45 -618 run function medabots_server:spawn_entities/cannon/swiffle/north/delay_4
execute positioned -1999 45 -597 run function medabots_server:spawn_entities/cannon/swiffle/south/delay_6
execute positioned -1998 45 -597 run function medabots_server:spawn_entities/cannon/swiffle/south/delay_8
execute positioned -2006 45 -599 run function medabots_server:spawn_entities/cannon/swiffle/south/delay_4
execute positioned -1991 45 -599 run function medabots_server:spawn_entities/cannon/swiffle/south/delay_4
execute positioned -1987 45 -609 run function medabots_server:spawn_entities/cannon/swiffle/east/delay_8
execute positioned -1987 45 -608 run function medabots_server:spawn_entities/cannon/swiffle/east/delay_6
execute positioned -1989 45 -616 run function medabots_server:spawn_entities/cannon/swiffle/east/delay_4
execute positioned -1989 45 -601 run function medabots_server:spawn_entities/cannon/swiffle/east/delay_4
execute positioned -2010 45 -609 run function medabots_server:spawn_entities/cannon/swiffle/west/delay_6
execute positioned -2010 45 -608 run function medabots_server:spawn_entities/cannon/swiffle/west/delay_8
execute positioned -2008 45 -616 run function medabots_server:spawn_entities/cannon/swiffle/west/delay_4
execute positioned -2008 45 -601 run function medabots_server:spawn_entities/cannon/swiffle/west/delay_4
teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,tag=-1] -1998 45 -624 0 0
teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,tag=0] -1999 45 -593 -180 0

execute if entity @s[scores={ArenaType=0}] run teleport @s -1998 45 -624 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=0}] -1999 45 -593 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned -1999 45 -593 run function medabots_server:stage/create/icefield_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1998 45 -624 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=0}] -1999 45 -593 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=1}] -1997 45 -592 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=2}] -2001 45 -591 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1999 45 -593 run function medabots_server:stage/create/icefield_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1997 45 -592 run function medabots_server:stage/create/icefield_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -2001 45 -591 run function medabots_server:stage/create/icefield_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1998 45 -624 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=0}] -2000 45 -624 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=1}] -1999 45 -593 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=2}] -1997 45 -593 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -2000 45 -624 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1999 45 -593 run function medabots_server:stage/create/icefield_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1997 45 -593 run function medabots_server:stage/create/icefield_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1998 45 -624 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=0}] -1999 45 -593 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=1}] -2014 45 -609 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=2}] -1983 45 -608 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1999 45 -593 run function medabots_server:stage/create/icefield_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -2014 45 -609 run function medabots_server:stage/create/icefield_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1983 45 -608 run function medabots_server:stage/create/icefield_battle/random_neutral

summon minecraft:armor_stand -2001 45 -608 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-90.0f,0.0f]}

scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Stage 48
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Battle 1
execute as @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] MusicType 0