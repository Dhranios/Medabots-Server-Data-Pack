# Spawn object
execute if entity @s[tag=north] run function medabots_server:set_blocks/spring_wall/north/delay_10/power_1
execute if entity @s[tag=south] run function medabots_server:set_blocks/spring_wall/south/delay_10/power_1
execute if entity @s[tag=east] run function medabots_server:set_blocks/spring_wall/east/delay_10/power_1
execute if entity @s[tag=west] run function medabots_server:set_blocks/spring_wall/west/delay_10/power_1

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=spring_wall] PowerNeeded = @s PowerNeeded
scoreboard players operation @e[distance=..0.7,tag=spring_wall] DelayTime = @s DelayTime