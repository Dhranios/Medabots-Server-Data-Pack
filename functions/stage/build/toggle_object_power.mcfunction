execute as @e[distance=..0.7,tag=fan] run function medabots_server:stage/build/toggle_fan_power
execute as @e[distance=..0.7,tag=floor_switch] run function medabots_server:stage/build/toggle_floor_switch_power
execute as @e[distance=..0.7,tag=alarm] run function medabots_server:stage/build/toggle_power
execute as @e[distance=..0.7,tag=door] run function medabots_server:stage/build/toggle_power
execute as @e[distance=..0.7,tag=press_wall] run function medabots_server:stage/build/toggle_power
execute as @e[distance=..0.7,tag=spring_wall] run function medabots_server:stage/build/toggle_power
execute as @e[distance=..0.7,tag=laser_trap] run function medabots_server:stage/build/toggle_power
execute as @e[distance=..0.7,tag=hammer_punch] run function medabots_server:stage/build/toggle_power
execute as @e[distance=..0.7,tag=gas_floor] run function medabots_server:stage/build/toggle_power
execute as @e[distance=..0.7,tag=action_floor] run function medabots_server:stage/build/toggle_power
execute if entity @s[tag=!success] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.alter_power.cannot_change","color":"red"}
tag @s remove success