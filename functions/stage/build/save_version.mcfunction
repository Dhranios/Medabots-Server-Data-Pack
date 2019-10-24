execute at @e[tag=mission] unless entity @e[tag=enemy_medabot,distance=..0.7,limit=1] run tag @s add missing_medabot

execute if entity @s[tag=!missing_medabot] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:10,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[],medabots_server:{id:"medabots_server:custom_stage",stage:0,stage_data:[]}}},Tags:["build_stage"],NoGravity:1b,PickupDelay:20s}
execute if entity @s[tag=!missing_medabot] store result entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage int 1 run scoreboard players get @s Stage

execute if entity @s[tag=!missing_medabot] store result score #temp Stage run scoreboard players get @s Stage
execute if entity @s[tag=!missing_medabot] as @e[type=!minecraft:falling_block,type=!minecraft:shulker,type=!minecraft:item,tag=!build_stage,type=!minecraft:player] at @s if score @s Stage = #temp Stage run function medabots_server:stage/build/save_object
execute if entity @s[tag=!missing_medabot] run scoreboard players reset #temp Stage

execute if entity @s[tag=missing_medabot] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.missing_medabot","color":"red"}
tag @s remove missing_medabot

scoreboard players reset @s StageBuild