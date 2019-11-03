fill -1260 41 60 -1319 46 -2 minecraft:redstone_wall_torch[facing=east] replace minecraft:wall_torch[facing=east]
fill -1260 41 60 -1319 46 -2 minecraft:redstone_wall_torch[facing=north] replace minecraft:wall_torch[facing=north]
fill -1260 41 60 -1319 46 -2 minecraft:redstone_wall_torch[facing=south] replace minecraft:wall_torch[facing=south]
fill -1260 41 60 -1319 46 -2 minecraft:redstone_wall_torch[facing=west] replace minecraft:wall_torch[facing=west]
setblock -1288 39 35 minecraft:redstone_torch
teleport @a[x=-1319,y=50,z=-2,dx=59,dy=4,dz=62,tag=-1] -1311 41 3 0 0
teleport @a[x=-1319,y=50,z=-2,dx=59,dy=4,dz=62,tag=0] -1264 41 5 0 0
teleport @s[tag=-1] -1311 41 3 0 0
tag @a[x=-1311,y=41,z=3,distance=..1] remove -1
tag @a[x=-1264,y=41,z=5,distance=..1] remove 0
scoreboard players set @a[x=-1319,y=35,z=-2,dx=59,dy=14,dz=62] Stage 43
scoreboard players set @a[x=-1319,y=35,z=-2,dx=59,dy=14,dz=62] Battle 1
scoreboard players set @a[x=-1319,y=35,z=-2,dx=59,dy=14,dz=62] Music 0
scoreboard players set @a[x=-1319,y=35,z=-2,dx=59,dy=14,dz=62] MusicType 20