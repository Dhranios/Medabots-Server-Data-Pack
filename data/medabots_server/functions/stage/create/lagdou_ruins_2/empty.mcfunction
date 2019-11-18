teleport @a[x=-1329,y=51,z=-58,dx=68,dy=4,dz=53,tag=-1] -1320 41 -53 0 0
teleport @a[x=-1329,y=51,z=-58,dx=68,dy=4,dz=53,tag=0] -1266 41 -9 -180 0
teleport @s[tag=-1] -1320 41 -53 0 0
tag @a[x=-1320,y=41,z=-53,distance=..1] remove -1
tag @a[x=-1266,y=41,z=-9,distance=..1] remove 0
scoreboard players set @a[x=-1329,y=39,z=-58,dx=68,dy=11,dz=53] Stage 37
scoreboard players set @a[x=-1329,y=39,z=-58,dx=68,dy=11,dz=53] Battle 1
execute as @a[x=-1329,y=39,z=-58,dx=68,dy=11,dz=53] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1329,y=39,z=-58,dx=68,dy=11,dz=53] MusicType 19