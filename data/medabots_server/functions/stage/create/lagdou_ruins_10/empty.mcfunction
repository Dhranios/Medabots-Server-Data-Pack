teleport @a[x=-1389,y=51,z=-114,dx=56,dy=4,dz=98,tag=-1] -1361 38 -50 -180 0
teleport @a[x=-1389,y=51,z=-114,dx=56,dy=4,dz=98,tag=0] -1361 41 -104 0 0
teleport @s[tag=-1] -1361 38 -50 -180 0
tag @a[x=-1361,y=38,z=-50,distance=..1] remove -1
tag @a[x=-1361,y=41,z=-104,distance=..1] remove 0
scoreboard players set @a[x=-1389,y=36,z=-114,dx=56,dy=14,dz=98] Stage 45
scoreboard players set @a[x=-1389,y=36,z=-114,dx=56,dy=14,dz=98] Battle 1
execute as @a[x=-1389,y=36,z=-114,dx=56,dy=14,dz=98] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1389,y=36,z=-114,dx=56,dy=14,dz=98] MusicType 23