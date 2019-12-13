tag @s add building_player

summon minecraft:item ~ 255 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["build_stage"],NoGravity:1b}
data modify entity @e[tag=build_stage,limit=1,nbt=!{Item:{id:"minecraft:diamond_pickaxe",Count:1b}}] Item set from entity @s Inventory[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage"}}}]
execute store result score #temp Stage run data get entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage
execute unless score #temp Stage = @s Stage run tag @s add cancel
tellraw @s[tag=cancel,nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage"}}}]}] {"translate":"medabots_server:message.stage.stage_builder.loading_wrong_stage","color":"red"}
tellraw @s[tag=cancel,nbt=!{Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage"}}}]}] {"translate":"medabots_server:message.stage.stage_builder.no_stage_to_load","color":"red"}

execute if entity @s[tag=!cancel] run tag @s remove no_saving
execute if entity @s[tag=!cancel] run loot spawn ~ ~ ~ loot medabots_server:gameplay/get_player_name
execute if entity @s[tag=!cancel] store success score #temp Money run data modify entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{id:"minecraft:player_head"}},limit=1] Item.tag.SkullOwner.Name set from entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.owner
execute if entity @s[tag=!cancel] run kill @e[type=minecraft:item,distance=..0.7,nbt={Item:{id:"minecraft:player_head"}}]
execute if entity @s[tag=!cancel] if score #temp Money = 1 run tag @s add no_saving
execute if entity @s[tag=!cancel] run scoreboard players reset #temp Money
execute if entity @s[tag=!cancel] run tellraw @s[tag=no_saving] {"translate":"medabots_server:message.stage.stage_builder.other_owner","color":"yellow"}

execute as @e[scores={Stage=1..},type=!minecraft:player] if score #temp Stage = @s Stage run tag @s add dead

execute if entity @s[tag=!cancel] as @e[tag=build_stage,limit=1] at @s run function medabots_server:stage/build/load_object
tag @s remove building_player
tag @s remove cancel
scoreboard players reset #temp Stage
kill @e[tag=build_stage,limit=1]

scoreboard players reset @s StageBuild