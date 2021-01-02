data modify block -286 0 -51 Items[0].tag.value set from storage medabots_server:data medabot_inventories[-1].uuid
execute store success score #temp Time if blocks -286 0 -52 -286 0 -52 -286 0 -51 all
data modify storage medabots_server:data new_medabot_inventories append from storage medabots_server:data medabot_inventories[-1]
execute if score #temp Time matches 1 run data modify storage medabots_server:data loaded_inventory set from storage medabots_server:data medabot_inventories[-1].inventory
data remove storage medabots_server:data medabot_inventories[-1]
execute if score #temp Time matches 1 run data modify storage medabots_server:data new_medabot_inventories append from storage medabots_server:data medabot_inventories[]
execute unless score #temp Time matches 1 if data storage medabots_server:data medabot_inventories[-1] run function medabots_server:stage/create/generic/custom/load_inventory_index