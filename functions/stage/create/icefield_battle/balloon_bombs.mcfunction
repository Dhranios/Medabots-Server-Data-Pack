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
teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,tag=-1] -1999 45 -605 -180 0
teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,tag=0] -1998 45 -612 0 0
teleport @s[tag=-1] -1999 45 -605 -180 0
tag @a[x=-1999,y=45,z=-605,distance=..1] remove -1
tag @a[x=-1998,y=45,z=-612,distance=..1] remove 0
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Stage 48
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Battle 1
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Music 0
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] MusicType 0