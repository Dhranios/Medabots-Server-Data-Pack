# Reset the course data
scoreboard players reset @s[scores={FlyCourse=0}] Stage
scoreboard players reset @s[scores={FlyCourse=0}] FlyTime
scoreboard players reset @s[scores={FlyCourse=0}] Time
scoreboard players set @s[scores={FlyCourse=0}] MusicType 1
scoreboard players set @s[scores={FlyCourse=0}] Music 0
scoreboard players reset @s[scores={FlyCourse=0}] FlyCourse

# Give the items
tag @s[tag=fly_course_speed] remove fly_course_speed
tag @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:fly_course_speed"}}}]}] add fly_course_speed
scoreboard players enable @s FlyCourseSpeed
replaceitem entity @s[scores={FlyCourse=1}] armor.chest minecraft:elytra{Unbreakable:1b,medabots_server:{id:"medabots_server:fly_course_wings"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_wings\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_wings.description\"}"]}}
execute unless entity @s[nbt={Inventory:[{Slot:8b}]}] run replaceitem entity @s[scores={FlyCourse=1..},tag=long_fly_course_speed,tag=!fly_course_speed] hotbar.8 minecraft:firework_rocket{Fireworks:{Flight:127b},medabots_server:{id:"medabots_server:fly_course_speed"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed.description\"}"]}}
execute unless entity @s[nbt={Inventory:[{Slot:8b}]}] run replaceitem entity @s[scores={FlyCourse=1..},tag=!long_fly_course_speed,tag=!fly_course_speed] hotbar.8 minecraft:firework_rocket{Fireworks:{Flight:1b},medabots_server:{id:"medabots_server:fly_course_speed"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.fly_course_speed.description\"}"]}}

# Play the music
stopsound @s[scores={FlyCourse=1}] music
scoreboard players set @s[scores={FlyCourse=1}] Music 0
scoreboard players set @s[scores={FlyCourse=1},nbt={FallFlying:0b}] MusicType 0
scoreboard players set @s[scores={FlyCourse=1},nbt={FallFlying:1b}] MusicType 6

# Stop the course
scoreboard players set @s[scores={FlyCourse=2},nbt={FallFlying:0b}] FlyCourse 0
scoreboard players set @s[scores={FlyCourse=2,Time=200..}] FlyCourse 0

# Prevent AFK
scoreboard players set @s[scores={FlyCourse=2}] Flying 1

# Start the course
scoreboard players set @s[scores={FlyCourse=1},nbt={FallFlying:1b}] FlyCourse 2

# Show current ring, total rings and time spent
scoreboard players add @s[scores={FlyCourse=2}] Time 1
scoreboard players add @s[scores={FlyCourse=2}] FlyTime 1
scoreboard players operation @s[scores={FlyCourse=2}] FlyCourseTime = @s FlyTime
scoreboard players operation @s[scores={FlyCourse=2}] FlyCourseTime /= #20 Constants
execute if entity @s[scores={FlyCourse=2}] run title @a[distance=..2] actionbar {"translate":"medabots_server:message.stage.fly_course.rings","color":"green","with":[{"score":{"name":"@s","objective":"Rings"},"color":"green"},{"score":{"name":"@s","objective":"RingsTotal"},"color":"green"},{"score":{"name":"@s","objective":"FlyCourseTime"},"color":"green"}]}

# Remove the items
clear @s[scores={FlyCourse=0}] minecraft:elytra{medabots_server:{id:"medabots_server:fly_course_wings"}}
clear @s[scores={FlyCourse=0}] minecraft:firework_rocket{medabots_server:{id:"medabots_server:fly_course_speed"}}

# Show stop message
tellraw @s[scores={FlyCourse=0},nbt={FallFlying:0b}] {"translate":"medabots_server:message.stage.fly_course.stop_fly","color":"green"}
tellraw @s[scores={FlyCourse=0,Time=200..}] {"translate":"medabots_server:message.stage.fly_course.too_late","color":"green"}
execute if entity @s[scores={FlyCourse=0}] run tellraw @a[distance=..2] {"translate":"medabots_server:message.stage.fly_course.rings","color":"green","with":[{"score":{"name":"@s","objective":"Rings"},"color":"green"},{"score":{"name":"@s","objective":"RingsTotal"},"color":"green"},{"score":{"name":"@s","objective":"FlyCourseTime"},"color":"green"}]}