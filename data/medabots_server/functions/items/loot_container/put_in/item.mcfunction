summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{medabots_server:{id:"medabots_server:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items set from entity @s Inventory
execute as @e[tag=inventory,limit=1,distance=..0.1] run function medabots_server:item/loot_container/set_boxes
data modify block -286 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}]
data modify block -286 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items[-1].Count set value 1b
data modify block -286 1 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}]
data modify block -286 1 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items[-1].Count set value 1b
data modify block -287 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}]
data modify block -287 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items[-1].Count set value 1b
execute store result score #temp Money run data get entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items
setblock -286 3 -52 minecraft:oak_sign{Text1:'{"italic":false,"color":"white","translate":"medabots_server:item.loot_container.items","with":[{"score":{"objective":"Money","name":"#temp"}}]}'}
data modify block -286 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[1] set from block -286 3 -52 Text1
data modify block -286 1 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[1] set from block -286 3 -52 Text1
data modify block -287 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[1] set from block -286 3 -52 Text1
setblock -286 3 -52 minecraft:stone
scoreboard players reset #temp Money
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:plant",stage_item:1b}}}]}] run data modify block -286 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:plant",stage_item:1b}}}]}] run data modify block -286 1 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:plant",stage_item:1b}}}]}] run data modify block -287 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:pass",stage_item:1b}}}]}] run data modify block -286 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:pass",stage_item:1b}}}]}] run data modify block -286 1 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:pass",stage_item:1b}}}]}] run data modify block -287 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:stage_build_item",stage_item:1b}}}]}] run data modify block -286 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:stage_build_item",stage_item:1b}}}]}] run data modify block -286 1 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:stage_build_item",stage_item:1b}}}]}] run data modify block -287 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore append from entity @s Inventory[{tag:{medabots_server:{stage_item:1b}}}].tag.display.Name
loot replace entity @s hotbar.0 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
loot replace entity @s inventory.18 9 mine -286 1 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
loot replace entity @s weapon.offhand 1 mine -287 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
setblock -286 0 -52 minecraft:bedrock
setblock -286 1 -52 minecraft:stone
setblock -287 0 -52 minecraft:bedrock

clear @s #minecraft:all{medabots_server:{stage_item:1b}} 1
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{stage_item:1b}}}]}] run function medabots_server:items/loot_container/put_in/item