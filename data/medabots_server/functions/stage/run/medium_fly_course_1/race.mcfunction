# Show next ring
particle minecraft:dust 1 0 0 1 -160.5 113.5 -123 1.5 1.5 0 1 5 force @a[scores={Rings=0}]
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

# Got ring
execute if entity @s[x=-162,y=112,z=-123,dx=3,dy=3,dz=0,scores={Rings=0},y_rotation=90..-90] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-158,y=97,z=-152,dx=3,dy=3,dz=0,scores={Rings=1},y_rotation=90..-90] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-159,y=89,z=-190,dx=4,dy=3,dz=4,scores={Rings=2},y_rotation=135..-45] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-125,y=88,z=-205,dx=0,dy=3,dz=3,scores={Rings=3},y_rotation=-180..0] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-111,y=88,z=-193,dx=3,dy=3,dz=0,scores={Rings=4},y_rotation=-90..90] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-113,y=98,z=-159,dx=3,dy=0,dz=3,scores={Rings=5},x_rotation=-90..0] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-111,y=118,z=-144,dx=3,dy=3,dz=0,scores={Rings=6},y_rotation=-90..90] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-111,y=124,z=-113,dx=3,dy=3,dz=0,scores={Rings=7},y_rotation=-90..90] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-109,y=111,z=-62,dx=3,dy=3,dz=0,scores={Rings=8},y_rotation=-90..90] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-112,y=97,z=-45,dx=3,dy=0,dz=3,scores={Rings=9},x_rotation=0..90] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-112,y=86,z=-45,dx=3,dy=0,dz=3,scores={Rings=10},x_rotation=0..90] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-112,y=81,z=-68,dx=3,dy=3,dz=0,scores={Rings=11},y_rotation=90..-90] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-113,y=69,z=-93,dx=3,dy=3,dz=0,scores={Rings=12},y_rotation=90..-90] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-106,y=71,z=-110,dx=4,dy=3,dz=4,scores={Rings=13},y_rotation=135..-45] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-90,y=73,z=-115,dx=0,dy=3,dz=3,scores={Rings=14},y_rotation=-180..0] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-79,y=87,z=-98,dx=3,dy=0,dz=3,scores={Rings=15},x_rotation=-90..0] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-88,y=97,z=-97,dx=0,dy=3,dz=3,scores={Rings=16},y_rotation=0..-180] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-116,y=106,z=-93,dx=0,dy=3,dz=3,scores={Rings=17},y_rotation=0..-180] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-144,y=109,z=-100,dx=4,dy=3,dz=4,scores={Rings=18},y_rotation=45..-135] run function medabots_server:stage/fly_course/got_ring
execute if entity @s[x=-162,y=112,z=-123,dx=3,dy=3,dz=0,scores={Rings=19},y_rotation=90..-90] run function medabots_server:stage/fly_course/got_final_ring

# Cleared the stage
advancement grant @s[scores={RingsTotal=58..},tag=!lap_race] only medabots_server:stages/wave_1/medium_fly_course_1
advancement grant @s[scores={RingsTotal=3..},tag=lap_race] only medabots_server:stages/wave_1/medium_fly_course_1

execute if entity @s[scores={State=3..},nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:fly_course_wings"}}}]}] run function medabots_server:stage/leave_stage/medium_fly_course_1

execute unless entity @a[scores={State=0..2,Stage=2,StageVersion=2}] run setblock -90 122 -77 minecraft:sea_lantern
execute unless entity @a[scores={State=0..2,Stage=2,StageVersion=2}] run data merge block -89 121 -77 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/medium_fly_course_1/initiate_race"}}',Text3:'{"translate":"medabots_server:sign.stage.fly_course.race"}'}
execute unless entity @a[scores={State=0..2,Stage=2,StageVersion=2}] unless entity @a[scores={State=3,Stage=2,StageVersion=2},tag=calculate_results] run tag @s add calculate_results