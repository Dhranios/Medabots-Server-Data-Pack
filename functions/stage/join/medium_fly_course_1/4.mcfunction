execute unless entity @s[tag=racer] unless score @s Money >= @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee run tellraw @s {"translate":"medabots_server:message.stage.fly_course.no_money","color":"green"}

execute unless entity @s[tag=racer] if score @s Money >= @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee run tellraw @s {"translate":"medabots_server:message.stage.fly_course.joined","color":"green"}
execute unless entity @s[tag=racer] if score @s Money >= @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee run data merge block -89 121 -79 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/join/medium_fly_course_1/5\"}}"}
execute unless entity @s[tag=racer] if score @s Money >= @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee run tag @s add racer
execute unless entity @s[tag=racer] if score @s Money >= @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee run tag @s add 4
execute unless entity @s[tag=racer] if score @s Money >= @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee run scoreboard players operation @s Money -= @a[x=-89,y=120,z=-82,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee

execute if entity @s[tag=0] run function medabots_server:stage/sign/medium_fly_course_1/race_starting