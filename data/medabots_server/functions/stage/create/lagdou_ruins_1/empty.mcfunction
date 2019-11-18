teleport @a[x=-1329,y=51,z=-115,dx=61,dy=4,dz=61,tag=-1] -1328 43 -114 0 0
teleport @a[x=-1329,y=51,z=-115,dx=61,dy=4,dz=61,tag=0] -1271 36 -72 -180 0
teleport @s[tag=-1] -1328 43 -114 0 0
tag @a[x=-1328,y=43,z=-114,distance=..1] remove -1
tag @a[x=-1271,y=36,z=-72,distance=..1] remove 0
scoreboard players set @a[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61] Stage 36
scoreboard players set @a[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61] Battle 1
execute as @a[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61] MusicType 19