summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{medabots_server:{id:"medabots_server:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items set from entity @s Inventory
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{activated:0b}}}].tag.display.Lore append value '{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}'
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{activated:0b}}}].tag.medabots_server.activated set value 1b
execute as @e[tag=inventory,limit=1] run function medabots_server:other/inventory_boxes/set
function medabots_server:other/inventory_boxes/load