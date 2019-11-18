execute as @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=racer] at @s run function medabots_server:gamemodes/fly_course
scoreboard players set @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=racer] Stage 2
teleport @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=0,limit=1] -160 112 -122 -180 0
teleport @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=1,limit=1] -162 112 -122 -180 0
teleport @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=2,limit=1] -161 112 -121 -180 0
teleport @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=3,limit=1] -159 112 -121 -180 0
teleport @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=4,limit=1] -160 112 -120 -180 0
teleport @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=5,limit=1] -162 112 -120 -180 0
teleport @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=6,limit=1] -161 112 -119 -180 0
teleport @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=7,limit=1] -159 112 -119 -180 0
teleport @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=8,limit=1] -160 112 -118 -180 0
teleport @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=9,limit=1] -162 112 -118 -180 0
setblock -90 122 -79 minecraft:diamond_block
data merge block -89 121 -79 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/fly_course_no_race"}}'}
setblock -90 122 -77 minecraft:diamond_block
data merge block -89 121 -77 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/fly_course_currently_racing"}}',Text3:'{"translate":"medabots_server:sign.stage.fly_course.race"}'}