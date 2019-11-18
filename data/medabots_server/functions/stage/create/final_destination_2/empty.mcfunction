teleport @a[x=-2011,y=43,z=-197,dx=53,dy=3,dz=3,tag=-1] -1991 43 -221 -90 0
teleport @a[x=-2011,y=43,z=-197,dx=53,dy=3,dz=3,tag=0] -1979 43 -221 90 0
teleport @s[tag=-1] -1991 43 -221 -90 0
tag @a[x=-2047,y=43,z=-220,distance=..1] remove -1
tag @a[x=-2035,y=43,z=-220,distance=..1] remove 0
scoreboard players set @a[x=-2011,y=0,z=-247,dx=53,dy=53,dz=53,tag=medabot] Stage 62
scoreboard players set @a[x=-2011,y=0,z=-247,dx=53,dy=53,dz=53,tag=medabot] MusicType 53
execute as @a[x=-2011,y=0,z=-247,dx=53,dy=53,dz=53,tag=medabot] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-2011,y=0,z=-247,dx=53,dy=53,dz=53,tag=medabot] Battle 1