# Spawn object
execute if entity @s[tag=north] run function medabots_server:set_blocks/door/north/power_1
execute if entity @s[tag=south] run function medabots_server:set_blocks/door/south/power_1
execute if entity @s[tag=east] run function medabots_server:set_blocks/door/east/power_1
execute if entity @s[tag=west] run function medabots_server:set_blocks/door/west/power_1
tag @e[distance=..0.7,tag=door] add custom_stage

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=door] HomeX = @s HomeX
scoreboard players operation @e[distance=..0.7,tag=door] HomeY = @s HomeY
scoreboard players operation @e[distance=..0.7,tag=door] HomeZ = @s HomeZ
scoreboard players operation @e[distance=..0.7,tag=door] PowerNeeded = @s PowerNeeded