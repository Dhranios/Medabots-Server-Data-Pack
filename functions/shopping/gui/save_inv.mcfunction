setblock -286 0 -52 minecraft:shulker_box{Inventory:[{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{Inventory:[],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}}]}
data modify block -286 0 -52 Inventory[0] set from entity @s Inventory[0].tag.Inventory[0]
data modify block -286 0 -52 Inventory[1] set from entity @s Inventory[0].tag.Inventory[1]
data modify block -286 0 -52 Inventory[2] set from entity @s Inventory[0].tag.Inventory[2]
data modify block -286 0 -52 Inventory[3] set from entity @s Inventory[0].tag.Inventory[3]
data modify block -286 0 -52 Inventory[4] set from entity @s Inventory[0].tag.Inventory[4]
data modify block -286 0 -52 Inventory[5] set from entity @s Inventory[0].tag.Inventory[5]
data modify block -286 0 -52 Inventory[6] set from entity @s Inventory[0].tag.Inventory[6]
data modify block -286 0 -52 Inventory[7] set from entity @s Inventory[0].tag.Inventory[7]
data modify block -286 0 -52 Inventory[8] set from entity @s Inventory[0].tag.Inventory[8]
data modify block -286 0 -52 Inventory[9] set from entity @s Inventory[0].tag.Inventory[9]
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
loot replace entity @s armor.head mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
setblock -286 0 -52 minecraft:bedrock