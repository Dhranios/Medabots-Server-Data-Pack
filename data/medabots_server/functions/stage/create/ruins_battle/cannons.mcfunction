execute positioned -1982 45 -573 run function medabots_server:spawn_entities/cannon/swiffle/west/delay_4
execute positioned -1982 45 -563 run function medabots_server:spawn_entities/cannon/swiffle/west/delay_3
execute positioned -1982 45 -558 run function medabots_server:spawn_entities/cannon/swiffle/west/delay_4
execute positioned -1982 45 -548 run function medabots_server:spawn_entities/cannon/swiffle/west/delay_4
execute positioned -2011 45 -548 run function medabots_server:spawn_entities/cannon/swiffle/east/delay_4
execute positioned -2011 45 -558 run function medabots_server:spawn_entities/cannon/swiffle/east/delay_3
execute positioned -2011 45 -563 run function medabots_server:spawn_entities/cannon/swiffle/east/delay_4
execute positioned -2011 45 -573 run function medabots_server:spawn_entities/cannon/swiffle/east/delay_4
execute positioned -2009 45 -575 run function medabots_server:spawn_entities/cannon/swiffle/south/delay_4
execute positioned -1999 45 -575 run function medabots_server:spawn_entities/cannon/swiffle/south/delay_3
execute positioned -1994 45 -575 run function medabots_server:spawn_entities/cannon/swiffle/south/delay_4
execute positioned -1984 45 -575 run function medabots_server:spawn_entities/cannon/swiffle/south/delay_4
execute positioned -1984 45 -546 run function medabots_server:spawn_entities/cannon/swiffle/north/delay_4
execute positioned -1994 45 -546 run function medabots_server:spawn_entities/cannon/swiffle/north/delay_3
execute positioned -1999 45 -546 run function medabots_server:spawn_entities/cannon/swiffle/north/delay_4
execute positioned -2009 45 -546 run function medabots_server:spawn_entities/cannon/swiffle/north/delay_4
teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,tag=-1] -1997 45 -564 0 0
teleport @a[x=-2017,y=51,z=-581,dx=42,dy=4,dz=42,tag=0] -1996 45 -557 -180 0
teleport @s[tag=-1] -1997 45 -564 0 0
tag @a[x=-1997,y=45,z=-564,distance=..1] remove -1
tag @a[x=-1996,y=45,z=-557,distance=..1] remove 0
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Stage 49
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] Battle 1
execute as @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42] MusicType 0