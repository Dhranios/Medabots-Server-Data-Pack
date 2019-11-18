execute positioned -1970 45 -551 run function medabots_server:set_blocks/accelerator/south
execute positioned -1966 45 -559 run function medabots_server:set_blocks/accelerator/south
execute positioned -1957 45 -559 run function medabots_server:set_blocks/accelerator/south
execute positioned -1953 45 -551 run function medabots_server:set_blocks/accelerator/south
execute positioned -1962 45 -543 run function medabots_server:set_blocks/accelerator/west
execute positioned -1954 45 -547 run function medabots_server:set_blocks/accelerator/west
execute positioned -1954 45 -556 run function medabots_server:set_blocks/accelerator/west
execute positioned -1962 45 -560 run function medabots_server:set_blocks/accelerator/west
execute positioned -1970 45 -552 run function medabots_server:set_blocks/accelerator/north
execute positioned -1966 45 -544 run function medabots_server:set_blocks/accelerator/north
execute positioned -1957 45 -544 run function medabots_server:set_blocks/accelerator/north
execute positioned -1953 45 -552 run function medabots_server:set_blocks/accelerator/north
execute positioned -1961 45 -543 run function medabots_server:set_blocks/accelerator/east
execute positioned -1969 45 -547 run function medabots_server:set_blocks/accelerator/east
execute positioned -1969 45 -556 run function medabots_server:set_blocks/accelerator/east
execute positioned -1961 45 -560 run function medabots_server:set_blocks/accelerator/east
execute positioned -1950 45 -561 run function medabots_server:set_blocks/wall
execute positioned -1951 45 -562 run function medabots_server:set_blocks/wall
execute positioned -1952 45 -563 run function medabots_server:set_blocks/wall
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=-1] -1967 45 -552 -90 0
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=0] -1956 45 -551 90 0
teleport @s[tag=-1] -1967 45 -552 -90 0
tag @a[x=-1967,y=45,z=-552,distance=..1] remove -1
tag @a[x=-1956,y=45,z=-551,distance=..1] remove 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Battle 1
execute as @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] MusicType 0