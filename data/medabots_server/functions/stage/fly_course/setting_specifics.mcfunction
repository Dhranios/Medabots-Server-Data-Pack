# This is a lap race
execute if entity @s[scores={FlyCourseLaps=1..}] run tag @a[limit=1,tag=me] add lap_race
scoreboard players operation @a[limit=1,tag=me] Laps = @s FlyCourseLaps

# Force fallout
execute if entity @s[tag=fly_course_force_fallout] run tag @a[limit=1,tag=me] add force_fallout_on