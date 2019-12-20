scoreboard players operation #temp Stage = @s Stage
execute as @a[scores={StageVersion=2,Gamemode=1}] if score @s Stage = #temp Stage run scoreboard players operation #temp PayedFee += @s PayedFee

execute as @a[scores={StageVersion=2,Gamemode=1}] if score @s Stage = #temp Stage run function medabots_server:stage/fly_course/end_race
scoreboard players reset #temp Stage
tag @s remove calculate_results