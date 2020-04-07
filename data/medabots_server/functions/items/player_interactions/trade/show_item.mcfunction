execute unless entity @e[type=minecraft:armor_stand,distance=..0.7,tag=trade_item,limit=1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["trade_item","model_piece","found_owner","found_owner_2"],CustomNameVisible:1b,CustomName:'{"text":""}'}
tag @e[type=minecraft:armor_stand,distance=..0.7,tag=trade_item,limit=1] add found_owner
tag @e[type=minecraft:armor_stand,distance=..0.7,tag=trade_item,limit=1] add found_owner_2
execute if entity @s[tag=awaiting_trade_response] as @e[type=minecraft:armor_stand,distance=..0.7,tag=trade_item,limit=1] positioned ~ ~-1 ~ facing entity @a[distance=..10,tag=asked_to_trade] feet rotated ~ 0 run teleport @s ~ ~1 ~ ~ ~
execute if entity @s[tag=asked_to_trade] as @e[type=minecraft:armor_stand,distance=..0.7,tag=trade_item,limit=1] positioned ~ ~-1 ~ facing entity @a[distance=..10,tag=awaiting_trade_response] feet rotated ~ 0 run teleport @s ~ ~1 ~ ~ ~

data modify entity @e[type=minecraft:armor_stand,distance=..0.7,tag=trade_item,limit=1] ArmorItems[3] merge from entity @s Inventory[{Slot:-106b}]
tag @e[type=minecraft:armor_stand,distance=..0.7,tag=trade_item,limit=1] add this_entity
setblock -286 0 -52 minecraft:oak_sign{Text1:'{"entity":"@e[tag=this_entity,limit=1]","nbt":"ArmorItems[3].Count"}'}
data modify entity @e[type=minecraft:armor_stand,distance=..0.7,tag=trade_item,limit=1] CustomName set from block -286 0 -52 Text1
setblock -286 0 -52 minecraft:bedrock
tag @e[type=minecraft:armor_stand,distance=..0.7,tag=trade_item,limit=1] remove this_entity
execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run data remove entity @e[type=minecraft:armor_stand,distance=..0.7,tag=trade_item,limit=1] ArmorItems[3]
execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run data modify entity @e[type=minecraft:armor_stand,distance=..0.7,tag=trade_item,limit=1] CustomName set value '{"text":""}'