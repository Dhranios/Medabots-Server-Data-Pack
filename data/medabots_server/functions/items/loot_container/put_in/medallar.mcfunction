execute store result score #temp Money run data get entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.medallars 100
execute store result score #temp2 Money run data get entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:medallar",stage_item:1b}}}].Count 100
summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{medabots_server:{id:"medabots_server:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items set from entity @s Inventory
execute as @e[tag=inventory,limit=1] run function medabots_server:items/loot_container/set_boxes
execute if block -286 0 -52 minecraft:shulker_box{Items:[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}]} store result block -286 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.medallars double 0.01 run scoreboard players operation #temp Money += #temp2 Money
execute if block -286 1 -52 minecraft:shulker_box{Items:[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}]} store result block -286 1 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.medallars double 0.01 run scoreboard players operation #temp Money += #temp2 Money
execute if block -287 0 -52 minecraft:shulker_box{Items:[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}]} store result block -287 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.medallars double 0.01 run scoreboard players operation #temp Money += #temp2 Money
# 1 = x.xx 2 = x.00 3 = x.x0
scoreboard players operation #temp2 Money = #temp Money
scoreboard players operation #temp2 Money /= #100 Constants
scoreboard players operation #temp2 Money *= #100 Constants
scoreboard players operation #temp3 Money = #temp Money
scoreboard players operation #temp3 Money /= #10 Constants
scoreboard players operation #temp3 Money *= #10 Constants
# 1 = 0.0x 3 = 0.x0
scoreboard players operation #temp Money -= #temp3 Money
scoreboard players operation #temp3 Money -= #temp2 Money
scoreboard players operation #temp3 Money /= #10 Constants
scoreboard players operation #temp2 Money /= #100 Constants
setblock -286 3 -52 minecraft:oak_sign{Text1:'{"italic":false,"color":"white","translate":"medabots_server:item.loot_container.medallars","with":[{"translate":"medabots_server:item.loot_container.medallars.value","with":[{"score":{"objective":"Money","name":"#temp2"}},{"score":{"objective":"Money","name":"#temp3"}},{"score":{"objective":"Money","name":"#temp"}}]}]}'}
execute if block -286 0 -52 minecraft:shulker_box{Items:[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}]} run data modify block -286 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[2] set from block -286 3 -52 Text1
execute if block -286 1 -52 minecraft:shulker_box{Items:[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}]} run data modify block -286 1 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[2] set from block -286 3 -52 Text1
execute if block -287 0 -52 minecraft:shulker_box{Items:[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}]} run data modify block -287 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[2] set from block -286 3 -52 Text1
loot replace entity @s hotbar.0 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
loot replace entity @s inventory.18 9 mine -286 1 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
loot replace entity @s weapon.offhand 1 mine -287 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
setblock -286 0 -52 minecraft:bedrock
setblock -286 1 -52 minecraft:stone
setblock -287 0 -52 minecraft:bedrock
setblock -286 3 -52 minecraft:stone
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money
scoreboard players reset #temp3 Money
clear @s minecraft:diamond{medabots_server:{stage_item:1b,id:"medabots_server:medallar"}}