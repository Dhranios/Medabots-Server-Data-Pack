# Spawn object
execute if entity @s[tag=north,tag=delay_10] run function medabots_server:set_blocks/laser_trap/north/delay_10/power_1
execute if entity @s[tag=south,tag=delay_10] run function medabots_server:set_blocks/laser_trap/south/delay_10/power_1
execute if entity @s[tag=east,tag=delay_10] run function medabots_server:set_blocks/laser_trap/east/delay_10/power_1
execute if entity @s[tag=west,tag=delay_10] run function medabots_server:set_blocks/laser_trap/west/delay_10/power_1
execute if entity @s[tag=north,tag=delay_9] run function medabots_server:set_blocks/laser_trap/north/delay_9/power_1
execute if entity @s[tag=south,tag=delay_9] run function medabots_server:set_blocks/laser_trap/south/delay_9/power_1
execute if entity @s[tag=east,tag=delay_9] run function medabots_server:set_blocks/laser_trap/east/delay_9/power_1
execute if entity @s[tag=west,tag=delay_9] run function medabots_server:set_blocks/laser_trap/west/delay_9/power_1
execute if entity @s[tag=north,tag=delay_8] run function medabots_server:set_blocks/laser_trap/north/delay_8/power_1
execute if entity @s[tag=south,tag=delay_8] run function medabots_server:set_blocks/laser_trap/south/delay_8/power_1
execute if entity @s[tag=east,tag=delay_8] run function medabots_server:set_blocks/laser_trap/east/delay_8/power_1
execute if entity @s[tag=west,tag=delay_8] run function medabots_server:set_blocks/laser_trap/west/delay_8/power_1
execute if entity @s[tag=north,tag=delay_7] run function medabots_server:set_blocks/laser_trap/north/delay_7/power_1
execute if entity @s[tag=south,tag=delay_7] run function medabots_server:set_blocks/laser_trap/south/delay_7/power_1
execute if entity @s[tag=east,tag=delay_7] run function medabots_server:set_blocks/laser_trap/east/delay_7/power_1
execute if entity @s[tag=west,tag=delay_7] run function medabots_server:set_blocks/laser_trap/west/delay_7/power_1
execute if entity @s[tag=north,tag=delay_6] run function medabots_server:set_blocks/laser_trap/north/delay_6/power_1
execute if entity @s[tag=south,tag=delay_6] run function medabots_server:set_blocks/laser_trap/south/delay_6/power_1
execute if entity @s[tag=east,tag=delay_6] run function medabots_server:set_blocks/laser_trap/east/delay_6/power_1
execute if entity @s[tag=west,tag=delay_6] run function medabots_server:set_blocks/laser_trap/west/delay_6/power_1
execute if entity @s[tag=north,tag=delay_5] run function medabots_server:set_blocks/laser_trap/north/delay_5/power_1
execute if entity @s[tag=south,tag=delay_5] run function medabots_server:set_blocks/laser_trap/south/delay_5/power_1
execute if entity @s[tag=east,tag=delay_5] run function medabots_server:set_blocks/laser_trap/east/delay_5/power_1
execute if entity @s[tag=west,tag=delay_5] run function medabots_server:set_blocks/laser_trap/west/delay_5/power_1
execute if entity @s[tag=north,tag=delay_4] run function medabots_server:set_blocks/laser_trap/north/delay_4/power_1
execute if entity @s[tag=south,tag=delay_4] run function medabots_server:set_blocks/laser_trap/south/delay_4/power_1
execute if entity @s[tag=east,tag=delay_4] run function medabots_server:set_blocks/laser_trap/east/delay_4/power_1
execute if entity @s[tag=west,tag=delay_4] run function medabots_server:set_blocks/laser_trap/west/delay_4/power_1
execute if entity @s[tag=north,tag=delay_3] run function medabots_server:set_blocks/laser_trap/north/delay_3/power_1
execute if entity @s[tag=south,tag=delay_3] run function medabots_server:set_blocks/laser_trap/south/delay_3/power_1
execute if entity @s[tag=east,tag=delay_3] run function medabots_server:set_blocks/laser_trap/east/delay_3/power_1
execute if entity @s[tag=west,tag=delay_3] run function medabots_server:set_blocks/laser_trap/west/delay_3/power_1
execute if entity @s[tag=north,tag=delay_2] run function medabots_server:set_blocks/laser_trap/north/delay_2/power_1
execute if entity @s[tag=south,tag=delay_2] run function medabots_server:set_blocks/laser_trap/south/delay_2/power_1
execute if entity @s[tag=east,tag=delay_2] run function medabots_server:set_blocks/laser_trap/east/delay_2/power_1
execute if entity @s[tag=west,tag=delay_2] run function medabots_server:set_blocks/laser_trap/west/delay_2/power_1
execute if entity @s[tag=north,tag=delay_1] run function medabots_server:set_blocks/laser_trap/north/delay_1/power_1
execute if entity @s[tag=south,tag=delay_1] run function medabots_server:set_blocks/laser_trap/south/delay_1/power_1
execute if entity @s[tag=east,tag=delay_1] run function medabots_server:set_blocks/laser_trap/east/delay_1/power_1
execute if entity @s[tag=west,tag=delay_1] run function medabots_server:set_blocks/laser_trap/west/delay_1/power_1

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=laser_trap] PowerNeeded = @s PowerNeeded
scoreboard players operation @e[distance=..0.7,tag=laser_trap] DelayTime = @s DelayTime