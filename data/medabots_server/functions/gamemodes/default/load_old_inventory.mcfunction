execute in minecraft:overworld run setblock -286 0 -52 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run setblock -286 0 -51 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run data modify block -286 0 -52 Items[0].tag.value set from entity @s UUID
execute in minecraft:overworld run function medabots_server:gamemodes/default/load_inventory_index
summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{medabots_server:{id:"medabots_server:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items set from storage medabots_server:data load_inventory
execute as @e[tag=inventory,limit=1] run function medabots_server:other/inventory_boxes/set
function medabots_server:other/inventory_boxes/load
scoreboard players reset #temp Time
execute in minecraft:overworld run fill -286 0 -52 -286 0 -51 minecraft:bedrock
data modify storage medabots_server:data medabot_inventories set from storage medabots_server:data new_medabot_inventories
data remove storage medabots_server:data new_medabot_inventories
data remove storage medabots_server:data load_inventory