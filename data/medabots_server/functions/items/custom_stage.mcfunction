execute in minecraft:overworld run setblock -286 0 -52 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:diamond_pickaxe",Count:1b,tag:{}}]}
execute in minecraft:overworld run data modify block -286 0 -52 Items[0].tag merge from entity @s Inventory[{tag:{medabots_server:{refresh:1b}}}].tag
execute in minecraft:overworld run setblock -286 0 -53 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:diamond_pickaxe",Count:1b,tag:{value:""}}]}
execute in minecraft:overworld run loot spawn -286 0 -53 loot medabots_server:gameplay/get_player_name
execute in minecraft:overworld positioned -286 0 -53 run data modify block ~ ~ ~ Items[0].tag.value set from entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{id:"minecraft:player_head"}},limit=1] Item.tag.SkullOwner.Name
execute in minecraft:overworld positioned -286 0 -53 run kill @e[type=minecraft:item,distance=..0.7,nbt={Item:{id:"minecraft:player_head"}},limit=1]
execute in minecraft:overworld run setblock -286 1 -52 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:diamond_pickaxe",Count:1b,tag:{value:""}}]}
execute in minecraft:overworld run function medabots_server:items/custom_stage/search

execute in minecraft:overworld run setblock -286 0 -52 minecraft:bedrock
execute in minecraft:overworld run setblock -286 0 -52 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:diamond_pickaxe",Count:1b,tag:{}}]}
execute in minecraft:overworld run data modify block -286 0 -52 Items[0].tag set from entity @s Inventory[{tag:{medabots_server:{refresh:1b}}}].tag
execute store result score #temp Time run data get entity @s Inventory[{tag:{medabots_server:{refresh:1b}}}].Slot
execute in minecraft:overworld run data remove block -286 0 -52 Items[0].tag.medabots_server.refresh
execute if entity @s[tag=listed] in minecraft:overworld run data modify block -286 0 -52 Items[0].tag.display.Lore[3] set value '{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage.cleared","with":[{"color":"green","translate":"medabots_server:item.custom_stage.cleared.yes"}]}'
execute if entity @s[tag=!listed] in minecraft:overworld run data modify block -286 0 -52 Items[0].tag.display.Lore[3] set value '{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage.cleared","with":[{"color":"red","translate":"medabots_server:item.custom_stage.cleared.no"}]}'
execute if score #temp Time matches 0 in minecraft:overworld run loot replace entity @s hotbar.0 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 1 in minecraft:overworld run loot replace entity @s hotbar.1 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 2 in minecraft:overworld run loot replace entity @s hotbar.2 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 3 in minecraft:overworld run loot replace entity @s hotbar.3 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 4 in minecraft:overworld run loot replace entity @s hotbar.4 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 5 in minecraft:overworld run loot replace entity @s hotbar.5 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 6 in minecraft:overworld run loot replace entity @s hotbar.6 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 7 in minecraft:overworld run loot replace entity @s hotbar.7 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 8 in minecraft:overworld run loot replace entity @s hotbar.8 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 9 in minecraft:overworld run loot replace entity @s inventory.0 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 10 in minecraft:overworld run loot replace entity @s inventory.1 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 11 in minecraft:overworld run loot replace entity @s inventory.2 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 12 in minecraft:overworld run loot replace entity @s inventory.3 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 13 in minecraft:overworld run loot replace entity @s inventory.4 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 14 in minecraft:overworld run loot replace entity @s inventory.5 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 15 in minecraft:overworld run loot replace entity @s inventory.6 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 16 in minecraft:overworld run loot replace entity @s inventory.7 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 17 in minecraft:overworld run loot replace entity @s inventory.8 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 18 in minecraft:overworld run loot replace entity @s inventory.9 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 19 in minecraft:overworld run loot replace entity @s inventory.10 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 20 in minecraft:overworld run loot replace entity @s inventory.11 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 21 in minecraft:overworld run loot replace entity @s inventory.12 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 22 in minecraft:overworld run loot replace entity @s inventory.13 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 23 in minecraft:overworld run loot replace entity @s inventory.14 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 24 in minecraft:overworld run loot replace entity @s inventory.15 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 25 in minecraft:overworld run loot replace entity @s inventory.16 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 26 in minecraft:overworld run loot replace entity @s inventory.17 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 27 in minecraft:overworld run loot replace entity @s inventory.18 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 28 in minecraft:overworld run loot replace entity @s inventory.19 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 29 in minecraft:overworld run loot replace entity @s inventory.20 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 30 in minecraft:overworld run loot replace entity @s inventory.21 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 31 in minecraft:overworld run loot replace entity @s inventory.22 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 32 in minecraft:overworld run loot replace entity @s inventory.23 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 33 in minecraft:overworld run loot replace entity @s inventory.24 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 34 in minecraft:overworld run loot replace entity @s inventory.25 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches 35 in minecraft:overworld run loot replace entity @s inventory.26 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if score #temp Time matches -106 in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
scoreboard players reset #temp Time
tag @s remove listed
execute in minecraft:overworld run setblock -286 0 -52 minecraft:bedrock
execute in minecraft:overworld run setblock -286 0 -53 minecraft:bedrock
execute in minecraft:overworld run setblock -286 1 -52 minecraft:bedrock
advancement revoke @s only medabots_server:system_triggers/get_custom_stage