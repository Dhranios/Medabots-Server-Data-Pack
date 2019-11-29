execute at @e[tag=mission] unless entity @e[tag=enemy_medabot,distance=..0.7,limit=1] run tag @s add missing_medabot

execute if entity @s[tag=!missing_medabot] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:10,Unbreakable:1b,CustomModelData:1,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage.location","with":[{"text":"NULL"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage.owner","with":[{"text":"NULL"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage.cleared","with":[{"color":"red","translate":"medabots_server:item.custom_stage.cleared.no"}]}']},medabots_server:{id:"medabots_server:custom_stage",stage:0,owner:"NULL",cleared:0b,stage_data:[]}}},Tags:["build_stage"],NoGravity:1b,PickupDelay:1s}
execute if entity @s[tag=!missing_medabot] store result entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.stage int 1 run scoreboard players get @s Stage

execute if entity @s[tag=!missing_medabot] run loot spawn ~ ~ ~ loot medabots_server:gameplay/get_player_name
execute if entity @s[tag=!missing_medabot] run data modify entity @e[tag=build_stage,limit=1] Item.tag.medabots_server.owner set from entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{id:"minecraft:player_head"}},limit=1] Item.tag.SkullOwner.Name
execute if entity @s[tag=!missing_medabot] run kill @e[type=minecraft:item,distance=..0.7,nbt={Item:{id:"minecraft:player_head"}}]
execute if entity @s[tag=!missing_medabot] run setblock -286 0 -52 minecraft:oak_sign{Text1:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage.owner","with":[{"nbt":"Item.tag.medabots_server.owner","entity":"@e[tag=build_stage,limit=1]"}]}'}
execute if entity @s[tag=!missing_medabot] run data modify entity @e[tag=build_stage,limit=1] Item.tag.display.Lore[1] set from block -286 0 -52 Text1
execute if entity @s[tag=!missing_medabot] run setblock -286 0 -52 minecraft:bedrock

execute if entity @s[tag=!missing_medabot] store result score #temp Stage run scoreboard players get @s Stage
execute if entity @s[tag=!missing_medabot] as @e[type=!minecraft:falling_block,type=!minecraft:shulker,type=!minecraft:item,tag=!build_stage,type=!minecraft:player] at @s if score @s Stage = #temp Stage run function medabots_server:stage/build/save_object
execute if entity @s[tag=!missing_medabot] run scoreboard players reset #temp Stage

execute if entity @s[tag=missing_medabot] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.missing_medabot","color":"red"}
tag @s remove missing_medabot

scoreboard players reset @s StageBuild