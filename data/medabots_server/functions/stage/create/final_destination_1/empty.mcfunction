teleport @a[x=-2066,y=43,z=-197,dx=51,dy=3,dz=3,tag=-1] -2047 43 -220 -90 0
teleport @a[x=-2066,y=43,z=-197,dx=51,dy=3,dz=3,tag=0] -2035 43 -220 90 0
teleport @s[tag=-1] -2047 43 -220 -90 0
tag @a[x=-2047,y=43,z=-220,distance=..1] remove -1
tag @a[x=-2035,y=43,z=-220,distance=..1] remove 0
scoreboard players set @a[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=medabot] Stage 61
scoreboard players set @a[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=medabot] MusicType 51
execute as @a[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=medabot] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=medabot] Battle 1