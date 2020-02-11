summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{medabots_server:{id:"medabots_server:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items set from entity @s Inventory
data remove entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[3]
execute as @e[tag=inventory,limit=1] run function medabots_server:other/inventory_boxes/set
function medabots_server:other/inventory_boxes/load
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"purple"}}}}] run function medabots_server:items/obtained_special_item/plant/purple
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"blue"}}}}] run function medabots_server:items/obtained_special_item/plant/blue
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"light_blue"}}}}] run function medabots_server:items/obtained_special_item/plant/light_blue
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"green"}}}}] run function medabots_server:items/obtained_special_item/plant/green
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"yellow"}}}}] run function medabots_server:items/obtained_special_item/plant/yellow
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"orange"}}}}] run function medabots_server:items/obtained_special_item/plant/orange
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"red"}}}}] run function medabots_server:items/obtained_special_item/plant/red
