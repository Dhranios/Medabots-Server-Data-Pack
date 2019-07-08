tag @s add allowed
execute as @e[distance=..0.7,tag=fan] run function medabots_server:stage/build/toggle_fan_speed
execute as @e[distance=..0.7,tag=press_wall] run function medabots_server:stage/build/toggle_activation
execute as @e[distance=..0.7,tag=spring_wall] run function medabots_server:stage/build/toggle_activation
execute as @e[distance=..0.7,tag=laser_trap] run function medabots_server:stage/build/toggle_activation
execute as @e[distance=..0.7,tag=hammer_punch] run function medabots_server:stage/build/toggle_activation
execute as @e[distance=..0.7,tag=gas_floor] run function medabots_server:stage/build/toggle_activation
execute as @e[distance=..0.7,tag=action_floor] run function medabots_server:stage/build/toggle_activation
execute if entity @s[tag=!success] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.activate_object.cannot_toggle","color":"red"}
tag @s remove success