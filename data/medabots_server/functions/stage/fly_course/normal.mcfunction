execute if entity @s[scores={State=4}] run function medabots_server:gamemodes/fly_course/reset
effect give @s[scores={State=1..2}] minecraft:resistance 1 9 true

execute if entity @s[tag=calculate_results] run function medabots_server:stage/fly_course/calculate_results

# Give the items
tag @s[tag=fly_course_speed] remove fly_course_speed
tag @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:fly_course_speed"}}}]}] add fly_course_speed
replaceitem entity @s[scores={State=1}] armor.chest minecraft:elytra{Unbreakable:1b,medabots_server:{id:"medabots_server:fly_course_wings"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_wings\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_wings.description\"}"]}}
execute unless entity @s[nbt={Inventory:[{Slot:8b}]}] run replaceitem entity @s[scores={State=1..2},tag=long_fly_course_speed,tag=!fly_course_speed] hotbar.8 minecraft:firework_rocket{Fireworks:{Flight:127b},medabots_server:{id:"medabots_server:fly_course_speed"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed.description\"}"]}}
execute unless entity @s[nbt={Inventory:[{Slot:8b}]}] run replaceitem entity @s[scores={State=1..2},tag=!long_fly_course_speed,tag=!fly_course_speed] hotbar.8 minecraft:firework_rocket{Fireworks:{Flight:1b},medabots_server:{id:"medabots_server:fly_course_speed"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed.description\"}"]}}

# Start the course
scoreboard players set @s[scores={State=1},nbt={FallFlying:1b}] State 2

# Show stop message
tellraw @s[scores={State=2},nbt={FallFlying:0b}] {"translate":"medabots_server:message.stage.fly_course.stop_fly","color":"green"}
tellraw @s[scores={State=2,Time=19}] {"translate":"medabots_server:message.stage.fly_course.too_late","color":"green"}

# Stop the course
scoreboard players set @s[scores={State=2},nbt={FallFlying:0b}] State 4
scoreboard players set @s[scores={State=2,Time=19}] State 4
scoreboard players set @s[scores={State=2,LeaveStage=1..}] State 4
scoreboard players set @s[scores={State=3}] State 4

# Prevent AFK
scoreboard players set @s[scores={State=2}] Flying 1

# Show current ring, total rings and time left
scoreboard players remove @s[scores={State=2,Time=2..}] Time 1
scoreboard players add @s[scores={State=2}] FlyTime 1
scoreboard players operation @s[scores={State=2}] FlyCourseTime = @s Time
scoreboard players operation @s[scores={State=2}] FlyCourseTime /= #20 Constants
scoreboard players operation @s[scores={State=2}] FlyCourseLapTime = @s FlyTime
scoreboard players operation @s[scores={State=2}] FlyCourseLapTime /= #20 Constants
title @s[scores={State=2}] actionbar {"translate":"medabots_server:message.stage.fly_course.rings","color":"green","with":[{"score":{"name":"@s","objective":"Rings"},"color":"green"},{"score":{"name":"@s","objective":"RingsTotal"},"color":"green"},{"score":{"name":"@s","objective":"FlyCourseTime"},"color":"green"}]}

execute if entity @s[scores={State=4}] run function medabots_server:stage/get_score/rings

# Fly couse checker, in case of lag, goes from your last position, to your new position, to see if you flew through any rings
execute if entity @s[scores={State=2}] run function medabots_server:stage/fly_course/checker