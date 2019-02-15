execute if entity @s[tag=0] run tellraw @a {"translate":"medabots_server:message.stage.fly_course.canceled","color":"green","with":[{"translate":"medabots_server:location.fly_course.hard"},{"text":"1"}]}
execute if entity @s[tag=0] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.stage.fly_course.no_race\\\",\\\"color\\\":\\\"green\\\"}\"}}"}
execute if entity @s[tag=0] run setblock -469 92 266 minecraft:redstone_block
execute if entity @s[tag=0] run data merge block -468 91 268 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/hard_fly_course_1/initiate_race\"}}",Text3:"{\"translate\":\"medabots_server:sign.stage.fly_course.race\"}"}
execute if entity @s[tag=0] run scoreboard players operation @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,limit=1,tag=racer] Money += @s FlyCourseFee
execute if entity @s[tag=0] run tag @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8] remove racer
execute if entity @s[tag=0] run tag @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] remove 8
execute if entity @s[tag=0] run tag @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] remove 7
execute if entity @s[tag=0] run tag @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] remove 6
execute if entity @s[tag=0] run tag @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] remove 5
execute if entity @s[tag=0] run tag @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] remove 4
execute if entity @s[tag=0] run tag @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=3] remove 3
execute if entity @s[tag=0] run tag @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=2] remove 2
execute if entity @s[tag=0] run tag @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=1] remove 1
execute if entity @s[tag=0] run tag @s remove 0

execute if entity @s[tag=4] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=3] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=2] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/1\"}}"}
execute if entity @s[tag=4] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=3] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=2] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/2\"}}"}
execute if entity @s[tag=4] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=3] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/3\"}}"}
execute if entity @s[tag=4] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/4\"}}"}
execute if entity @s[tag=4] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/5\"}}"}
execute if entity @s[tag=4] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/6\"}}"}
execute if entity @s[tag=4] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/7\"}}"}
execute if entity @s[tag=4] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/8\"}}"}
execute if entity @s[tag=1] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=2] add 1
execute if entity @s[tag=1] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=2] remove 2
execute if entity @s[tag=1] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=3] add 2
execute if entity @s[tag=1] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=3] remove 3
execute if entity @s[tag=1] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] add 3
execute if entity @s[tag=1] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] remove 4
execute if entity @s[tag=1] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] add 4
execute if entity @s[tag=1] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] remove 5
execute if entity @s[tag=1] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] add 5
execute if entity @s[tag=1] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] remove 6
execute if entity @s[tag=1] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] add 6
execute if entity @s[tag=1] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] remove 7
execute if entity @s[tag=1] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] add 7
execute if entity @s[tag=1] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] remove 8
execute if entity @s[tag=1] run tellraw @s {"translate":"medabots_server:message.stage.fly_course.cancled_join","color":"green"}
execute if entity @s[tag=1] run scoreboard players operation @s Money += @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee
execute if entity @s[tag=1] run tag @s remove racer
execute if entity @s[tag=1] run tag @s remove 1

execute if entity @s[tag=2] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=3] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/2\"}}"}
execute if entity @s[tag=2] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=3] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/3\"}}"}
execute if entity @s[tag=2] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/4\"}}"}
execute if entity @s[tag=2] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/5\"}}"}
execute if entity @s[tag=2] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/6\"}}"}
execute if entity @s[tag=2] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/7\"}}"}
execute if entity @s[tag=2] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/8\"}}"}
execute if entity @s[tag=2] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=3] add 2
execute if entity @s[tag=2] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=3] remove 3
execute if entity @s[tag=2] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] add 3
execute if entity @s[tag=2] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] remove 4
execute if entity @s[tag=2] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] add 4
execute if entity @s[tag=2] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] remove 5
execute if entity @s[tag=2] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] add 5
execute if entity @s[tag=2] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] remove 6
execute if entity @s[tag=2] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] add 6
execute if entity @s[tag=2] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] remove 7
execute if entity @s[tag=2] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] add 7
execute if entity @s[tag=2] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] remove 8
execute if entity @s[tag=2] run tellraw @s {"translate":"medabots_server:message.stage.fly_course.cancled_join","color":"green"}
execute if entity @s[tag=2] run scoreboard players operation @s Money += @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee
execute if entity @s[tag=2] run tag @s remove racer
execute if entity @s[tag=2] run tag @s remove 2

execute if entity @s[tag=3] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/3\"}}"}
execute if entity @s[tag=3] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/4\"}}"}
execute if entity @s[tag=3] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/5\"}}"}
execute if entity @s[tag=3] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/6\"}}"}
execute if entity @s[tag=3] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/7\"}}"}
execute if entity @s[tag=3] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/8\"}}"}
execute if entity @s[tag=3] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] add 3
execute if entity @s[tag=3] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=4] remove 4
execute if entity @s[tag=3] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] add 4
execute if entity @s[tag=3] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] remove 5
execute if entity @s[tag=3] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] add 5
execute if entity @s[tag=3] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] remove 6
execute if entity @s[tag=3] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] add 6
execute if entity @s[tag=3] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] remove 7
execute if entity @s[tag=3] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] add 7
execute if entity @s[tag=3] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] remove 8
execute if entity @s[tag=3] run tellraw @s {"translate":"medabots_server:message.stage.fly_course.cancled_join","color":"green"}
execute if entity @s[tag=3] run scoreboard players operation @s Money += @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee
execute if entity @s[tag=3] run tag @s remove racer
execute if entity @s[tag=3] run tag @s remove 3

execute if entity @s[tag=4] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/4\"}}"}
execute if entity @s[tag=4] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/5\"}}"}
execute if entity @s[tag=4] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/6\"}}"}
execute if entity @s[tag=4] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/7\"}}"}
execute if entity @s[tag=4] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/8\"}}"}
execute if entity @s[tag=4] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] add 4
execute if entity @s[tag=4] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=5] remove 5
execute if entity @s[tag=4] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] add 5
execute if entity @s[tag=4] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] remove 6
execute if entity @s[tag=4] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] add 6
execute if entity @s[tag=4] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] remove 7
execute if entity @s[tag=4] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] add 7
execute if entity @s[tag=4] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] remove 8
execute if entity @s[tag=4] run tellraw @s {"translate":"medabots_server:message.stage.fly_course.cancled_join","color":"green"}
execute if entity @s[tag=4] run scoreboard players operation @s Money += @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee
execute if entity @s[tag=4] run tag @s remove racer
execute if entity @s[tag=4] run tag @s remove 4

execute if entity @s[tag=5] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/5\"}}"}
execute if entity @s[tag=5] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/6\"}}"}
execute if entity @s[tag=5] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/7\"}}"}
execute if entity @s[tag=5] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/8\"}}"}
execute if entity @s[tag=5] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] add 5
execute if entity @s[tag=5] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=6] remove 6
execute if entity @s[tag=5] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] add 6
execute if entity @s[tag=5] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] remove 7
execute if entity @s[tag=5] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] add 7
execute if entity @s[tag=5] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] remove 8
execute if entity @s[tag=5] run tellraw @s {"translate":"medabots_server:message.stage.fly_course.cancled_join","color":"green"}
execute if entity @s[tag=5] run scoreboard players operation @s Money += @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee
execute if entity @s[tag=5] run tag @s remove racer
execute if entity @s[tag=5] run tag @s remove 5

execute if entity @s[tag=6] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/6\"}}"}
execute if entity @s[tag=6] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/7\"}}"}
execute if entity @s[tag=6] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/8\"}}"}
execute if entity @s[tag=6] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] add 6
execute if entity @s[tag=6] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=7] remove 7
execute if entity @s[tag=6] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] add 7
execute if entity @s[tag=6] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] remove 8
execute if entity @s[tag=6] run tellraw @s {"translate":"medabots_server:message.stage.fly_course.cancled_join","color":"green"}
execute if entity @s[tag=6] run scoreboard players operation @s Money += @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee
execute if entity @s[tag=6] run tag @s remove racer
execute if entity @s[tag=6] run tag @s remove 6

execute if entity @s[tag=7] unless entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/7\"}}"}
execute if entity @s[tag=7] if entity @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/8\"}}"}
execute if entity @s[tag=7] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] add 7
execute if entity @s[tag=7] run tag @s[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=8] remove 8
execute if entity @s[tag=7] run tellraw @s {"translate":"medabots_server:message.stage.fly_course.cancled_join","color":"green"}
execute if entity @s[tag=7] run scoreboard players operation @s Money += @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee
execute if entity @s[tag=7] run tag @s remove racer
execute if entity @s[tag=7] run tag @s remove 7

execute if entity @s[tag=8] run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=racer] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/8\"}}"}
execute if entity @s[tag=8] run tellraw @s {"translate":"medabots_server:message.stage.fly_course.cancled_join","color":"green"}
execute if entity @s[tag=8] run scoreboard players operation @s Money += @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee
execute if entity @s[tag=8] run tag @s remove racer
execute if entity @s[tag=8] run tag @s remove 8