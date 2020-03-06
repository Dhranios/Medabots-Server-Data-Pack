summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{medabots_server:{id:"medabots_server:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items set from entity @s Inventory
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}]
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items[-1].Count set value 1b
execute store result score #temp Money run data get entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items
scoreboard players add #temp Money 1
setblock -286 3 -52 minecraft:oak_sign{Text1:'{"italic":false,"color":"white","translate":"medabots_server:item.loot_container.items","with":[{"score":{"objective":"Money","name":"#temp"}}]}'}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[1] set from block -286 3 -52 Text1
setblock -286 3 -52 minecraft:stone
scoreboard players reset #temp Money
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:plant",stage_item:1b}}}]}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:pass",stage_item:1b}}}]}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:stage_build_item",stage_item:1b}}}]}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:salesman_quest",stage_item:1b}}}]}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name
execute as @e[tag=inventory,limit=1] run function medabots_server:other/inventory_boxes/set
function medabots_server:other/inventory_boxes/load

clear @s #minecraft:all{medabots_server:{stage_item:1b}} 1