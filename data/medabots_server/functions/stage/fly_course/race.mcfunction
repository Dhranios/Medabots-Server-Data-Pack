execute if entity @s[scores={State=3},tag=calculate_results] run function medabots_server:stage/fly_course/calculate_results
execute if entity @s[scores={State=4}] run function medabots_server:gamemodes/fly_course/reset
effect give @s[scores={State=1..2}] minecraft:resistance 1 9 true

# Remove the items
clear @s[scores={State=3}] minecraft:elytra{medabots_server:{id:"medabots_server:fly_course_wings"}}
clear @s[scores={State=3}] minecraft:firework_rocket{medabots_server:{id:"medabots_server:fly_course_speed"}}

# Give the items
tag @s[tag=fly_course_speed] remove fly_course_speed
tag @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:fly_course_speed"}}}]}] add fly_course_speed
item entity @s[scores={State=1}] armor.chest replace minecraft:elytra{Unbreakable:1b,medabots_server:{id:"medabots_server:fly_course_wings"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_wings\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_wings.description\"}"]}}
execute unless entity @s[nbt={Inventory:[{Slot:8b}]}] run item entity @s[scores={State=1..2},tag=long_fly_course_speed,tag=!fly_course_speed] hotbar.8 replace minecraft:firework_rocket{Fireworks:{Flight:127b},medabots_server:{id:"medabots_server:fly_course_speed"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed.description\"}"]}}
execute unless entity @s[nbt={Inventory:[{Slot:8b}]}] run item entity @s[scores={State=1..2},tag=!long_fly_course_speed,tag=!fly_course_speed] hotbar.8 replace minecraft:firework_rocket{Fireworks:{Flight:1b},medabots_server:{id:"medabots_server:fly_course_speed"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed.description\"}"]}}

# Start the course
scoreboard players set @s[scores={State=1},nbt={FallFlying:1b}] State 2

# Racers placement
tag @s add me
scoreboard players operation #temp Stage = @s Stage
scoreboard players operation #temp Rings = @s Rings
scoreboard players operation #temp RingsTotal = @s RingsTotal
scoreboard players operation #temp FlyTime = @s FlyTime
execute if entity @s[scores={State=2}] run function medabots_server:stage/fly_course/try_to_finish
execute as @a[scores={Gamemode=1,StageVersion=2,StageIndex=-1}] if score @s Stage = #temp Stage run function medabots_server:stage/fly_course/setting_specifics
scoreboard players set @s FlyCoursePlace 1
execute as @a[tag=!me,scores={Gamemode=1,StageVersion=2}] if score @s Stage = #temp Stage run function medabots_server:stage/fly_course/placement
tag @s add last_place
scoreboard players operation #temp FlyCoursePlace = @s FlyCoursePlace
execute if entity @s[tag=force_fallout_on] as @a[tag=!me,scores={State=1..2}] if score @s Stage = #temp Stage if score @s FlyCoursePlace > #temp FlyCoursePlace run tag @a[tag=me,limit=1] remove last_place
scoreboard players reset @s[tag=!last_place,tag=force_fallout_on] LastPlaceTime
scoreboard players add @s[tag=last_place,tag=force_fallout_on] LastPlaceTime 1
playsound medabots_server:ambient.fly_course_fallout master @s[scores={LastPlaceTime=525}] ~ ~ ~ 1000
playsound medabots_server:ambient.fly_course_fallout master @s[scores={LastPlaceTime=545}] ~ ~ ~ 1000
playsound medabots_server:ambient.fly_course_fallout master @s[scores={LastPlaceTime=565}] ~ ~ ~ 1000
playsound medabots_server:ambient.fly_course_fallout master @s[scores={LastPlaceTime=585}] ~ ~ ~ 1000 2
playsound medabots_server:ambient.fly_course_fallout master @s[scores={LastPlaceTime=590}] ~ ~ ~ 1000 2
playsound medabots_server:ambient.fly_course_fallout master @s[scores={LastPlaceTime=595}] ~ ~ ~ 1000 2
scoreboard players set @s[scores={LastPlaceTime=600}] State 3
tellraw @s[scores={LastPlaceTime=600}] {"translate":"medabots_server:message.stage.fly_course.forced_fallout","color":"green"}
tag @s remove me
tag @s remove still_racers
tag @s remove last_place
scoreboard players reset #temp Stage
scoreboard players reset #temp Rings
scoreboard players reset #temp RingsTotal
scoreboard players reset #temp FlyTime
scoreboard players reset #temp FlyCoursePlace

# Show stop message
tellraw @s[scores={State=2},nbt={FallFlying:0b}] {"translate":"medabots_server:message.stage.fly_course.stop_fly","color":"green"}
tellraw @s[scores={State=2,Time=19}] {"translate":"medabots_server:message.stage.fly_course.too_late","color":"green"}

# Stop the course
scoreboard players set @s[scores={State=2},nbt={FallFlying:0b}] State 3
scoreboard players set @s[scores={State=2,Time=19}] State 3
scoreboard players set @s[scores={State=2,LeaveStage=1..}] State 4

# Prevent AFK
scoreboard players set @s[scores={State=2}] Flying 1

# Show current ring, total rings and time left
scoreboard players remove @s[scores={State=2,Time=2..}] Time 1
scoreboard players add @s[scores={State=2}] FlyTime 1
scoreboard players operation @s[scores={State=2}] FlyCourseTime = @s Time
scoreboard players operation @s[scores={State=2}] FlyCourseTime /= #20 Constants
scoreboard players operation @s[scores={State=2}] FlyCourseLapTime = @s FlyTime
scoreboard players operation @s[scores={State=2}] FlyCourseLapTime /= #20 Constants
title @s[scores={State=1..3},tag=!lap_race] actionbar {"translate":"medabots_server:message.stage.fly_course.placement.fallout","color":"green","with":[{"score":{"name":"@s","objective":"FlyCoursePlace"},"color":"green"},{"score":{"name":"@s","objective":"Rings"},"color":"green"},{"score":{"name":"@s","objective":"FlyCourseTime"},"color":"green"}]}
title @s[scores={State=1..3},tag=lap_race] actionbar {"translate":"medabots_server:message.stage.fly_course.placement.laps","color":"green","with":[{"score":{"name":"@s","objective":"FlyCoursePlace"},"color":"green"},{"score":{"name":"@s","objective":"Rings"},"color":"green"},{"score":{"name":"@s","objective":"FlyCourseTime"},"color":"green"},{"score":{"name":"@s","objective":"RingsTotal"},"color":"green"},{"score":{"name":"@s","objective":"FlyCourseLapTime"},"color":"green"}]}

# Racers glow, so you can see your rivals, and not confuse them with trainees
effect give @s minecraft:glowing 1 0 true

# Fly couse checker, in case of lag, goes from your last position, to your new position, to see if you flew through any rings
execute if entity @s[scores={State=2}] run function medabots_server:stage/fly_course/checker