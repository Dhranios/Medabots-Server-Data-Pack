execute in minecraft:overworld run setblock -286 0 -52 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run setblock -286 0 -51 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run data modify block -286 0 -52 Items[0].tag.value set from entity @s UUID
execute in minecraft:overworld run function medabots_server:stage/create/generic/custom/load_inventory_index
scoreboard players reset #temp Time
execute in minecraft:overworld run fill -286 0 -52 -286 0 -51 minecraft:bedrock
data modify storage medabots_server:data medabot_inventories set from storage medabots_server:data new_medabot_inventories
data remove storage medabots_server:data new_medabot_inventories