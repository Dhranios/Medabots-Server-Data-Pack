summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["replacing_item"],PickupDelay:0s}
data modify entity @e[type=minecraft:item,limit=1,tag=replacing_item] Item merge from entity @s Inventory[{Slot:24b}]
replaceitem entity @s inventory.15 minecraft:air
data remove entity @e[type=minecraft:item,limit=1,tag=replacing_item] Item.tag.medabots_server.stage_item
tag @e[type=minecraft:item,limit=1,tag=replacing_item] remove replacing_item