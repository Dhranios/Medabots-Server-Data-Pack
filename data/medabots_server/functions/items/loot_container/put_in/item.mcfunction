data modify entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}]
data modify entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items[-1].Count set value 1b
execute store result score #temp Money run data get entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items
setblock -286 0 -52 minecraft:oak_sign{Text1:'{"italic":false,"color":"white","translate":"medabots_server:item.loot_container.items","with":[{"score":{"objective":"Money","name":"#temp"}}]}'}
data modify entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[1] set from block -286 0 -52 Text1
setblock -286 0 -52 minecraft:bedrock
scoreboard players reset #temp Money
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:plant",stage_item:1b}}}]}] run data modify entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:pass",stage_item:1b}}}]}] run data modify entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:stage_build_item",stage_item:1b}}}]}] run data modify entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name

clear @s #minecraft:all{medabots_server:{stage_item:1b}} 1
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{stage_item:1b}}}]}] run function medabots_server:items/loot_container/put_in/item