execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:0b}]} run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["pot_item","do_not_teleport"],PickupDelay:0s}
data modify entity @e[type=minecraft:item,limit=1,tag=pot_item] Item merge from block ~ ~ ~ Items[{Slot:0b}]
replaceitem block ~ ~ ~ container.0 minecraft:air
setblock ~ ~ ~ minecraft:air destroy
tag @e[type=minecraft:item,limit=1,tag=pot_item] remove pot_item
tag @s remove broken
tag @s add dead

function medabots_server:blocks/pot/spawn_entity
