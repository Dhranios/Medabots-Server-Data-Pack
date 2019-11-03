execute if entity @s[scores={Stage=1},tag=!challenge] run function medabots_server:stage/run/easy_fly_course/1_checker
execute if entity @s[scores={Stage=1},tag=challenge] run function medabots_server:stage/run/easy_fly_course/1_challenge_checker
execute if entity @s[scores={Stage=2},tag=!challenge] run function medabots_server:stage/run/medium_fly_course/1_checker
execute if entity @s[scores={Stage=2},tag=challenge] run function medabots_server:stage/run/medium_fly_course/1_challenge_checker
execute if entity @s[scores={Stage=3},tag=!challenge] run function medabots_server:stage/run/hard_fly_course/1_checker
execute if entity @s[scores={Stage=3},tag=challenge] run function medabots_server:stage/run/hard_fly_course/1_challenge_checker
execute as @e[tag=fly_course_checker,limit=1] at @s run teleport @s ^ ^ ^1
scoreboard players add @e[tag=fly_course_checker,limit=1] Time 1
execute if entity @s[distance=..1] run tag @e[tag=fly_course_checker,limit=1] add at_player
execute at @e[tag=fly_course_checker,limit=1,tag=!at_player] run function medabots_server:stage/fly_course/check_move_to_player