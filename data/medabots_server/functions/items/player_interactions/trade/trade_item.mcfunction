execute at @a[distance=..10,tag=awaiting_trade_response,tag=accepted] if entity @a[distance=..10,tag=asked_to_trade,tag=accepted,nbt={Inventory:[{Slot:-106b}]}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b},Tags:["do_not_teleport","traded_item"],PickupDelay:2s}
execute as @a[distance=..10,tag=asked_to_trade,tag=accepted] run data modify entity @e[type=minecraft:item,tag=traded_item,limit=1] Item set from entity @s Inventory[{Slot:-106b}]
execute as @a[distance=..10,tag=awaiting_trade_response,tag=accepted] run data modify entity @e[type=minecraft:item,limit=1,tag=traded_item] Owner set from entity @s UUID
execute as @e[type=minecraft:item,tag=traded_item,limit=1] if data entity @s Item.tag.medabots_server.part run data merge entity @s {Age:-32768s,Item:{tag:{medabots_server:{stage_item:0b}}}}
tag @e[type=minecraft:item,tag=traded_item,limit=1] remove traded_item

execute at @a[distance=..10,tag=asked_to_trade,tag=accepted] if entity @a[distance=..10,tag=awaiting_trade_response,tag=accepted,nbt={Inventory:[{Slot:-106b}]}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b},Tags:["do_not_teleport","traded_item"],PickupDelay:2s}
execute as @a[distance=..10,tag=awaiting_trade_response,tag=accepted] run data modify entity @e[type=minecraft:item,tag=traded_item,limit=1] Item set from entity @s Inventory[{Slot:-106b}]
execute as @a[distance=..10,tag=asked_to_trade,tag=accepted] run data modify entity @e[type=minecraft:item,limit=1,tag=traded_item] Owner set from entity @s UUID
execute as @e[type=minecraft:item,tag=traded_item,limit=1] if data entity @s Item.tag.medabots_server.part run data merge entity @s {Age:-32768s,Item:{tag:{medabots_server:{stage_item:0b}}}}
tag @e[type=minecraft:item,tag=traded_item,limit=1] remove traded_item

replaceitem entity @a[distance=..10,tag=asked_to_trade,tag=accepted] weapon.offhand minecraft:air
replaceitem entity @a[distance=..10,tag=awaiting_trade_response,tag=accepted] weapon.offhand minecraft:air
tag @a[distance=..10,tag=asked_to_trade,tag=accepted] remove accepted
tag @a[distance=..10,tag=awaiting_trade_response,tag=accepted] remove accepted 