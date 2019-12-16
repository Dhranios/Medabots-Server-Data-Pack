execute if score @s RingsTotal > #temp RingsTotal run scoreboard players add @a[limit=1,tag=me] FlyCoursePlace 1
execute if entity @s[tag=lap_race] if score @s RingsTotal = #temp RingsTotal if score @s Rings > #temp Rings run scoreboard players add @a[limit=1,tag=me] FlyCoursePlace 1
execute if entity @s[tag=lap_race] if score @s RingsTotal = #temp RingsTotal if score @s Rings = #temp Rings if score @s FlyTime < #temp FlyTime run scoreboard players add @a[limit=1,tag=me] FlyCoursePlace 1
execute if entity @s[scores={State=0..2}] run tag @a[limit=1,tag=me] add still_racers