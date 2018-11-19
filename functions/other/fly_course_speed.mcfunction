# Toggle
tellraw @s[scores={FlyCourseSpeed=1},tag=!long_fly_course_speed] {"translate":"medabots_server:item.fly_course_speed.toggle.on","color":"green"}
tellraw @s[scores={FlyCourseSpeed=1},tag=long_fly_course_speed] {"translate":"medabots_server:item.fly_course_speed.toggle.off","color":"green"}
tag @s[scores={FlyCourseSpeed=1},tag=!long_fly_course_speed] add toggle_long_fly_course_speed
tag @s[tag=toggle_long_fly_course_speed] add long_fly_course_speed
scoreboard players reset @s[tag=toggle_long_fly_course_speed] FlyCourseSpeed
tag @s[tag=toggle_long_fly_course_speed] remove toggle_long_fly_course_speed
tag @s[scores={FlyCourseSpeed=1},tag=long_fly_course_speed] remove long_fly_course_speed
scoreboard players reset @s[scores={FlyCourseSpeed=1},tag=!long_fly_course_speed] FlyCourseSpeed