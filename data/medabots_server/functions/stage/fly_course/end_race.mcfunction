tellraw @s[scores={PayedFee=1..,FlyCoursePlace=1}] {"translate":"medabots_server:message.stage.fly_course.race_results.money","color":"green","with":[{"score":{"name":"#temp","objective":"PayedFee"},"color":"green"}]}
execute if entity @s[scores={PayedFee=1..,FlyCoursePlace=1}] run scoreboard players operation @s Money += #temp PayedFee
execute if entity @s[scores={PayedFee=1..,FlyCoursePlace=1}] run scoreboard players reset #temp PayedFee

tellraw @s[tag=!lap_race] {"translate":"medabots_server:message.stage.fly_course.race_results.fallout","color":"green","with":[{"score":{"name":"@s","objective":"FlyCoursePlace"},"color":"green"},{"score":{"name":"@s","objective":"RingsTotal"},"color":"green"}]}
tellraw @s[tag=lap_race] {"translate":"medabots_server:message.stage.fly_course.race_results.laps","color":"green","with":[{"score":{"name":"@s","objective":"FlyCoursePlace"},"color":"green"},{"score":{"name":"@s","objective":"RingsTotal"},"color":"green"},{"score":{"name":"@s","objective":"FlyCourseLapTime"},"color":"green"}]}
scoreboard players set @s State 4