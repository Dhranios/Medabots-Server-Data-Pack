teleport @a[x=-2066,y=43,z=-197,dx=51,dy=3,dz=3,tag=-1] -2047 43 -220 -90 0
teleport @a[x=-2066,y=43,z=-197,dx=51,dy=3,dz=3,tag=0] -2035 43 -220 90 0
teleport @s[tag=-1] -2047 43 -220 -90 0
tag @a[x=-2047,y=43,z=-220,distance=..1] remove -1
tag @a[x=-2035,y=43,z=-220,distance=..1] remove 0
scoreboard players set @a[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,scores={Battle=0..3}] Stage 61
scoreboard players set @a[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,scores={Battle=0..3}] MusicType 51
scoreboard players set @a[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,scores={Battle=0..3}] Music 0
scoreboard players set @a[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,scores={Battle=0..3}] Battle 1