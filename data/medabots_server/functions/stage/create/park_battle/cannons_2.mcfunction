execute positioned -1954 45 -586 run function medabots_server:spawn_entities/cannon/swiffle/west/delay_4
execute positioned -1969 45 -569 run function medabots_server:spawn_entities/cannon/swiffle/east/delay_4
execute positioned -1970 45 -585 run function medabots_server:spawn_entities/cannon/swiffle/south/delay_4
execute positioned -1953 45 -570 run function medabots_server:spawn_entities/cannon/swiffle/north/delay_4
execute positioned -1952 45 -576 run function medabots_server:spawn_entities/cannon/still/west/delay_4
execute positioned -1971 45 -579 run function medabots_server:spawn_entities/cannon/still/east/delay_4
execute positioned -1963 45 -587 run function medabots_server:spawn_entities/cannon/still/south/delay_4
execute positioned -1960 45 -568 run function medabots_server:spawn_entities/cannon/still/north/delay_4
execute positioned -1968 45 -579 run function medabots_server:set_blocks/bridge
execute positioned -1963 45 -584 run function medabots_server:set_blocks/bridge
execute positioned -1960 45 -571 run function medabots_server:set_blocks/bridge
execute positioned -1955 45 -576 run function medabots_server:set_blocks/bridge
execute positioned -1952 45 -566 run function medabots_server:set_blocks/wall
execute positioned -1951 45 -567 run function medabots_server:set_blocks/wall
execute positioned -1950 45 -568 run function medabots_server:set_blocks/wall
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=-1] -1966 45 -578 -90 0
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=0] -1957 45 -577 90 0
teleport @s[tag=-1] -1966 45 -578 -90 0
tag @a[x=-1966,y=45,z=-578,distance=..1] remove -1
tag @a[x=-1957,y=45,z=-577,distance=..1] remove 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Battle 1
execute as @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] MusicType 0