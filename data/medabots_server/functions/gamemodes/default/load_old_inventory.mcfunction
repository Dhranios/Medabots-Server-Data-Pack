summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
execute as @e[tag=inventory,limit=1] run function medabots_server:other/inventory_boxes/set
function medabots_server:other/inventory_boxes/load