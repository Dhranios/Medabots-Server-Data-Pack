# Spawn object
execute if entity @s[tag=north] run function medabots_server:set_blocks/laser_trap/north/delay_10/power_1
execute if entity @s[tag=south] run function medabots_server:set_blocks/laser_trap/south/delay_10/power_1
execute if entity @s[tag=east] run function medabots_server:set_blocks/laser_trap/east/delay_10/power_1
execute if entity @s[tag=west] run function medabots_server:set_blocks/laser_trap/west/delay_10/power_1
tag @e[distance=..0.7,tag=laser_trap] add custom_stage

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=laser_trap] HomeX = @s HomeX
scoreboard players operation @e[distance=..0.7,tag=laser_trap] HomeY = @s HomeY
scoreboard players operation @e[distance=..0.7,tag=laser_trap] HomeZ = @s HomeZ
scoreboard players operation @e[distance=..0.7,tag=laser_trap] PowerNeeded = @s PowerNeeded
scoreboard players operation @e[distance=..0.7,tag=laser_trap] DelayTime = @s DelayTime