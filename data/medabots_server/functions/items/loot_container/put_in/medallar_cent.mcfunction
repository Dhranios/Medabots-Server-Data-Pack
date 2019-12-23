execute store result score #temp Money run data get entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.medallars 100
execute store result score #temp2 Money run data get entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:medallar_cent",stage_item:1b}}}].Count 1
execute store result entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.medallars double 0.01 run scoreboard players operation #temp Money += #temp2 Money
# 1 = x.xx 2 = x.00 3 = x.x0
scoreboard players operation #temp2 Money = #temp Money
scoreboard players operation #temp2 Money /= #100 Constants
scoreboard players operation #temp2 Money *= #100 Constants
scoreboard players operation #temp3 Money = #temp Money
scoreboard players operation #temp3 Money /= #10 Constants
scoreboard players operation #temp3 Money *= #10 Constants
# 1 = 0.0x 3 = 0.x0
scoreboard players operation #temp Money -= #temp3 Money
scoreboard players operation #temp3 Money -= #temp2 Money
scoreboard players operation #temp3 Money /= #10 Constants
scoreboard players operation #temp2 Money /= #100 Constants
setblock -286 0 -52 minecraft:oak_sign{Text1:'{"italic":false,"color":"white","translate":"medabots_server:item.loot_container.medallars","with":[{"translate":"medabots_server:item.loot_container.medallars.value","with":[{"score":{"objective":"Money","name":"#temp2"}},{"score":{"objective":"Money","name":"#temp3"}},{"score":{"objective":"Money","name":"#temp"}}]}]}'}
data modify entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[2] set from block -286 0 -52 Text1
setblock -286 0 -52 minecraft:bedrock
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money
scoreboard players reset #temp3 Money
clear @s minecraft:lapis_lazuli{medabots_server:{stage_item:1b,id:"medabots_server:medallar_cent",stage_item:1b}}