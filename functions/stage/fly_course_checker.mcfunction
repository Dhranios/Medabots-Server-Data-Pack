summon area_effect_cloud ~ ~ ~ {Tags:["fly_course_checker"],Duration:1}
execute as @a[scores={FlyCourse=1..}] run function medabots_server:stage/fly_course_check
kill @e[tag=fly_course_checker,limit=1]