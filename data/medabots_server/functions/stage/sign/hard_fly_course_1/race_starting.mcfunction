execute as @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=racer] at @s run function medabots_server:gamemodes/fly_course
scoreboard players set @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=racer] Stage 3
teleport @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] -511 89 266 0 0
teleport @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=1,limit=1] -509 89 266 0 0
teleport @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=2,limit=1] -510 89 265 0 0
teleport @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=3,limit=1] -512 89 265 0 0
teleport @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4,limit=1] -511 89 264 0 0
teleport @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5,limit=1] -509 89 264 0 0
teleport @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6,limit=1] -510 89 263 0 0
teleport @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7,limit=1] -512 89 263 0 0
teleport @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8,limit=1] -511 89 262 0 0
teleport @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=9,limit=1] -509 89 262 0 0
setblock -469 92 266 minecraft:redstone_block
data merge block -468 91 266 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/fly_course_no_race"}}'}
setblock -469 92 268 minecraft:redstone_block
data merge block -468 91 268 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/fly_course_currently_racing"}}',Text3:'{"translate":"medabots_server:sign.stage.fly_course.race"}'}