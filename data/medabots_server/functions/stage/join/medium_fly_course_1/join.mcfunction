tellraw @s {"translate":"medabots_server:message.stage.fly_course.joined","color":"green"}
scoreboard players set @s StageIndex -1
function medabots_server:stage/join/medium_fly_course_1/get_next_index
tag @s remove index_free
scoreboard players operation @s PayedFee = @a[scores={StageIndex=-1,Stage=2,Gamemode=1},limit=1] FlyCourseFee
scoreboard players operation @s Money -= @s PayedFee
function medabots_server:gamemodes/fly_course/set_stats
scoreboard players set @s Stage 2
execute at @s as @a[scores={StageIndex=-1,Stage=2,Gamemode=1},limit=1] run function medabots_server:stage/join/medium_fly_course_1/try_to_complete
