execute if entity @e[distance=..0.7,limit=1,tag=mission,tag=defeat_the_enemy] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables","color":"green","with":[{"translate":"medabots_server:entity.mission.defeat_the_enemy"}]}
execute if entity @e[distance=..0.7,limit=1,tag=mission,tag=defeat_all_guards] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables","color":"green","with":[{"translate":"medabots_server:entity.mission.defeat_all_guards"}]}
execute if entity @e[distance=..0.7,limit=1,tag=mission,tag=destroy_all_missions] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables","color":"green","with":[{"translate":"medabots_server:entity.mission.destroy_all_cannons"}]}
execute if entity @e[distance=..0.7,limit=1,tag=mission,tag=run_until_time_is_up] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables","color":"green","with":[{"translate":"medabots_server:entity.mission.run_until_time_is_up"}]}
execute if entity @e[distance=..0.7,limit=1,tag=mission,tag=open_the_exit_door] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables","color":"green","with":[{"translate":"medabots_server:entity.mission.open_the_exit_door"}]}
execute if entity @e[distance=..0.7,limit=1,tag=mission,tag=robattle] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables","color":"green","with":[{"translate":"medabots_server:entity.mission.robattle"}]}
execute if entity @e[distance=..0.7,limit=1,tag=mission,tag=north] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.facing.north","color":"green"}
execute if entity @e[distance=..0.7,limit=1,tag=mission,tag=south] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.facing.south","color":"green"}
execute if entity @e[distance=..0.7,limit=1,tag=mission,tag=east] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.facing.east","color":"green"}
execute if entity @e[distance=..0.7,limit=1,tag=mission,tag=west] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.facing.west","color":"green"}
tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.variables.mission","color":"green"}