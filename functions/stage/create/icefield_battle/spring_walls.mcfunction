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
teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,tag=-1] -1998 45 -612 0 0
teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,tag=0] -1999 45 -605 -180 0
teleport @s[tag=-1] -1998 45 -612 0 0
tag @a[x=-1998,y=45,z=-612,distance=..1] remove -1
tag @a[x=-1999,y=45,z=-605,distance=..1] remove 0
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Stage 48
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Battle 1
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Music 0
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] MusicType 0