execute unless entity @s[scores={StageVersion=0..}] run function medabots_server:stage/fly_course/normal
execute if entity @s[scores={StageVersion=1}] run function medabots_server:stage/fly_course/normal
execute if entity @s[scores={StageVersion=2}] run function medabots_server:stage/fly_course/race

execute if entity @s[scores={Stage=1}] unless entity @s[scores={StageVersion=0..}] run function medabots_server:stage/run/easy_fly_course_1/normal
execute if entity @s[scores={Stage=1,StageVersion=1}] run function medabots_server:stage/run/easy_fly_course_1/challenge
execute if entity @s[scores={Stage=1,StageVersion=2}] run function medabots_server:stage/run/easy_fly_course_1/race
execute if entity @s[scores={Stage=2}] unless entity @s[scores={StageVersion=0..}] run function medabots_server:stage/run/medium_fly_course_1/normal
execute if entity @s[scores={Stage=2,StageVersion=1}] run function medabots_server:stage/run/medium_fly_course_1/challenge
execute if entity @s[scores={Stage=2,StageVersion=2}] run function medabots_server:stage/run/medium_fly_course_1/race
execute if entity @s[scores={Stage=3}] unless entity @s[scores={StageVersion=0..}] run function medabots_server:stage/run/hard_fly_course_1/normal
execute if entity @s[scores={Stage=3,StageVersion=1}] run function medabots_server:stage/run/hard_fly_course_1/challenge
execute if entity @s[scores={Stage=3,StageVersion=2}] run function medabots_server:stage/run/hard_fly_course_1/race
