summon area_effect_cloud ~ ~ ~ {Tags:["fly_course_checker"],Duration:1}
function medabots_server:stage/fly_course/check
kill @e[tag=fly_course_checker,limit=1]