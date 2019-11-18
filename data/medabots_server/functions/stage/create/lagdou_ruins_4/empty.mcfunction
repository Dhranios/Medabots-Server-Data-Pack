teleport @a[x=-1376,y=50,z=-205,dx=62,dy=4,dz=86,tag=-1] -1321 45 -123 -180 0
teleport @a[x=-1376,y=50,z=-205,dx=62,dy=4,dz=86,tag=0] -1369 45 -186 0 0
teleport @s[tag=-1] -1321 45 -123 -180 0
tag @a[x=-1321,y=45,z=-123,distance=..1] remove -1
tag @a[x=-1369,y=45,z=-186,distance=..1] remove 0
scoreboard players set @a[x=-1376,y=38,z=-205,dx=62,dy=12,dz=86] Stage 39
scoreboard players set @a[x=-1376,y=38,z=-205,dx=62,dy=12,dz=86] Battle 1
execute as @a[x=-1376,y=38,z=-205,dx=62,dy=12,dz=86] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1376,y=38,z=-205,dx=62,dy=12,dz=86] MusicType 20