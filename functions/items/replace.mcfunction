summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b},Tags:["do_not_teleport","replacement"],PickupDelay:1s}
data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Item
execute as @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] if data entity @s Item.tag.medabots_server.part run data merge entity @s {Item:{tag:{medabots_server:{stage_item:0b}}}}
tag @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] remove replacement
kill @s