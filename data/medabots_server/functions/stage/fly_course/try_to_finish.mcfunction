execute as @a[scores={Gamemode=1,StageVersion=2},tag=!me] if score @s Stage = #temp Stage run tag @s add still_racers

scoreboard players set @s[scores={FlyCoursePlace=1},tag=!still_racers,tag=!lap_race] State 3
tellraw @s[scores={FlyCoursePlace=1},tag=!still_racers,tag=!lap_race] {"translate":"medabots_server:message.stage.fly_course.finished.fallout","color":"green"}

execute if entity @s[tag=lap_race] if score @s RingsTotal > @s Laps run tellraw @s[scores={State=2}] {"translate":"medabots_server:message.stage.fly_course.last_lap","color":"green"}
execute if entity @s[tag=lap_race] if score @s RingsTotal > @s Laps as @a[scores={Gamemode=1,StageVersion=2},tag=!me] if score @s Stage = #temp Stage run tellraw @s {"translate":"medabots_server:message.stage.fly_course.finished.laps","color":"green"}
execute if entity @s[tag=lap_race] if score @s RingsTotal > @s Laps run scoreboard players set @s[scores={State=2}] State 3
