# make sure this works
setblock -286 0 -52 minecraft:shulker_box
data modify block -286 0 -52 Items set from entity @s Inventory[{Slots:103b}].tag.Inventory
replaceitem entity @s hotbar.0 minecraft:air
replaceitem entity @s hotbar.1 minecraft:air
replaceitem entity @s hotbar.2 minecraft:air
replaceitem entity @s hotbar.3 minecraft:air
replaceitem entity @s hotbar.4 minecraft:air
replaceitem entity @s hotbar.5 minecraft:air
replaceitem entity @s hotbar.6 minecraft:air
replaceitem entity @s hotbar.7 minecraft:air
replaceitem entity @s hotbar.8 minecraft:air
replaceitem entity @s armor.head minecraft:air
loot replace entity @s hotbar.0 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
setblock -286 0 -52 minecraft:bedrock
tag @s remove salesman_trades