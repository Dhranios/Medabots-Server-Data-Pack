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
teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,tag=-1] -1997 45 -564 0 0
teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,tag=0] -1996 45 -557 -180 0
teleport @s[tag=-1] -1997 45 -564 0 0
tag @a[x=-1997,y=45,z=-564,distance=..1] remove -1
tag @a[x=-1996,y=45,z=-557,distance=..1] remove 0
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Stage 49
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Battle 1
execute as @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] MusicType 0