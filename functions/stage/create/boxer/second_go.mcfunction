execute positioned -1889 44 -541 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1890 44 -558 run function medabots_server:set_blocks/door/north/power_0
execute positioned -1879 44 -562 run function medabots_server:set_blocks/door/south/power_0
execute positioned -1878 44 -561 run function medabots_server:set_blocks/door/north/power_0
execute positioned -1876 44 -571 run function medabots_server:set_blocks/door/west/power_1
execute positioned -1875 44 -571 run function medabots_server:set_blocks/door/west/power_0
execute positioned -1880 44 -582 run function medabots_server:set_blocks/door/east/power_1
execute positioned -1879 44 -583 run function medabots_server:set_blocks/door/west/power_0
execute positioned -1889 44 -585 run function medabots_server:set_blocks/door/south/power_1
execute positioned -1889 44 -586 run function medabots_server:set_blocks/door/south/power_0
execute positioned -1900 44 -581 run function medabots_server:set_blocks/door/north/power_1
execute positioned -1901 44 -582 run function medabots_server:set_blocks/door/south/power_0
execute positioned -1903 44 -572 run function medabots_server:set_blocks/door/east/power_1
execute positioned -1904 44 -572 run function medabots_server:set_blocks/door/east/power_0
execute positioned -1899 44 -561 run function medabots_server:set_blocks/door/west/power_1
execute positioned -1900 44 -560 run function medabots_server:set_blocks/door/east/power_0
execute positioned -1890 44 -548 run function medabots_server:set_blocks/starting_area
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=-1] -1890 44 -548 0 0
teleport @s[tag=-1] -1890 44 -548 0 0
tag @a[x=-1890,y=44,z=-548,distance=..1] remove -1
bossbar set medabots_server:boxer/time value 0
bossbar set medabots_server:boxer/time players @a[x=-1890,y=44,z=-548,distance=..1]
scoreboard players set @a[x=-1890,y=44,z=-548,distance=..1] Battle 1
scoreboard players set @a[x=-1890,y=44,z=-548,distance=..1] Stage 29
scoreboard players set @a[x=-1890,y=44,z=-548,distance=..1] Music 0
scoreboard players set @a[x=-1890,y=44,z=-548,distance=..1] MusicType 21
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=medabot] Battle 3
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=medabot] Stage 29
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=medabot] Music 0
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=medabot] MusicType 21