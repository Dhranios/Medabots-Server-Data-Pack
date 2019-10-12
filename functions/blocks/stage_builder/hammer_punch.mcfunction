# Spawn object
execute if entity @s[tag=north] run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_1
execute if entity @s[tag=south] run function medabots_server:set_blocks/hammer_punch/south/delay_10/power_1
execute if entity @s[tag=east] run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_1
execute if entity @s[tag=west] run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_1

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=hammer_punch] PowerNeeded = @s PowerNeeded
scoreboard players operation @e[distance=..0.7,tag=hammer_punch] DelayTime = @s DelayTime