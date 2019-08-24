summon minecraft:armor_stand ~ ~ ~ {Tags:["tinpet"],Invisible:1b,Marker:1b}
data modify entity @e[tag=tinpet,limit=1,distance=..0.1] ArmorItems[3] set from entity @s SelectedItem

# Save inventory
setblock -286 0 -52 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{medabots_server:{id:"medabots_server:inventory",items:[]},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}}]}
data modify block -286 0 -52 Items[0].tag.medabots_server.items set from entity @s Inventory
clear @s
loot replace entity @s armor.head mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
setblock -286 0 -52 minecraft:bedrock

# Load Medaparts
replaceitem entity @s hotbar.0 minecraft:fishing_rod{Unbreakable:1b}
replaceitem entity @s hotbar.1 minecraft:fishing_rod{Unbreakable:1b}
replaceitem entity @s hotbar.2 minecraft:fishing_rod{Unbreakable:1b}
replaceitem entity @s hotbar.3 minecraft:fishing_rod{Unbreakable:1b}
replaceitem entity @s hotbar.4 minecraft:fishing_rod{Unbreakable:1b}
data modify entity @s Inventory[{Slot:0b}].tag merge from entity @e[tag=tinpet,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items.legs.tag
data modify entity @s Inventory[{Slot:1b}].tag merge from entity @e[tag=tinpet,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items.left_arm.tag
data modify entity @s Inventory[{Slot:2b}].tag merge from entity @e[tag=tinpet,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items.right_arm.tag
data modify entity @s Inventory[{Slot:3b}].tag merge from entity @e[tag=tinpet,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items.head.tag
data modify entity @s Inventory[{Slot:4b}].tag merge from entity @e[tag=tinpet,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items.medal.tag

kill @e[tag=tinpet,limit=1,distance=..0.1]