execute positioned -2002 45 -566 run function medabots_server:spawn_entities/bomb/delay_30
execute positioned -1991 45 -555 run function medabots_server:spawn_entities/bomb/delay_60
execute positioned -1991 45 -566 run function medabots_server:spawn_entities/bomb/delay_90
execute positioned -2002 45 -555 run function medabots_server:spawn_entities/bomb/delay_120
execute positioned -2003 45 -569 run function medabots_server:set_blocks/press_wall/enabled/east/range_5
execute positioned -1990 45 -569 run function medabots_server:set_blocks/press_wall/enabled/west/range_5
execute positioned -1988 45 -567 run function medabots_server:set_blocks/press_wall/enabled/south/range_5
execute positioned -1988 45 -554 run function medabots_server:set_blocks/press_wall/enabled/north/range_5
execute positioned -1990 45 -552 run function medabots_server:set_blocks/press_wall/enabled/west/range_5
execute positioned -2003 45 -552 run function medabots_server:set_blocks/press_wall/enabled/east/range_5
execute positioned -2005 45 -554 run function medabots_server:set_blocks/press_wall/enabled/north/range_5
execute positioned -2005 45 -567 run function medabots_server:set_blocks/press_wall/enabled/south/range_5
execute positioned -1997 45 -569 run function medabots_server:set_blocks/door/closed/south
execute positioned -1988 45 -561 run function medabots_server:set_blocks/door/closed/west
execute positioned -1996 45 -552 run function medabots_server:set_blocks/door/closed/north
execute positioned -2005 45 -560 run function medabots_server:set_blocks/door/closed/east
teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,tag=-1] -1996 45 -557 0 0
teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,tag=0] -1997 45 -564 -180 0
teleport @s[tag=-1] -1996 45 -557 0 0
tag @a[x=-1996,y=45,z=-557,distance=..1] remove -1
tag @a[x=-1997,y=45,z=-564,distance=..1] remove 0
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Stage 49
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Battle 1
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Music 0
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] MusicType 0