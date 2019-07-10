execute if block ~ ~ ~ minecraft:chest run tag @s add allowed
execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed
execute if entity @e[distance=..0.7,tag=floor_switch] run tag @s remove allowed
execute if entity @e[distance=..0.7,tag=accelerator] run tag @s remove allowed

execute if block ~ ~ ~ minecraft:chest unless entity @e[distance=..0.7,tag=accelerator] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.accelerator.pot"}
execute if entity @s[y_rotation=45..135,tag=allowed] run function medabots_server:set_blocks/accelerator/east
execute if entity @s[y_rotation=-45..45,tag=allowed] run function medabots_server:set_blocks/accelerator/north
execute if entity @s[y_rotation=135..-135,tag=allowed] run function medabots_server:set_blocks/accelerator/south
execute if entity @s[y_rotation=-135..-45,tag=allowed] run function medabots_server:set_blocks/accelerator/west
tag @e[distance=..0.7,tag=accelerator] add no_ticking