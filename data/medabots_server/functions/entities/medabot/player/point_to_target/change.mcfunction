summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{medabots_server:{id:"medabots_server:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items set from entity @s Inventory

execute store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:effect_list"}}}].tag.LodestonePos.X int 1 run data get entity @e[tag=target,limit=1] Pos[0]
execute store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:effect_list"}}}].tag.LodestonePos.Y int 1 run data get entity @e[tag=target,limit=1] Pos[1]
execute store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:effect_list"}}}].tag.LodestonePos.Z int 1 run data get entity @e[tag=target,limit=1] Pos[2]

execute as @e[tag=inventory,limit=1] run function medabots_server:other/inventory_boxes/set
function medabots_server:other/inventory_boxes/load

tag @e[tag=potential_target] remove potential_target
tag @e[tag=target,limit=1] remove target