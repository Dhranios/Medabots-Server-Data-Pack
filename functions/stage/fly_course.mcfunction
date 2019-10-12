# Reset the course data
clear @s[scores={FlyCourse=0}] minecraft:elytra{medabots_server:{id:"medabots_server:fly_course_wings"}}
clear @s[scores={FlyCourse=0}] minecraft:firework_rocket{medabots_server:{id:"medabots_server:fly_course_speed"}}
scoreboard players reset @s[scores={FlyCourse=0}] Stage
scoreboard players reset @s[scores={FlyCourse=0}] FlyTime
scoreboard players reset @s[scores={FlyCourse=0}] FlyCourseLapTime
scoreboard players set @s[scores={FlyCourse=0}] Time 0
scoreboard players set @s[scores={FlyCourse=0}] MusicType 1
scoreboard players set @s[scores={FlyCourse=0}] Music 0
scoreboard players reset @s[scores={FlyCourse=0}] FlyCourse

# Give the items
tag @s[tag=fly_course_speed] remove fly_course_speed
tag @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:fly_course_speed"}}}]}] add fly_course_speed
scoreboard players enable @s FlyCourseSpeed
replaceitem entity @s[scores={FlyCourse=1}] armor.chest minecraft:elytra{Unbreakable:1b,medabots_server:{id:"medabots_server:fly_course_wings"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_wings\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_wings.description\"}"]}}
execute unless entity @s[nbt={Inventory:[{Slot:8b}]}] run replaceitem entity @s[scores={FlyCourse=1..2},tag=long_fly_course_speed,tag=!fly_course_speed] hotbar.8 minecraft:firework_rocket{Fireworks:{Flight:127b},medabots_server:{id:"medabots_server:fly_course_speed"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed.description\"}"]}}
execute unless entity @s[nbt={Inventory:[{Slot:8b}]}] run replaceitem entity @s[scores={FlyCourse=1..2},tag=!long_fly_course_speed,tag=!fly_course_speed] hotbar.8 minecraft:firework_rocket{Fireworks:{Flight:1b},medabots_server:{id:"medabots_server:fly_course_speed"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed.description\"}"]}}

# Play the music
stopsound @s[scores={FlyCourse=1}] music
scoreboard players set @s[scores={FlyCourse=1}] Music 0
scoreboard players set @s[scores={FlyCourse=1},nbt={FallFlying:0b}] MusicType 0
scoreboard players set @s[scores={FlyCourse=1},nbt={FallFlying:1b}] MusicType 6
scoreboard players set @s[scores={FlyCourse=1},nbt={FallFlying:1b}] Music 0
scoreboard players set @s[scores={FlyCourse=1},nbt={FallFlying:1b}] Time 220

# Stop the course
scoreboard players set @s[scores={FlyCourse=2},nbt={FallFlying:0b}] FlyCourse 0
scoreboard players set @s[scores={FlyCourse=2,Time=19}] FlyCourse 0

# Prevent AFK
scoreboard players set @s[scores={FlyCourse=2}] Flying 1

# Start the course
scoreboard players set @s[scores={FlyCourse=1},nbt={FallFlying:1b}] FlyCourse 2

# Racers placement
tag @s add me
execute if entity @a[tag=racer,scores={FlyCourse=1..4}] run scoreboard players set @s[tag=racer] FlyCoursePlace 1
execute if entity @a[tag=racer,scores={FlyCourse=1..4}] if entity @s[tag=racer] at @a[tag=racer,tag=!me] if score @s Stage = @a[distance=..0.1,limit=1,tag=!me] Stage run function medabots_server:stage/fly_course/placement
tag @s add last_place
execute if entity @s[tag=racer,tag=force_fallout_on] at @a[tag=racer,tag=!me,scores={FlyCourse=1..2}] if score @s Stage = @a[distance=..0.1,limit=1,tag=!me] Stage if score @s FlyCoursePlace <= @a[distance=..0.1,limit=1,tag=!me] FlyCoursePlace run tag @s remove last_place
scoreboard players reset @s[tag=!last_place,tag=force_fallout_on] LastPlaceTime
scoreboard players add @s[tag=last_place,tag=force_fallout_on] LastPlaceTime 1
playsound medabots_server:ambient.fly_course_fallout master @s[scores={LastPlaceTime=525}] ~ ~ ~ 1000
playsound medabots_server:ambient.fly_course_fallout master @s[scores={LastPlaceTime=545}] ~ ~ ~ 1000
playsound medabots_server:ambient.fly_course_fallout master @s[scores={LastPlaceTime=565}] ~ ~ ~ 1000
playsound medabots_server:ambient.fly_course_fallout master @s[scores={LastPlaceTime=585}] ~ ~ ~ 1000 2
playsound medabots_server:ambient.fly_course_fallout master @s[scores={LastPlaceTime=590}] ~ ~ ~ 1000 2
playsound medabots_server:ambient.fly_course_fallout master @s[scores={LastPlaceTime=595}] ~ ~ ~ 1000 2
scoreboard players set @s[scores={LastPlaceTime=600}] FlyCourse 0
tellraw @s[scores={LastPlaceTime=600}] {"translate":"medabots_server:message.stage.fly_course.forced_fallout","color":"green"}
execute if entity @s[tag=racer] at @a[tag=racer,tag=0] if score @s Stage = @a[distance=..0.1,limit=1] Stage run function medabots_server:stage/fly_course/setting_specifics
tag @s remove me
tag @s remove still_racers
tag @s remove last_place

# Show current ring, total rings and time left
scoreboard players remove @s[scores={FlyCourse=2,Time=2..}] Time 1
scoreboard players add @s[scores={FlyCourse=2}] FlyTime 1
scoreboard players operation @s[scores={FlyCourse=2}] FlyCourseTime = @s Time
scoreboard players operation @s[scores={FlyCourse=2}] FlyCourseTime /= #20 Constants
scoreboard players operation @s[scores={FlyCourse=2}] FlyCourseLapTime = @s FlyTime
scoreboard players operation @s[scores={FlyCourse=2}] FlyCourseLapTime /= #20 Constants
title @s[scores={FlyCourse=2},tag=!racer] actionbar {"translate":"medabots_server:message.stage.fly_course.rings","color":"green","with":[{"score":{"name":"@s","objective":"Rings"},"color":"green"},{"score":{"name":"@s","objective":"RingsTotal"},"color":"green"},{"score":{"name":"@s","objective":"FlyCourseTime"},"color":"green"}]}
title @s[scores={FlyCourse=2..4},tag=racer,tag=!lap_race] actionbar {"translate":"medabots_server:message.stage.fly_course.placement.fallout","color":"green","with":[{"score":{"name":"@s","objective":"FlyCoursePlace"},"color":"green"},{"score":{"name":"@s","objective":"Rings"},"color":"green"},{"score":{"name":"@s","objective":"FlyCourseTime"},"color":"green"}]}
title @s[scores={FlyCourse=2..4},tag=racer,tag=lap_race] actionbar {"translate":"medabots_server:message.stage.fly_course.placement.laps","color":"green","with":[{"score":{"name":"@s","objective":"FlyCoursePlace"},"color":"green"},{"score":{"name":"@s","objective":"Rings"},"color":"green"},{"score":{"name":"@s","objective":"FlyCourseTime"},"color":"green"},{"score":{"name":"@s","objective":"RingsTotal"},"color":"green"},{"score":{"name":"@s","objective":"FlyCourseLapTime"},"color":"green"}]}

# Racers glow, so you can see your rivals, and not confuse them with trainees
effect give @s[tag=racer] minecraft:glowing 1 0 true

# Remove the items
clear @s[scores={FlyCourse=5}] minecraft:elytra{medabots_server:{id:"medabots_server:fly_course_wings"}}
clear @s[scores={FlyCourse=5}] minecraft:firework_rocket{medabots_server:{id:"medabots_server:fly_course_speed"}}

# Show stop message
tellraw @s[scores={FlyCourse=0},nbt={FallFlying:0b}] {"translate":"medabots_server:message.stage.fly_course.stop_fly","color":"green"}
tellraw @s[scores={FlyCourse=0,Time=19}] {"translate":"medabots_server:message.stage.fly_course.too_late","color":"green"}
tellraw @s[scores={FlyCourse=0},tag=!race] {"translate":"medabots_server:message.stage.fly_course.results","color":"green","with":[{"score":{"name":"@s","objective":"Rings"},"color":"green"},{"score":{"name":"@s","objective":"RingsTotal"},"color":"green"}]}
tellraw @s[scores={FlyCourse=5},tag=!lap_race] {"translate":"medabots_server:message.stage.fly_course.race_results.fallout","color":"green","with":[{"score":{"name":"@s","objective":"FlyCoursePlace"},"color":"green"},{"score":{"name":"@s","objective":"RingsTotal"},"color":"green"}]}
tellraw @s[scores={FlyCourse=5},tag=lap_race] {"translate":"medabots_server:message.stage.fly_course.race_results.laps","color":"green","with":[{"score":{"name":"@s","objective":"FlyCoursePlace"},"color":"green"},{"score":{"name":"@s","objective":"RingsTotal"},"color":"green"},{"score":{"name":"@s","objective":"FlyCourseLapTime"},"color":"green"}]}
scoreboard players set @s[scores={FlyCourse=0},tag=racer] FlyCourse 3
tag @s[scores={FlyCourse=5}] remove racer
tag @s[scores={FlyCourse=5}] remove lap_race
tag @s[scores={FlyCourse=5}] remove force_fallout_on
tag @s[scores={FlyCourse=5}] remove 0
tag @s[scores={FlyCourse=5}] remove 1
tag @s[scores={FlyCourse=5}] remove 2
tag @s[scores={FlyCourse=5}] remove 3
tag @s[scores={FlyCourse=5}] remove 4
tag @s[scores={FlyCourse=5}] remove 5
tag @s[scores={FlyCourse=5}] remove 6
tag @s[scores={FlyCourse=5}] remove 7
tag @s[scores={FlyCourse=5}] remove 8
tag @s[scores={FlyCourse=5}] remove 9
scoreboard players reset @s[scores={FlyCourse=5}] LastPlaceTime
scoreboard players set @s[scores={FlyCourse=5}] FlyCourse 0

# Fly couse checker, in case of lag, goes from your last position, to your new position, to see if you flew through any rings
execute if entity @s[scores={FlyCourse=1..2}] run function medabots_server:stage/fly_course/checker