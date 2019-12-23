execute at @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant"}}}}] run data remove entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[3]
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"purple"}}}}] run function medabots_server:items/obtained_special_item/plant/purple
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"blue"}}}}] run function medabots_server:items/obtained_special_item/plant/blue
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"licht_blue"}}}}] run function medabots_server:items/obtained_special_item/plant/licht_blue
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"green"}}}}] run function medabots_server:items/obtained_special_item/plant/green
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"yellow"}}}}] run function medabots_server:items/obtained_special_item/plant/yellow
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"orange"}}}}] run function medabots_server:items/obtained_special_item/plant/orange
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",type:"red"}}}}] run function medabots_server:items/obtained_special_item/plant/red
