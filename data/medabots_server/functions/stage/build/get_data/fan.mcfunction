tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables","color":"green","with":[{"translate":"medabots_server:block.fan"}]}
execute if entity @e[distance=..0.7,limit=1,tag=fan,tag=north] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.facing.north","color":"green"}
execute if entity @e[distance=..0.7,limit=1,tag=fan,tag=south] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.facing.south","color":"green"}
execute if entity @e[distance=..0.7,limit=1,tag=fan,tag=east] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.facing.east","color":"green"}
execute if entity @e[distance=..0.7,limit=1,tag=fan,tag=west] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.facing.west","color":"green"}
execute if entity @e[distance=..0.7,limit=1,tag=fan,tag=!reverse] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.reverse.false","color":"green"}
execute if entity @e[distance=..0.7,limit=1,tag=fan,tag=reverse] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.reverse.true","color":"green"}
execute if entity @e[distance=..0.7,limit=1,tag=fan,scores={Moving=0}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.speed.off","color":"green"}
execute if entity @e[distance=..0.7,limit=1,tag=fan,scores={Moving=1}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.speed.slow","color":"green"}
execute if entity @e[distance=..0.7,limit=1,tag=fan,scores={Moving=2}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.speed.fast","color":"green"}
tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.range","color":"green","with":[{"score":{"objective":"Range","name":"@e[distance=..0.7,limit=1,tag=fan]"}}]}
tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.power","color":"green","with":[{"score":{"objective":"PowerNeeded","name":"@e[distance=..0.7,limit=1,tag=fan]"}}]}
tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.bound","color":"green","with":[{"score":{"objective":"HomeX","name":"@e[distance=..0.7,limit=1,tag=fan]"}},{"score":{"objective":"HomeY","name":"@e[distance=..0.7,limit=1,tag=fan]"}},{"score":{"objective":"HomeZ","name":"@e[distance=..0.7,limit=1,tag=fan]"}}]}
