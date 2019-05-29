setblock -286 0 -52 minecraft:chest{Inventory:[{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{Inventory:[],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}}]}
data modify block -286 0 -52 Inventory[0] set from entity @s Inventory[{Slot:0b}]
data modify block -286 0 -52 Inventory[1] set from entity @s Inventory[{Slot:1b}]
data modify block -286 0 -52 Inventory[2] set from entity @s Inventory[{Slot:2b}]
data modify block -286 0 -52 Inventory[3] set from entity @s Inventory[{Slot:3b}]
data modify block -286 0 -52 Inventory[4] set from entity @s Inventory[{Slot:4b}]
data modify block -286 0 -52 Inventory[5] set from entity @s Inventory[{Slot:5b}]
data modify block -286 0 -52 Inventory[6] set from entity @s Inventory[{Slot:6b}]
data modify block -286 0 -52 Inventory[7] set from entity @s Inventory[{Slot:7b}]
data modify block -286 0 -52 Inventory[8] set from entity @s Inventory[{Slot:8b}]
clear @s
loot replace entity @s armor.head mine -286 0 -52