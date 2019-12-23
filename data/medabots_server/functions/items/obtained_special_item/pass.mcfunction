execute at @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:pass"}}}}] run data remove entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[3]
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:pass",type:"gold"}}}}] run function medabots_server:items/obtained_special_item/pass/gold
