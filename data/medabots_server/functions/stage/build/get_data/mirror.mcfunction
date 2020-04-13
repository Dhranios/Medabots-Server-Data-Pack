tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables","color":"green","with":[{"translate":"medabots_server:block.mirror"}]}
execute if entity @e[distance=..0.7,limit=1,tag=mirror,tag=45] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.rotation.45","color":"green"}
execute if entity @e[distance=..0.7,limit=1,tag=mirror,tag=-45] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.rotation.-45","color":"green"}
