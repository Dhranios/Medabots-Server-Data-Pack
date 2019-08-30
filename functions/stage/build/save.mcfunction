summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:10,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[],medabots_server:{id:"medabots_server:custom_stage",stage:0,stage_data:[]}}},Tags:["build_stage"],NoGravity:1b,PickupDelay:20s}
execute store result entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage int 1 run scoreboard players get @s Stage

execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[type=!minecraft:falling_block,type=!minecraft:shulker,type=!minecraft:item] at @s if score @s Stage = #temp Stage run function medabots_server:stage/build/save_object
scoreboard players reset #temp Stage

scoreboard players reset @s StageBuild