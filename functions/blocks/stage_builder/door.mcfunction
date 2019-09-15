# Spawn object
execute if entity @s[tag=north] run function medabots_server:set_blocks/door/north/power_1
execute if entity @s[tag=south] run function medabots_server:set_blocks/door/south/power_1
execute if entity @s[tag=east] run function medabots_server:set_blocks/door/east/power_1
execute if entity @s[tag=west] run function medabots_server:set_blocks/door/west/power_1

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=door] PowerNeeded = @s PowerNeeded