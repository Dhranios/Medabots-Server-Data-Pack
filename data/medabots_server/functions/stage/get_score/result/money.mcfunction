execute store result score #temp TotalMoney run data get entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.medallars 100
tellraw @s {"translate":"medabots_server:message.stage.score.results.money","color":"green","with":[{"score":{"objective":"TotalMoney","name":"#temp"}}]}
scoreboard players operation @s Score += #temp TotalMoney
scoreboard players reset #temp TotalMoney