execute store result score #temp Money run clear @s minecraft:lapis_lazuli{medabots_server:{id:"medabots_server:medallar_cent"}} 0
execute if score #temp Money matches 100.. run function medabots_server:items/convert_medallar_cent_stage
scoreboard players operation @s Money += #temp2 Money
scoreboard players operation #temp2 Money *= #100 Constants
execute if score #temp2 Money matches 1.. run tellraw @s {"translate":"medabots_server:message.put_medallar_cents_on_bank","color":"green","with":[{"score":{"objective":"Money","name":"#temp2"}}]}
scoreboard players reset #temp Money
scoreboard players reset #temp Time
scoreboard players reset #temp2 Money