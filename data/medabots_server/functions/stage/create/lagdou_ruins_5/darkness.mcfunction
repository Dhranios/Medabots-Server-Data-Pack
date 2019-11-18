fill -1318 45 -208 -1376 46 -276 minecraft:redstone_wall_torch[facing=east] replace minecraft:wall_torch[facing=east]
fill -1318 45 -208 -1376 46 -276 minecraft:redstone_wall_torch[facing=north] replace minecraft:wall_torch[facing=north]
fill -1318 45 -208 -1376 46 -276 minecraft:redstone_wall_torch[facing=south] replace minecraft:wall_torch[facing=south]
fill -1318 45 -208 -1376 46 -276 minecraft:redstone_wall_torch[facing=west] replace minecraft:wall_torch[facing=west]
teleport @a[x=-1376,y=50,z=-276,dx=58,dy=4,dz=68,tag=-1] -1372 44 -266 0 0
teleport @a[x=-1376,y=50,z=-276,dx=58,dy=4,dz=68,tag=0] -1345 44 -215 -180 0
teleport @s[tag=-1] -1372 44 -266 0 0
tag @a[x=-1372,y=44,z=-266,distance=..1] remove -1
tag @a[x=-1345,y=44,z=-215,distance=..1] remove 0
scoreboard players set @a[x=-1376,y=39,z=-276,dx=58,dy=10,dz=68] Stage 40
scoreboard players set @a[x=-1376,y=39,z=-276,dx=58,dy=10,dz=68] Battle 1
execute as @a[x=-1376,y=39,z=-276,dx=58,dy=10,dz=68] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1376,y=39,z=-276,dx=58,dy=10,dz=68] MusicType 20