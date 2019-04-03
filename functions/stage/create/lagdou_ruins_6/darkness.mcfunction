fill -1211 45 -62 -1265 47 -137 minecraft:redstone_wall_torch[facing=east] replace minecraft:wall_torch[facing=east]
fill -1211 45 -62 -1265 47 -137 minecraft:redstone_wall_torch[facing=north] replace minecraft:wall_torch[facing=north]
fill -1211 45 -62 -1265 47 -137 minecraft:redstone_wall_torch[facing=south] replace minecraft:wall_torch[facing=south]
fill -1211 45 -62 -1265 47 -137 minecraft:redstone_wall_torch[facing=west] replace minecraft:wall_torch[facing=west]
teleport @a[x=-1267,y=50,z=-139,dx=60,dy=4,dz=77,tag=-1] -1221 43 -63
teleport @a[x=-1267,y=50,z=-139,dx=60,dy=4,dz=77,tag=0] -1236 45 -135
teleport @s[tag=-1] -1221 43 -63
tag @a[x=-1221,y=43,z=-63,distance=..1] remove -1
tag @a[x=-1236,y=45,z=-135,distance=..1] remove 0
scoreboard players set @a[x=-1267,y=42,z=-139,dx=60,dy=7,dz=77] Stage 41
scoreboard players set @a[x=-1267,y=42,z=-139,dx=60,dy=7,dz=77] Battle 1
scoreboard players set @a[x=-1267,y=42,z=-139,dx=60,dy=7,dz=77] Music 0
scoreboard players set @a[x=-1267,y=42,z=-139,dx=60,dy=7,dz=77] MusicType 20