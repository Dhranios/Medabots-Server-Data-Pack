tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables","color":"green","with":[{"translate":"medabots_server:entity.rubberobo"}]}
execute if entity @e[distance=..0.7,limit=1,tag=rubberobo,scores={HomeRot=-180}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.facing.north","color":"green"}
execute if entity @e[distance=..0.7,limit=1,tag=rubberobo,scores={HomeRot=0}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.facing.south","color":"green"}
execute if entity @e[distance=..0.7,limit=1,tag=rubberobo,scores={HomeRot=-90}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.facing.east","color":"green"}
execute if entity @e[distance=..0.7,limit=1,tag=rubberobo,scores={HomeRot=90}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.facing.west","color":"green"}
