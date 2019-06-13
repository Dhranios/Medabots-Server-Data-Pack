execute store result score #temp Money run clear @s minecraft:lapis_lazuli{medabots_server:{id:"medabots_server:medallar_cent"}} 0
execute if score #temp Money matches 100.. run function medabots_server:other/convert_medallar_cent_stage
scoreboard players operation @s Money += #temp FloorSwitchTime
scoreboard players operation #temp FloorSwitchTime *= #100 Constants
execute if score #temp FloorSwitchTime matches 1.. run tellraw @s {"translate":"medabots_server:message.put_medallar_cents_on_bank","color":"green","with":[{"score":{"objective":"FloorSwitchTime","name":"#temp"}}]}
scoreboard players reset #temp Money
scoreboard players reset #temp Time
scoreboard players reset #temp FloorSwitchTime