execute positioned -1942 45 -571 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1942 45 -575 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1942 45 -580 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1942 45 -584 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1938 45 -584 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1938 45 -580 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1938 45 -575 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1938 45 -571 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1933 45 -571 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1933 45 -575 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1933 45 -580 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1933 45 -584 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1929 45 -584 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1929 45 -580 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1929 45 -575 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1929 45 -571 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1947 45 -568 run function medabots_server:set_blocks/wall
execute positioned -1946 45 -567 run function medabots_server:set_blocks/wall
execute positioned -1945 45 -566 run function medabots_server:set_blocks/wall
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=-1] -1929 45 -577 90 0
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=0] -1942 45 -578 -90 0
teleport @s[tag=-1] -1929 45 -577 90 0
tag @a[x=-1929,y=45,z=-577,distance=..1] remove -1
tag @a[x=-1942,y=45,z=-578,distance=..1] remove 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Battle 1
execute as @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] MusicType 0