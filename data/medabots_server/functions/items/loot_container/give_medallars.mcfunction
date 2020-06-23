function medabots_server:items/loot_container/available_slot_check
execute store result score #temp Money run data get entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.medallars 1
execute if entity @s[tag=available] if score #temp Money matches 1.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:1,medabots_server:{stage_item:0b,id:"medabots_server:medallar"},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.medallar"}'}}},Tags:["replacing_item"],PickupDelay:0s}
execute if entity @s[tag=available] if score #temp Money matches 1.. run data modify entity @e[type=minecraft:item,limit=1,tag=replacing_item] Owner set from entity @s UUID
execute if entity @s[tag=available] if score #temp Money matches 1.. store result entity @e[type=minecraft:item,limit=1,tag=replacing_item] Item.Count byte 1 run scoreboard players get #temp Money
execute if entity @s[tag=available] if score #temp Money matches 1.. run tag @e[type=minecraft:item,limit=1,tag=replacing_item] remove replacing_item
execute store result score #temp2 Money run data get entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.medallars 100
scoreboard players operation #temp Money *= #100 Constants
scoreboard players operation #temp2 Money -= #temp Money
execute if entity @s[tag=available] if score #temp2 Money matches 1.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",Count:1b,tag:{CustomModelData:1,medabots_server:{stage_item:0b,id:"medabots_server:medallar_cent"},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.medallar_cent"}'}}},Tags:["replacing_item"],PickupDelay:0s}
execute if entity @s[tag=available] if score #temp2 Money matches 1.. run data modify entity @e[type=minecraft:item,limit=1,tag=replacing_item] Owner set from entity @s UUID
execute if entity @s[tag=available] if score #temp2 Money matches 1.. store result entity @e[type=minecraft:item,limit=1,tag=replacing_item] Item.Count byte 1 run scoreboard players get #temp2 Money
execute if entity @s[tag=available] if score #temp2 Money matches 1.. run tag @e[type=minecraft:item,limit=1,tag=replacing_item] remove replacing_item
execute if entity @s[tag=available] run summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{medabots_server:{id:"medabots_server:inventory",items:[]}}}]}
execute if entity @s[tag=available] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items set from entity @s Inventory
execute if entity @s[tag=available] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.medabots_server.medallars set value 0d
execute if entity @s[tag=available] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[2] set value '{"italic":false,"color":"white","translate":"medabots_server:item.loot_container.medallars","with":[{"translate":"medabots_server:item.loot_container.medallars.value","with":["0","0","0"]}]}'
execute if entity @s[tag=available] as @e[tag=inventory,limit=1] run function medabots_server:other/inventory_boxes/set
execute if entity @s[tag=available] run function medabots_server:other/inventory_boxes/load
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money
tag @s[tag=available] remove available
clear @s minecraft:chest{medabots_server:{id:"medabots_server:loot_container",items:[]}}