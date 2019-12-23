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
replaceitem entity @s hotbar.8 minecraft:diamond_axe{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pot_breaker"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.pot_breaker.description"}']},AttributeModifiers:[],HideFlags:62,CanDestroy:["minecraft:chest"],medabots_server:{id:"medabots_server:pot_breaker"}}
replaceitem entity @s inventory.8 minecraft:chest{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.loot_container"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.loot_container.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.loot_container.items","with":["0"]}','{"italic":false,"color":"white","translate":"medabots_server:item.loot_container.medallars","with":[{"translate":"medabots_server:item.loot_container.medallars.value","with":["0","0","0"]}]}']},AttributeModifiers:[],HideFlags:62,medabots_server:{id:"medabots_server:loot_container",medallars:0d,items:[]}}

tag @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"fly"}}}]}] add fly_legs
tag @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"float"}}}]}] add float_legs
tag @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"multi_legged"}}}]}] add multi_legged_legs
tag @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"two_legged"}}}]}] add two_legged_legs
tag @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"wheel"}}}]}] add wheel_legs
tag @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"tank"}}}]}] add tank_legs
tag @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"swim"}}}]}] add swim_legs

kill @e[tag=tinpet,limit=1,distance=..0.1]