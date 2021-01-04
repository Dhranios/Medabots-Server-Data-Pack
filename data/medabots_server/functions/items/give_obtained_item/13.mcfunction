summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b},Tags:["replacing_item"],PickupDelay:0s}
data modify entity @e[type=minecraft:item,limit=1,tag=replacing_item] Item merge from entity @s Inventory[{Slot:13b}]
data modify entity @e[type=minecraft:item,limit=1,tag=replacing_item] Owner set from entity @s UUID
item entity @s inventory.4 replace minecraft:air
data remove entity @e[type=minecraft:item,limit=1,tag=replacing_item,nbt={Item:{tag:{medabots_server:{stage_item:0b}}}}] Item.tag.medabots_server.stage_item
execute as @e[type=minecraft:item,limit=1,tag=replacing_item] store result score @s Money run data get entity @s Item.tag.medabots_server
data remove entity @e[type=minecraft:item,limit=1,tag=replacing_item,scores={Money=0}] Item.tag.medabots_server
execute as @e[type=minecraft:item,limit=1,tag=replacing_item] store result score @s Money run data get entity @s Item.tag
data remove entity @e[type=minecraft:item,limit=1,tag=replacing_item,scores={Money=0}] Item.tag
tag @e[type=minecraft:item,limit=1,tag=replacing_item] remove replacing_item