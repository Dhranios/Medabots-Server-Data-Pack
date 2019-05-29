# make sure this works
data modify block -286 0 -52 Items set from entity @s Inventory[{Slots:103b}].Inventory
clear @s 
loot replace entity @s hotbar.0 mine -286 0 -52