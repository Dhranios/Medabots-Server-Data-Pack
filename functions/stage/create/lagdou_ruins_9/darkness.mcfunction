fill -1261 48 -223 -1313 48 -291 minecraft:redstone_wall_torch[facing=east] replace minecraft:wall_torch[facing=east]
fill -1261 48 -223 -1313 48 -291 minecraft:redstone_wall_torch[facing=north] replace minecraft:wall_torch[facing=north]
fill -1261 48 -223 -1313 48 -291 minecraft:redstone_wall_torch[facing=south] replace minecraft:wall_torch[facing=south]
fill -1261 48 -223 -1313 48 -291 minecraft:redstone_wall_torch[facing=west] replace minecraft:wall_torch[facing=west]
teleport @a[x=-1314,y=50,z=-291,dx=53,dy=4,dz=68,tag=-1] -1265 46 -227 0 0
teleport @a[x=-1314,y=50,z=-291,dx=53,dy=4,dz=68,tag=0] -1310 46 -287 0 0
teleport @s[tag=-1] -1265 46 -227 0 0
tag @a[x=-1265,y=46,z=-227,distance=..1] remove -1
tag @a[x=-1310,y=46,z=-287,distance=..1] remove 0
scoreboard players set @a[x=-1314,y=42,z=-291,dx=53,dy=7,dz=68] Stage 44
scoreboard players set @a[x=-1314,y=42,z=-291,dx=53,dy=7,dz=68] Battle 1
scoreboard players set @a[x=-1314,y=42,z=-291,dx=53,dy=7,dz=68] Music 0
scoreboard players set @a[x=-1314,y=42,z=-291,dx=53,dy=7,dz=68] MusicType 20