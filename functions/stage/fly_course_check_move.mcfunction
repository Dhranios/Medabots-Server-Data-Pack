execute at @e[tag=fly_course_checker,limit=1] rotated as @e[tag=fly_course_checker,limit=1] run teleport @e[tag=fly_course_checker,limit=1] ^ ^ ^1
execute if entity @s[scores={Stage=-1}] run function medabots_server:stage/run/easy_fly_course/1_checker
execute if entity @s[scores={Stage=-2}] run function medabots_server:stage/run/hard_fly_course/1_checker
execute at @e[tag=fly_course_checker,limit=1] unless entity @s[distance=..1] run function medabots_server:stage/fly_course_check_move