execute positioned -2013 45 -594 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1984 45 -623 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1984 45 -592 run function medabots_server:spawn_entities/ice_block
execute positioned -1985 45 -595 run function medabots_server:spawn_entities/ice_block
execute positioned -1982 45 -594 run function medabots_server:spawn_entities/ice_block
execute positioned -1985 45 -622 run function medabots_server:spawn_entities/ice_block
execute positioned -2013 45 -625 run function medabots_server:spawn_entities/ice_block
execute positioned -2012 45 -622 run function medabots_server:spawn_entities/ice_block
execute positioned -2015 45 -623 run function medabots_server:spawn_entities/ice_block
execute positioned -2012 45 -595 run function medabots_server:spawn_entities/ice_block
execute positioned -2014 45 -625 run function medabots_server:set_blocks/spring_wall/east/delay_10/power_1
execute positioned -2015 45 -624 run function medabots_server:set_blocks/spring_wall/south/delay_10/power_1
execute positioned -2015 45 -593 run function medabots_server:set_blocks/spring_wall/north/delay_10/power_1
execute positioned -2014 45 -592 run function medabots_server:set_blocks/spring_wall/east/delay_10/power_1
execute positioned -1983 45 -592 run function medabots_server:set_blocks/spring_wall/west/delay_10/power_1
execute positioned -1982 45 -593 run function medabots_server:set_blocks/spring_wall/north/delay_10/power_1
execute positioned -1982 45 -624 run function medabots_server:set_blocks/spring_wall/south/delay_10/power_1
execute positioned -1983 45 -625 run function medabots_server:set_blocks/spring_wall/west/delay_10/power_1

execute if entity @s[scores={ArenaType=0}] run teleport @s -1998 45 -612 0 0
execute if entity @s[scores={ArenaType=0}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=0}] -1999 45 -605 0 0
execute if entity @s[scores={ArenaType=0},tag=vs_cpus,tag=!story_battle] positioned -1999 45 -605 run function medabots_server:stage/create/icefield_battle/random_enemy

execute if entity @s[scores={ArenaType=1}] run teleport @s -1998 45 -612 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=0}] -1999 45 -605 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=1}] -1997 45 -604 0 0
execute if entity @s[scores={ArenaType=1}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=2}] -2001 45 -603 0 0
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1999 45 -605 run function medabots_server:stage/create/icefield_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -1997 45 -604 run function medabots_server:stage/create/icefield_battle/random_enemy
execute if entity @s[scores={ArenaType=1},tag=vs_cpus,tag=!story_battle] positioned -2001 45 -603 run function medabots_server:stage/create/icefield_battle/random_enemy

execute if entity @s[scores={ArenaType=2}] run teleport @s -1998 45 -612 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=0}] -2000 45 -612 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=1}] -1999 45 -605 0 0
execute if entity @s[scores={ArenaType=2}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=2}] -1997 45 -605 0 0
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -2000 45 -612 run function medabots_server:stage/create/generic/get_ally
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1999 45 -605 run function medabots_server:stage/create/icefield_battle/random_enemy
execute if entity @s[scores={ArenaType=2},tag=vs_cpus,tag=!story_battle] positioned -1997 45 -605 run function medabots_server:stage/create/icefield_battle/random_enemy

execute if entity @s[scores={ArenaType=3}] run teleport @s -1998 45 -612 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=0}] -1999 45 -605 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=1}] -2002 45 -609 0 0
execute if entity @s[scores={ArenaType=3}] run teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,scores={StageIndex=2}] -1995 45 -608 0 0
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1999 45 -605 run function medabots_server:stage/create/icefield_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -2002 45 -609 run function medabots_server:stage/create/icefield_battle/random_neutral
execute if entity @s[scores={ArenaType=3},tag=vs_cpus,tag=!story_battle] positioned -1995 45 -608 run function medabots_server:stage/create/icefield_battle/random_neutral

summon minecraft:armor_stand -2001 45 -608 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-90.0f,0.0f]}

scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Stage 48
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Battle 1
execute as @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] MusicType 0