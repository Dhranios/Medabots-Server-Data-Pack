summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b}
data modify entity @e[tag=inventory,limit=1,distance=..0.1] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
execute as @e[tag=inventory,limit=1,distance=..0.1] run function medabots_server:gamemodes/default/load_old_inventory_set_boxes
loot replace entity @s hotbar.0 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
loot replace entity @s inventory.18 9 mine -286 1 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
loot replace entity @s armor.feet 4 mine -286 0 -53 minecraft:golden_pickaxe{phi:{drop_contents:true}}
loot replace entity @s weapon.offhand 1 mine -287 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
setblock -286 0 -52 minecraft:bedrock
setblock -286 1 -52 minecraft:stone
setblock -286 0 -53 minecraft:bedrock
setblock -287 0 -52 minecraft:bedrock