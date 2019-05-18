summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b},Tags:["replacing_item"],PickupDelay:0s}
data modify entity @e[type=minecraft:item,limit=1,tag=replacing_item] Item merge from entity @s Inventory[{Slot:13b}]
data modify entity @e[type=minecraft:item,limit=1,tag=replacing_item] Owner.M set from entity @s UUIDMost
data modify entity @e[type=minecraft:item,limit=1,tag=replacing_item] Owner.L set from entity @s UUIDLeast
replaceitem entity @s inventory.4 minecraft:air
data remove entity @e[type=minecraft:item,limit=1,tag=replacing_item,nbt={Item:{tag:{medabots_server:{stage_item:0b}}}}] Item.tag.medabots_server.stage_item
data merge entity @e[type=minecraft:item,limit=1,tag=replacing_item,nbt={Item:{tag:{medabots_server:{stage_item:1b}}}}] {Item:{tag:{medabots_server:{stage_item:0b}}}}
tag @e[type=minecraft:item,limit=1,tag=replacing_item] remove replacing_item