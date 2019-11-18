fill -1238 46 -148 -1311 49 -217 minecraft:redstone_wall_torch[facing=east] replace minecraft:wall_torch[facing=east]
fill -1238 46 -148 -1311 49 -217 minecraft:redstone_wall_torch[facing=north] replace minecraft:wall_torch[facing=north]
fill -1238 46 -148 -1311 49 -217 minecraft:redstone_wall_torch[facing=south] replace minecraft:wall_torch[facing=south]
fill -1238 46 -148 -1311 49 -217 minecraft:redstone_wall_torch[facing=west] replace minecraft:wall_torch[facing=west]
teleport @a[x=-1311,y=50,z=-220,dx=74,dy=4,dz=77,tag=-1] -1295 44 -213 0 0
teleport @a[x=-1311,y=50,z=-220,dx=74,dy=4,dz=77,tag=0] -1245 44 -150 -180 0
teleport @s[tag=-1] -1295 44 -213 0 0
tag @a[x=-1295,y=44,z=-213,distance=..1] remove -1
tag @a[x=-1245,y=44,z=-150,distance=..1] remove 0
scoreboard players set @a[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77] Stage 42
scoreboard players set @a[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77] Battle 1
execute as @a[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77] MusicType 20