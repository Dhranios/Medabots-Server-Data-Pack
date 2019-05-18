summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b},Tags:["do_not_teleport","replacement"],PickupDelay:1s}
data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Item
tag @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] remove replacement
kill @s