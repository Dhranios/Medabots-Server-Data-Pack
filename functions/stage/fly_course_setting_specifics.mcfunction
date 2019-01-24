# Last racer finished
execute at @a[tag=racer,tag=!me] if score @s Stage = @a[distance=..0.1,limit=1,tag=!me] Stage if entity @a[distance=..0.1,limit=1,scores={FlyCourse=0..2},tag=!me] run tag @s add still_racers

# Last racer
execute if entity @s[scores={FlyCoursePlace=1},tag=!still_racers,tag=racer,tag=!lap_race] at @s as @a[tag=racer] if score @s Stage = @a[distance=..0.1,limit=1] Stage run scoreboard players set @s FlyCourse 5
scoreboard players set @s[scores={FlyCoursePlace=1},tag=!still_racers,tag=racer,tag=!lap_race] FlyCourse 5
tellraw @s[scores={FlyCoursePlace=1},tag=!still_racers,tag=racer,tag=!lap_race] {"translate":"medabots_server:message.stage.fly_course.finished.fallout","color":"green"}

execute if entity @s[scores={FlyCoursePlace=1,FlyCourse=3..4},tag=!still_racers,tag=racer,tag=lap_race] at @s as @a[tag=racer] if score @s Stage = @a[distance=..0.1,limit=1] Stage run tellraw @s {"translate":"medabots_server:message.stage.fly_course.finished.laps","color":"green"}
execute if entity @s[scores={FlyCoursePlace=1,FlyCourse=3..4},tag=!still_racers,tag=racer,tag=lap_race] at @s as @a[tag=racer] if score @s Stage = @a[distance=..0.1,limit=1] Stage run scoreboard players set @s FlyCourse 5
scoreboard players set @s[scores={FlyCoursePlace=1,FlyCourse=3..4},tag=!still_racers,tag=racer,tag=lap_race] FlyCourse 5

# This is a lap race
execute if entity @a[distance=..0.1,scores={FlyCourseLaps=1..},tag=0] run tag @s add lap_race
execute if entity @a[distance=..0.1,scores={FlyCourseLaps=1..},tag=0] if score @s RingsTotal > @a[distance=..0.1,limit=1,tag=0] FlyCourseLaps run tellraw @s[scores={FlyCourse=0..2}] {"translate":"medabots_server:message.stage.fly_course.last_lap","color":"green"}
execute if entity @a[distance=..0.1,scores={FlyCourseLaps=1..},tag=0] if score @s RingsTotal > @a[distance=..0.1,limit=1,tag=0] FlyCourseLaps run scoreboard players set @s[scores={FlyCourse=0..2}] FlyCourse 3

# Force fallout
execute if entity @a[distance=..0.1,tag=fly_course_force_fallout] run tag @s add force_fallout_on

# Winner takes the money
execute at @a[tag=racer] if score @s Stage = @a[distance=..0.1,limit=1] Stage run scoreboard players add #temp FlyCourseFee 1
scoreboard players operation #temp FlyCourseFee *= @a[distance=..0.1,scores={FlyCourseFee=1..},tag=0,limit=1] FlyCourseFee
execute if entity @a[distance=..0.1,scores={FlyCourseFee=1..},tag=0,limit=1] if entity @s[scores={FlyCourse=5,FlyCoursePlace=1}] run tellraw @s {"translate":"medabots_server:message.stage.fly_course.race_results.money","color":"green","with":[{"score":{"name":"#temp","objective":"FlyCourseFee"},"color":"green"}]}
execute if entity @a[distance=..0.1,scores={FlyCourseFee=1..},tag=0,limit=1] if entity @s[scores={FlyCourse=5,FlyCoursePlace=1}] run scoreboard players operation @s Money += #temp FlyCourseFee
scoreboard players reset #temp FlyCourseFee