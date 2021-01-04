summon minecraft:armor_stand ~ ~ ~ {Tags:["tinpet"],Invisible:1b,Marker:1b}
data modify entity @e[tag=tinpet,limit=1,distance=..0.1] ArmorItems[3] set from entity @s SelectedItem

# Save inventory
data modify storage medabots_server:data medabot_inventories append value {uuid:[I;],inventory:[]}
data modify storage medabots_server:data medabot_inventories[-1].uuid set from entity @s UUID
data modify storage medabots_server:data medabot_inventories[-1].inventory set from entity @s Inventory
clear @s

# Load Medaparts
execute in minecraft:overworld run setblock -286 0 -52 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b}},{Slot:1b,id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b}},{Slot:2b,id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b}},{Slot:3b,id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b}},{Slot:4b,id:"minecraft:gold_ingot",Count:50b,tag:{Unbreakable:1b}}]}
execute as @e[tag=tinpet,limit=1,distance=..0.1] in minecraft:overworld run data modify block -286 0 -52 Items[0].tag merge from entity @s ArmorItems[3].tag.medabots_server.items.legs.tag
execute as @e[tag=tinpet,limit=1,distance=..0.1] in minecraft:overworld run data modify block -286 0 -52 Items[1].tag merge from entity @s ArmorItems[3].tag.medabots_server.items.left_arm.tag
execute as @e[tag=tinpet,limit=1,distance=..0.1] in minecraft:overworld run data modify block -286 0 -52 Items[2].tag merge from entity @s ArmorItems[3].tag.medabots_server.items.right_arm.tag
execute as @e[tag=tinpet,limit=1,distance=..0.1] in minecraft:overworld run data modify block -286 0 -52 Items[3].tag merge from entity @s ArmorItems[3].tag.medabots_server.items.head.tag
execute as @e[tag=tinpet,limit=1,distance=..0.1] in minecraft:overworld run data modify block -286 0 -52 Items[4].tag merge from entity @s ArmorItems[3].tag.medabots_server.items.medal.tag
execute store result score @s MedabotLevel run data get entity @e[tag=tinpet,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items.medal.tag.medabots_server.xp.levels
execute if entity @s[scores={MedabotLevel=1..}] run function medabots_server:gamemodes/default/load_levels
execute store result score @s MedabotLevel run data get entity @e[tag=tinpet,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items.medal.tag.medabots_server.xp.points
execute if entity @s[scores={MedabotLevel=1..}] run function medabots_server:gamemodes/default/load_points
execute store result score @s MedabotLevel run experience query @s levels
data remove block -286 0 -52 Items[4].tag.display.Lore[2]
data remove block -286 0 -52 Items[4].tag.medabots_server.xp
execute in minecraft:overworld run loot replace entity @s hotbar.0 5 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld run setblock -286 0 -52 minecraft:bedrock
item entity @s hotbar.5 replace minecraft:compass{CustomModelData:1,LodestoneTracked:0b,LodestoneDimension:"minecraft:overworld",LodestonePos:{X:0,Y:0,Z:0},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.effect_list"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.effect_list.description"}']},AttributeModifiers:[],HideFlags:62,medabots_server:{id:"medabots_server:effect_list",activated:1b}}
item entity @s inventory.26 replace minecraft:chest{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.loot_container"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.loot_container.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.loot_container.items","with":["0"]}','{"italic":false,"color":"white","translate":"medabots_server:item.loot_container.medallars","with":[{"translate":"medabots_server:item.loot_container.medallars.value","with":["0","0","0"]}]}']},AttributeModifiers:[],HideFlags:62,medabots_server:{id:"medabots_server:loot_container",medallars:0d,items:[],activated:1b}}

tag @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"fly"}}}]}] add fly_legs
tag @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"float"}}}]}] add float_legs
tag @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"multi_legged"}}}]}] add multi_legged_legs
tag @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"two_legged"}}}]}] add two_legged_legs
tag @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"wheel"}}}]}] add wheel_legs
tag @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"tank"}}}]}] add tank_legs
tag @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"swim"}}}]}] add swim_legs

function #medabots_server:placeholders

kill @e[tag=tinpet,limit=1,distance=..0.1]