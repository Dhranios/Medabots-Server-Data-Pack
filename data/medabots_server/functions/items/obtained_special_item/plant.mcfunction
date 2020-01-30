summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b}
data modify entity @e[tag=inventory,limit=1,distance=..0.1] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
execute as @e[tag=inventory,limit=1,distance=..0.1] run function medabots_server:item/loot_container/set_boxes
data remove block -286 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[3]
data remove block -286 1 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[3]
data remove block -287 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[3]
loot replace entity @s hotbar.0 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
loot replace entity @s inventory.18 9 mine -286 1 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
loot replace entity @s weapon.offhand 1 mine -287 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
setblock -286 0 -52 minecraft:bedrock
setblock -286 1 -52 minecraft:stone
setblock -287 0 -52 minecraft:bedrock
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"purple"}}}}] run function medabots_server:items/obtained_special_item/plant/purple
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"blue"}}}}] run function medabots_server:items/obtained_special_item/plant/blue
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"licht_blue"}}}}] run function medabots_server:items/obtained_special_item/plant/licht_blue
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"green"}}}}] run function medabots_server:items/obtained_special_item/plant/green
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"yellow"}}}}] run function medabots_server:items/obtained_special_item/plant/yellow
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"orange"}}}}] run function medabots_server:items/obtained_special_item/plant/orange
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"red"}}}}] run function medabots_server:items/obtained_special_item/plant/red
