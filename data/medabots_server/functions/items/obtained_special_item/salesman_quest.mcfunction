summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{medabots_server:{id:"medabots_server:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items set from entity @s Inventory
data remove entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[3]
execute as @e[tag=inventory,limit=1] run function medabots_server:other/inventory_boxes/set
function medabots_server:other/inventory_boxes/load
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:salesman_quest",type:"lost_cargo"}}}}] run function medabots_server:items/obtained_special_item/salesman_quest/lost_cargo
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:salesman_quest",type:"borrowed_camera"}}}}] run function medabots_server:items/obtained_special_item/salesman_quest/borrowed_camera
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:salesman_quest",type:"mysterious_artifact"}}}}] run function medabots_server:items/obtained_special_item/salesman_quest/mysterious_artifact
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:salesman_quest",type:"metal_detector"}}}}] run function medabots_server:items/obtained_special_item/salesman_quest/metal_detector
