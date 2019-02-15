execute store result entity @e[tag=fly_course_checker,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute store result entity @e[tag=fly_course_checker,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute store result entity @e[tag=fly_course_checker,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute at @e[tag=fly_course_checker,limit=1] facing entity @s feet run teleport @e[tag=fly_course_checker,limit=1] ~ ~ ~ ~ ~
execute at @e[tag=fly_course_checker,limit=1] unless entity @s[distance=..1] run function medabots_server:stage/fly_course/check_move