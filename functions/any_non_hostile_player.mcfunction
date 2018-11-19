# Remove the data that is left over from combat
function medabots_server:medaparts/remove_scores

# Fast roads
function medabots_server:other/action_mode

# Toggle Fly Course Speed duration
execute if entity @s[scores={FlyCourseSpeed=1..}] run function medabots_server:other/fly_course_speed

# Invalid medabot = no combat start
function medabots_server:medaparts/medapart_error