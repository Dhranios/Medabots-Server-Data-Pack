# Right ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-162,y=112,z=-123,dx=3,dy=3,dz=0] if entity @s[scores={Rings=0}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-158,y=97,z=-152,dx=3,dy=3,dz=0] if entity @s[scores={Rings=1}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-159,y=89,z=-190,dx=4,dy=3,dz=4] if entity @s[scores={Rings=2}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-125,y=88,z=-205,dx=0,dy=3,dz=3] if entity @s[scores={Rings=3}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-111,y=88,z=-193,dx=3,dy=3,dz=0] if entity @s[scores={Rings=4}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-113,y=98,z=-159,dx=3,dy=0,dz=3] if entity @s[scores={Rings=5}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-111,y=118,z=-144,dx=3,dy=3,dz=0] if entity @s[scores={Rings=6}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-111,y=124,z=-113,dx=3,dy=3,dz=0] if entity @s[scores={Rings=7}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-109,y=111,z=-62,dx=3,dy=3,dz=0] if entity @s[scores={Rings=8}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-112,y=97,z=-45,dx=3,dy=0,dz=3] if entity @s[scores={Rings=9}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-112,y=86,z=-45,dx=3,dy=0,dz=3] if entity @s[scores={Rings=10}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-112,y=81,z=-68,dx=3,dy=3,dz=0] if entity @s[scores={Rings=11}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-113,y=69,z=-93,dx=3,dy=3,dz=0] if entity @s[scores={Rings=12}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-106,y=71,z=-110,dx=4,dy=3,dz=4] if entity @s[scores={Rings=13}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-90,y=73,z=-115,dx=0,dy=3,dz=3] if entity @s[scores={Rings=14}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-79,y=87,z=-98,dx=3,dy=0,dz=3] if entity @s[scores={Rings=15}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-88,y=97,z=-97,dx=0,dy=3,dz=3] if entity @s[scores={Rings=16}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-116,y=106,z=-93,dx=0,dy=3,dz=3] if entity @s[scores={Rings=17}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-144,y=109,z=-100,dx=4,dy=3,dz=4] if entity @s[scores={Rings=18}] run function medabots_server:stage/fly_course/got_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-162,y=112,z=-123,dx=3,dy=3,dz=0] if entity @s[scores={Rings=19}] run function medabots_server:stage/fly_course/got_challenge_ring

# Wrong ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-162,y=112,z=-123,dx=3,dy=3,dz=0] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=0}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-158,y=97,z=-152,dx=3,dy=3,dz=0] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=1}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-159,y=89,z=-190,dx=4,dy=3,dz=4] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=2}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-125,y=88,z=-205,dx=0,dy=3,dz=3] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=3}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-111,y=88,z=-193,dx=3,dy=3,dz=0] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=4}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-113,y=98,z=-159,dx=3,dy=0,dz=3] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=5}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-111,y=118,z=-144,dx=3,dy=3,dz=0] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=6}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-111,y=124,z=-113,dx=3,dy=3,dz=0] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=7}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-109,y=111,z=-62,dx=3,dy=3,dz=0] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=8}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-112,y=97,z=-45,dx=3,dy=0,dz=3] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=9}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-112,y=86,z=-45,dx=3,dy=0,dz=3] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=10}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-112,y=81,z=-68,dx=3,dy=3,dz=0] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=11}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-113,y=69,z=-93,dx=3,dy=3,dz=0] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=12}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-106,y=71,z=-110,dx=4,dy=3,dz=4] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=13}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-90,y=73,z=-115,dx=0,dy=3,dz=3] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=14}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-79,y=87,z=-98,dx=3,dy=0,dz=3] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=15}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-88,y=97,z=-97,dx=0,dy=3,dz=3] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=16}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-116,y=106,z=-93,dx=0,dy=3,dz=3] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=17}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-144,y=109,z=-100,dx=4,dy=3,dz=4] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=18}] run function medabots_server:stage/fly_course/got_wrong_challenge_ring
execute if entity @e[tag=fly_course_checker,limit=1,x=-162,y=112,z=-123,dx=3,dy=3,dz=0] if entity @s[scores={Time=..210}] unless entity @s[scores={Rings=19}] run function medabots_server:stage/fly_course/got_challenge_ring
