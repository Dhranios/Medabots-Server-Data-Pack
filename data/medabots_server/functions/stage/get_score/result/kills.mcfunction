scoreboard players operation #temp TotalKills = @s TotalKills
scoreboard players operation #temp TotalKills *= #200 Constants
tellraw @s {"translate":"medabots_server:message.stage.score.results.kills","color":"green","with":[{"score":{"objective":"TotalKills","name":"#temp"}}]}
scoreboard players operation @s Score += #temp TotalKills
scoreboard players reset #temp TotalKills