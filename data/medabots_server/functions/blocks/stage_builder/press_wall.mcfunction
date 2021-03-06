# Spawn object
execute if entity @s[tag=north] run function medabots_server:set_blocks/press_wall/north/range_10/power_1
execute if entity @s[tag=south] run function medabots_server:set_blocks/press_wall/south/range_10/power_1
execute if entity @s[tag=east] run function medabots_server:set_blocks/press_wall/east/range_10/power_1
execute if entity @s[tag=west] run function medabots_server:set_blocks/press_wall/west/range_10/power_1
tag @e[distance=..0.7,tag=press_wall] add custom_stage

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=press_wall] HomeX = @s HomeX
scoreboard players operation @e[distance=..0.7,tag=press_wall] HomeY = @s HomeY
scoreboard players operation @e[distance=..0.7,tag=press_wall] HomeZ = @s HomeZ
scoreboard players operation @e[distance=..0.7,tag=press_wall] Range = @s Range
scoreboard players operation @e[distance=..0.7,tag=press_wall] PowerNeeded = @s PowerNeeded