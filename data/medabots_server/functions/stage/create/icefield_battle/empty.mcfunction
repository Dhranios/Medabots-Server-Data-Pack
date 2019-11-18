teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,tag=-1] -1998 45 -612 0 0
teleport @a[x=-2022,y=51,z=-632,dx=48,dy=4,dz=48,tag=0] -1999 45 -605 -180 0
teleport @s[tag=-1] -1998 45 -612 0 0
tag @a[x=-1998,y=45,z=-612,distance=..1] remove -1
tag @a[x=-1999,y=45,z=-605,distance=..1] remove 0
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Stage 48
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] Battle 1
execute as @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48] MusicType 0