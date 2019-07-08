execute positioned -2013 45 -626 run function medabots_server:spawn_entities/cannon/no_detect/looking/east/delay_4
execute positioned -2016 45 -623 run function medabots_server:spawn_entities/cannon/no_detect/looking/south/delay_4
execute positioned -2016 45 -594 run function medabots_server:spawn_entities/cannon/no_detect/looking/north/delay_4
execute positioned -2013 45 -591 run function medabots_server:spawn_entities/cannon/no_detect/looking/east/delay_4
execute positioned -1984 45 -591 run function medabots_server:spawn_entities/cannon/no_detect/looking/west/delay_4
execute positioned -1981 45 -594 run function medabots_server:spawn_entities/cannon/no_detect/looking/north/delay_4
execute positioned -1981 45 -623 run function medabots_server:spawn_entities/cannon/no_detect/looking/south/delay_4
execute positioned -1984 45 -626 run function medabots_server:spawn_entities/cannon/no_detect/looking/west/delay_4
execute positioned -2009 45 -624 run function medabots_server:set_blocks/accelerator/east
execute positioned -2015 45 -619 run function medabots_server:set_blocks/accelerator/south
execute positioned -2014 45 -598 run function medabots_server:set_blocks/accelerator/north
execute positioned -2009 45 -592 run function medabots_server:set_blocks/accelerator/east
execute positioned -1988 45 -593 run function medabots_server:set_blocks/accelerator/west
execute positioned -1982 45 -598 run function medabots_server:set_blocks/accelerator/north
execute positioned -1983 45 -619 run function medabots_server:set_blocks/accelerator/south
execute positioned -1988 45 -625 run function medabots_server:set_blocks/accelerator/west
teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,tag=-1] -1999 45 -605 -180 0
teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,tag=0] -1998 45 -612 0 0
teleport @s[tag=-1] -1999 45 -605 -180 0
tag @a[x=-1999,y=45,z=-605,distance=..1] remove -1
tag @a[x=-1998,y=45,z=-612,distance=..1] remove 0
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Stage 48
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Battle 1
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Music 0
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] MusicType 0