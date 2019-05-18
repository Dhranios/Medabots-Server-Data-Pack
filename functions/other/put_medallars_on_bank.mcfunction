execute store result score #temp Money run clear @s minecraft:diamond{medabots_server:{id:"medabots_server:medallar",stage_item:1b}}
scoreboard players operation @s Money += #temp Money
tellraw @s {"translate":"medabots_server:message.put_medallars_on_bank","color":"green","with":[{"score":{"objective":"Money","name":"#temp"}}]}
scoreboard players reset #temp Money