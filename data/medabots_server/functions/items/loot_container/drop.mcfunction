function medabots_server:items/loot_container/available_slot_check
execute if entity @s[tag=available] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b},Tags:["replacing_item"],PickupDelay:0s}
execute if entity @s[tag=available] run data modify entity @e[type=minecraft:item,limit=1,tag=replacing_item] Owner.M set from entity @s UUIDMost
execute if entity @s[tag=available] run data modify entity @e[type=minecraft:item,limit=1,tag=replacing_item] Owner.L set from entity @s UUIDLeast
execute if entity @s[tag=available] run data modify entity @e[type=minecraft:item,limit=1,tag=replacing_item] Item merge from entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items[0]
execute if entity @s[tag=available] run data merge entity @e[type=minecraft:item,limit=1,tag=replacing_item] {Item:{tag:{medabots_server:{stage_item:0b}}}}
execute if entity @s[tag=available] run summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{medabots_server:{id:"medabots_server:inventory",items:[]}}}]}
execute if entity @s[tag=available] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items set from entity @s Inventory
execute if entity @s[tag=available] run data remove entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items[0]
execute if entity @s[tag=available] store result score #temp Money run data get entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items
execute if entity @s[tag=available] run scoreboard players remove #temp Money 1
execute if entity @s[tag=available] run setblock -286 3 -52 minecraft:oak_sign{Text1:'{"italic":false,"color":"white","translate":"medabots_server:item.loot_container.items","with":[{"score":{"objective":"Money","name":"#temp"}}]}'}
execute if entity @s[tag=available] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[1] set from block -286 3 -52 Text1
execute if entity @s[tag=available] as @e[tag=inventory,limit=1] run function medabots_server:other/inventory_boxes/set
execute if entity @s[tag=available] run function medabots_server:other/inventory_boxes/load
execute if entity @s[tag=available] run setblock -286 3 -52 minecraft:stone
execute if entity @s[tag=available] run tag @e[type=minecraft:item,limit=1,tag=replacing_item] remove replacing_item
execute if score #temp Money matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b},Tags:["replacing_item"],PickupDelay:0s}
execute if score #temp Money matches 1 run data modify entity @e[type=minecraft:item,limit=1,tag=replacing_item] Owner.M set from entity @s UUIDMost
execute if score #temp Money matches 1 run data modify entity @e[type=minecraft:item,limit=1,tag=replacing_item] Owner.L set from entity @s UUIDLeast
execute if score #temp Money matches 1 run data modify entity @e[type=minecraft:item,limit=1,tag=replacing_item] Item merge from entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.items[0]
execute if score #temp Money matches 1 run data merge entity @e[type=minecraft:item,limit=1,tag=replacing_item] {Item:{tag:{medabots_server:{stage_item:0b}}}}
execute if score #temp Money matches 0..1 run clear @s minecraft:chest{medabots_server:{id:"medabots_server:loot_container"}}
execute if score #temp Money matches 1 run tag @e[type=minecraft:item,limit=1,tag=replacing_item] remove replacing_item
scoreboard players reset #temp Money
tag @s[tag=available] remove available
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:plant",stage_item:0b}}}}] run function medabots_server:items/obtained_special_item/plant
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:pass",stage_item:0b}}}}] run function medabots_server:items/obtained_special_item/pass
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",stage_item:0b}}}}] run function medabots_server:items/obtained_special_item/stage_build_item