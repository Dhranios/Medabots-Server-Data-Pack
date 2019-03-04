# Show next ring
particle minecraft:dust 1 0 0 1 -156.5 98.5 -152 1.5 1.5 0 1 5 force @a[scores={Rings=1}]
particle minecraft:dust 1 0 0 1 -157 90.5 -188 2 1.5 2 1 5 force @a[scores={Rings=2}]
particle minecraft:dust 1 0 0 1 -123.5 89.5 -203.5 0 1.5 1.5 1 5 force @a[scores={Rings=3}]
particle minecraft:dust 1 0 0 1 -109.5 89.5 -193 1.5 1.5 0 1 5 force @a[scores={Rings=4}]
particle minecraft:dust 1 0 0 1 -111.5 98 -157.5 1.5 0 1.5 1 5 force @a[scores={Rings=5}]
particle minecraft:dust 1 0 0 1 -109.5 119.5 -144 1.5 1.5 0 1 5 force @a[scores={Rings=6}]
particle minecraft:dust 1 0 0 1 -109.5 125.5 -113 1.5 1.5 0 1 5 force @a[scores={Rings=7}]
particle minecraft:dust 1 0 0 1 -107.5 112.5 -62 1.5 1.5 0 1 5 force @a[scores={Rings=8}]
particle minecraft:dust 1 0 0 1 -110.5 97 -43.5 1.5 0 1.5 1 5 force @a[scores={Rings=9}]
particle minecraft:dust 1 0 0 1 -110.5 86.5 -43.5 1.5 0 1.5 1 5 force @a[scores={Rings=10}]
particle minecraft:dust 1 0 0 1 -110.5 82.5 -68 1.5 1.5 0 1 5 force @a[scores={Rings=11}]
particle minecraft:dust 1 0 0 1 -111.5 70.5 -93 1.5 1.5 0 1 5 force @a[scores={Rings=12}]
particle minecraft:dust 1 0 0 1 -104.5 72.5 -108 2 1.5 2 1 5 force @a[scores={Rings=13}]
particle minecraft:dust 1 0 0 1 -90 74.5 -113.5 0 1.5 1.5 1 5 force @a[scores={Rings=14}]
particle minecraft:dust 1 0 0 1 -77.5 87 -96.5 1.5 0 1.5 1 5 force @a[scores={Rings=15}]
particle minecraft:dust 1 0 0 1 -88 98.5 -95.5 0 1.5 1.5 1 5 force @a[scores={Rings=16}]
particle minecraft:dust 1 0 0 1 -116 107.5 -91.5 0 1.5 1.5 1 5 force @a[scores={Rings=17}]
particle minecraft:dust 1 0 0 1 -142.5 110.5 -98 2 1.5 2 1 5 force @a[scores={Rings=18}]
particle minecraft:dust 1 0 0 1 -160.5 113.5 -123 1.5 1.5 0 1 5 force @a[scores={Rings=19}]

# Right ring
execute if entity @s[x=-158,y=97,z=-152,dx=3,dy=3,dz=0,scores={Rings=1}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-159,y=89,z=-190,dx=4,dy=3,dz=4,scores={Rings=2}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-125,y=88,z=-205,dx=0,dy=3,dz=3,scores={Rings=3}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-111,y=88,z=-193,dx=3,dy=3,dz=0,scores={Rings=4}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-113,y=98,z=-159,dx=3,dy=0,dz=3,scores={Rings=5}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-111,y=118,z=-144,dx=3,dy=3,dz=0,scores={Rings=6}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-111,y=124,z=-113,dx=3,dy=3,dz=0,scores={Rings=7}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-109,y=111,z=-62,dx=3,dy=3,dz=0,scores={Rings=8}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-112,y=97,z=-45,dx=3,dy=0,dz=3,scores={Rings=9}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-112,y=86,z=-45,dx=3,dy=0,dz=3,scores={Rings=10}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-112,y=81,z=-68,dx=3,dy=3,dz=0,scores={Rings=11}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-113,y=69,z=-93,dx=3,dy=3,dz=0,scores={Rings=12}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-106,y=71,z=-110,dx=4,dy=3,dz=4,scores={Rings=13}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-90,y=73,z=-115,dx=0,dy=3,dz=3,scores={Rings=14}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-79,y=87,z=-98,dx=3,dy=0,dz=3,scores={Rings=15}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-88,y=97,z=-97,dx=0,dy=3,dz=3,scores={Rings=16}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-116,y=106,z=-93,dx=0,dy=3,dz=3,scores={Rings=17}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-144,y=109,z=-100,dx=4,dy=3,dz=4,scores={Rings=18}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @s[x=-162,y=112,z=-123,dx=3,dy=3,dz=0,scores={Rings=19}] run function medabots_server:stage/fly_course/got_challenge_ring

# Wrong ring
execute if entity @s[x=-158,y=97,z=-152,dx=3,dy=3,dz=0,scores={Time=..210}] unless entity @s[scores={Rings=1}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-159,y=89,z=-190,dx=4,dy=3,dz=4,scores={Time=..210}] unless entity @s[scores={Rings=2}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-125,y=88,z=-205,dx=0,dy=3,dz=3,scores={Time=..210}] unless entity @s[scores={Rings=3}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-111,y=88,z=-193,dx=3,dy=3,dz=0,scores={Time=..210}] unless entity @s[scores={Rings=4}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-113,y=98,z=-159,dx=3,dy=0,dz=3,scores={Time=..210}] unless entity @s[scores={Rings=5}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-111,y=118,z=-144,dx=3,dy=3,dz=0,scores={Time=..210}] unless entity @s[scores={Rings=6}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-111,y=124,z=-113,dx=3,dy=3,dz=0,scores={Time=..210}] unless entity @s[scores={Rings=7}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-109,y=111,z=-62,dx=3,dy=3,dz=0,scores={Time=..210}] unless entity @s[scores={Rings=8}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-112,y=97,z=-45,dx=3,dy=0,dz=3,scores={Time=..210}] unless entity @s[scores={Rings=9}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-112,y=86,z=-45,dx=3,dy=0,dz=3,scores={Time=..210}] unless entity @s[scores={Rings=10}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-112,y=81,z=-68,dx=3,dy=3,dz=0,scores={Time=..210}] unless entity @s[scores={Rings=11}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-113,y=69,z=-93,dx=3,dy=3,dz=0,scores={Time=..210}] unless entity @s[scores={Rings=12}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-106,y=71,z=-110,dx=4,dy=3,dz=4,scores={Time=..210}] unless entity @s[scores={Rings=13}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-90,y=73,z=-115,dx=0,dy=3,dz=3,scores={Time=..210}] unless entity @s[scores={Rings=14}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-79,y=87,z=-98,dx=3,dy=0,dz=3,scores={Time=..210}] unless entity @s[scores={Rings=15}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-88,y=97,z=-97,dx=0,dy=3,dz=3,scores={Time=..210}] unless entity @s[scores={Rings=16}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-116,y=106,z=-93,dx=0,dy=3,dz=3,scores={Time=..210}] unless entity @s[scores={Rings=17}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-144,y=109,z=-100,dx=4,dy=3,dz=4,scores={Time=..210}] unless entity @s[scores={Rings=18}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @s[x=-162,y=112,z=-123,dx=3,dy=3,dz=0,scores={Time=..210}] unless entity @s[scores={Rings=19}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring

# Cleared the stage
advancement grant @s[scores={RingsTotal=100..}] only medabots_server:stages/wave_1/medium_fly_course_1_challenge

# End
execute if entity @s[scores={FlyCourse=0}] run kill @e[type=minecraft:firework_rocket,distance=..2]
teleport @s[scores={FlyCourse=0}] -86 120 -78 90 0
tag @s[scores={FlyCourse=0},tag=challenge] remove challenge