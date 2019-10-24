tag @s add building_player

summon minecraft:item ~ 255 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["build_stage"],NoGravity:1b}
data modify entity @e[tag=build_stage,limit=1,nbt=!{Item:{id:"minecraft:diamond_pickaxe",Count:1b}}] Item set from entity @s Inventory[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage"}}}]
execute store result score #temp Stage run data get entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage
execute unless score #temp Stage = @s Stage run tag @s add cancle
tellraw @s[tag=cancle,nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:custom_stage"}}}]}] {"translate":"medabots_server:message.stage.stage_builder.loading_wrong_stage","color":"red"}
tellraw @s[tag=cancle,nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:custom_stage"}}}]}] {"translate":"medabots_server:message.stage.stage_builder.no_stage_to_load","color":"red"}

execute as @e[scores={Stage=1..},type=!minecraft:player] if score #temp Stage = @s Stage run tag @s add dead

execute unless entity @s[tag=cancle] as @e[tag=build_stage] at @s run function medabots_server:stage/build/load_object
tag @s remove building_player
tag @s remove cancle
scoreboard players reset #temp Stage
kill @e[tag=build_stage]

scoreboard players reset @s StageBuild