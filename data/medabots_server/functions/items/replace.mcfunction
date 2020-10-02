summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b},Tags:["do_not_teleport","replacement"],PickupDelay:1s}
data modify entity @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] Item set from entity @s Item
execute as @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] if data entity @s Item.tag.medabots_server.part run data merge entity @s {Age:-32768s,Item:{tag:{medabots_server:{stage_item:0b}}}}
execute as @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] if entity @s[nbt={Item:{tag:{medabots_server:{id:"medabots_server:custom_stage"}}}}] run data merge entity @s {Item:{tag:{medabots_server:{refresh:1b}}}}
tag @e[type=minecraft:item,tag=replacement,distance=..1,limit=1] remove replacement
kill @s