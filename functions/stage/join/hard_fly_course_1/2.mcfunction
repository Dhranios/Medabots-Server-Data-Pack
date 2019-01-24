execute unless entity @s[tag=0] unless score @s Money >= @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee run tellraw @s {"translate":"medabots_server:message.stage.fly_course.no_money","color":"green"}

execute unless entity @s[tag=0] if score @s Money >= @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee run tellraw @s {"translate":"medabots_server:message.stage.fly_course.joined","color":"green"}
execute unless entity @s[tag=0] if score @s Money >= @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee run data merge block -468 91 266 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute unless entity @s[tag=0] if entity @s[tag=!racer,tag=!0] run function medabots_server:stage/join/hard_fly_course_1/3\"}}"}
execute unless entity @s[tag=0] if score @s Money >= @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee run tag @s add racer
execute unless entity @s[tag=0] if score @s Money >= @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee run tag @s add 2
execute unless entity @s[tag=0] if score @s Money >= @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee run scoreboard players operation @s Money -= @a[x=-468,y=90,z=263,dx=6,dy=3,dz=8,tag=0,limit=1] FlyCourseFee

execute if entity @s[tag=0] run function medabots_server:stage/sign/hard_fly_course_1/race_starting