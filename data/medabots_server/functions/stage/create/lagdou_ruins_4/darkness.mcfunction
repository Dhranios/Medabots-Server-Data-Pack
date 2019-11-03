fill -1314 47 -119 -1376 49 -200 minecraft:redstone_wall_torch[facing=east] replace minecraft:wall_torch[facing=east]
fill -1314 47 -119 -1376 49 -200 minecraft:redstone_wall_torch[facing=north] replace minecraft:wall_torch[facing=north]
fill -1314 47 -119 -1376 49 -200 minecraft:redstone_wall_torch[facing=south] replace minecraft:wall_torch[facing=south]
fill -1314 47 -119 -1376 49 -200 minecraft:redstone_wall_torch[facing=west] replace minecraft:wall_torch[facing=west]
teleport @a[x=-1376,y=50,z=-205,dx=62,dy=4,dz=86,tag=-1] -1321 45 -123 -180 0
teleport @a[x=-1376,y=50,z=-205,dx=62,dy=4,dz=86,tag=0] -1369 45 -186 0 0
teleport @s[tag=-1] -1321 45 -123 -180 0
tag @a[x=-1321,y=45,z=-123,distance=..1] remove -1
tag @a[x=-1369,y=45,z=-186,distance=..1] remove 0
scoreboard players set @a[x=-1376,y=38,z=-205,dx=62,dy=12,dz=86] Stage 39
scoreboard players set @a[x=-1376,y=38,z=-205,dx=62,dy=12,dz=86] Battle 1
scoreboard players set @a[x=-1376,y=38,z=-205,dx=62,dy=12,dz=86] Music 0
scoreboard players set @a[x=-1376,y=38,z=-205,dx=62,dy=12,dz=86] MusicType 20