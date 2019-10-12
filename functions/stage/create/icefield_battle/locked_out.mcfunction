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
teleport @s[tag=-1] -1998 45 -624 0 0
tag @a[x=-1998,y=45,z=-612,distance=..1] remove -1
tag @a[x=-1999,y=45,z=-605,distance=..1] remove 0
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Stage 48
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Battle 1
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Music 0
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] MusicType 0