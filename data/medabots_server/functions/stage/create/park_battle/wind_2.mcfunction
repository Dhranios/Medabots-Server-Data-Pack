execute positioned -1944 45 -554 run function medabots_server:spawn_entities/raft
execute positioned -1938 45 -543 run function medabots_server:spawn_entities/raft
execute positioned -1927 45 -549 run function medabots_server:spawn_entities/raft
execute positioned -1933 45 -560 run function medabots_server:spawn_entities/raft
execute positioned -1942 45 -549 run function medabots_server:set_blocks/stone
execute positioned -1933 45 -545 run function medabots_server:set_blocks/stone
execute positioned -1929 45 -554 run function medabots_server:set_blocks/stone
execute positioned -1938 45 -558 run function medabots_server:set_blocks/stone
execute positioned -1929 45 -546 run function medabots_server:set_blocks/accelerator/south
execute positioned -1941 45 -545 run function medabots_server:set_blocks/accelerator/west
execute positioned -1942 45 -557 run function medabots_server:set_blocks/accelerator/north
execute positioned -1930 45 -558 run function medabots_server:set_blocks/accelerator/east
execute positioned -1941 45 -562 run function medabots_server:set_blocks/fan/south/slow/range_15
execute positioned -1925 45 -557 run function medabots_server:set_blocks/fan/west/slow/range_15
execute positioned -1930 45 -541 run function medabots_server:set_blocks/fan/north/slow/range_15
execute positioned -1946 45 -546 run function medabots_server:set_blocks/fan/east/slow/range_15
execute positioned -1945 45 -563 run function medabots_server:set_blocks/wall
execute positioned -1946 45 -562 run function medabots_server:set_blocks/wall
execute positioned -1947 45 -561 run function medabots_server:set_blocks/wall
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=-1] -1933 45 -551 90 0
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=0] -1938 45 -552 -90 0
teleport @s[tag=-1] -1933 45 -551 90 0
tag @a[x=-1933,y=45,z=-551,distance=..1] remove -1
tag @a[x=-1938,y=45,z=-552,distance=..1] remove 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Battle 1
execute as @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] MusicType 0