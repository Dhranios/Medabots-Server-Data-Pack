scoreboard players operation #temp TotalTime = @s TotalTime
scoreboard players remove #temp TotalTime 6000
scoreboard players operation #temp TotalTime /= #20 Constants
scoreboard players operation #temp TotalTime /= #6 Constants
scoreboard players set #temp Money 100
execute if score #temp TotalTime matches 1.. run scoreboard players operation #temp Money -= #temp TotalTime
tellraw @s {"translate":"medabots_server:message.stage.score.results.time","color":"green","with":[{"score":{"objective":"Money","name":"#temp"}}]}
scoreboard players operation @s Score += #temp Money
scoreboard players reset #temp TotalTime
scoreboard players reset #temp Money